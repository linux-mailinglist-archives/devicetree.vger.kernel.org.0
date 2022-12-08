Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C85F646B75
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 10:08:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbiLHJH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 04:07:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbiLHJHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 04:07:21 -0500
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2044.outbound.protection.outlook.com [40.107.20.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB9CC4AF3B
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 01:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6fQziBIu4/pfo/xLA8BiRcAaeW12q79lGNaNdqdRROOR0JNQpMWqSdpqwTMZ9ScHdpnYxwMZJoog3716fyB45qZ4q5Bzy2y7mjNAOzNYIpuOmF08kkusN3ajLiuaE3led6XEW+7VephdN7HKhm8EqpyTCvUbKWkQzW2a1TNhEd5wA0a0OTlDMOPvE1pvg4qA7HKNm7iRcxXsuEpmEcUovki2gmI2Ms9Q5E2bw9xjfons1V+c7GbZWtctGbzASI+27TQJmhg874C2Kc3tL8mdZQqf7ie9vfkmWJ6uqglVj4dbM1qPaWXmtx71IkhVtUuhVPN5mUJgLsWXtg8JITsgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q7Yoyy2dJQLWo9r/1AucUrhfZL/maGxXUA2O4pOnnAk=;
 b=SpZh9ZE5vRbqWOaDb5ZXfdm5NGBPVh5lDHmJas3tkguVacvcHBmlAue26jIV8wkidbO26FOl/4yZzXn++zQ5fmwLj8JhOah2ijsejviUemEFbGp8RJ07cRIQPF6BcmHhEPeTeRC4su0ouY66OPxPieNK/WhL+F/6he3rINMzbEXMaKrBXpYV/AUdVONeQYW9SPpUX2ShMOvBdgt7M4GFWL6udccJX55ivogCjBU2pgeUW0bWWZggZGT9WpIusRsjDwqRR9afOof1uUvmveAq4dlnQGqzdzEpp/yuMunSV4XLdDGhl1BOZFO+VqllSMuC4iaTMyKs6SNs/PKD5JoBvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q7Yoyy2dJQLWo9r/1AucUrhfZL/maGxXUA2O4pOnnAk=;
 b=Dbee69Fg7mFGg0G8dazUCDYtXXmXwSUVNRTHAuIzinv1ETVxAtlDAI7fqjDqGEwWB47Ce5ZNCAT/7afwWZyjIzBn4hJjziKkrPoOn6amjZbd7gctCRW0QfROm6nql9mj7lvFEtK7Ah05Juqi7dkfuLdcSe5RMw8Nyh0QxEoAXDE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 PAXPR04MB8943.eurprd04.prod.outlook.com (2603:10a6:102:20e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Thu, 8 Dec
 2022 09:06:50 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::7479:76ef:8e5:da0b]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::7479:76ef:8e5:da0b%7]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 09:06:48 +0000
