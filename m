Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC54D612494
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 19:11:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbiJ2RLA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 13:11:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbiJ2RK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 13:10:58 -0400
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2080.outbound.protection.outlook.com [40.92.99.80])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD70F2A964
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 10:10:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GheplQhXnP2EVts2bu8RyNFWltxCsNm61JCSicXBCQc3ZAevdAJpiWq3OIT0IFqjY6N1qPk9CPHAufVj8TAgE5UoWrDWJxSShRW+Iz9Wj47mBKzZ7vWNFCZqRahShncrtzT+tDF4TEZex+UG8YIYxjREChzDYs6kbjEmNpXSQQQlCWhjduXjdm7LLymMeuabRSNZTdsZRdZXeMSUsYx8oE7LFiVsU/vZcEuZ0HBJyEeweGkyfjsllXd7Vz+nru0rKvEdyplXMiTdOP5i83O9WD9zj0qTUj9G5LrmZUEubDeX5tFAyX+3bZwf91anl+5a793Cb5OsuKNTyGNJB7kj0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYONljbYO1osIJNtMa3kUqciQwg/i6sFQnwzPYgQQgw=;
 b=leN+HS1hLu4HxFljBkEEWGcJu+va5fBlne59L0BY3V3I24dRrVOZHpK0b3myV1zINcPUh3xCRW1ZFldd5wH5rX20LQVU2H1tD1cEmgkjvvxX2Pyy6FE5F6hSk4e3cb1TYYw0rdRntOTSm8YvARvjcoIPw9s48+OjS076wJFv/gTyabeVMVA3sXlQg9L/a8V3J3Y0BYyTLBUz/C0KZNa7Lm0myeqcEesS6c2HSyOSz2edl8A1IM02H6y7JIVR7NAMSEsYnyq+xU7yJbYXSxLkUGmIr4bhf9ItUMPQyWajPf/nq8y1vfU3y2kE4D4Y4MSvYwNbqD165IB0hLNyxLqjNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYONljbYO1osIJNtMa3kUqciQwg/i6sFQnwzPYgQQgw=;
 b=TNTEkGex/UIKek/Ja+UyYwsk3qHougkE6kzQUQPpwUNNvlRu8LYi56eJXjWOT+gbAGnkl2/fWFE6dQwSNfS59ty6bUTX5wWw/zOWXW4ycmmobr1jTBp9/J2DkNcFr5UHb26pJxLxomaDWk+9jHymGtZGUa0masjNb56Hpk+rvzwZ4KXgDcQOm1ewhqQEFxDZDEGfzSwPTtmK4cyW5BGsphTmqOOPu8egADpJ+T2HvEawvVUrPPPqBxPQtihUzqpH05WEua09avCi84MankyzP6gTI6UyuA2cfWcNnariY1nsqIJZtXhDeO9fZL7FAGZ4dSxgXq1c64Ex/YlQqPWE1A==
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
 by OSZP286MB2094.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:16f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Sat, 29 Oct
 2022 17:10:50 +0000
Received: from OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd]) by OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
 ([fe80::5c85:eeae:9c31:93fd%7]) with mapi id 15.20.5769.016; Sat, 29 Oct 2022
 17:10:50 +0000
From:   Shengyu Qu <wiagn233@outlook.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, michael.riesch@wolfvision.net,
        s.hauer@pengutronix.de, pgwipeout@gmail.com,
        frattaroli.nicolas@gmail.com, frank-w@public-files.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH RESEND 2/3] arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
Date:   Sun, 30 Oct 2022 01:09:06 +0800
Message-ID: <OS3P286MB259791E603F96942F51332D098359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221029170903.78-1-wiagn233@outlook.com>
References: <20221029170903.78-1-wiagn233@outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN:  [LOrZnzPXcZp22dwxyheIvkqSwH/7wNub]
X-ClientProxiedBy: TY1PR01CA0184.jpnprd01.prod.outlook.com (2603:1096:403::14)
 To OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:1f9::12)
