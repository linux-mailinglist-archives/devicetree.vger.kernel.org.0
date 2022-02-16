Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 924AB4B8611
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 11:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229477AbiBPKlr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 05:41:47 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiBPKlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 05:41:47 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D18147922A
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:41:34 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id b11so2964299lfb.12
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=knI7tMDeWVfdMzmxEcs3NisycvR0bIvCJkXVBxJ8CJw=;
        b=GIzSA99Z3MG1nlY/Y+cAHx2IZg7ZJibSFsyz7M4fOBgftf4YIj7h7HcVOmVVm3a5Ym
         CEoaC0lKL51ULHHXu0FeUvZD760/VslVE5D3CnoLdJj+Ak+KgfeTf1R1dNu1jPWxFr9x
         B4KO+AKHQI+tbjEmwGHBc+ovMHB2ga2j01egJ6qxr6DYLhdblZK3dddTs62rRADO1liG
         gCVtL01Fwtiz5P9BSsdKTpyH0Gd2A6P6moJsFkBSoVoulpZ3r7Ijy0XyC9qlxWhgLD9F
         oeRZNHHFUbT3H9rFHko74Bu6vvOpZhMeYra7opXA/3iwWggyWW3yfmAfQ0iVgO8pMsLU
         zfuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=knI7tMDeWVfdMzmxEcs3NisycvR0bIvCJkXVBxJ8CJw=;
        b=vvEY/amLoU1gmJ08qbGDCkQl1EFC92MRZTEaiEMK+smPWV7VKlQzpHSr3i///DUxMq
         bA0eDpZInocQmwx6m+qtKpsPDxwUnhUSVF40RXxe4hwVjYkAO4ERIVmPfKWc1KR72IUw
         OEW71pxhcROocRTFCNIgWU9P5TwLpgbEvtF6MOuYBAW13Sqz/LCms2UZY/lcQfNOSFvk
         sOF3A5CeV1MQF+EjUjKK5epsoT0lpUIHrXIR7B1GAoHJ1or7vaQ+b0Q1vT8M2yXBnb4o
         Bqmx1ILvuRPLi7oELcjnm77enQ14lM6Gp6WwPjAXM2fPi/HgRUhfxzmLqGWwJ5rCVt7e
         eW3Q==
X-Gm-Message-State: AOAM531DiC2HX17bCVVjxYwFju1fyq2OpbzgWH4VXFGG01Im6Wxj2IKB
        L3N5sY+tPTy8xQ8zukibf08=
X-Google-Smtp-Source: ABdhPJzpMvPHGEar3tGpOkLILDN1Fs6Tis1Q7TOdn/6o0/BKsIgk808BzVzFbJY6byqGDVr9bEqAaw==
X-Received: by 2002:ac2:420d:0:b0:443:63f4:28f1 with SMTP id y13-20020ac2420d000000b0044363f428f1mr1523823lfh.443.1645008092959;
        Wed, 16 Feb 2022 02:41:32 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n4sm188328lfl.296.2022.02.16.02.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Feb 2022 02:41:32 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: mtd: partitions: convert Broadcom's TRX to the json-schema
Date:   Wed, 16 Feb 2022 11:41:26 +0100
Message-Id: <20220216104126.31284-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This helps validating DTS files.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../bindings/mtd/partitions/brcm,trx.txt      | 42 ---------------
 .../bindings/mtd/partitions/brcm,trx.yaml     | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
deleted file mode 100644
index c2175d3c82ec..000000000000
--- a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Broadcom TRX Container Partition
-================================
-
-TRX is Broadcom's official firmware format for the BCM947xx boards. It's used by
-most of the vendors building devices based on Broadcom's BCM47xx SoCs and is
-supported by the CFE bootloader.
-
-Design of the TRX format is very minimalistic. Its header contains
-identification fields, CRC32 checksum and the locations of embedded partitions.
-Its purpose is to store a few partitions in a format that can be distributed as
-a standalone file and written in a flash memory.
-
-Container can hold up to 4 partitions. The first partition has to contain a
-device executable binary (e.g. a kernel) as it's what the CFE bootloader starts
-executing. Other partitions can be used for operating system purposes. This is
-useful for systems that keep kernel and rootfs separated.
-
-TRX doesn't enforce any strict partition boundaries or size limits. All
-partitions have to be less than the 4GiB max size limit.
-
-There are two existing/known TRX variants:
-1) v1 which contains 3 partitions
-2) v2 which contains 4 partitions
-
-There aren't separated compatible bindings for them as version can be trivialy
-detected by a software parsing TRX header.
-
-Required properties:
-- compatible : (required) must be "brcm,trx"
-
-Optional properties:
-
-- brcm,trx-magic: TRX magic, if it is different from the default magic
-		  0x30524448 as a u32.
-
-Example:
-
-flash@0 {
-	partitions {
-		compatible = "brcm,trx";
-	};
-};
diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
new file mode 100644
index 000000000000..ec871c9cf605
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/brcm,trx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom TRX Container Partition
+
+description: |
+  TRX is Broadcom's official firmware format for the BCM947xx boards. It's used
+  by most of the vendors building devices based on Broadcom's BCM47xx SoCs and
+  is supported by the CFE bootloader.
+
+  Design of the TRX format is very minimalistic. Its header contains
+  identification fields, CRC32 checksum and the locations of embedded
+  partitions. Its purpose is to store a few partitions in a format that can be
+  distributed as a standalone file and written in a flash memory.
+
+  Container can hold up to 4 partitions. The first partition has to contain a
+  device executable binary (e.g. a kernel) as it's what the CFE bootloader
+  starts executing. Other partitions can be used for operating system purposes.
+  This is useful for systems that keep kernel and rootfs separated.
+
+  TRX doesn't enforce any strict partition boundaries or size limits. All
+  partitions have to be less than the 4GiB max size limit.
+
+  There are two existing/known TRX variants:
+  1) v1 which contains 3 partitions
+  2) v2 which contains 4 partitions
+
+  There aren't separated compatible bindings for them as version can be trivialy
+  detected by a software parsing TRX header.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    const: brcm,trx
+
+  brcm,trx-magic:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: TRX magic, if it is different from the default 0x30524448
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "brcm,trx";
+    };
-- 
2.34.1

