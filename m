Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1170366A4AB
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 21:59:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230037AbjAMU7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 15:59:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230312AbjAMU7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 15:59:07 -0500
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com [IPv6:2607:f8b0:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD618F5B0
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:58:29 -0800 (PST)
Received: by mail-il1-x136.google.com with SMTP id o13so11329372ilc.7
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eGk3PYuJgk8GxoaFvtNGMlrpQYd+ieSy/tKT20IX2sU=;
        b=jWkZMbBhlucvkBxqSrpwb14cz9VYV4ORwQTsfaf9qAsUr/qO938vSJt627Dy3RDJmX
         Dev1JVyHz2Rgqr5G43ORv5tr5iX48EXprNu/KNwHhrSQbhf6Es4yt+EH9Q8FATfOuHMC
         0i1xLXySjCksqyHu9z9jvPR7ExKNzgBwvXyHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eGk3PYuJgk8GxoaFvtNGMlrpQYd+ieSy/tKT20IX2sU=;
        b=MM4mvf8IOKuhObbtG1Sb6kreqgU6kmtviUmzy+qNDHzSN5/MQ1qgg1jIY2u4A8hETy
         ++XGAjXtBcirht7O4gFsgaNNIdrxzEyKsHv4XaSu4ApFkNQsS8qQye9zWhqM0Bg5FPVb
         8BTf/Czt6l4bpAbrZFldzVi1SWMq5xwnC6l9YK+MYTG1snHueEXuGln9DEjY3qf3ql4t
         ZIjjcjctg1nPwsHgbRtF/ibbkNSqEwvOXvFdepbntB6rwYH8HehCfLq3Qk4leFsVsE7Q
         qDwjJKP6c87B90Nn7gZ5G8C0SXEChyvYMHAjC90Q0rVTYEn8naXuFflVDSzyUFzqQ8pC
         3Kjw==
X-Gm-Message-State: AFqh2kruidOKyn0aUhHRFJISC9JGZxcGulRNuCZ8miWKPd8mPa/tkxVS
        sX22PyzEDM5mIFH+znHHgBudhqNkkQJ9+UJo
X-Google-Smtp-Source: AMrXdXtiWBAya3sZP28fufr0nBLu2wjfbDeF+3thpj35ZdHu+9azHVHjDLltb0Ozylxb09pekxfDgQ==
X-Received: by 2002:a05:6e02:1d88:b0:30d:7cf4:5d5c with SMTP id h8-20020a056e021d8800b0030d7cf45d5cmr34997777ila.31.1673643508895;
        Fri, 13 Jan 2023 12:58:28 -0800 (PST)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:2aad:ca3:e320:9802])
        by smtp.gmail.com with ESMTPSA id b10-20020a92670a000000b00304ae88ebebsm2931805ilc.88.2023.01.13.12.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 12:58:28 -0800 (PST)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>, Simon Glass <sjg@chromium.org>
Subject: [PATCH v6 2/2] schemas: Add schema for U-Boot driver model 'phase tags'
Date:   Fri, 13 Jan 2023 13:55:18 -0700
Message-Id: <20230113205518.206306-2-sjg@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
In-Reply-To: <20230113205518.206306-1-sjg@chromium.org>
References: <20230113205518.206306-1-sjg@chromium.org>
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
      bootph-all;
      compatible = "rockchip,rk3399-cru";
      reg = <0x0 0xff760000 0x0 0x1000>;
      rockchip,grf = <&grf>;
      #clock-cells = <1>;
      #reset-cells = <1>;
      ...
   };

Here the "bootph-all" tag indicates that the node must be present in all
phases, since the clock driver is required.

