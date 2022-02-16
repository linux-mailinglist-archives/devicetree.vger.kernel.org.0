Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2B04B860D
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 11:42:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbiBPKlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 05:41:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:55316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229931AbiBPKlv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 05:41:51 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5608CC500
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:41:39 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id c15so2580804ljf.11
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 02:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uxkPFNaxaicsQbfNmfxnU1cSsYNSvzImPtTbPcKo1nE=;
        b=cZwt+qi3n5u+E1+HrihyYZD1w9BAxIRkRA3JLqFGQQeADLsKGTKb+NMR+igqKxOHMf
         loN+JMfEZ1RbI/3P7i4KipfSah5R0GHwwGeDhdfy6rRYzksxWPg1xUOJ+9s4uTVvdYFu
         x9JBIKgU2IB/FJJiNZJ75UYjjypovvxGsni34uLwd0CLuyFE8N04jeYmuVoh9txJm8mw
         s7mvKdIIzp9CT9/dqja0LVj6jywvI+VPaCZJvVI5GLpG6Apdeu6BP/V/avIWc7+ddBqe
         Xqhqvlj4W6HfqiDUk3ZRDjhcA9gkWaYUjqQOnv2EFCcNJODBHIPlxI7nN/LQzmXTqP0P
         sAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uxkPFNaxaicsQbfNmfxnU1cSsYNSvzImPtTbPcKo1nE=;
        b=SPsKEkLO7v51DvdEj+Sssc2QufbTuXypQWQF+bP2AtGgHytdl6SRiDmPu0HtMd3uwM
         35dgbr4+qBlLYiRsJeMS4vy3WFEg3HF0lzCgdgbdTcr716mvguMusIHI5nA4E3d3ibxC
         FjGqkCvnSDxVWx8+HjShIwXmCzjic6myUkOBeDyguOAsGp4QipgB351CyZFMmv1LZi1M
         OBaarTJcB4MeYyGcdLCFTPrDUjZ4HpGkSo/gbgONHjG1xSfdyoOwVWH9bQelJixAR4J6
         ZbQsATm6x6wOCQ5UN/rBBy+Ea0PQ0oN+c5R6BmEVt2t3wPmiFi6TWYWrlYoGPX6eHgYV
         OJ3A==
X-Gm-Message-State: AOAM531sb1DOlPpk3fTjNKwRwS2Idq9thP4PAQQX6dk4BfOo5Xm0gEa8
        N3dlK8OBZ2iQcwIL/8RWq1U=
X-Google-Smtp-Source: ABdhPJzMPLylz/iHnkCr+WtpCPlsdN1frKc29HDXyKg7aEb7EqHfz8UxQ9gynzBn9dGFnO2Dk1cFQQ==
X-Received: by 2002:a2e:6818:0:b0:235:3ae:c2c8 with SMTP id c24-20020a2e6818000000b0023503aec2c8mr1535212lja.252.1645008097873;
        Wed, 16 Feb 2022 02:41:37 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id v18sm2814082lft.281.2022.02.16.02.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Feb 2022 02:41:37 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] dt-bindings: mtd: partitions: convert BCM47xx to the json-schema
Date:   Wed, 16 Feb 2022 11:41:35 +0100
Message-Id: <20220216104135.31307-1-zajec5@gmail.com>
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
 .../brcm,bcm947xx-cfe-partitions.txt          | 42 ----------------
 .../brcm,bcm947xx-cfe-partitions.yaml         | 48 +++++++++++++++++++
 2 files changed, 48 insertions(+), 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.txt
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.txt b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.txt
deleted file mode 100644
index 1d61a029395e..000000000000
--- a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Broadcom BCM47xx Partitions
-===========================
-
-Broadcom is one of hardware manufacturers providing SoCs (BCM47xx) used in
-home routers. Their BCM947xx boards using CFE bootloader have several partitions
-without any on-flash partition table. On some devices their sizes and/or
-meanings can also vary so fixed partitioning can't be used.
-
-Discovering partitions on these devices is possible thanks to having a special
-header and/or magic signature at the beginning of each of them. They are also
-block aligned which is important for determinig a size.
-
-Most of partitions use ASCII text based magic for determining a type. More
-complex partitions (like TRX with its HDR0 magic) may include extra header
-containing some details, including a length.
-
-A list of supported partitions includes:
-1) Bootloader with Broadcom's CFE (Common Firmware Environment)
-2) NVRAM with configuration/calibration data
-3) Device manufacturer's data with some default values (e.g. SSIDs)
-4) TRX firmware container which can hold up to 4 subpartitions
-5) Backup TRX firmware used after failed upgrade
-
-As mentioned earlier, role of some partitions may depend on extra configuration.
-For example both: main firmware and backup firmware use the same TRX format with
-the same header. To distinguish currently used firmware a CFE's environment
-variable "bootpartition" is used.
-
-
-Devices using Broadcom partitions described above should should have flash node
-with a subnode named "partitions" using following properties:
-
-Required properties:
-- compatible : (required) must be "brcm,bcm947xx-cfe-partitions"
-
-Example:
-
-flash@0 {
-	partitions {
-		compatible = "brcm,bcm947xx-cfe-partitions";
-	};
-};
diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.yaml
new file mode 100644
index 000000000000..3484e06d6bcb
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-partitions.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/brcm,bcm947xx-cfe-partitions.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM47xx Partitions
+
+description: |
+  Broadcom is one of hardware manufacturers providing SoCs (BCM47xx) used in
+  home routers. Their BCM947xx boards using CFE bootloader have several
+  partitions without any on-flash partition table. On some devices their sizes
+  and/or meanings can also vary so fixed partitioning can't be used.
+
+  Discovering partitions on these devices is possible thanks to having a special
+  header and/or magic signature at the beginning of each of them. They are also
+  block aligned which is important for determinig a size.
+
+  Most of partitions use ASCII text based magic for determining a type. More
+  complex partitions (like TRX with its HDR0 magic) may include extra header
+  containing some details, including a length.
+
+  A list of supported partitions includes:
+  1) Bootloader with Broadcom's CFE (Common Firmware Environment)
+  2) NVRAM with configuration/calibration data
+  3) Device manufacturer's data with some default values (e.g. SSIDs)
+  4) TRX firmware container which can hold up to 4 subpartitions
+  5) Backup TRX firmware used after failed upgrade
+
+  As mentioned earlier, role of some partitions may depend on extra
+  configuration. For example both: main firmware and backup firmware use the
+  same TRX format with the same header. To distinguish currently used firmware a
+  CFE's environment variable "bootpartition" is used.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  compatible:
+    const: brcm,bcm947xx-cfe-partitions
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "brcm,bcm947xx-cfe-partitions";
+    };
-- 
2.34.1

