Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67C5260945D
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 17:25:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbiJWPZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 11:25:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbiJWPZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 11:25:28 -0400
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01olkn2036.outbound.protection.outlook.com [40.92.99.36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 333E531352
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 08:25:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V/hu3rULIeckHwMJQEW0Ytkk6YF6aFyU2dcY2B64len1z2y04JeT5dhbEVo9VNrhBuPjw+TYrUr8EbsN72iMqKAD9C+v9L78o1s+zwHgb8fDgxseGXTLK90YPW76JhIvXlRskGpXkCSTLgqyVo5a1FmO6G2/lkI7yE4n84U4xm7HQyGnDgP2pAh6lbSVlGOKy66wlp8vPFlZyB5S4rd05Zju+q+WXAnIRdFF25OrDcr52TIl988qvFOtlxBSzWcEjBOcWbEjKhSOTqLnCjEOJ1aQ6MajO6rzEUvYww32EWGJkjudGZOuzD/kJ+pZJ8/7iC5pr9/PO44q7gx/x5rumA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EYONljbYO1osIJNtMa3kUqciQwg/i6sFQnwzPYgQQgw=;
 b=FAvy82mYX3WqfZH17reMvaIzMQuz9BLfikrCWE2aIsGTxsNr98XzkqoLlqUpdwRdsxApc1As6bNdsuB+ZAcgKZwG4NKvvGPodklbrbMSeGLpTPrKVh0Sps/RRuHHqrXkeCdcbi68m3Hzi5HsHaRWKB4UyTAgYiO9UOTJ5TVzgGUAsND+LGE2V8seOnny21PQxT9hz5KZw7QeZ0mcbszUYYRR7eKKk2+OzsUfNX6Q+C5WfO86apDLqp7L4akmldLDil7UyIaAxJ1IPiI9RroqANI6RiL2xZDd4yz4euUBARyvvPqzrOUrzHkh18FQGMQ2V/VDXf8PCHUkUgN8Wj3hpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EYONljbYO1osIJNtMa3kUqciQwg/i6sFQnwzPYgQQgw=;
 b=thSgr/rvJPUeKRN/D+wTY9hzzCYxY2DTF06NGW0AJdIViToPKuts2EclPiKN1EJzuU5BKjKGDtlEtxBeOW8V0I9hSvDW6zPooecFnyqnmWB/gT0Z/r0s8Z6Haa8Ll81VNu73j4jW6NyP16+okBnlF5WWtQSzJkWkQb8UaisAhJUAjeVvSytPSZBINMd2KyQ8StQ9RhW1h5iYMuHnVSG07Zyx6PyY4e3aX1noxmA8lK5w+UqREOV+u2uAeOfG54CHdE6xRwUfsFUQFvtR3d4x3XxuOBCPFsEXvkoTEa58aSrl6kg0+mjSnNj9UlGqB1gkPDBwnD8XDBD1za+K2ZC1vg==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB3403.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:208::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Sun, 23 Oct
 2022 15:25:21 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5746.021; Sun, 23 Oct 2022
 15:25:21 +0000
From:   Shengyu Qu <wiagn233@outlook.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, michael.riesch@wolfvision.net,
        s.hauer@pengutronix.de, pgwipeout@gmail.com,
        frattaroli.nicolas@gmail.com, frank-w@public-files.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
Date:   Sun, 23 Oct 2022 23:24:39 +0800
Message-ID: <TY3P286MB261149F4EF283626B04CF5E5982F9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221023152440.2546-1-wiagn233@outlook.com>
References: <20221023152440.2546-1-wiagn233@outlook.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN:  [yWmVc0hkMrD9MeghDME5QRD2uLGZEbQG]
X-ClientProxiedBy: PS2PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:300:5b::22) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221023152440.2546-4-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB3403:EE_
X-MS-Office365-Filtering-Correlation-Id: 6db99673-abce-4dc8-fbee-08dab50acc6f
X-MS-Exchange-SLBlob-MailProps: HeyTOiyEx6bXUCkHGqUvW+yTD5AlCjqAT/8lSU7LuOWqF9jQkDl7JQtkNWwUSl4+NtuM1KXmvPGxE2eowihIAcFcGGQibMPHkgYy9ezJcm6K3LNtZXD0fCXOpdaVEEvsAfK/SkNcubyAn73h/LESOijQWZYdm7uRv8rNViDcsoDeFA+ox0+HIL+aTuGOcZlRZ12Gi/TP0J42GqV/0kf1b2Qcga9Vi6in21kxnc0yyZcGElgDhhMFlxgXmeJHIMuC7j8MPBFniLCDUnU+baVIvX44Kqax/vbsjyYatSmFZzSmJyVUrJ6SJ2R1cWsLEZZhuEweBu2crHgjYsRUIhjkc+r+C6UXvo6NIj8VqQaWzUhCjrwp2pXyOY/GRURzFOjsgu1xHZcxx1t2/7oQ/n/hVMfwNhuvUypDpcXAS6lAPRm0fmlsyye9a/HCspzQDq8EwGP4ruQzd8CzUC9TaeM+8o2vonZI8PjWfpIFIiTmxcQbMahaPrcApNoG+4jwwbu5iKzawxwS8dxWnhl58ANPxP6Kd/n9V9aBtSrqCUM7ps9eCqpAAJ2Ga8yR3fclE+txfODeyood2C4mjmfWJkCdFdCO7CDiHCmqSr9DfQtKihzsL55LtPBe0GNEXWYG89arcaC521NRAFYp3iGMXu5i22I/bviGUkm0l5TrpYsOxpxYSzTeApgyxE8Q9i3G23mhIP+6jpujKDnkm+JY8cT6KVSZUGLz9JQ2oHHgGslegxTBoYtqmnzYvc682qZmvBWR3MxOUpRKnctG1TxQU9NO7Q==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vyYv5/+F2XMSwfN0CBo4l3ANhgm8oAOF3XfbndtAveGsBIMYoCNvutBlqnfaweV8hRQHpvc783Kf3GWASZ6g3maGE7J3oEA5ZgdS4OyZhpYub+pNkgOubT2pfMuywuYHz9nq3u+KJEGszAWDu2FMb7Z3VOG6yL+Jgjk0FYKK7xh1AqdEoNYLIMqDh+SqakRhHDFv2RXsJdDKN+TyZKQC7luhJQWrncvvTVhiYm97Mjs1SDHV3RbcR+KXPm2MkR8wT/akP11giv2Ne01cR8lQQAHGtIReVz8HNhyp+aQ9Im/EYDxW1xT8mK6+SArumWDlPLgTQsciCWEYOhXYcuqN8A+Nc8kzkaYyc2qIKFkmvnoTvhZhItkdGq7W9M8G391fzoHp4jrqLMa98+MB6DEvVodmtn/fn7/KbUjgx2oePByNTtxVO/7fc1STCi/1/Y5zXmXt+1PZSKlqo6Nb/yndv0zWj8x0+NwIYAB4Iqh1Z0LrNg2uPKLx6z7n1OxdaugHCBFr7RvtpD4cLAkZnpcPMk1zVAqgxRCQZRWyDXaqRE6gw+In4IVOtyX7w2CxXFv+lpVZJ/Sqgp3h3ZOmRX9QG+c3SLSUo/txmFGqGiHR9Kh7tF5WJ4BKQumlIFW6wvg51Ye2oyoysRIlmPWwT6IbsE3dLcWb70S7Jaa4lJq3zpRa9JZjOJMvlTI6hlBm7yx3
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XgNTrsFk0v7K/bpAFXCeQtq5trqLqDhIFJ7oi7LCBCfRpzO3Kni4e0SluKPg?=
 =?us-ascii?Q?yq01d5BTNYn/TCbqmIZN06dePJeNs3TmzotOSISifv69BcwmKJQuhQfLTsmU?=
 =?us-ascii?Q?X+8lTRk2wK+ieNosINEwzKEnbZnvsmqxmvn3TPY2sCWuUwoBNyEEAWVRgo2H?=
 =?us-ascii?Q?/7ycQz0epqIDRJ792dUTVfax25n6uC7PbtOwFJcskBoE2ndFV25R96y2aCR2?=
 =?us-ascii?Q?69QDCdhCSjwveiNxmD3rq3nVWktYwKxCFFL50j4PZaF/RK6aUwMqobozleiE?=
 =?us-ascii?Q?Z7gelw2JN40e5tiK6w5WD5dVAzKZMpWj7EBtZ+3IhQL5GQYBjcjltxEWHRRf?=
 =?us-ascii?Q?1RWpiaKwtB4peoThkXDr5oG63Sm2YEPftjfWhC8TGnf1bDtlHDbmnXeK4oHL?=
 =?us-ascii?Q?Dy1cRdcd2kb/IG7OaZvmOPLgGsXdTEBDEGgYQRJeQAUzDYENXfwZUT9ScHej?=
 =?us-ascii?Q?8RNqPPbpL1/hQtOcDHVzXrNcPxlJl1xPgCp42earvZHoUQ/RmJ3YHkzV0Lfl?=
 =?us-ascii?Q?iD16viY0S7NJ1IeCQutnTNgbRnzC441H9FrXnkZe6bOxRrVVn5p6kbcsASp0?=
 =?us-ascii?Q?4gTOEh8CyIa81r8fMUIViAB6xVwxC0GQvc+bylsg8/Pp33N8JT9LKvXLdHli?=
 =?us-ascii?Q?qp9i9ByZ96L74jSvUOP6N3j7s2365sDRBU93WRwDW8A4z6Y28oeZTvLoWDAa?=
 =?us-ascii?Q?lcBRF2wcDOkyrfDbPeC9jmYeuMdkYtNaPxhzSmh+10ExKn6/g/WWZIJgE8Il?=
 =?us-ascii?Q?l3RUze2f2BnVxq3nfZFxlBRiJdvghDGKNQPCOLwhLM2gJa1q/M+GNklVEXj+?=
 =?us-ascii?Q?pH9ucGOm4CjvVKcaFnaTrqej0W31oKFkiRgin6SJBVbPxeNxRY0MB8ZVa/6b?=
 =?us-ascii?Q?F5LnkzkH+x31/zUc/iecTHqlql8JU+zmnKiD6MUqexgejRrjKfmOB5B7Md7N?=
 =?us-ascii?Q?koD9KkLnxdBkz0FSD9rIGDXcDmR6rq2bIRbYLPKGcQSukJtwWKfda0tsocLA?=
 =?us-ascii?Q?tPBNG8AWdBeh4JxJ32JeKaf3Q5kUR2Ia1XPNwcfaCfyfFuANj/CxmkTWNzwh?=
 =?us-ascii?Q?jAKl/vtmx1+KHC0mKnXVZdinogROuaT+1EqSOBa56cOJv13qd9bTtMOrKPc1?=
 =?us-ascii?Q?/Mi2l/zsGNTrCWdVuSyqT2G5cKlx0r6WyBgLp7m0AX9w+zbaY/Ev5eH1X1LI?=
 =?us-ascii?Q?OSEzwTHn4Grn4K2iA3ctwKM3KIHQOTQrX9rYGaz0KEhUuuoUEmXi2zF15k09?=
 =?us-ascii?Q?dZK0DCh4I2Bw8fHu0fjWP5nriHzGQhGm/KZYTS1y/g=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6db99673-abce-4dc8-fbee-08dab50acc6f
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2022 15:25:21.3206
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB3403
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

