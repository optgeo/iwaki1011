Dir.glob("bldg_lod2m/data/*.glb") {|path|
  cmd = <<-EOS
mv #{path} tmp.b3dm
npx 3d-tiles-tools b3dmToGlb -i tmp.b3dm -o #{path}
rm tmp.b3dm
  EOS
  print cmd
}

