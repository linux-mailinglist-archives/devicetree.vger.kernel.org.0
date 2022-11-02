Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E730A615993
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 04:14:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230336AbiKBDOf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Nov 2022 23:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230353AbiKBDNf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Nov 2022 23:13:35 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC43DBEC
        for <devicetree@vger.kernel.org>; Tue,  1 Nov 2022 20:13:22 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id 63so14012344iov.8
        for <devicetree@vger.kernel.org>; Tue, 01 Nov 2022 20:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C2D9QCOM0QZY9niAOQz0FI4jpS+JT8XetrogkNwGvBw=;
        b=hlSpHv0Of4H5YJygXgZO4mAf+FZl0fQFeWnmaZWNDF4TAnJda1zSrEfh/WlCxvyPz3
         rj/drBp5nrFrK1ysNmVUFMNj+l84zo3ezE5Mrwxyx3FVWRLnXOAs8hG0nKq+dnK7SuRZ
         +PMpbNahQO65HpMzQQNyTnIaG8J+76k7K3lkU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C2D9QCOM0QZY9niAOQz0FI4jpS+JT8XetrogkNwGvBw=;
        b=zxV5u/3GBJ7tfSCaa9zG3HKZnVxGZTl/thlssI9ilq6h4vYvZqoz2C6S2TLTTDMDQ9
         /A8FATRLx17633adrQVDQFistRM4MI7+ISkGcmTn+tHmUKxp7Zu1CsDAk40xUWJZzTs8
         JdHPUBD/vOe86nAQUTenJiMuOeEBX2n+wy75G++xx8oEyzGAL5Q0Pr3PQYirNDUHwxxG
         Evu4TU9giE50DtHH0sFMQWOgjLFW8UtRvMighCqR552RmO4+K6Ud0ny4uRedkEhlb8nT
         LlpBVStWF7anzEwzvRZmlI8h1gw3NkYYC25mZcuX7hvG2RueP3bH93kZPOoLQhtpsKRL
         KpEQ==
X-Gm-Message-State: ACrzQf16cJS38pX9j04br9yvRlxaDcGLUy7ap+nLX9MvXAMRGEQk2R1P
        uya0tfTerhpsrJXfFIg36d7iCsG7X5p/cg==
X-Google-Smtp-Source: AMsMyM6d25Nhl+9Ryw2c1kd6pTe8MaNlp1J4DsglF6lmrrDfpZJ5c+tFEJN7pgZl8MUwEgiRRlSaiA==
X-Received: by 2002:a05:6638:240e:b0:363:dbde:4176 with SMTP id z14-20020a056638240e00b00363dbde4176mr14164494jat.243.1667358802067;
        Tue, 01 Nov 2022 20:13:22 -0700 (PDT)
Received: from sjg1.roam.corp.google.com (c-67-190-102-125.hsd1.co.comcast.net. [67.190.102.125])
        by smtp.gmail.com with ESMTPSA id p21-20020a02b395000000b003640f27d82esm4577714jan.21.2022.11.01.20.13.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 20:13:21 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>, Simon Glass <sjg@chromium.org>
Subject: [PATCH v4] schemas: Add schema for U-Boot driver model 'phase tags'
Date:   Tue,  1 Nov 2022 21:13:12 -0600
Message-Id: <20221102031312.216353-1-sjg@chromium.org>
X-Mailer: git-send-email 2.38.1.273.g43a17bfeac-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

U-Boot has some particular challenges with device tree and devices:

- U-Boot has multiple build phases, such as a Secondary Program Loader
  (SPL) phase which typically runs in a pre-SDRAM environment where code
  and data space are limited. In particular, there may not be enough
  space for the full device tree blob. U-Boot uses various automated
  techniques to reduce the size from perhaps 40KB to 3KB. It is not
  always possible to handle these tags entirely at build time, since
  U-Boot proper must have the full device tree, even though we do not
  want it to process all nodes until after relocation.
