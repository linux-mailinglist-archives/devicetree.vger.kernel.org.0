Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A957B612490
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 19:10:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbiJ2RKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 13:10:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiJ2RKf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 13:10:35 -0400
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2027.outbound.protection.outlook.com [40.92.99.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BF422611F
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 10:10:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cefU5w4wOmwOVylH3UfBPX1E9+rQjVm4hEHIX/iyNsUsyoduhgQBfT7T5prSszq98DmRzG29mNVsOBFBuHs79f60tFFMr4QOB9aO3/6ywOmPdNbiOkhqXJ1PZu3LUp4U9DahBXVD1S3x1AqM2+ywFUWKhkBpEw/ykNwOwbuXRb3hoxkmTfVZrsXIJcKwl7xKxkyWw2l+jnYGuEmeMMt/YUzFAElyfTCgreE2HXlXGb7PqqFzbHNnpJoowYkk18BMafPguYiBL9O7002cqO2huMq/ztaifMva2oH8MlWjZSsjbo5GiVlA6Ivf++7HE0PhTC1Cplggk52bY0pP4cgPxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FORUlqgGGZFzWqmWvvRfC09/Pav3sEsvyedI+qScY+M=;
 b=Fo6FCj8vdRaLP6xFeZkvGQd/vzwIXW9ScWUbFIkD/Ao3Bp1Oi9aN+IV7l89ZW3xLLv+2J2QVw+sFdUBUexXPjlUdsvaGS/3qpm+qekZrGXUmWXkug9akTHzKkcPcYDMnOJwG31VvVXQexnJEOFNGsNwf21XJyQigdYf4BQU6dvcc47nnmzyVJm7oHK3M8KI7pPR7wKbGCUoMGs919ff36PncHL85H6XQEIYwLL/33xGivRCOwr4ZxyAW3vwnyS0UYGnhZfL5fFCjCRfbXxtkXO8azAAiBXNLXwHUOQCiQeNCJuT3F2b2CaGhyFIpNDWPzF69YYs3XqFA7lDj6aCriw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FORUlqgGGZFzWqmWvvRfC09/Pav3sEsvyedI+qScY+M=;
 b=mQ05AAmmzM7SjvUpnh2Hai989yFwKBh+wABosB4PcU4R93rzc8oqMXFT7s6Lfqbm0giSudX/bb9814YOLShPrf1otT85cEPzdCR8P7QRFS2aXQecF3wXfi03ISdNDte1PAvuRbuXnQzwgiv2KYbzy7V0/Q65aJRC3E995PiQdgbV+ioviSDF+Sr4FuwbbVo5LSloSxtp2FcE0I88Vc7WGVV1/U+y3r+tzVFeC8Kepi2fvZbayqyehpR1B7T/Slwhxgm6uekqDhTuLot6+NeN2bVtTaQQ4b6BTUIIlAaNreDitH+kvhy/Z+dyxLuvAIJuNUWSXJRfSWjjxhFW/bZGqw==
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
 by OSZP286MB2094.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:16f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Sat, 29 Oct
 2022 17:10:29 +0000
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd]) by OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd%7]) with mapi id 15.20.5769.016; Sat, 29 Oct 2022
 17:10:29 +0000
From:   Shengyu Qu <wiagn233@outlook.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, michael.riesch@wolfvision.net,
        s.hauer@pengutronix.de, pgwipeout@gmail.com,
        frattaroli.nicolas@gmail.com, frank-w@public-files.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH RESEND 1/3] arm64: dts: rockchip: RK356x: Add I2S2 device node
Date:   Sun, 30 Oct 2022 01:09:04 +0800
Message-ID: <OS3P286MB259771C12F2B15A4DDF435FE98359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029170903.78-1-wiagn233@outlook.com>
References: <20221029170903.78-1-wiagn233@outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN:  [ymImAqZCF4cKNK0s+rC5vGJATOZNLJUj]
X-ClientProxiedBy: TY1PR01CA0184.jpnprd01.prod.outlook.com (2603:1096:403::14)
 To OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
