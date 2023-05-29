Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C67FC715054
	for <lists+devicetree@lfdr.de>; Mon, 29 May 2023 22:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbjE2UHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 May 2023 16:07:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbjE2UHn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 May 2023 16:07:43 -0400
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B28FCE8
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 13:07:14 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-557c27145d4so302869eaf.1
        for <devicetree@vger.kernel.org>; Mon, 29 May 2023 13:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685390816; x=1687982816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dOJeuyytNJB5ipAHVHayBKyNG8kRNhi9MzKwq0eLDns=;
        b=SC/3qBqeXcMkx9Gt1H4ik08B1IjbOJETHTwcNjkTdOV3efwzEj9E1RZPSJRLrShBS+
         h3lqAWwgEArawsRoxTRPGith4FDqN2AxtxnSBhxGFO9QKl8slYy5TPDExrAouDHrHv7Y
         9TFYWGKCUM3gSlWybzYUxv6YkzanUY7LCfxlbau1sK1ZVyTkfMihHe/iqojGYiqqaUNQ
         ammY/pWWVB5ufgF5pKzmpmUPTRpUNcxx/5se6Vgp7fvgBBTGgCb8xhYF8rglqfi4XIkF
         JLUBh4OSCwUUPmN7/LcZa6XQpA6plCmQCU2C7aFA5AATluTFiTfTlhTK0SsJJZdq8vUx
         nTFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685390816; x=1687982816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dOJeuyytNJB5ipAHVHayBKyNG8kRNhi9MzKwq0eLDns=;
        b=QISFa8Hg4t6WWeIHa1hYxn7z5s+JERRTr36nTi8XrzUX9LVDQraAWnTg+fGjWCabwC
         PB8TpQYU3di+iPnHU9wfTdqxsZctEG1lvMvUt+Pccujgvdb/Q8X9f3i23ss70XWvCojY
         WbD/MpzXA8ASNK33lDk9IY8m3E+2j5obmU81R4LkeqC0Paut8JsaCA1xM7uOJDzFJrIo
         INkC46wtrToC8Dr282BoPqTLX5W6efypvax77pmuwAWanmONtxc9uFzptgS/6LVKIzbZ
         /6KmJnaZQA7/sk7pCIklKv4bmNhtICFy8332zWwXnFxQRXmony/y+IrvTQUybVM7LWGz
         GuVA==
X-Gm-Message-State: AC+VfDyoW40n9k+IE3xLFNsgHF3e92tV3D45di67VGN+K4JMpFH4SQpM
        CbsOCBeBtNfDFxLNNTv5+9Nti2y/LGU=
X-Google-Smtp-Source: ACHHUZ7DL+BNvDL8X8uo9PVjuoGHGptQpjZXEeP+FWrwO9rU9S+Z9TIqKAw40/XAnr0rDsYd62t0dg==
X-Received: by 2002:a4a:e4d9:0:b0:54f:e817:6827 with SMTP id w25-20020a4ae4d9000000b0054fe8176827mr11283oov.1.1685390816106;
        Mon, 29 May 2023 13:06:56 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:41aa:2f04:2ef3:727d])
        by smtp.gmail.com with ESMTPSA id a47-20020a4a98b2000000b00555907ad82esm4930754ooj.14.2023.05.29.13.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 13:06:55 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx: Use 'eeprom' as node name
Date:   Mon, 29 May 2023 17:06:45 -0300
Message-Id: <20230529200645.801626-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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

From: Fabio Estevam <festevam@denx.de>

Devicetree node names should be generic. Use 'eeprom' as node name
to avoid devicetree check warning from at24.yaml.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx53-tqma53.dtsi   | 2 +-
 arch/arm/boot/dts/imx6q-display5.dtsi | 2 +-
 arch/arm/boot/dts/imx6q-h100.dts      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx53-tqma53.dtsi b/arch/arm/boot/dts/imx53-tqma53.dtsi
index 7e7f9f3b3906..d930739674a1 100644
--- a/arch/arm/boot/dts/imx53-tqma53.dtsi
+++ b/arch/arm/boot/dts/imx53-tqma53.dtsi
@@ -274,7 +274,7 @@ sensor1: lm75@48 {
 		reg = <0x48>;
 	};
 
-	eeprom: 24c64@50 {
+	eeprom: eeprom@50 {
 		compatible = "atmel,24c64";
 		pagesize = <32>;
 		reg = <0x50>;
diff --git a/arch/arm/boot/dts/imx6q-display5.dtsi b/arch/arm/boot/dts/imx6q-display5.dtsi
index fef5d7254536..d18b942a2415 100644
--- a/arch/arm/boot/dts/imx6q-display5.dtsi
+++ b/arch/arm/boot/dts/imx6q-display5.dtsi
@@ -276,7 +276,7 @@ &i2c3 {
 	pinctrl-0 = <&pinctrl_i2c3>;
 	status = "okay";
 
-	at24@50 {
+	eeprom@50 {
 		compatible = "atmel,24c256";
 		pagesize = <64>;
 		reg = <0x50>;
diff --git a/arch/arm/boot/dts/imx6q-h100.dts b/arch/arm/boot/dts/imx6q-h100.dts
index 6406ade14f57..3fe4591e21f5 100644
--- a/arch/arm/boot/dts/imx6q-h100.dts
+++ b/arch/arm/boot/dts/imx6q-h100.dts
@@ -166,7 +166,7 @@ &i2c1 {
 	pinctrl-0 = <&pinctrl_h100_i2c1>;
 	status = "okay";
 
-	eeprom: 24c02@51 {
+	eeprom: eeprom@51 {
 		compatible = "microchip,24c02", "atmel,24c02";
 		reg = <0x51>;
 	};
-- 
2.34.1

