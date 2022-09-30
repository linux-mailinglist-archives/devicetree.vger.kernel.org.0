Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 017F45F01B6
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 02:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229492AbiI3AOV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 20:14:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229771AbiI3AOU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 20:14:20 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D04E200B2A
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 17:14:18 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id d8so2163495iof.11
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 17:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=WeGbHRY7Bu5nnEX8SdGkrevg269LibEUUFxQpY9TpA4=;
        b=VA6GsyEKZsxPXOZy9Sy6jjlPdNnsiUW6BQ11kQgoFiY2MiZJs4B5O1pwUVVW+262hY
         Jwf4MDksyQvdYCNTLFl681Z65HHS8fR9MxL6cDp3PVoheWoPaqqRaI+X+BWMwevXDPsA
         V6Hjetmg0r0ztqGRiJrJoEu3+vvkC/cZ/yoms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=WeGbHRY7Bu5nnEX8SdGkrevg269LibEUUFxQpY9TpA4=;
        b=pjKmB0qh+bE4v8RahmUQM2n0IscPABM2gol3lOZ94Lmg8taHBfvzt+V5dGriM4pseW
         nJDqRDVDf4Noh37Mv82wgcbJHwZNzk/gzIUMhwvzChC1umtREuVoCP8RK8I1TOnD3tJ2
         GOtZnnpIflY2zSZ3cljpfa0yEHrFM14BZuL5OxKN86s0E6Lf5/dENWcuT7F68cSpR/Dr
         aN4fTRH0nBEVR+otNwJuOt+NBP01EB5kC7U+I8f8SvVylQPewoV0NjDW3wpq6Zm1T2wM
         +trye349HvBVFU45wBeEsm8PmrOdE6QST7qxlMfle++09inONdDn7cgASNUp5mvfYUpJ
         tnCQ==
X-Gm-Message-State: ACrzQf01VIcB3OxECFNFvABApwAB3aoW/txB+5bzkRVmXx4VCsqR/YVD
        fDgVEupVgi9EtoX0GEIsRpwPmuwkLDD6gQ==
X-Google-Smtp-Source: AMsMyM70xCIcT6qpBNj8jLWZtBAiADUsirX1triOUABR6cd2pbrfSfbgDInmqyn9SltOrhVxuCyqQQ==
X-Received: by 2002:a6b:5b09:0:b0:6a1:4b90:5be9 with SMTP id v9-20020a6b5b09000000b006a14b905be9mr2814589ioh.119.1664496857554;
        Thu, 29 Sep 2022 17:14:17 -0700 (PDT)
Received: from sjg1.roam.corp.google.com (c-67-190-102-125.hsd1.co.comcast.net. [67.190.102.125])
        by smtp.gmail.com with ESMTPSA id d68-20020a6bcd47000000b006a11760aebbsm379325iog.36.2022.09.29.17.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 17:14:16 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>,
        U-Boot Custodians <u-boot-custodians@lists.denx.de>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH v2] schemas: Add schema for U-Boot driver model 'phase tags'
Date:   Thu, 29 Sep 2022 18:14:10 -0600
Message-Id: <20220930001410.2802843-1-sjg@chromium.org>
X-Mailer: git-send-email 2.38.0.rc1.362.ged0d419d3c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Until recently it has not been possible to add any U-Boot-specific
properties to the device tree schema. Now that it is somewhat separated
from Linux and people are feeling the enormous pain of the bifurcated
schema, it seems like a good time to add this and other U-Boot-specific
bindings.

U-Boot has some particular challenges with device tree and devices which
are not faced with Linux:

- U-Boot has multiple build phases, such as a Secondary Program Loader
  (SPL) phase which typically runs in a pre-SDRAM environment where code
  and data space are limited. In particular, there may not be enough
  space for the full device tree blob. U-Boot uses various automated
  techniques to reduce the size from perhaps 40KB to 3KB.
- Some U-Boot phases needs to run before the clocks are properly set up,
  where the CPU may be running very slowly. Therefore it is important to
  bind only those devices which are actually needed in that phase