X-Microsoft-Original-Message-ID: <20221029170903.78-2-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB2597:EE_|OSZP286MB2094:EE_
X-MS-Office365-Filtering-Correlation-Id: 44fd7b4b-8200-48ce-f3c0-08dab9d07ae8
X-MS-Exchange-SLBlob-MailProps: HeyTOiyEx6bgxvvtESq6ioKsiISu8URd0/A22C+d+jHkfeVi9SWRaAW9pbNLlrHFIKg3DBJZT1b61cXvOUv/oTUrvIy3lPnH3T6tme4QTrBy2mWpUL+dJURUtnsDPp/CkBn5wosTtnPHoxAtiRq77EnD1tEF+zLT8pkizDvy7VXiOZApS87rgPYhKuHFBFOumqlfOCvX1bc+4zjVdZPfFjlKuhw18p4Dbu8OjbAeEZDehTp7SoVftgqcFuuCJlrLCyZMJnOjiFTjVKxYUK31IE7MLscSp/ECfNDB7hJfij8SpaOZLkBh9M25RzmmCLY8chA3gx7vxnlrC1J8YYxnRza3LgSAN6eaO53QUznMBJZDmdmuSarEt4vTyFj2Db/eYMeBv9VEZGlGUYaUOwe9u2FqXukipZbraCm0iLZ33w8VAafCQTa1Auk1Xz4KSTZBK+rxmmpS0B5UESjxOOSCJw981DMD+IGqCb3ABduPNj1BGh8MK5BBEOudlPOsB7by2YPRLDnCURQFj0EPsvpGTr3VrYwcmYkXBeuANKteYjYc0ybiyTLdgbCSKVhXOCAjPptu+Onw3wKdqwopeI//uORpxtcPypXfDkGi7qsu1RQ+AT+4i2cdDjIeZpnnxfDC7ZCqrPkSxG4uT/mPVQ+aIJTqHzrgCsmicoEAj0jQevqG5r4unvTpkdXm5oK1dZXSVP8zwAgrBjK8mRcC0fmOp0/2k/i9X/eCUELGoDeZQJ4PhYxKay+9M090bqso7KDWUomgJzqJRPZmvpG02AX6VA==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Oqd4gHk1QvMdNwhwJwav1TeTnZfLMQ82AdZjM70Hk+3UqXfXRMEe4/OYgeEVDl5MJ4OfUb0ZzqQIOH87HiIIU1tLdEygq95XH7JfgbFj2NAvy/xNMl1hG7tCeZUyXslFpC9bLhIBBkBLsdI/3AB9N9L7KA/Bf9UyMKLyEcm/jfLYvl451uivoVY2T9YZnt2IRwCNCkW7mwLpvi2hE+PVMxzKK9OjRgH4O8fPI8lmquri4BiX1vLAZEDFAMjVyIM6I4oUVPu1yab7IxU9bjt9qOK6OufMCTRD+qzAU6TtL6BbS8u85fbc/URHKytPAJZ5SJm/beFtzQDWeiJEgLAIlJLD0W0nzuMSH+TrqLkwCZ+yt5fR2pUTWoC+pTzInk83M1ooc8CbYagG56+o8zyfJv3iVgSo/D980ryOioa7XiaDjz8P0uDgzr8TnSrRB5xAYNrZ6uLpU/DUtTUuVny0L/uwutT4ehu/YmlcU6iuUo6qxzk5zSLrPM0/9xPwb9nEtxPdp6rT0qjdBNKIa+Lwku5VelOGqXopU5B7pCVr0ePtYBpYS8F82KJmrnpAr2hF3vC7Fd5KABwxCWKo2z6pdsQ3l/Twvf5hrKWYjIs0I3AQwFzcoQdroj11tYjmoylIJgvq7SP6UMij/pVq4JlNyrhjSD/L8aEMvoU1+D1HhvqRsoL7PLWi64v0ouIc+Afq
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SWjrL77o3XDYlha+hnoYzTdr7WGVXacXVnvNhhhjZEPU0t41y+zeZ5Z4D6JC?=
 =?us-ascii?Q?pvi4dnQDuKjmObkBUUiS8oRV0pwOUbULGf0VnTAsxQWur0SgTK4XoWcvbthx?=
 =?us-ascii?Q?t7a29WThkAkzU1Sva2ob9uUYIJKQTMOoMg79N3WE7BHyUxkZkXCzyJCOv0Xr?=
 =?us-ascii?Q?poAJURfOjrZMBUgqgfDFNCvLpCW1qKfbqvFNt0xfTmm8miEUcewp8O1CQnem?=
 =?us-ascii?Q?XVGJpyV8hlOaltTt6pEI3LNCSIekcJl1mLezsuS//eFu0ctHReRDcAiSShhD?=
 =?us-ascii?Q?KN6IwTUemqJNzynD7xUe6QX7xX7/bnnMsYXnl0Ij+LMhZPkF76ERH1zzwTdD?=
 =?us-ascii?Q?/siOEri/qxhyUtF8JWCK2f6RUZ1EPuGpKV1IoNohZyIPVIoqCifPjfrZ0EPy?=
 =?us-ascii?Q?w/x/iKeFvRzmgR0OoMD8Oa5TNx/obSHg6+8YDvRehP5TWIYdAoukP9jK5NwP?=
 =?us-ascii?Q?FGjnQS5TofhrWuP4K56MJ1wjTa6YA6JF/rKMt7E4V0ZhV0/MTydi4C9MMR3d?=
 =?us-ascii?Q?5Kut6Ry7NgGj1phrx2npEyCiH9/8RnnE9v0zJ9Jks9ppALhOu/bkrxSNbWdj?=
 =?us-ascii?Q?wilAV6FgEs7hPZFr+vDFq+vklRcCky3JWmM8fY18dtUItrRXN502b+4Kb0EL?=
 =?us-ascii?Q?bv9qJ5xGhHv8QQuUU1ssyqNo7U/hEuOeYnrp+gT6miZtMI1gJb6v+P9DOj7c?=
 =?us-ascii?Q?ohXZ6DAeL0Ab+nfyGqwLt0OABAEUnt26xbBjrLweNT8J9pGV6DxOfxnyRGTr?=
 =?us-ascii?Q?Be3JEbEvGoA5GzLOlwWKDqCU8CR+4HWEyjOwqj23P/uk3pIFRR6XYN+hPWvn?=
 =?us-ascii?Q?keC6B8EFIVgh7bTsbYq4xY2a8mkOaMSDJ3UGwQ5qRUekWXbHd0nUcDqkqn4I?=
 =?us-ascii?Q?7aVnTJjDrLW4hLx/JRihvoFAYTwhawaeWKlUJM8lpUB5GrTUAcXbjfT9mOaf?=
 =?us-ascii?Q?Yb4evunbKlNsCyj5EMUol/IwLfkyNMwPjH5QxkTR7UmQXymuQk5sS6Q35BDh?=
 =?us-ascii?Q?a1JoclkzvHZ+eZOG674egwwMYC9+ILzGTJqblwlgaj6XspUmGYtJWEvnrzx/?=
 =?us-ascii?Q?9ouIY5w5eY0W4lrEl0GqHJumMIH4eCgtVSRwYA181SeJ257EDHMQ+2q7FkZJ?=
 =?us-ascii?Q?MTs4EeFvSLnTfj/AqKWlkDA848C29BfcksTRsCqItSlZOi9s84O6oxmb3ypI?=
 =?us-ascii?Q?ljiXHSfP2IsUN24Xl5JcqwSR7HrMrwRwnAmRhcxquZtkeCSIUYBjIY1XaqiP?=
 =?us-ascii?Q?D30P6OCC/DJ0ydzYPoigIT2/WatPGFJ8oa9RSld6Ng=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44fd7b4b-8200-48ce-f3c0-08dab9d07ae8
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2022 17:10:29.5415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZP286MB2094
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds I2S2 device tree node for RK3566/RK3568.

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..4af1e28b3a0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1105,6 +1105,28 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
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

