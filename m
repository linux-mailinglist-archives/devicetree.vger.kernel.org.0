Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40CBB608F3F
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 21:34:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbiJVTet (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 15:34:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiJVTer (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 15:34:47 -0400
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2015.outbound.protection.outlook.com [40.92.99.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3440D2A400
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 12:34:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duJYWUcGxwcbPcEorLeIvJw0e58ISmBtaPfGPyNk4I2MplfaNWOQBKy/Myw4eCI4i2CcNPRvF3zw1pwefcAJuiy8dLq4LoOsMxXJFrlMzM5EVs7XEwVQmFrfxNrSCXBDaVlYExm02oNcXeKddl3z+/oqvyY0dsm26TqZkmAQsmUarqDBGcuJ35hPYFXxIkhPzgLxpcU5PhD/VFXEOW4j1NA+gEI5imwvw7z3MnPZGnYzpU4ONaFSwalEnXSRjUlFVAoomjc23dpXkK03HpPa+MCWARl3z1ww7Zn5WW2IIlvU9OLT5sD+BAmYPyC9LJa/0mX3U2OMj5iMeBHtOX1Ebw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=keYgoiM/6Xu46sGyJkq5tP6xvIxOmSyp1sOzWVFOXdk=;
 b=RbgBotky1k00H+jwpSNFtIa6QKPFYhqZxZ7D57yt/pi2lLwi3/bntchibeqtHzZzMNqNjKLqnhJIC5gl4LwlhjxCozpLEh46WObhnb2/0q0avNZKS0slO4cY4o5WVMcCqvoEXP5Ap0IYdINF0myCnFEFD7LDZMzWEpRB/6H9xLE2T/FgRD8cyDmWtT6fx92RmZf+snx0OMbE367Vh7SowZ0sQrriMh5O8BNaG+hS+Mgm1BwkpJjJ3OSTIAIy30GtFjSwYzO0xN8SO2JcUQYCvBeUOvfnRmH2TpWLPMdWyiJJUy0oFwDducDYGo4hUJasHRfDmKmsai9q5466PJ5vxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=keYgoiM/6Xu46sGyJkq5tP6xvIxOmSyp1sOzWVFOXdk=;
 b=K1S2XlJsjJvNuKqPTXbxNzgIUOMGNJF1fLs9gADB+YGJO4HGf4cFBTV+K30z8UXmcRik5mJV5CvTbk0d5tCVb7wMezXL6zIATG+YRUPRiXub52+k6TLc+DoRGWFqyzLUm65mdBCcrQXnr0KCbmZ7lf5sfwI8gXz/aaL/L44Hms6z4dzqzfqp+uS2hO/h9tdwPFFu2I8xYbB5IaHcRz2CI3T6WMoMIGjgRzZEuoFhrlu3mmNlFRRQil06tp+ks5nroDQ6cvfeNMnJxR2Hd9u6dPvH9kvMENM4i2CAiSThgSA3PYaa5uRP2Mj2Qa6yJRd5ID39vjioipcDzSzYSxsR4Q==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OSZP286MB1726.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1ba::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Sat, 22 Oct
 2022 19:34:42 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5746.021; Sat, 22 Oct 2022
 19:34:42 +0000
From:   Shengyu Qu <wiagn233@outlook.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, michael.riesch@wolfvision.net,
        s.hauer@pengutronix.de, pgwipeout@gmail.com,
        frattaroli.nicolas@gmail.com, frank-w@public-files.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Shengyu Qu <wiagn233@outlook.com>
Subject: [RESEND PATCH v3] arm64: dts: rockchip: Add support for RADXA SDIO Wifi/BT M.2 ekey module for rock 3a
Date:   Sun, 23 Oct 2022 03:34:12 +0800
Message-ID: <TY3P286MB26114252F957314C95381349982C9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN:  [/9lzaufTZXLvbRJdWQ94P1vwoZCupaJv]
X-ClientProxiedBy: TY2PR01CA0006.jpnprd01.prod.outlook.com
 (2603:1096:404:a::18) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221022193411.322-1-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OSZP286MB1726:EE_
X-MS-Office365-Filtering-Correlation-Id: cf966c04-f34c-4347-887f-08dab464778f
X-MS-Exchange-SLBlob-MailProps: 0wLWl8rLpvtmfujukq/oAyRCX5cODoXi8d/Spx68fLGXZsD7vbT0EEaqvqASSoFrZLqbCcS6xBnFUTmsJADMxgI0hVI2HDmKZVz/qxVjxOYeTBDELJ5QL5OLCUtvBwA6gZT21F25CALhXt7Md09iUOytUsNJQFdkphPHU2JqdMCE84C5IuAjBNzUtCoIjBJr/mUZ3btb81alG+TMsgyAlUYcks9bJYKIkrZokA68s4akQACPLc/SFFSYcNjT3ifm3neTl2UfZghJtiZpcp7x20IwcuClM+Gci5WKonpLK19i7ER8Tjf8z4zM5R4ZsYOJtigYqPQy0BU82B7se5wXa4OMOYTX6MOkerJwa1B27OfBpBstd5pE42ZxHngf9WakwLotTEPl7Oyzkepsb3hATnsJYY+at9bQD+HAo48I6nLswN1CgCnzdKUZXZQPmsn3Y/75dcFr4MVfxZAqauyiKNgdcRZOpsvvxKiHXRCqYu8hm7/nZRdOxTpKJxnoqJ4hOpvF8xhqKjr7kCmscNhgFtvPZxfwy23qOdqHqWxzKK5YNA442HpdgJBVDhNX23MCXk9D2JcIKmVAs3XNFgnBiPXw5MrqzENEzs0oC3NkZqdFucgWCnQa/AgE5HL+T6QS9kJrNHwyiHPu2owFl4qqB9geRTw/84XwpdLnRNdZx8bDDoL6FSIizR/5Qu9f5Sufh4rpNVRECy/+aZ8zfa23kgKOJeRR4wOrtyh3p53CBP5SFolw4YcJ4ijEzrx8ggHeIGFGJGuUe04=
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sls16k93FKC90dMkZ2TtaEYXmb6Tj93GFosP887hT+SlWC5o1loVD9ELoYlP6HkR13xERmSlwwChS2cAeoX03KnG85rJ4CTe+8LYIiaN1nqQeFlkF6k0y6sqaL23r0QHdyUjQwjh067vgfZsCe+Q5PdCiEJid4XaRis2bm9G+IDaOjTtAEy55gaKYhKn3ZyD+p74y8OnR0Hc790Z2TrchM/aZK2ZUu/ZQsX4z5Rp+EQyqzTNB1kQ7PAJxn8rm7FlY+QKkdUKGcUHT7stRLZKvBXf52QcPpgW2RO2qD32/ZAA8wAvLTJbqmKKMmMX7fHkS2B7RmfjGv4d9ISerDhDJ4d9HkfPYs7iyeiVaBwToDXR89gmISkC7wk7CbP+3nWx+nR7infXu9uklFuSoMynTzY7jIathZQTvi68t6dqAjN5Bt2HpPNXI5FxFRh67haGBXopEejbWntl8FPFz8W3QRPo/sEm70dckzoGYLOYTnMK3AWnlalMZ2NyE3bJDyTuGDBFgH4xur+3mx2y0AEkRSTH5gZ1LhDEXVv+lhJnrsXG31+6xQ2wlIZ8LHfRQ7QrgJjbDG6iNI8s+VC78NoZKS6q1ENZjwfyv8BM1tQ9Jp3tb5QOuQd5x4cPV6vbF23UpC8zIib4wHsmdQf+26wam8MdSl5bx0mu+VZbJUQw6RnudVNaeiE3kMNJ7vNYoJ5T
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QrwhvBw/QAEt/i2YQQp0b7fJY4gc1Zn9aNTEX8PXAd7KwIkdSVNqOK/z9aFC?=
 =?us-ascii?Q?QW+gEIjSqhEYf2z1iRh/cA4s7FJfgZhQltlKnONbiEUVwV9A+tctoQ8iw2vR?=
 =?us-ascii?Q?MjHeglU9t+/w1lDN0BWzhhUohL/7QrcQSOWJv33q0UMI2UNKFLoJ5f/iW4oV?=
 =?us-ascii?Q?wppgmxoFnyE8tOHyt2syueYixkE2PFZcD/1SbWBjTlUBBKZYvRp4mCLz23V/?=
 =?us-ascii?Q?37Yv2xdSQ//IMc/XzWVsndkFOaTspNfkhYYSq64ZTWZGc0YYJ6m2eGq4tiCA?=
 =?us-ascii?Q?meuUOB76FFZ5OCbKCW4fXEbGPP3xCaknGErAcx+Uz5yNtTQLuHm/wCldG0o7?=
 =?us-ascii?Q?GLgHgMrMi4A7DH5e5s/8eWiFHrGqp+4XOWlBqfqIrGxUReoNXR52DE6g+eQl?=
 =?us-ascii?Q?g1j2NvNIJVtlNBxdDUZVmYq0O1YUpB93aGIe9YWB6TbG904wOxqbsh4AwYr9?=
 =?us-ascii?Q?BEMY0LuGGdfDpUF5vjCw1i1a1OdTHswhaiJhTApSMwIGwOs8xe2vrRd2+/Qa?=
 =?us-ascii?Q?S0SRj/3lYwiddVeENs3/wwCNpFnucGDyWLAlgl2kDGNYcNSr0pS9w9S/i18T?=
 =?us-ascii?Q?jfXyiK/nCN33LUxYqXkKu0hsNlqUF2Xa9CQiPE2Wwzb3o0zglx+4jms916KJ?=
 =?us-ascii?Q?+2muLgT7kDKikelXOk0q6lqyVWyKOlbsYUQswZZUaXHvDAzeJxS5ujBbgkd3?=
 =?us-ascii?Q?iBZnGBjte1sSfV5uEykAv6EIYODu1zqg9psJ2931pJfZ9uWkIFCjZ2upqVlT?=
 =?us-ascii?Q?SjgVnNL8RznIb5w/JOGj9hG/SU11VDmTv0Ex08oW9gQkH4RsgFeJfr+4S2/B?=
 =?us-ascii?Q?dnoWmAkq8uG1QC9rQkOehfwUKPEQ9FJkW+K7yOJGmzp+H/1qN5WaGsLlNp31?=
 =?us-ascii?Q?33M1PnJvk5PrgYqlPQBr1wGgxkUA68BPtvVm10kG3hvjbSw61Zvt2drtt1AF?=
 =?us-ascii?Q?xPrGzLbKZyyIrCAkt+E6Mn17TmeXxFx1NurX93OEjF3MpnTAuQ7UoqkjavxT?=
 =?us-ascii?Q?enXWoz4YhDECw1N5k+ilRzApSHZDFdHQshUApciirWXcaXAOsQjmuSLdiRNa?=
 =?us-ascii?Q?bmvCJcYKbmBGyK1M+qFu7+Yijb6jCT608vqJlbv3k1RRgbSsOSGojj2dpxmE?=
 =?us-ascii?Q?1cs2aIZ7rseb+tMRdYuDrpKLqLO8a9Nbe1WiBpwEOJzfMjVZwPvOJPDaxkNc?=
 =?us-ascii?Q?rycYyM1WdBKL49ZcwY/QaANxQxNXt4bwAH+oHBpM/wqRrNOdTo5i/bvHn6xe?=
 =?us-ascii?Q?K7fdqWTE2+DFuiNxX0mtM53jzlqiHHeIdLDFIrRiRg=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf966c04-f34c-4347-887f-08dab464778f
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2022 19:34:42.4626
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB1726
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Tested with RADXA A6 module, which uses AP6275S (BCM43752A2)

Changes in v2:
- Fix SDMMC2 vmmc/vqmmc supply configuration

Changes in v3:
- Fix UART1 vbat/vddio supply configuration

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 80 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 +++++
 2 files changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 6b5093a1a6cf..37676e8a258c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -60,6 +60,23 @@ simple-audio-card,codec {
 		};
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable>;
+		post-power-on-delay-ms = <100>;
+		power-off-delay-us = <5000000>;
+
+		/* On the module itself this is one of these (depending on the actual
+		 * card populated):
+		 * - SDIO_RESET_L_WL_REG_ON
+		 * - PDN (power down when low)
+		 */
+		reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -449,6 +466,11 @@ &i2s1_8ch {
 	status = "okay";
 };
 
+&i2s2_2ch {
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -492,6 +514,26 @@ vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	bt {
+		bt_enable: bt_enable {
+			rockchip,pins = <4 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_host_wake: bt_host_wake {
+			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+
+		bt_wake: bt_wake {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	sdio-pwrseq {
+		wifi_enable: wifi_enable {
+			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
@@ -536,12 +578,50 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&sdmmc2 {
+	supports-sdio;
+	bus-width = <4>;
+	disable-wp;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sys>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
 &tsadc {
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <0>;
 	status = "okay";
 };
 
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
+	uart-has-rtscts;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&rk809 1>;
+		clock-names = "lpo";
+		device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
+		/* vddio comes from regulator inside module, use IO voltage instead */
+	};
+};
+
 &uart2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..73df56107db4 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1009,6 +1009,28 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
 		status = "disabled";
 	};
 
+	i2s2_2ch: i2s@fe420000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe420000 0x0 0x1000>;
+		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S2_2CH_SRC>;
+		assigned-clock-rates = <1188000000>;
+		clocks = <&cru MCLK_I2S2_2CH>, <&cru MCLK_I2S2_2CH>, <&cru HCLK_I2S2_2CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 4>, <&dmac1 5>;
+		dma-names = "tx", "rx";
+		resets = <&cru SRST_M_I2S2_2CH>;
+		reset-names = "m";
+		rockchip,grf = <&grf>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s2m0_sclktx
+				&i2s2m0_lrcktx
+				&i2s2m0_sdi
+				&i2s2m0_sdo>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s3_2ch: i2s@fe430000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe430000 0x0 0x1000>;
-- 
2.25.1

