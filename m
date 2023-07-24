Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 756FA75F2E2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jul 2023 12:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbjGXKUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jul 2023 06:20:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233333AbjGXKUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jul 2023 06:20:09 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60F905BAC
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:12:37 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-997c4107d62so616449966b.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jul 2023 03:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690193556; x=1690798356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q9KgsMPlW0Yooxu8di5EVgVRdNasPXpYGWI4hyKLQho=;
        b=S9Bsa0n96/Z7Bs15Cv3hgyeO2RZajk893bj3N+5LT1ojZRh2afyCR7nhAkPtRPZxma
         Bup2SvjZp7UXpFFWblLDDNY9V2AWQlMcfW+Bl/sssjmcudBOtglblkjhMOycNBvwPDO2
         UzCEVK3rHG9x/YzGSAB/NiagdahXxuARcjIbcv4YDyXWyZA49MY+uAgdAblu0rmJDyZ+
         Kcs+WQTEzAiUtP4gSjswy6J7xtfqonao/662TccjsPShinPH6wkz2xyriloQY5oJJxZS
         GusHf+0ek2W+owH9MXKmFkiqf4QZlqlTINGraaVfkZlxPO2NgF3XqDf5O6maZw5QUVTl
         3DWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690193556; x=1690798356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q9KgsMPlW0Yooxu8di5EVgVRdNasPXpYGWI4hyKLQho=;
        b=Dr155xdfM8xOt7b1J+q5T6gBUdCYG8lvKsBw8kOgGdVYCfF5Jr5pOq7IYqChlCRqt9
         AsT00pWhbpCcIpCMSoQQRuu8ij6GiIfHeX9EVfwLkAWRdt+tfpV/9ym9q9ggORZgdo7z
         cjNMsnnsBRcjSZZaRvmBvOPMXsbkF4ngNCN/wHDFiFu0+0JZdCJ+FYqijl3HVPp+feTJ
         ff8WYIV5m0x34LamX/GYYRfu7XpkYvZ+I4k53TqPdKrPG360HxCRJyNWcs11QGCZrtKX
         +1SqyyRSgD/DghM0llR2j16n5wNfCp3Ae4MUnICYo6hfIkuL2U8ZWTG1b1yPWWKuhQr1
         S9Dw==
X-Gm-Message-State: ABy/qLZWxe7p3KZVlKk+K+bjR6I5lu2Xj+mQwJVXK63eYOp/AMku3Mr8
        wSnJNuO6QagyT/BuW2LdKAg=
X-Google-Smtp-Source: APBJJlHtfSgcD4zj7CR7FzExDe8euNzv49XR8DHJZCIblw/9NXsY6GpzXgHjIUi89x1Cn7UpJraEqw==
X-Received: by 2002:a17:906:5192:b0:993:f349:c98e with SMTP id y18-20020a170906519200b00993f349c98emr10538338ejk.2.1690193555537;
        Mon, 24 Jul 2023 03:12:35 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id lc28-20020a170906dffc00b0098e422d6758sm6480152ejc.219.2023.07.24.03.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 03:12:35 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] ARM: dts: BCM53573: Add Ethernet interfaces links
Date:   Mon, 24 Jul 2023 12:12:27 +0200
Message-Id: <20230724101227.5420-1-zajec5@gmail.com>
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

BCM53573 has 2 Ethernet interfaces each connected to one of switch ports
in the default design. They both use fixed links.

An exception are Luxul XAP devices that have switch replaced by a single
PHY.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/broadcom/bcm47189-luxul-xap-1440.dts    |  2 ++
 .../arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts |  2 ++
 arch/arm/boot/dts/broadcom/bcm53573.dtsi             | 12 ++++++++++++
 3 files changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
index e86e82be3c0e..ac44c745bdf8 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-1440.dts
@@ -50,6 +50,8 @@ &gmac0 {
 	phy-mode = "rgmii";
 	phy-handle = <&bcm54210e>;
 
+	/delete-node/ fixed-link;
+
 	mdio {
 		/delete-node/ switch@1e;
 
diff --git a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
index d0bbc01f1806..fd071da26cfa 100644
--- a/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47189-luxul-xap-810.dts
@@ -86,6 +86,8 @@ &gmac0 {
 	phy-mode = "rgmii";
 	phy-handle = <&bcm54210e>;
 
+	/delete-node/ fixed-link;
+
 	mdio {
 		/delete-node/ switch@1e;
 
diff --git a/arch/arm/boot/dts/broadcom/bcm53573.dtsi b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
index 10d0fe76ee3c..2df80740d181 100644
--- a/arch/arm/boot/dts/broadcom/bcm53573.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm53573.dtsi
@@ -181,6 +181,12 @@ ohci_port2: port@2 {
 
 		gmac0: ethernet@5000 {
 			reg = <0x5000 0x1000>;
+			phy-mode = "internal";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
 
 			mdio {
 				#address-cells = <1>;
@@ -237,6 +243,12 @@ port@8 {
 
 		gmac1: ethernet@b000 {
 			reg = <0xb000 0x1000>;
+			phy-mode = "internal";
+
+			fixed-link {
+				speed = <1000>;
+				full-duplex;
+			};
 		};
 
 		pmu@12000 {
-- 
2.35.3

