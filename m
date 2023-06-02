Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D48F720B48
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 23:56:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236194AbjFBV4j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 17:56:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232032AbjFBV4i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 17:56:38 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77D201A5
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 14:56:37 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f4bdcde899so3431813e87.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 14:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685742996; x=1688334996;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ejtbb0LGgE+Vt7kV/qkAvfTr4gmEE3GQyu2v91vh9Jw=;
        b=g73ysZ3NwhLTyBa6ARvagTpAFESwD0w4H5aijMfRQRf6r4PFZ6RQ6M8wYk89ZSRU6q
         svzUVp/JJ0M1WRxz+43UlsdD+g2/0Zir1M/HjxfjIFktuyLYnCLRe4pvcgvw7dt+9dPD
         ibIovkDzh3RILP0r5UAaJSLxPaP/zO1rYSv005XtYZThoLfY5tPrlHe7QxjQbkApA04j
         FGo7/NYX3m3Uvn+mpWWV6U+g1Slx+NpQ43tGhbvVrnJ9/2UV5/n9rqx0AKkQnbz26WyB
         J7HpdomvvpMN9l1shPXvPeknqCqMs62FP2SnQjW5LaCpqBzt7EiPOWkDdX5sMgp3+4dl
         iv2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685742996; x=1688334996;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ejtbb0LGgE+Vt7kV/qkAvfTr4gmEE3GQyu2v91vh9Jw=;
        b=a86sRxTxCjTZ74xzZkDTttJtMwGPVaQIuATR9Q0bMUvzoK5y4nRcIqqit+UwQ41BxP
         els+BNwkK6941F0N+b1eAKwl3ZRk3u/bXfnooQbN80/6yWwFAKDqg+qdzhfobrXXE967
         Apqk1xJ0dXNRONqLKOz6vO2bhPuv/pNx9snM5jEhytuSJQW0O4McIMkyUpZQHIxiLqQq
         +vD51qcinjE4Y9kEHItfcrxKenbtMfC8I5mzBrm0qOyNKIUXK+99AFYak0VtJ12y24Wt
         NspXxNiwol22wiZFpIteWLDApjB7Q/I5kP1+CwLwG69FFgKXfaP+5igjy5BZd6aEFh1x
         1Tng==
X-Gm-Message-State: AC+VfDxO2gZHHWohmeSS+vpIDS/kEL06w/hB8jCo/HTtduFzBSR5LAi0
        ZWL3JpzR1l/CHOKvakbRt5o=
X-Google-Smtp-Source: ACHHUZ6a8dLaEeZm6ew3mIFWAaHoG+Qjki4Rx6Auqkfx1tF5ePx+mNasdRCWgGM15Pa0gWvO9bNpcg==
X-Received: by 2002:ac2:51b9:0:b0:4f6:1190:abab with SMTP id f25-20020ac251b9000000b004f61190ababmr1626915lfk.22.1685742995388;
        Fri, 02 Jun 2023 14:56:35 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id u20-20020ac243d4000000b004eb0c51780bsm287118lfl.29.2023.06.02.14.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 14:56:34 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Pratyush Yadav <ptyadav@amazon.de>, Dhruva Gole <d-gole@ti.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2] dt-bindings: mtd: partitions: Include TP-Link SafeLoader in allowed list
Date:   Fri,  2 Jun 2023 23:56:29 +0200
Message-Id: <20230602215629.2568-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
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

It's supposed to be there and it's needed for proper validation of DTS
files.

This fixes following errors for Northstar based TP-Link routers:

arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: 'oneOf' conditional failed, one must be fixed:
        'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: 'pinctrl-[0-9]+'
        '#address-cells' is a required property
        '#size-cells' is a required property
        'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition@[0-9a-f]+$', 'pinctrl-[0-9]+'
        'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition-[0-9a-z]+$', 'pinctrl-[0-9]+'
        'fis-index-block' is a required property
        arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions:compatible: 'oneOf' conditional failed, one must be fixed:
                ['tplink,safeloader-partitions'] is too short
                'fixed-partitions' was expected
                'sercomm,sc-partitions' was expected
        'arm,arm-firmware-suite' was expected
        'brcm,bcm4908-partitions' was expected
        'brcm,bcm947xx-cfe-partitions' was expected
        'linksys,ns-partitions' was expected
        'qcom,smem-part' was expected
        'redboot-fis' was expected
        From schema: Documentation/devicetree/bindings/mtd/mtd.yaml
arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: Unevaluated properties are not allowed ('partitions-table-offset' was unexpected)
        From schema: Documentation/devicetree/bindings/mtd/mtd.yaml
arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: 'oneOf' conditional failed, one must be fixed:
        'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: 'pinctrl-[0-9]+'
        '#address-cells' is a required property
        '#size-cells' is a required property
        'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition@[0-9a-f]+$', 'pinctrl-[0-9]+'
        'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition-[0-9a-z]+$', 'pinctrl-[0-9]+'
        'fis-index-block' is a required property
        arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions:compatible: 'oneOf' conditional failed, one must be fixed:
                ['tplink,safeloader-partitions'] is too short
                'fixed-partitions' was expected
                'sercomm,sc-partitions' was expected
        'arm,arm-firmware-suite' was expected
        'brcm,bcm4908-partitions' was expected
        'brcm,bcm947xx-cfe-partitions' was expected
        'linksys,ns-partitions' was expected
        'qcom,smem-part' was expected
        'redboot-fis' was expected
        From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: Unevaluated properties are not allowed ('partitions-table-offset' was unexpected)
        From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: Unevaluated properties are not allowed ('partitions' was unexpected)
        From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
V2: Include example of errors this fixes
---
 Documentation/devicetree/bindings/mtd/partitions/partitions.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
index 2edc65e0e361..1dda2c80747b 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
@@ -21,6 +21,7 @@ oneOf:
   - $ref: linksys,ns-partitions.yaml
   - $ref: qcom,smem-part.yaml
   - $ref: redboot-fis.yaml
+  - $ref: tplink,safeloader-partitions.yaml
 
 properties:
   compatible: true
-- 
2.35.3

