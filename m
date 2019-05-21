Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0D71258EF
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 22:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727046AbfEUUcl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 16:32:41 -0400
Received: from mail-it1-f193.google.com ([209.85.166.193]:39325 "EHLO
        mail-it1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727350AbfEUUcl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 16:32:41 -0400
Received: by mail-it1-f193.google.com with SMTP id 9so6803904itf.4
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 13:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eQ2r5PQ0vvjlMI5kpOVHnGlsdtagsJZCtwtZAIF6wsM=;
        b=jfXEHCzvUcv7X9RSwEbvGDRkOdVJyAJuHgS/ha5PpxQEQxLd7aI8p8zITCJWQYvgWv
         kY0qQaJLquIEjt40FFKt/TRlAG0EAlfPnMWQeYOCx6yiphf4mROdATbunECkw4YwxI1W
         varGpt1jUIIahlRNDo0ElzGp4fcD0Hx+V3FYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eQ2r5PQ0vvjlMI5kpOVHnGlsdtagsJZCtwtZAIF6wsM=;
        b=N9h/+hoqlf2JFt5psHLVLbBtAvn+lzaOaJFG+pNQYzavCJswVLcaDlEtvLJOZbJikU
         1ctx00Psqha42ydiFkS+egUO8YHlLF96cvwgrzo0DqYfq9EJiTD4ayqfzkEcsJk33JAE
         flkgxoevgn9vkR5//l14zr2kl8MwP6RtkUack0Xxw5nq/1E9a7yBmmX4KJVQE6Zm3ByT
         ZAgnzvDbC35hI5lDigxVywEAyZBwwvosI7yD1cy9YW9yNYd91NuhJgA5cAvhc1fHYq+k
         4YSICNZxeiLsw0mrOeVXBCrj3tzb1J1LY/Xr37nftTaNP1MnhuBKAvYJaZcF3IzhyaEq
         5iIg==
X-Gm-Message-State: APjAAAVlrPJObIeQZf/QhGMl2MhXoXFu0BP5QbzwiaHPAW+XQx05uSF6
        b3KkWObwOM6vFTIQdMuU79fvJQ==
X-Google-Smtp-Source: APXvYqxSz/8n9XxlYkdxr6ciXmid1JAcD9hFZpzXZV5KyhgrDbitGBVY4l2Wvb/tr6ZfkWjRGGs9ZQ==
X-Received: by 2002:a02:80e:: with SMTP id 14mr53391656jac.71.1558470760572;
        Tue, 21 May 2019 13:32:40 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id e22sm7205710ioe.45.2019.05.21.13.32.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 May 2019 13:32:40 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     briannorris@chromium.org, ryandcase@chromium.org, mka@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] ARM: dts: rockchip: Add pin names for rk3288-veyron-jerry
Date:   Tue, 21 May 2019 13:32:15 -0700
Message-Id: <20190521203215.234898-2-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190521203215.234898-1-dianders@chromium.org>
References: <20190521203215.234898-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is like the same change for rk3288-veyron-minnie.  See that patch
for more details.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-jerry.dts | 207 ++++++++++++++++++++++
 1 file changed, 207 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
index b1613af83d5d..164561f04c1d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
@@ -103,6 +103,213 @@
 	pinctrl-0 = <&vcc50_hdmi_en>;
 };
 
