Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C5345B940D
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 07:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbiIOFzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 01:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbiIOFzT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 01:55:19 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D8818A7E0
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 22:55:18 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id t7so29047466wrm.10
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 22:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=LlND6Dab2AM0prGfkDkgsIeCNEIfa8/dizr9NeMGYf0=;
        b=HaedoLDBCH2GzUrY45PxgB0/6ssE91oduCO6XWOQtp4VFf818rzafVmCVmqR+ysApY
         CrTliJBd9JNa13G9yPs057nu7A6M6lkIoFblBJIvydOTP8Zvrgu5uIp6LpprliaXF97l
         pnEgrFCdob0eC9eP+YSyWs8PkdeqeH4fBnrFDwh3dl1M6x0fwp+cUKGd6TSWDlkj98Nk
         Y7hfkfDSfnZTHVEO8HmCgod4caYrhcncr2+mQ6fpMU6r4uNE7Z3+R1uJOsIlswvWdNyd
         mG06L0uBAd5xmtip0A6BGCIOUiu3T/rsU/ymktEIRxFlwUj26rQgmfbdPywtUp0409FW
         UNIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=LlND6Dab2AM0prGfkDkgsIeCNEIfa8/dizr9NeMGYf0=;
        b=uhQ0OmWGmQ1k58W2VcQjmKgBXsBckIo8+9qv7ZvmMhzFkQhLbH0Q2/CQpGSLKiCcwG
         E2R7YTKqZuC40/IY/5p52/EpigKdfQ7MDIspG3662+RHlzcR7P996H0WleYXG/i+VkqG
         U7Qy3FT446JlbIlFxTia34oaxnlbnRDjiEqevL1CFlECXmhZfYetNKji+HtPECqS7cgd
         aLndS9IQkziQSAIqvr2PRzTNnwzkPHlSdXZyRDC7DXhzMN+zm1jb3xx4AYjPBbRoELrq
         9U/mUaTUuQRL1kAYn1lSR5LG7KzAYroITFuun+lKfvaqNWJF0cZJVYY6IOD2iU5CkaJK
         Q3zg==
X-Gm-Message-State: ACgBeo2TMfsLWnElAI5tuO9E0bjyCFPi5g3k+0UeD9In1d+/QqN/9Jey
        BO3BXDwdNgywblN1MZURrWMpobHL4t9zK0qw
X-Google-Smtp-Source: AA6agR7N2L6Dzw7hXpAwFSE1eO/ZEhqW8/QJLOdiHTMIlAdsuan7nU1MuWwXOLbggHdl3gUQKIVvog==
X-Received: by 2002:a5d:4742:0:b0:22a:3a88:d9e6 with SMTP id o2-20020a5d4742000000b0022a3a88d9e6mr18428909wrs.438.1663221316634;
        Wed, 14 Sep 2022 22:55:16 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id i22-20020a05600c355600b003b492fc1d86sm1473868wmq.41.2022.09.14.22.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 22:55:16 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com
Subject: [PATCH] dt-bindings: mips: add CPU bindings for MIPS architecture
Date:   Thu, 15 Sep 2022 07:55:14 +0200
Message-Id: <20220915055514.463241-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the yaml binding for available CPUs in MIPS architecture.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../devicetree/bindings/mips/cpus.yaml        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mips/cpus.yaml

diff --git a/Documentation/devicetree/bindings/mips/cpus.yaml b/Documentation/devicetree/bindings/mips/cpus.yaml
new file mode 100644
index 000000000000..4277adc65ed6
--- /dev/null
+++ b/Documentation/devicetree/bindings/mips/cpus.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mips/cpus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MIPS CPUs bindings
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+description: |+
+  The device tree allows to describe the layout of CPUs in a system through
+  the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
+  defining properties for every cpu.
+
+properties:
+  reg:
+    maxItems: 1
+
+  compatible:
+    enum:
+      - brcm,bmips3300
+      - brcm,bmips4350
+      - brcm,bmips4380
+      - brcm,bmips5000
+      - brcm,bmips5200
+      - ingenic,xburst-mxu1.0
+      - ingenic,xburst-fpu1.0-mxu1.1
+      - ingenic,xburst-fpu2.0-mxu2.0
+      - loongson,gs264
+      - mips,mips1004Kc
+      - mips,m14Kc
+      - mips,mips24KEc
+      - mips,mips4KEc
+      - mips,mips74Kc
+      - mips,mips24Kc
+      - mti,mips24KEc
+      - mti,mips14KEc
+      - mti,mips14Kc
+      - mti,interaptiv
+
+required:
+  - compatible
+
+additionalProperties: true
+
+examples:
+  - |
+    cpus {
+      #size-cells = <0>;
+      #address-cells = <1>;
+
+      cpu@0 {
+        device_type = "cpu";
+        compatible = "mips,mips1004Kc";
+        reg = <0>;
+      };
+
+      cpu@1 {
+        device_type = "cpu";
+        compatible = "mips,mips1004Kc";
+        reg = <1>;
+      };
+    };
+
-- 
2.25.1