X-Microsoft-Original-Message-ID: <20221029170903.78-3-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB2597:EE_|OSZP286MB2094:EE_
X-MS-Office365-Filtering-Correlation-Id: 18eeba2c-bda0-4dd7-da4c-08dab9d08726
X-MS-Exchange-SLBlob-MailProps: HeyTOiyEx6bgxvvtESq6ioKsiISu8URd8sVsLfZxqNSJ6+Ex4LKGvQb3xj2tan730lzqX9iIZRELE6jDGBtoB419tUv9EixvwmtP8kiSuFPOsNbRSf10nHQ2sip8CaewNL9Mduee0dHXh9MCfLap5/eDvXYdEdi6+GptmtPRqqfGwaPFPYq+xLqbw8DNa1M5R8JsrwE8q8wm6d9ASm5ZcQ5dtZK44w+FrtDqVLmXFyn4Kt0LPtD5UTy5cTDy1rRG/0CSbCiwJ0dBWrldO/mieP+OOlVkp3x9eaS2G3cZmuwIrjiPYcL6OAqWN991Nq+AM93U4MP+a+OwzKBitUVFc4vqMnFX+XD8HfIX2IMkWMZ7q/CBiyTaKBMUbaQiIX6xCdans+iLouy59J14lyry7C41BTsNa8TYYf7nb/wYWlKhUItZXX5gkfqts5LrYu94gfYyx0MvG2zmmc6F4zTjub/3o7qHySIovQ/k2Lz7dCIWZIa+PpWNxSgaQXOp9cY5x+vaIVov674fEgYW9gjO9rcpks9T8rBobZDaVusi3lLpxEbv9Xmbnt0vV7RJ3I6htv+LLMRJREkltk31M7zQuAa64Rde+YeEXyzU/ShbYyDj7sKUy8nkfxgGu2ymkZKVXJeST8xHcgQ+VA619HzdWBH27w9TwwOGS1uGRDiFMDcccu849iSHzvvn5JO5sBuTEP6heypzIjRydO4lADV3o8f57hbOMrrrCxL2sdRYu2cb0S3c98qedRe3112mrS3ut+F6eQuAiO86Z7w94WVHhg==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ljsCCgvbmJH4p152PXvPdvODlL6srsHUfVfGoB8q/qXdJEwwSYcQNgvxdpIzKjpNzmsvZkvTJL2VrIB45qDCP6JQkRfqtY89Hcxat/wFMF2RobFF/8DX7nDYf1hnxabm6FyDK9laeBlIM4JLWls+wgDgiE8lTEMpP2DZFeT/v8RYJntufFEZnLqDhzaaXt3aaJ5u0uPVgH2epzFm8E1uDXiWiNeKrFMNL+32cvnBp8QYr5dMmficFEjON1z6NCrnDdh42WPeK0Xp+v1PvwqTh7CPKRneMyOeUe6uQdBapjw0av6SrmrUTdkBSFr1HVZx23NJwYBdFAlvcaix9AjX9UBtwCmzIOkPe5wMJbWnOo/KK/IzYoKEgL3PnDjZxXdUI8OsbbdKJzkkqg+wgppVRJsqvn6nrZEfnTwmU+414uAPE/07/Rpzx3nNQ+QieQvXavG3x8nj69ftElawaZpdP5fN6E0RKOT9HlDOFOT6LNWDMCyDoWLfFb/yixapipt0ziQ7zSkeGegysjzHD+wBa1OLzejdJGEq7AtddxhNgmi5Yxan0c63h3ZMgXSlyjtu1zxN95w7Wf1HY96/LNsGYS0TdIzrrq3aoPlb/crnXsEPELFgk8uMPF/SSF+lKqjGcYopjwd9hiFloh/usEU2vNCOQfOVsDMmb9NfJ9GWVr821DwyLHz5W4Vux741/6kQ
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r2apNRVrnoSoDqYebAzLwc7HBTLXhHbRSj/r48cV7GRDawnROS8MrhAtpD6S?=
 =?us-ascii?Q?+T8r+5qMSQi3N7ynvDNIrFresrOqjItDB1jHdyitcnNmeh2T5SMmxx0Ph4Yd?=
 =?us-ascii?Q?cwLB7RrVx9VFYqj8BUYaGpQRpuL7ruD43x/lje0zBtFHFvJAvkuiVjoUmnFs?=
 =?us-ascii?Q?ALe5N/35FxmN8NGuZ0oIkbfDpSJfjV9N+9tR8YJCUqXn+tZTd1coPKpMS+jj?=
 =?us-ascii?Q?zG4PnVrNV6l0dfO3q2fZDWNKXjhtBqZP+lp9Nun1gJa9SYO8z7HVywKpqdn/?=
 =?us-ascii?Q?7kMv7w+BBfmTYgFjaOhtJeHCRymvKPei3twkTwqXBE1IvylEB2VT2dN+2wrL?=
 =?us-ascii?Q?lQ8Qr9k53oWkdM94mGYTyiZ8kC1oKkpfea0GjmPXDXqIO8iKkZceqvyWVTr6?=
 =?us-ascii?Q?CbM1z6BS55vhZtjhCNAcBXsVVp9R93fPxqwD1l2kSi9/dleyMI5CE5Mq1oNH?=
 =?us-ascii?Q?BLpqfxrpboSTyOjXGXHABjn06GQ9Aa33RWWNWZCkfAWcp803EBMct25GiRHT?=
 =?us-ascii?Q?Ppc+fDGaxhoAa6cQNlwjSVTx/8hgd7pW+TmtbxVo9ZCsq6LlmXOFunI/rjEP?=
 =?us-ascii?Q?y9pmdHOR5Iz70hJNQJA5W401FI3ynVghaHUe8wZ/6khG/uF5iy03aJWyeBJa?=
 =?us-ascii?Q?qy0ETG2g6QpPyvFXLRjIYejFfLNBpj0Id03UbRSJEkN6rKGWkheIKSzEUniV?=
 =?us-ascii?Q?3gWa8oGXCuZBuqGibzXg2aUs4Da4IfbIk0S4SVFDPUiHJo9RlPMREColk0Hl?=
 =?us-ascii?Q?XUUWHjfhBdi9HYPfJsG6W2KsN/kM/HB7jkwbQn28WRXK5KhNQ7QGvUVcF4+R?=
 =?us-ascii?Q?osxFEgahxHGElIL96VnRjE3DiNhpj+0YvKZ4Jg7NQ+I+ImoHv9wVxxWLUjAs?=
 =?us-ascii?Q?rEIJ5ZcPNJiDulchtLirfNVxFasjXWna6y6yTX5AzCCRr3yr1nIJjyO2UDBP?=
 =?us-ascii?Q?Dqr0Pau/ziJQ3OTXPlF4qao6fGW6N+Hnd4oV+0/0AfDR5xps6vhSDXLBEnz5?=
 =?us-ascii?Q?7fDYd6WrfMFsqTIRMZQwjo9Mn/4gxorjE7Rag/JTHSnMl3Ufx6wuKwwprk7u?=
 =?us-ascii?Q?RtcWBs1zwy1CMGeZV98HGHiOU6rjnUYBxCzbmbKBbRC7VcrnirdvwhciM1Oo?=
 =?us-ascii?Q?iLASGrprCGPKeKy1sDBp70kTlnIb9IAdVjVLcs9gtDMYgyl1zSvvKRe0tNDO?=
 =?us-ascii?Q?vZl/Wgch1DRlbMQmmDk7BEsI7Y8wJIxjVcm/bT6Yl3FTftIvlIQLDVaHCbD+?=
 =?us-ascii?Q?+VLW1JKDEL4HgHmuEIOXj+6I4TbnZZSc35ba9e32bg=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18eeba2c-bda0-4dd7-da4c-08dab9d08726
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2022 17:10:50.0652
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

This patch adds I2S2 node for Radxa Rock 3A's M.2 E key slot for
Bluetooth PCM input. I2S2 is not used now, but could be configured
for Bluetooth HFP over PCM in future patches.

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index fb87a168fe96..9577a34bb367 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -526,6 +526,11 @@ &i2s1_8ch {
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
-- 
2.25.1