- Some U-Boot phases needs to run before the clocks are properly set up,
  where the CPU may be running very slowly. Therefore it is important to
  bind only those devices which are actually needed in that phase
- U-Boot uses lazy initialisation for its devices, with 'bind' and
  'probe' being separate steps. Even if a device is bound, it is not
  actually probed until it is used. This is necessary to keep the boot
  time reasonable, e.g. to under a second

The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
pre-relocation, then post-relocation). ALl but the last two are optional.

For the above reasons, U-Boot only includes the full device tree in the
final 'U-Boot proper' build. Even then, before relocation U-Boot only
processes nodes which are marked as being needed.

For this to work, U-Boot's driver model[1] provides a way to mark device
tree nodes as applicable for a particular phase. This works by adding a
tag to the node, e.g.:

   cru: clock-controller@ff760000 {
      phase,all;
      compatible = "rockchip,rk3399-cru";
      reg = <0x0 0xff760000 0x0 0x1000>;
      rockchip,grf = <&grf>;
      #clock-cells = <1>;
      #reset-cells = <1>;
      ...
   };

Here the "phase,all" tag indicates that the node must be present in all
phases, since the clock driver is required.

There has been discussion over the years about whether this could be done
in a property instead, e.g.

   options {
      phase,all = <&cru> <&gpio_a> ...;
      ...
   };

Some problems with this:

- we need to be able to merge several such tags from different .dtsi files
  since many boards have their own specific requirements
- it is hard to find and cross-reference the affected nodes
- it is more error-prone
- it requires significant tool rework in U-Boot, including fdtgrep and
  the build system
- is harder (slower, more code) to process since it involves scanning
  another node/property to find out what to do with a particular node
- we don't want to add phandle arguments to the above since we are
  referring, e.g., to the clock device as a whole, not a paricular clock
- the of-platdata feature[2], which converts device tree to C for even
  more constrained environments, would need to become aware of the
  /options node

There is also the question about whether this needs to be U-Boot-specific,
or whether the tags could be generic. From what I can tell, U-Boot is the
only bootloader which seriously attempts to use a runtime device tree in
all cases. For this version, an attempt is made to name the phases in a
generic manner.

It should also be noted that the approach provided here has stood the test
of time, used in U-Boot for 8 years so far.

So add the schema for this. This will allow a major class of schema
exceptions to be dropped from the U-Boot source tree.

This being sent to the mailing list since it might attract more review.
A PR will be sent when this has had some review. That is why the file
path is set up for https://github.com/devicetree-org/dt-schema rather
than the Linux kernel.

[1] https://u-boot.readthedocs.io/en/latest/develop/driver-model/index.html
[2] https://u-boot.readthedocs.io/en/latest/develop/driver-model/of-plat.html

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v4:
- Drop some unnecessary context from the commit message
- Explain why parent nodes do not automatically inherit their children's
  tags
- Rename the tags to use a phase,xxx format, explaining each one

Changes in v3:
- Fix an incorrect schema path in $id

Changes in v2:
- Expand docs to include a description of each tag
- Fix some typos and unclear wording

 dtschema/lib.py             |  5 +++
 dtschema/schemas/phase.yaml | 73 +++++++++++++++++++++++++++++++++++++
 test/phases.dts             | 26 +++++++++++++
 3 files changed, 104 insertions(+)
 create mode 100644 dtschema/schemas/phase.yaml
 create mode 100644 test/phases.dts

diff --git a/dtschema/lib.py b/dtschema/lib.py
index 3b6c937..9a2fafa 100644
--- a/dtschema/lib.py
+++ b/dtschema/lib.py
@@ -514,6 +514,11 @@ def fixup_node_props(schema):
     schema['properties'].setdefault('status', True)
     schema['properties'].setdefault('secure-status', True)
     schema['properties'].setdefault('$nodename', True)
+    schema['properties'].setdefault('phase,pre-sram', True)
+    schema['properties'].setdefault('phase,verify', True)
+    schema['properties'].setdefault('phase,pre-ram', True)
+    schema['properties'].setdefault('phase,some-ram', True)
+    schema['properties'].setdefault('phase,all', True)
 
     keys = list()
     if 'properties' in schema:
diff --git a/dtschema/schemas/phase.yaml b/dtschema/schemas/phase.yaml
new file mode 100644
index 0000000..886dbb0
--- /dev/null
+++ b/dtschema/schemas/phase.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: BSD-2-Clause
+# Copyright 2022 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phase.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings for phase-specific device nodes
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+patternProperties:
+  "^phase,(pre-sram,verify,pre-ram,some-ram,all)$":
+    type: boolean
+    description: |
+      Some programs run in memory-constrained environments yet want to make use
+      of device tree.
+
+      The full device tree is often quite large (e.g. 40KB) and cannot fit into
+      every phase of the boot process. Even when memory is not a problem, some
+      phases may wish to limit which device nodes are present, so as to reduce
+      execution time.
+
+      This binding supports adding tags to device tree nodes to allow them to be
+      marked according to the phases where they should be included.
+
+      Without any tags, nodes are included only in final phase, where all memory
+      is available. Any untagged nodes are dropped from previous phases and are
+      ignored before the final phase is reached.
+
+      The build process produces a separate executable for each phase. It can
+      use fdtgrep to drop any nodes which are not needed for a particular build.
+      For example, the pre-sram build will drop any nodes which are not marked
+      with phase,pre-sram or phase,all tags.
+
+      The available tags are as follows, in order of phase execution:
+
+        phase,pre-sram:
+          Enable this node when SRAM is not available. This phase must set up
+          some SRAM or cache-as-RAM so it can execute.
+
+        phase,verify:
+          Enable this node in the verification step, which decides which of the
+          available images should be run next.
+
+        phase,pre-ram:
+          Enable this node in the phase that sets up SDRAM.
+
+        phase,some-ram:
+          Enable this node in the phase that is run after SDRAM is working but
+          before all of it is available. Some RAM is available but it is limited
+          (e.g. it may be split into two pieces by the location of the running
+          program) because the program code is not yet relocated out of the way.
+
+        phase,all:
+          Include this node in all phases (for U-Boot see enum u_boot_phase)
+
+      Note that phase builds may drop the tags, since they have served their
+      purpose by that point. So when looking at phase-specific device tree files
+      you may not see these tags.
+
+      Multiple tags can be used in the same node.
+
+      One complication with fdtgrep is that tags apply only to the node they are
+      added to, not to any parents. This means that you often need to add the
+      same tag to parent nodes so that any properties needed by the parent
+      driver are included. Without that, the parent node may have no properties,
+      or may not be bound before relocation (meaning that its child will not be
+      bound either). This is for implementation reasons and it may be possible
+      to address this in the future.
+
+additionalProperties: true
diff --git a/test/phases.dts b/test/phases.dts
new file mode 100644
index 0000000..7f59840
--- /dev/null
+++ b/test/phases.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: BSD-2-Clause
+// Copyright 2022 Google LLC
+
+// An attempt to provide a device tree to validate
+
+// dt-mk-schema -j test/schemas/ > processed-schema.json
+// dtc -O dtb -o test.dtb test/phases.dts && tools/dt-validate -s processed-schema.json / test.dtb
+// Traceback (most recent call last):
+//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 167, in <module>
+//     sg.check_trees(filename, testtree)
+//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 122, in check_trees
+//     self.check_subtree(dt, subtree, False, "/", "/", filename)
+//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 106, in check_subtree
+//     self.check_node(tree, subtree, disabled, nodename, fullname, filename)
+//   File "/scratch/sglass/cosarm/dt-schema/tools/dt-validate", line 38, in check_node
+//     node['$nodename'] = [ nodename ]
+// TypeError: 'str' object does not support item assignment
+
+/dts-v1/;
+
+/ {
+	some-device {
+		compatible = "vendor,soc1-ip";
+		phase,pre-sram;
+	};
+};
-- 
2.38.1.273.g43a17bfeac-goog