There has been discussion over the years about whether this could be done
in a property instead, e.g.

   options {
      bootph-all = <&cru> <&gpio_a> ...;
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

Changes in v6:
- Use 'bootph' instead of 'phase'
- Use | instead of , in patternProperties
- Drop mention of 40KB for device-tree size
- Rework description of handling of parent nodes
- Use separate properties for each boot phase
- Update validation example at the top of bootphases.dts

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

 dtschema/lib.py              |  5 +++
 dtschema/schemas/bootph.yaml | 86 ++++++++++++++++++++++++++++++++++++
 test/bootphases.dts          | 22 +++++++++
 3 files changed, 113 insertions(+)
 create mode 100644 dtschema/schemas/bootph.yaml
 create mode 100644 test/bootphases.dts

diff --git a/dtschema/lib.py b/dtschema/lib.py
index c7b6cb9..95a4f10 100644
--- a/dtschema/lib.py
+++ b/dtschema/lib.py
@@ -493,6 +493,11 @@ def fixup_node_props(schema):
     schema['properties'].setdefault('status', True)
     schema['properties'].setdefault('secure-status', True)
     schema['properties'].setdefault('$nodename', True)
+    schema['properties'].setdefault('bootph-pre-sram', True)
+    schema['properties'].setdefault('bootph-verify', True)
+    schema['properties'].setdefault('bootph-pre-ram', True)
+    schema['properties'].setdefault('bootph-some-ram', True)
+    schema['properties'].setdefault('bootph-all', True)
 
     keys = list()
     if 'properties' in schema:
diff --git a/dtschema/schemas/bootph.yaml b/dtschema/schemas/bootph.yaml
new file mode 100644
index 0000000..275c4da
--- /dev/null
+++ b/dtschema/schemas/bootph.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: BSD-2-Clause
+# Copyright 2022 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bootph.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Boot-phase-specific device nodes
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+description: |
+  Some programs run in memory-constrained environments yet want to make use
+  of device tree.
+
+  The full device tree is often quite large relative to the available memory
+  of a boot phase, so cannot fit into every phase of the boot process. Even
+  when memory is not a problem, some phases may wish to limit which device
+  nodes are present, so as to reduce execution time.
+
+  This binding supports adding tags to device tree nodes to allow them to be
+  marked according to the phases where they should be included.
+
+  Without any tags, nodes are included only in the final phase, where all
+  memory is available. Any untagged nodes are dropped from previous phases
+  and are ignored before the final phase is reached.
+
+  The build process produces a separate executable for each phase. It can
+  use fdtgrep to drop any nodes which are not needed for a particular build.
+  For example, the pre-sram build will drop any nodes which are not marked
+  with bootph-pre-sram or bootph-all tags.
+
+  Note that phase builds may drop the tags, since they have served their
+  purpose by that point. So when looking at phase-specific device tree files
+  you may not see these tags.
+
+  Multiple tags can be used in the same node.
+
+  Tags in a child node are implied to be present in all parent nodes as well.
+  This is important, since some missing properties (such as "ranges", or
+  "compatible") can cause the child node to be ignored or incorrectly
+  parsed.
+
+  That said, at present, fdtgrep applies tags only to the node they are
+  added to, not to any parents. This means U-Boot device tree files often
+  add the same tag to parent nodes, rather than relying on tooling to do
+  this. This is a limitation of fdtgrep and it will be addressed so that
+  'Linux DTs' do not need to do this.
+
+  The available tags are describes as properties below, in order of phase
+  execution.
+
+properties:
+  bootph-pre-sram:
+    type: boolean
+    description: |
+      Enable this node when SRAM is not available. This phase must set up
+      some SRAM or cache-as-RAM so it can obtain data/BSS space to use
+      during execution.
+
+  bootph-verify:
+    type: boolean
+    description: |
+      Enable this node in the verification step, which decides which of the
+      available images should be run next.
+
+  bootph-pre-ram:
+    type: boolean
+    description: |
+      Enable this node in the phase that sets up SDRAM.
+
+  bootph-some-ram:
+    type: boolean
+    description: |
+      Enable this node in the phase that is run after SDRAM is working but
+      before all of it is available. Some RAM is available but it is limited
+      (e.g. it may be split into two pieces by the location of the running
+      program) because the program code is not yet relocated out of the way.
+
+  bootph-all:
+    type: boolean
+    description: |
+      Include this node in all phases (for U-Boot see enum u_boot_phase).
+
+additionalProperties: true
diff --git a/test/bootphases.dts b/test/bootphases.dts
new file mode 100644
index 0000000..037c626
--- /dev/null
+++ b/test/bootphases.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: BSD-2-Clause
+// Copyright 2022 Google LLC
+
+// An attempt to provide a device tree to validate the phase properties
+
+// dtc -O dtb -o test.dtb test/bootphases.dts && tools/dt-validate test.dtb
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
+		bootph-pre-sram;
+	};
+};
-- 
2.39.0.314.g84b9a713c41-goog

