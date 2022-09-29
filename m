Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 711975EFE3A
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 21:58:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbiI2T6O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 15:58:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229501AbiI2T6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 15:58:13 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B405D1F1EB5
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 12:58:12 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id o2so1260161ils.0
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 12:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=NaUNpKkXnBCbxeboRVySyGStCfz2/i/bp4T/Us4I5S8=;
        b=iHjZcPSDEV6YAPLbxaevjkEgL176KVWTIgd068QXcy3vtKo91Xw3eE6vGsxM/RwTje
         E7/3UgRCEmh89zA1yLIwETCeuISHK/YhSAmiSixtfS/mdmgXr3yKn3r/yBicVtDHiEyc
         c+A692MPANJ4/vwult6HBBffKRUVehnmS+ayc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=NaUNpKkXnBCbxeboRVySyGStCfz2/i/bp4T/Us4I5S8=;
        b=BxWzhMSOX5jaOy/A+YjaVoFQb0rhazsHy/8ZtpkMchpUGdUFkNIZOWzBfwB98wY/r6
         1gNfaoiw04s8G+z/zjj5AU8Bt6bTOdfmD9C5cvJeMk1J2gLTvn0Yw/DeZhHtb709IJUM
         gcipX1GqkcMt+fN846Uwbh8WHdmLCH4Mi/JrSxnAIZ3yUH0V6XgCjnw+wEwJJRrX9nAn
         V5Ts/lsv2ALSBugkvDGkmB/2O5uXV9j2A1j6vHZKzNHfGlIlZvpoJPWmIY/uLsav2odr
         V3NOGQI9AkpPGd02CeIwJatBC+0vNdQ6CnfQ4cHEjJSKlGGct50P+4ufdNK7aAzZcC93
         opyA==
X-Gm-Message-State: ACrzQf1kwZGIqw5VuDRonwNA2c9bgnKaO0fuvE7u6HnXw1zRqJ7yuFiG
        l3guJv1jqpyS2fHw+Q6hnAWr7rIDVS6BQA==
X-Google-Smtp-Source: AMsMyM5eJNk2ytSROadnZCOsNMZtOFLG7L3mWTWRS2+NS8wT5F2KkB09BJFrcK8o9Ct0nux8p/egkw==
X-Received: by 2002:a05:6e02:190a:b0:2f8:4cf9:3ca4 with SMTP id w10-20020a056e02190a00b002f84cf93ca4mr2482167ilu.51.1664481491706;
        Thu, 29 Sep 2022 12:58:11 -0700 (PDT)
Received: from sjg1.roam.corp.google.com (c-67-190-102-125.hsd1.co.comcast.net. [67.190.102.125])
        by smtp.gmail.com with ESMTPSA id r15-20020a02aa0f000000b00359fbe10489sm116834jam.103.2022.09.29.12.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 12:58:10 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH] schemas: Add schema for U-Boot driver model 'phase tags'
Date:   Thu, 29 Sep 2022 13:58:03 -0600
Message-Id: <20220929195804.2773808-1-sjg@chromium.org>
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

 dtschema/schemas/u-boot.yaml | 48 ++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 dtschema/schemas/u-boot.yaml

diff --git a/dtschema/schemas/u-boot.yaml b/dtschema/schemas/u-boot.yaml
new file mode 100644
index 0000000..6c5c820
--- /dev/null
+++ b/dtschema/schemas/u-boot.yaml
@@ -0,0 +1,48 @@
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
+      Note that xPL builds also drop the tags, since they have server their
+      purpose by that point. So when looking at xPL device tree files you will
+      not see these tags. The means, for example, that ofnode_pre_reloc()
+      returns true always in xPL builds. This is done to save space.
+
+      Multiple tags can be used in the same node.
+
+      One complication is that tags apply only to the node they are added to,
+      not to any parents. This means that you often need to add the same tag to
+      parent nodes so that any properties needed by the parent driver are
+      included. Without that, the parent node may have no properties, or may not
+      be bound before relocation (meaning that its child will not be either).
+
+      The phases of U-Boot in order are: TPL, VPL, SPL, U-Boot (first
+      pre-relocation, then post-relocation). ALl but the last two are optional.
+
+additionalProperties: true
-- 
2.38.0.rc1.362.ged0d419d3c-goog