From:   haibo.chen@nxp.com
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        peng.fan@nxp.com, haibo.chen@nxp.com, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx93-11x11-evk: correct clock and strobe pad setting
Date:   Thu,  8 Dec 2022 17:06:58 +0800
Message-Id: <20221208090658.3591981-1-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0034.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::10) To DB7PR04MB4010.eurprd04.prod.outlook.com
 (2603:10a6:5:21::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:EE_|PAXPR04MB8943:EE_
X-MS-Office365-Filtering-Correlation-Id: ca9ced4e-b0ea-4e52-0557-08dad8fb8997
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DOmm586DgeaUkRGdll04GV2W17vWc7XnqhRj0nF/Q7UEyCt0DyLbARU6MmP9ZGlviDW63EZmx8OMAJGxGZCfohuo/A++eQCESrU4oVOTVZn42aJ2CvJYS598qfdbSaS13aGStiTfOrChLj8AQvJoCzLNjEeo+8LEGbOvitmigq0TdCHRUxI1ObhoBQT3C+Ru/Fm+y4RFZiJ3Dv4Unq/n0WITqJ1LABpqIkWAuhJsEU6j+stbOBHMG/UC78IDE9OB1LF4FIDBpdSEcIB3BGkJRNYqQyE/lLUD0zq3wcPQAW0sQatNhPRkptNO8Cj6xsXxjhSCUofiUdcgFyOy2fsufJNbq2JCZFzqWa8ZK5zTMwDgr31cEOqLfGu8xuirpVxkkCa8R7sv2OVl07or2ZDennZ+1LGQ8gGVwJX800Yd3cx1JwQ8Cfg7BKjcej0pj22gsrdzQPvQ4STdusFyKBUvnFgxe3oXm0r68CWbO/T4uj3mbIDHIafHzGxjINu8JvHHEt6BFCSWV9cJOMr+/Istul+IGBAUedpAxNgT+Nts8S8RLNWHdHrx7tivk95qQqiXc0pha0KBpMT73crlE3rfODjapYwf3AcseE33m2HpfAZT4y3kDJZuamdtv+c9vPUFiTFOKKMmYcVjA14I+b8DQyae66CnYt2HbB8Kl3JhJbWBX2QHz/qQMJWAR5xJj0uqRVzvMAGO+SE+dRemq9U5QNbufcaUH1Ioli0VtR//sZw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(136003)(396003)(366004)(376002)(451199015)(83380400001)(38100700002)(6486002)(86362001)(478600001)(36756003)(38350700002)(1076003)(6512007)(52116002)(2616005)(66476007)(5660300002)(6506007)(26005)(186003)(9686003)(4326008)(8676002)(2906002)(41300700001)(66946007)(6666004)(316002)(66556008)(8936002)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+JIgmhjcARDefYrcXIOuHuEA+Vj6lylbUzpH42ek9xDTp66sY9YyAs0NvyWD?=
 =?us-ascii?Q?nGv//pNQVyMLSSdXsrIjJ06NcNUVfdHYD530WUEBCO1Me1z8kHGlm0jMhhAw?=
 =?us-ascii?Q?Q2yNTnrmF2kZc6TU9c8mjwJjuMzbZWplMlB4U3fYsEhOv/hxPj3EQ7KzURrb?=
 =?us-ascii?Q?U3axh/xneKaoZsyNi+E4PQxLtJmvt8s0D1T+rlrvwF/N8izEc84KoL3UT4eD?=
 =?us-ascii?Q?9ShOHelwVEzjLiJowbI6n0SC5ioJWXX5HWNZ03mOmZPZV1bBrquaS/0mDfpc?=
 =?us-ascii?Q?DEdUh3kLUADve4Yp7fxioFA9c+xILC923rQ9b/gXeW2QHPDaiiVIEPft0Eqn?=
 =?us-ascii?Q?jau2V8hD+H8CMhYZTjJ6mfOlXDSzLOoeEHHmOeevKyNYtHsZUuStfbJnet6K?=
 =?us-ascii?Q?XbNa0zdat6FNycUi9NQ0N+VpS2ojMIyg7oPIp6DI8yjKZo7jlS+URC/61/VC?=
 =?us-ascii?Q?u2KDk70mLxIpQI4DbDPx0uMJ+e2dVU//MlGbhCs8e7mG+R4zypUizwVFGHed?=
 =?us-ascii?Q?DRYGhUTAirvab21RnD6uCIa+eqsZy7MVbE6rQ5UfaKTix2dvp9pl3/6RndMM?=
 =?us-ascii?Q?2MuFe53EJ/3/RkNPhrSH8sZ1AYGfU5vH+77DddXk3vv1aEuEENcGBtVPElJF?=
 =?us-ascii?Q?avInn813ZGbsJeOTlaS70UuhgpqayFwMCbqstTp1ukgkC3ih5Ju1SpsGy/vW?=
 =?us-ascii?Q?L5H4ICHDlALUHXF5U54TdnssZDDb2ZK930YBtYt8Xkis17ybyYEM/gO/SNjd?=
 =?us-ascii?Q?da+nblHH4WESJSXA8+dJq9xmnYFreSidQpL0qiJIUlBo23Vn6UYYpPXuxhha?=
 =?us-ascii?Q?S4gZNbQ7QaH6LOZYHuD4JVkZEZ7JsgtGaH4AhMtQsx5n4hZddl/aDoWE74Ia?=
 =?us-ascii?Q?KIgNmse/ayRXjr+t348/FKSfTnLzXb68ILED78YU9epVcH34EmQif09bFyX8?=
 =?us-ascii?Q?41gCqDxmHZ14Me2Vseyt2nFWxqbsawKgPYDBLMZHcYYEgOptGMjUKb3q05A7?=
 =?us-ascii?Q?T7EcSPDiE+A9X3rqw6HTfUl5SMZeqdKgC3Wv2qwcFyXZ6K2zSwRtsshuciFM?=
 =?us-ascii?Q?bwQB/XfL0lKZ3GsfHfUXyNTmT3wTclkaKq/aV5XFc4SqzlqWYYP9d0D0WHUP?=
 =?us-ascii?Q?CptBoTzQmONDeg045TWPwHOA2VqAeGOCOUqWxxxBImJG3rKLcglvfcpzJ99P?=
 =?us-ascii?Q?R2PFeu+WiyBYYM5i917B3JRt2a/ZirdJt15NLMranwC22P7VSCcf2zFmwS97?=
 =?us-ascii?Q?X3Cw8aGQFiLDuiZgRNsG1Po0eEs2z47sd7QsqmUeUbehTiBwO6lGj2VVWg7I?=
 =?us-ascii?Q?n8pEJcMmINKbRSVAI4QaqWI7D44G6rLENzWove+FkHH48K7P8fG/iT3tJ/nr?=
 =?us-ascii?Q?ZwpiPEerprGyIrRGqEcJPSUr1zmxK0MBVfPgQ46vlmOKEw8uiIpRrljFZK5Q?=
 =?us-ascii?Q?80yHUfFOp0tuq1AhtZBVpbtuQfP02+xGOIT0sDkb+xcaOad/AvV8TRvW2+HA?=
 =?us-ascii?Q?X0qa2SyKA2Qk/clQ0Vy05OTs4uyWayFy1l6Zcs44RkThpszbP+B0N9b9D75f?=
 =?us-ascii?Q?JjRWKoEp4Cq50l5mNBP6sAz960HoDRGJU02DpAgM?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca9ced4e-b0ea-4e52-0557-08dad8fb8997
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 09:06:48.5769
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dlc3cRiEWfsgyJDlSYEb3KO/HF77Gf22z07WHnZ68pwXkUKKKXAdfT78XC/UFyZb968iJDGN6htUaik8vAJ1Uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8943
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Haibo Chen <haibo.chen@nxp.com>

For clock and strobe pad of usdhc, need to config as pull down.
Current pad config set these pad as both pull up and pull down,
this is wrong, so fix it here.
Find this issue when enable HS400ES mode on one Micron eMMC chip,
CMD8 always meet CRC error in HS400ES/HS400 mode.

Fixes: e37907bd8294 ("arm64: dts: freescale: add i.MX93 11x11 EVK basic support")
Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
index 69786c326db0..27f9a9f33134 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
@@ -74,7 +74,7 @@ MX93_PAD_UART1_TXD__LPUART1_TX			0x31e
 
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
-			MX93_PAD_SD1_CLK__USDHC1_CLK		0x17fe
+			MX93_PAD_SD1_CLK__USDHC1_CLK		0x15fe
 			MX93_PAD_SD1_CMD__USDHC1_CMD		0x13fe
 			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x13fe
 			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x13fe
@@ -84,7 +84,7 @@ MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x13fe
 			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x13fe
 			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x13fe
 			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x13fe
-			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x17fe
+			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x15fe
 		>;
 	};
 
@@ -102,7 +102,7 @@ MX93_PAD_SD2_CD_B__GPIO3_IO00		0x31e
 
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
-			MX93_PAD_SD2_CLK__USDHC2_CLK		0x17fe
+			MX93_PAD_SD2_CLK__USDHC2_CLK		0x15fe
 			MX93_PAD_SD2_CMD__USDHC2_CMD		0x13fe
 			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x13fe
 			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x13fe
-- 
2.34.1

