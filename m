Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32FCD6247C0
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 17:59:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232738AbiKJQ7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 11:59:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232795AbiKJQ7a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 11:59:30 -0500
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8900543AFF
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 08:59:28 -0800 (PST)
Received: by mail-il1-x130.google.com with SMTP id r2so1291029ilg.8
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 08:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zfT0Sk7cngA8yCJ1+qLFBJTWNklOM8LQ3cY0gOcISfc=;
        b=DNDa/BQh4qoPAYiyBHPdj3RM4VlYntsNHrDFjY/tOhoTMDH7sgTd3C8FPjsMnt68rx
         ixy+hLHd+tWsDL09j8/p01pDU4jNq/dq7XOu9voXAx8oK9bG+f7kV5S+fQ58+EaukWKB
         0L32KRzzV8NlUg46nkwTs+t+LOp1AVZHTnfV4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zfT0Sk7cngA8yCJ1+qLFBJTWNklOM8LQ3cY0gOcISfc=;
        b=klNXuS1H3vfnjSQigH7SEbH4Q9y0U9jwYB5m7/5C+0wGzq5F12qNsf2bTTCjoHPmGj
         GI2pCo27nc+QAjyVbNneY4i1PhQ5KfrY0kNli2wbtzhTCjSE7Lzwq70nDTgPIPDGGc+A
         xixlzkKT7GmxGMt4VgoZ81wRvo5We9whuU64d5DQg4PtDY9ooyipmDBUlxi2Z5tRri+5
         Sr0grVoHrZIqU9PMk+DkyVEYhsXNNJ5rhq8ldkAZIqcJg7GDuPdGSeD1IeFxuwLPHJZM
         6DyOxBwP56VuudEz/jf44GFf9d19L8NjUR881O5hLSZzlOaKba3USnAruty2m4F1R/Fa
         cuhg==
X-Gm-Message-State: ACrzQf1A+B27fNxsA19BbGNaVFCdzYTKMBffGTAGG07vT9Jq+32NAs0D
        KdraNFC+5WbtpySsmRSWDbhQY38ljZn9Vw==
X-Google-Smtp-Source: AMsMyM69796h9nSkJSEcO5+z8LLJ8UxX8tk0w7f10mpfPtGi/ngKe3OAFwcVMCczBHjCmlwdB3hWOA==
X-Received: by 2002:a92:d648:0:b0:2fa:7d5e:b64d with SMTP id x8-20020a92d648000000b002fa7d5eb64dmr3113184ilp.245.1668099567700;
        Thu, 10 Nov 2022 08:59:27 -0800 (PST)
Received: from sjg1.roam.corp.google.com (c-67-190-102-125.hsd1.co.comcast.net. [67.190.102.125])
        by smtp.gmail.com with ESMTPSA id b9-20020a021909000000b0035678e2e175sm5718905jab.50.2022.11.10.08.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 08:59:27 -0800 (PST)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>, Simon Glass <sjg@chromium.org>
Subject: [PATCH v5] schemas: Add schema for U-Boot driver model 'phase tags'
Date:   Thu, 10 Nov 2022 09:59:24 -0700
Message-Id: <20221110165924.1059818-1-sjg@chromium.org>
X-Mailer: git-send-email 2.38.1.431.g37b22c650d-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
      phase-all;
      compatible = "rockchip,rk3399-cru";
      reg = <0x0 0xff760000 0x0 0x1000>;
      rockchip,grf = <&grf>;
      #clock-cells = <1>;
      #reset-cells = <1>;
      ...
   };

Here the "phase-all" tag indicates that the node must be present in all
phases, since the clock driver is required.

There has been discussion over the years about whether this could be done
in a property instead, e.g.

   options {
      phase-all = <&cru> <&gpio_a> ...;
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

Changes in v5:
- Fix instructions to run test
- Update binding title
- Use 'phase-' instead of 'phase,'

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
 dtschema/schemas/phase.yaml | 74 +++++++++++++++++++++++++++++++++++++
 test/phases.dts             | 23 ++++++++++++
 3 files changed, 102 insertions(+)
 create mode 100644 dtschema/schemas/phase.yaml
 create mode 100644 test/phases.dts

diff --git a/dtschema/lib.py b/dtschema/lib.py
index 1bce070..d65a0fc 100644
--- a/dtschema/lib.py
+++ b/dtschema/lib.py
@@ -514,6 +514,11 @@ def fixup_node_props(schema):
     schema['properties'].setdefault('status', True)
     schema['properties'].setdefault('secure-status', True)
     schema['properties'].setdefault('$nodename', True)
+    schema['properties'].setdefault('phase-pre-sram', True)
+    schema['properties'].setdefault('phase-verify', True)
+    schema['properties'].setdefault('phase-pre-ram', True)
+    schema['properties'].setdefault('phase-some-ram', True)
+    schema['properties'].setdefault('phase-all', True)
 
     keys = list()
     if 'properties' in schema:
diff --git a/dtschema/schemas/phase.yaml b/dtschema/schemas/phase.yaml
new file mode 100644
index 0000000..a6f090d
--- /dev/null
+++ b/dtschema/schemas/phase.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: BSD-2-Clause
+# Copyright 2022 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phase.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Boot-phase-specific device nodes
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+patternProperties:
+  "^phase-(pre-sram,verify,pre-ram,some-ram,all)$":
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
+      Without any tags, nodes are included only in the final phase, where all
+      memory is available. Any untagged nodes are dropped from previous phases
+      and are ignored before the final phase is reached.
+
+      The build process produces a separate executable for each phase. It can
+      use fdtgrep to drop any nodes which are not needed for a particular build.
+      For example, the pre-sram build will drop any nodes which are not marked
+      with phase-pre-sram or phase-all tags.
+
+      The available tags are as follows, in order of phase execution:
+
+        phase-pre-sram:
+          Enable this node when SRAM is not available. This phase must set up
+          some SRAM or cache-as-RAM so it can obtain data/BSS space to use
+          during execution.
+
+        phase-verify:
+          Enable this node in the verification step, which decides which of the
+          available images should be run next.
+
+        phase-pre-ram:
+          Enable this node in the phase that sets up SDRAM.
+
+        phase-some-ram:
+          Enable this node in the phase that is run after SDRAM is working but
+          before all of it is available. Some RAM is available but it is limited
+          (e.g. it may be split into two pieces by the location of the running
+          program) because the program code is not yet relocated out of the way.
+
+        phase-all:
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
index 0000000..d36cb82
--- /dev/null
+++ b/test/phases.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: BSD-2-Clause
+// Copyright 2022 Google LLC
+
+// An attempt to provide a device tree to validate the phase properties
+
+// dt-mk-schema -j test/schemas/ > processed-schema.json
+// dtc -O dtb -o test.dtb test/phases.dts && tools/dt-validate -s processed-schema.json test.dtb
+
+
+/dts-v1/;
+
+/ {
+	model = "none";
+	compatible = "foo";
+
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	some-device {
+		compatible = "vendor,soc1-ip";
+		phase-pre-sram;
+	};
+};
-- 
2.38.1.431.g37b22c650d-goog

