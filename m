Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23045673CBB
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 15:47:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbjASOrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 09:47:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231360AbjASOrL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 09:47:11 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AF3387293
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 06:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139497; x=1705675497;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ChwKkC9qrd3Er0jjlCVX6d8vPdV3o0wtG+3dPpljv8E=;
  b=JSXW6kSeWn0R1nslPEUGF2Ack31zonWFDuzG9bmwAuoSH1DvLcCBrtKR
   LhcpPOjg7zXbza0wqnQ9HTTTD1tTmxdLbDqGkvIpbCsX+i9oZmYqh+zNA
   mC+ezl9aWo11YEJAXw8UOthxgBFIzicToEy3GLVLH7fTqY0HmVXg6NM0J
   QUA8WJnQsP8ITgfbEOdzWTGM4mqS9lwHec8emo0xr0O6K34m9k2lHJRiQ
   PAn1nMHgWrKy0mtwTCZMgxX4QuWaD3YKFXFXLojUAzHvBcCrP1OOTnPuv
   AFTrKET1TGi76L2qFZ3FMHqMsF4xzB56tHeTxZ8qZeplTq3tz+rrLDNB8
   g==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537320"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Jan 2023 15:42:45 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 19 Jan 2023 15:42:45 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 19 Jan 2023 15:42:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139365; x=1705675365;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ChwKkC9qrd3Er0jjlCVX6d8vPdV3o0wtG+3dPpljv8E=;
  b=ZoXUArdTq0+/LTegYMB9eZaaz475F8oUEHjfu/tuOL7IzaUtzlyCJruG
   Yy9SFPV31N61quesTi+0y1U/E6+or7DbUEyNCXhIPba55P+fZ4N3WeEIF
   lkqlk5+f091RPFN7E0xOFKW8NciFnIIDMkvV8y5qLcOMiSZZQJWTyvnsY
   GliU4C0J2wXk2/0+6uujLx11ZcuSMZwad9eqq2bIL7uR0558Qz1l77aJn
   quKSn5UB7NYTYRmEX1/y0Q4KRKBhlVOMwxzgNJBAgXULzNzU+h2DH6JCv
   ioY7fECY1eWJ6g/kGzf+WAo6tpVq/jZOTuSBgRdSkhqMqKTXlmLzHmDfJ
   Q==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537317"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jan 2023 15:42:44 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id B09C1280072;
        Thu, 19 Jan 2023 15:42:44 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/9] ARM: multi_v7_defconfig: Add options to support TQMLS102xA series
Date:   Thu, 19 Jan 2023 15:42:35 +0100
Message-Id: <20230119144236.3541751-9-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,UPPERCASE_50_75
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This enables drivers used on TQMLS102xA + MBLS1021A.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/configs/multi_v7_defconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index ee184eb37adcf..441a449172368 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -191,6 +191,7 @@ CONFIG_PCI_TEGRA=y
 CONFIG_PCI_RCAR_GEN2=y
 CONFIG_PCIE_RCAR_HOST=y
 CONFIG_PCI_DRA7XX_EP=y
+CONFIG_PCI_LAYERSCAPE=y
 CONFIG_PCI_ENDPOINT=y
 CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
@@ -249,6 +250,7 @@ CONFIG_AHCI_ST=y
 CONFIG_AHCI_IMX=y
 CONFIG_AHCI_SUNXI=y
 CONFIG_AHCI_TEGRA=y
+CONFIG_AHCI_QORIQ=y
 CONFIG_SATA_HIGHBANK=y
 CONFIG_SATA_MV=y
 CONFIG_SATA_RCAR=y
@@ -329,6 +331,7 @@ CONFIG_TOUCHSCREEN_ADC=m
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m
 CONFIG_TOUCHSCREEN_ELAN=m
 CONFIG_TOUCHSCREEN_MMS114=m
+CONFIG_TOUCHSCREEN_EDT_FT5X06=m
 CONFIG_TOUCHSCREEN_WM97XX=m
 CONFIG_TOUCHSCREEN_ST1232=m
 CONFIG_TOUCHSCREEN_STMPE=y
@@ -483,6 +486,7 @@ CONFIG_GPIO_ASPEED_SGPIO=y
 CONFIG_GPIO_DAVINCI=y
 CONFIG_GPIO_DWAPB=y
 CONFIG_GPIO_EM=y
+CONFIG_GPIO_MPC8XXX=y
 CONFIG_GPIO_MXC=y
 CONFIG_GPIO_RCAR=y
 CONFIG_GPIO_SYSCON=y
@@ -493,6 +497,7 @@ CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_PCF857X=y
 CONFIG_GPIO_PALMAS=y
+CONFIG_GPIO_STMPE=y
 CONFIG_GPIO_TPS6586X=y
 CONFIG_GPIO_TPS65910=y
 CONFIG_GPIO_TWL4030=y
@@ -533,6 +538,7 @@ CONFIG_SENSORS_INA2XX=m
 CONFIG_CPU_THERMAL=y
 CONFIG_DEVFREQ_THERMAL=y
 CONFIG_IMX_THERMAL=y
+CONFIG_QORIQ_THERMAL=m
 CONFIG_ROCKCHIP_THERMAL=y
 CONFIG_RCAR_THERMAL=y
 CONFIG_ARMADA_THERMAL=y
@@ -821,6 +827,8 @@ CONFIG_SND_SOC_MSM8916_WCD_ANALOG=m
 CONFIG_SND_SOC_MSM8916_WCD_DIGITAL=m
 CONFIG_SND_SOC_SGTL5000=m
 CONFIG_SND_SOC_STI_SAS=m
+CONFIG_SND_SOC_TLV320AIC32X4=m
+CONFIG_SND_SOC_TLV320AIC32X4_I2C=m
 CONFIG_SND_SOC_WM8978=m
 CONFIG_SND_AUDIO_GRAPH_CARD=m
 CONFIG_USB=y
@@ -830,6 +838,7 @@ CONFIG_USB_XHCI_MVEBU=y
 CONFIG_USB_XHCI_TEGRA=m
 CONFIG_USB_BRCMSTB=m
 CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_FSL=y
 CONFIG_USB_EHCI_HCD_STI=y
 CONFIG_USB_EHCI_EXYNOS=m
 CONFIG_USB_EHCI_MV=m
@@ -933,6 +942,8 @@ CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
 CONFIG_LEDS_CLASS_FLASH=m
 CONFIG_LEDS_CPCAP=m
+CONFIG_LEDS_PCA9532=m
+CONFIG_LEDS_PCA9532_GPIO=y
 CONFIG_LEDS_GPIO=y
 CONFIG_LEDS_PWM=y
 CONFIG_LEDS_MAX8997=m
@@ -949,6 +960,7 @@ CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
 CONFIG_LEDS_TRIGGER_TRANSIENT=y
 CONFIG_LEDS_TRIGGER_CAMERA=y
 CONFIG_EDAC=y
+CONFIG_EDAC_LAYERSCAPE=y
 CONFIG_EDAC_HIGHBANK_MC=y
 CONFIG_EDAC_HIGHBANK_L2=y
 CONFIG_RTC_CLASS=y
@@ -962,6 +974,7 @@ CONFIG_RTC_DRV_MAX8997=m
 CONFIG_RTC_DRV_MAX77686=y
 CONFIG_RTC_DRV_RK808=m
 CONFIG_RTC_DRV_RS5C372=m
+CONFIG_RTC_DRV_PCF85063=y
 CONFIG_RTC_DRV_PCF85363=m
 CONFIG_RTC_DRV_BQ32K=m
 CONFIG_RTC_DRV_TWL4030=y
-- 
2.34.1

