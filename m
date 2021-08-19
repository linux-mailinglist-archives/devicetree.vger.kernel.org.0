Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 166A93F1CA8
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 17:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239249AbhHSP0w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 11:26:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240040AbhHSP0v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 11:26:51 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CA0AC061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:26:15 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id d4so13745149lfk.9
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 08:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4BM8uArLWhZqMYBIRXZKs9FqZATS036SpIz7gyst2BE=;
        b=HMFD2eR8yH4bPOiVarnaKqmXbrjcPAKhFCIeg9lAi/BA+OnNMV+OCOLFWBp+nRwf3i
         rRMNIDmGb3TTFGdHT/LfvbjZTIVxGcde4pjkKk3Se7DrmdnzZgtDz71pR9PgSALimVQ9
         +h5d9meXe9OLT37ka5C2ds31kmFXuJeu63CiS/6ZyuYkaUGTQr56tXJsLq44H7VijVu4
         /suEBV/RlC5LQvjdhY0KgAUUT2n2O70kzaWgFa/0ljCAPJxvMatweBOWjDKsqgejtKCL
         36glflBiTr2Xq0anDnESHsMFhRhzB25nAKUgQ2WiPlp+l5+lkNfXk03I34P4fl6N5RPK
         ht5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4BM8uArLWhZqMYBIRXZKs9FqZATS036SpIz7gyst2BE=;
        b=SaxpJhs8wA7VzJ4sX0tO1GDO/z0SIMVe1ccWQYQwgMHhcdD87GmmTeE2KXe0I+6Ft4
         EQoCzOCwYosEl+PQIjCakqjNR0QXvAGJGugEx5fopUe085U3v0B2PcuRAr9Qu3xCMnAS
         nqkhO45uE4j9EoEMKCLyYZHOxXpw5emKp/o0dDbFNuude5wbeaA3qY9k+e+TAqFhjXm6
         DcL6dsEE9G42fy3C0f3XkiI0eP4ZTaPa0ZSesh6lA+8jyruXF1GP5ujl8lwSrkxtwCuw
         MfhNegNkSySklfiT/YHbvyL3w+quBZ7UtikyrtNrxbMn35ehC1Wu2RBnyYG6Cq7sUlbj
         OTaw==
X-Gm-Message-State: AOAM532D70MO6hE63dy9VZIkJVe09brLVOVNh70Z/wIt7UEsshfzwTMZ
        OLvGpCkSSuurUR9oXukkYaSkTOkm3HXMJQ==
X-Google-Smtp-Source: ABdhPJwVxMX/+D618HzOzR6JILVKEFjjF1UnrI9w/hJFxAKGpfWDf+OvNt1rQ2wu7TxJoHqjeYD52Q==
X-Received: by 2002:a05:6512:456:: with SMTP id y22mr10863044lfk.647.1629386773371;
        Thu, 19 Aug 2021 08:26:13 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id j15sm304819ljq.108.2021.08.19.08.26.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 08:26:12 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: mfd: add Broadcom's MISC block
Date:   Thu, 19 Aug 2021 17:25:52 +0200
Message-Id: <20210819152552.23784-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Broadcom's MISC is an MFD hardware block used on some of their SoCs like
bcm63xx and bcm4908. At this point only PCIe reset is fully understood
and documented. More functions may be added later.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Broadcom's BCM4908 struct with MISC block registers:

typedef struct Misc {
   uint32 miscStrapBus; /* 0x00 */
   uint32 miscStrapOverride;     /* 0x04 */
   uint32 miscSoftwareDebug[6];  /* 0x08 */
   uint32 miscWDResetCtrl;       /* 0x20 */
   uint32 miscSoftwareDebugNW[2];/* 0x24 */
   uint32 miscSoftResetB;        /* 0x2c */
   uint32 miscQAMPllStatus;      /* 0x30 */
   uint32 miscRsvd1;             /* 0x34 */
   uint32 miscSpiMasterCtrl;     /* 0x38 */
   uint32 miscAltBootVector;     /* 0x3c */
   uint32 miscPeriphCtrl;        /* 0x40 */
   uint32 miscPCIECtrl;          /* 0x44 */
   uint32 miscAdsl_clock_sample; /* 0x48 */
   uint32 miscRngCtrl;           /* 0x4c */
   uint32 miscMbox_data[4];      /* 0x50 */
   uint32 miscMbox_ctrl;         /* 0x60 */
   uint32 miscxMIIPadCtrl[4];    /* 0x64 */
   uint32 miscxMIIPullCtrl[4];    /* 0x74 */
   uint32 miscWDResetEn;          /* 0x84 */
   uint32 miscBootOverlayEn;      /* 0x88 */
   uint32 miscSGMIIFiberDetect;   /* 0x8c */
   uint32 miscUniMacCtrl;         /* 0x90 */
   uint32 miscMaskUBUSErr;        /* 0x94 */
   uint32 miscTOSsync;            /* 0x98 */
   uint32 miscPM0_1_status;       /* 0x9c */
   uint32 miscPM2_3_status;       /* 0xa0 */
   uint32 miscSGB_status;         /* 0xa4 */
   uint32 miscPM0_1_config;       /* 0xa8 */
   uint32 miscPM2_3_config;       /* 0xac */
   uint32 miscSGB_config;         /* 0xb0 */
   uint32 miscPM0_1_tmon_config;  /* 0xb4 */
   uint32 miscPM2_3_tmon_config;  /* 0xb8 */
   uint32 miscSGB_tmon_config;    /* 0xbc */
   uint32 miscMDIOmasterSelect;   /* 0xc0 */
   uint32 miscUSIMCtrl;           /* 0xc4 */
   uint32 miscUSIMPadCtrl;        /* 0xc8 */
   uint32 miscPerSpareReg[3];     /* 0xcc - 0xd4 */
   uint32 miscDgSensePadCtrl;     /* 0xd8 */
   uint32 miscPeriphMiscCtrl;     /* 0xdc */
   uint32 miscPeriphMiscStat;     /* 0xe0 */
} Misc;
---
 .../devicetree/bindings/mfd/brcm,misc.yaml    | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/brcm,misc.yaml

diff --git a/Documentation/devicetree/bindings/mfd/brcm,misc.yaml b/Documentation/devicetree/bindings/mfd/brcm,misc.yaml
new file mode 100644
index 000000000000..cff7d772a7db
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/brcm,misc.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/brcm,misc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom's MISC block
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+description: |
+  Broadcom's MISC is a hardware block used on some SoCs (e.g. bcm63xx and
+  bcm4908). It's used to implement some simple functions like a watchdog, PCIe
+  reset, UniMAC control and more.
+
+properties:
+  compatible:
+    items:
+      - const: brcm,misc
+      - const: simple-mfd
+
+  reg:
+    description: MISC block registers
+
+  ranges: true
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  '^reset-controller@[a-f0-9]+$':
+    $ref: ../reset/brcm,bcm4908-misc-pcie-reset.yaml
+
+additionalProperties: false
+
+required:
+  - reg
+  - '#address-cells'
+  - '#size-cells'
+
+examples:
+  - |
+    misc@ff802600 {
+        compatible = "brcm,misc", "simple-mfd";
+        reg = <0xff802600 0xe4>;
+
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x0 0xe4>;
+
+        reset-controller@44 {
+            compatible = "brcm,bcm4908-misc-pcie-reset";
+            reg = <0x44 0x4>;
+            #reset-cells = <1>;
+        };
+    };
-- 
2.26.2