- Unlike Linux or UEFI, U-Boot uses lazy initialisation for its devices,
  with 'bind' and 'probe' being separate steps. Even if a device is bound,
  it is not actually probed until it is used. This is necessary to keep
  the boot time reasonable, e.g. to under a second

The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
pre-relocation, then post-relocation). ALl but the last two are optional.

For the above reasons, U-Boot only includes the full device tree in the
final 'U-Boot proper' build. Even then, before relocation U-Boot only
processes nodes which are marked as being needed.

For this to work, U-Boot's driver model[1] provides a way to mark device
tree nodes as applicable for a particular phase. This works by adding a
tag to the node, e.g.:

   cru: clock-controller@ff760000 {
      u-boot,dm-all;
      compatible = "rockchip,rk3399-cru";
      reg = <0x0 0xff760000 0x0 0x1000>;
      rockchip,grf = <&grf>;
      #clock-cells = <1>;
      #reset-cells = <1>;
      ...
   };

Here the "u-boot,dm-all" tag indicates that the node must be present in
all phases, since the clock driver is required

There has been discussion over the years about whether this could be done
in a property instead, e.g.

   options {
      u-boot,dm-all = <&cru> <&gpio_a> ...;
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
all cases. We could perhaps adopt U-Boot's naming for the phases and drop
the "u-boot," prefix, but that might cause confusion.

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

Changes in v2:
- Expand docs to include a description of each tag
- Fix some typos and unclear wording

 dtschema/schemas/u-boot.yaml | 66 ++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 dtschema/schemas/u-boot.yaml

diff --git a/dtschema/schemas/u-boot.yaml b/dtschema/schemas/u-boot.yaml
new file mode 100644
index 0000000..0674684
--- /dev/null
+++ b/dtschema/schemas/u-boot.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: BSD-2-Clause
+# Copyright 2022 Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Bindings required by U-Boot driver model
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+patternProperties:
+  "^u-boot,dm-(tpl|vpl|spl|all|pre-reloc)$":
+    type: boolean
+    description: |
+      The device tree is often quite large (e.g. 40KB) and cannot fit into xPL
+      phases like SPL, TPL. Even with U-Boot proper, we normally only want to
+      init a small subset of devices before relocation.
+
+      U-Boot supports adding tags to device tree nodes to allow them to be
+      marked according to the U-Boot phases where they should be included.
+
+      Without any tags, nodes are included only in U-Boot proper after
+      relocation. Any untagged nodes are dropped from xPL and are ignored before
+      relocation in U-Boot proper.
+
+      The xPL builds use fdtgrep drop any nodes which are not needed for that
+      build. For example, TPL will drop any nodes which are not marked with
+      u-boot,dm-tpl or u-boot,dm-all tags.
+
+      The available tags are as follows:
+
+        u-boot,dm-all:
+          Include this node in all phases (see enum u_boot_phase)
+
+        u-boot,dm-pre-reloc:
+          Enable this node before relocation in U-Boot proper
+
+        u-boot,dm-tpl:
+          Enable this node in the Tertiary Program Loader (TPL)
+
+        u-boot,dm-vpl:
+          Enable this node in the Verifying Program Loader (VPL)
+
+        u-boot,dm-spl:
+          Enable this node in the Secondary Program Loader (SPL)
+
+      Note that xPL builds also drop the tags, since they have served their
+      purpose by that point. So when looking at xPL device tree files you will
+      not see these tags. This means, for example, that ofnode_pre_reloc()
+      always returns true in xPL builds. This is done to save space.
+
+      Multiple tags can be used in the same node.
+
+      One complication is that tags apply only to the node they are added to,
+      not to any parents. This means that you often need to add the same tag to
+      parent nodes so that any properties needed by the parent driver are
+      included. Without that, the parent node may have no properties, or may not
+      be bound before relocation (meaning that its child will not be bound
+      either).
+
+      The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
+      pre-relocation, then post-relocation). ALl but the last two are optional.
+
+additionalProperties: true
-- 
2.38.0.rc1.362.ged0d419d3c-goog

