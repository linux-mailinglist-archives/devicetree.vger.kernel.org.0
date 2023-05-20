Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D918A70A789
	for <lists+devicetree@lfdr.de>; Sat, 20 May 2023 13:26:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231430AbjETL0Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 May 2023 07:26:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230344AbjETL0Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 May 2023 07:26:16 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 178BC186
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 04:26:15 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2af30d10d8fso1379811fa.0
        for <devicetree@vger.kernel.org>; Sat, 20 May 2023 04:26:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684581973; x=1687173973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zWIC+u4e4qOpJG4nDZ5cvkyposRvtCNiaHf7Hv/AfUU=;
        b=H0ueNXaouw/MpwFAdrJGZlmJ5SR4QCEdGAXtsxVGUJ+QphIZelgn6eL+boyfTTX9yy
         nrNyTucr+xBgMfzlH1kG4OsfpbNGFKCG9w/Copsw76TMkSHhT8MAZHSlD/O9uhVbBkMs
         vy1XZ7ALA/cXtnla50GdiRRUUSTH81p+HONB9vGuRLnUuHOu8714ae42kuu5tUEGWz2t
         u+bOP1vtxipeNdlqHFtG4kyt6/xJNHpy5zltrfVsegy3a33D8qdZByOy/n9XkC2DGkkm
         xjb/N2AqE/MD2ubZ9SmnrLIrxdYZt+zyVEjf0FoVA0VUQ81kogMnnjbXaausuYiTSFuZ
         DIow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684581973; x=1687173973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zWIC+u4e4qOpJG4nDZ5cvkyposRvtCNiaHf7Hv/AfUU=;
        b=b2ykEDXopnreCq98bcU7B/ugSM5bsCo5OSMYLAcoAF9DOu21wpnNaOT0BsL8bAKjTA
         Dy2Li4wtyN4eEAmATHT/4KKB9wrALJpbQF/EGRH0/XOJjx4n3CGBGNX+b7k02OWPCWVO
         bwbjwT5eIIU5oTDkw0wtQ62HlCc+nvDUNsK0LVo3AajVLF3UQ0kaHOR+Txfl8htPNgwC
         K5Xw5f7RO94ZBJ9giXoDIf3z5o3KifT9B2NhI+dvb7yGwgOha3BrhX+l+kv5Efipr/hs
         mqyAFVRCyocTzna0P9Y+BQVzW2SM+GUNzw94xFWk//UTylcMiPx+a7d10QCsrl7dotzF
         1XZg==
X-Gm-Message-State: AC+VfDwaCAB/yhgYYXQcuShx75sHGkLUU0+zFpUUfdsYo7UwOVJchIkd
        VDHNeKPIOXAhnNpdMy7vn9U=
X-Google-Smtp-Source: ACHHUZ4qpL3qxXvIcflT61LRVO7OX58WbssvWFGSzwNB1GQm8+MFqluHmmHcTQWMmw+GZd1rbCZEFQ==
X-Received: by 2002:a2e:a16e:0:b0:2ac:98be:fa55 with SMTP id u14-20020a2ea16e000000b002ac98befa55mr2131362ljl.27.1684581973151;
        Sat, 20 May 2023 04:26:13 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id j21-20020a2e8015000000b002aeee2a093csm258949ljg.59.2023.05.20.04.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 May 2023 04:26:12 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Sebastian Reichel <sre@kernel.org>,
        Christian Lamparter <chunkeey@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/2] ARM: dts: BCM5301X: Use updated device "compatible" strings
Date:   Sat, 20 May 2023 13:26:01 +0200
Message-Id: <20230520112601.11821-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230520112601.11821-1-zajec5@gmail.com>
References: <20230520112601.11821-1-zajec5@gmail.com>
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

Northstar binding was updated to use minus/hyphen char between model and
version for all devices.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts   | 2 +-
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts    | 2 +-
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts | 2 +-
 arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts  | 2 +-
 arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts  | 2 +-
 arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts  | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
index 9b98a0179f05..5d0549855978 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
@@ -8,7 +8,7 @@
 #include "bcm4708.dtsi"
 
 / {
-	compatible = "luxul,xap-1510v1", "brcm,bcm4708";
+	compatible = "luxul,xap-1510-v1", "brcm,bcm4708";
 	model = "Luxul XAP-1510 V1";
 
 	chosen {
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
index 89155caf50be..8661ec94ca67 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
@@ -13,7 +13,7 @@
 #include "bcm5301x-nand-cs0-bch8.dtsi"
 
 / {
-	compatible = "netgear,r6250v1", "brcm,bcm4708";
+	compatible = "netgear,r6250-v1", "brcm,bcm4708";
 	model = "Netgear R6250 V1 (BCM4708)";
 
 	chosen {
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
index 57d00a0b4765..77396730bdd3 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
@@ -12,7 +12,7 @@
 #include "bcm5301x-nand-cs0-bch8.dtsi"
 
 / {
-	compatible = "netgear,r6300v2", "brcm,bcm4708";
+	compatible = "netgear,r6300-v2", "brcm,bcm4708";
 	model = "Netgear R6300 V2 (BCM4708)";
 
 	chosen {
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
index edc194085995..7e042928fd40 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xap-1410.dts
@@ -8,7 +8,7 @@
 #include "bcm47081.dtsi"
 
 / {
-	compatible = "luxul,xap-1410v1", "brcm,bcm47081", "brcm,bcm4708";
+	compatible = "luxul,xap-1410-v1", "brcm,bcm47081", "brcm,bcm4708";
 	model = "Luxul XAP-1410 V1";
 
 	chosen {
diff --git a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
index 97b61d9d4be9..231d437408d8 100644
--- a/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
+++ b/arch/arm/boot/dts/bcm47081-luxul-xwr-1200.dts
@@ -9,7 +9,7 @@
 #include "bcm5301x-nand-cs0-bch4.dtsi"
 
 / {
-	compatible = "luxul,xwr-1200v1", "brcm,bcm47081", "brcm,bcm4708";
+	compatible = "luxul,xwr-1200-v1", "brcm,bcm47081", "brcm,bcm4708";
 	model = "Luxul XWR-1200 V1";
 
 	chosen {
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
index ebea188bd2d7..52783a4b6f99 100644
--- a/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwr-3100.dts
@@ -9,7 +9,7 @@
 #include "bcm5301x-nand-cs0-bch4.dtsi"
 
 / {
-	compatible = "luxul,xwr-3100v1", "brcm,bcm47094", "brcm,bcm4708";
+	compatible = "luxul,xwr-3100-v1", "brcm,bcm47094", "brcm,bcm4708";
 	model = "Luxul XWR-3100 V1";
 
 	chosen {
-- 
2.35.3