+&gpio0 {
+	gpio-line-names = "PMIC_SLEEP_AP",
+			  "DDRIO_PWROFF",
+			  "DDRIO_RETEN",
+			  "TS3A227E_INT_L",
+			  "PMIC_INT_L",
+			  "PWR_KEY_L",
+			  "AP_LID_INT_L",
+			  "EC_IN_RW",
+
+			  "AC_PRESENT_AP",
+			  /*
+			   * RECOVERY_SW_L is Chrome OS ABI.  Schematics call
+			   * it REC_MODE_L.
+			   */
+			  "RECOVERY_SW_L",
+			  "OTP_OUT",
+			  "HOST1_PWR_EN",
+			  "USBOTG_PWREN_H",
+			  "AP_WARM_RESET_H",
+			  "nFAULT2",
+			  "I2C0_SDA_PMIC",
+
+			  "I2C0_SCL_PMIC",
+			  "SUSPEND_L",
+			  "USB_INT";
+};
+
+&gpio2 {
+	gpio-line-names = "CONFIG0",
+			  "CONFIG1",
+			  "CONFIG2",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "CONFIG3",
+
+			  "",
+			  "EMMC_RST_L",
+			  "",
+			  "",
+			  "BL_PWR_EN",
+			  "AVDD_1V8_DISP_EN";
+};
+
+&gpio3 {
+	gpio-line-names = "FLASH0_D0",
+			  "FLASH0_D1",
+			  "FLASH0_D2",
+			  "FLASH0_D3",
+			  "FLASH0_D4",
+			  "FLASH0_D5",
+			  "FLASH0_D6",
+			  "FLASH0_D7",
+
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "FLASH0_CS2/EMMC_CMD",
+			  "",
+			  "FLASH0_DQS/EMMC_CLKO";
+};
+
+&gpio4 {
+	gpio-line-names = "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "UART0_RXD",
+			  "UART0_TXD",
+			  "UART0_CTS",
+			  "UART0_RTS",
+			  "SDIO0_D0",
+			  "SDIO0_D1",
+			  "SDIO0_D2",
+			  "SDIO0_D3",
+
+			  "SDIO0_CMD",
+			  "SDIO0_CLK",
+			  "BT_DEV_WAKE",
+			  "",
+			  "WIFI_ENABLE_H",
+			  "BT_ENABLE_L",
+			  "WIFI_HOST_WAKE",
+			  "BT_HOST_WAKE";
+};
+
+&gpio5 {
+	gpio-line-names = "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "",
+			  "",
+			  "",
+			  "",
+			  "SPI0_CLK",
+			  "SPI0_CS0",
+			  "SPI0_TXD",
+			  "SPI0_RXD",
+
+			  "",
+			  "",
+			  "",
+			  "VCC50_HDMI_EN";
+};
+
+&gpio6 {
+	gpio-line-names = "I2S0_SCLK",
+			  "I2S0_LRCK_RX",
+			  "I2S0_LRCK_TX",
+			  "I2S0_SDI",
+			  "I2S0_SDO0",
+			  "HP_DET_H",
+			  "",
+			  "INT_CODEC",
+
+			  "I2S0_CLK",
+			  "I2C2_SDA",
+			  "I2C2_SCL",
+			  "MICDET",
+			  "",
+			  "",
+			  "",
+			  "",
+
+			  "SDMMC_D0",
+			  "SDMMC_D1",
+			  "SDMMC_D2",
+			  "SDMMC_D3",
+			  "SDMMC_CLK",
+			  "SDMMC_CMD";
+};
+
+&gpio7 {
+	gpio-line-names = "LCDC_BL",
+			  "PWM_LOG",
+			  "BL_EN",
+			  "TRACKPAD_INT",
+			  "TPM_INT_H",
+			  "SDMMC_DET_L",
+			  /*
+			   * AP_FLASH_WP_L is Chrome OS ABI.  Schematics call
+			   * it FW_WP_AP.
+			   */
+			  "AP_FLASH_WP_L",
+			  "EC_INT",
+
+			  "CPU_NMI",
+			  "DVSOK",
+			  "",
+			  "EDP_HPD",
+			  "DVS1",
+			  "nFAULT1",
+			  "LCD_EN",
+			  "DVS2",
+
+			  "VCC5V_GOOD_H",
+			  "I2C4_SDA_TP",
+			  "I2C4_SCL_TP",
+			  "I2C5_SDA_HDMI",
+			  "I2C5_SCL_HDMI",
+			  "5V_DRV",
+			  "UART2_RXD",
+			  "UART2_TXD";
+};
+
+&gpio8 {
+	gpio-line-names = "RAM_ID0",
+			  "RAM_ID1",
+			  "RAM_ID2",
+			  "RAM_ID3",
+			  "I2C1_SDA_TPM",
+			  "I2C1_SCL_TPM",
+			  "SPI2_CLK",
+			  "SPI2_CS0",
+
+			  "SPI2_RXD",
+			  "SPI2_TXD";
+};
+
 &pinctrl {
 	backlight {
 		bl_pwr_en: bl_pwr_en {
-- 
2.21.0.1020.gf2820cf01a-goog

