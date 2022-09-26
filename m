Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18E8C5EA7D3
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 16:01:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234030AbiIZOBH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 10:01:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234095AbiIZOAj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 10:00:39 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on20615.outbound.protection.outlook.com [IPv6:2a01:111:f400:7e1b::615])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A636A844D6
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:14:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U2Aogwc6Kyh0rZvh/77T26oGw2Hgqy5q1N8XonXTl75+n6ziSvcxOzsH4KnxxnENQWMZ4PE7Oelhmi1YMD/NbFkti/QMwguQLPt0pGMlAUsqXhYpHDk1kFAUkxfx3O2fStEtVXWd2L4gm9MTWAQMG8QltzgX5FSGUT04imHyMaWcbckshdmex19wqmqYgDC6ShppujoWjeXom0TSyTjak9KwODtv2SBguLYsvj6F8Yw3DTAHMZxDo3CiyO6qA+kfa/rAIWKo0XeeKTnfcVI4/1hggBSCTK+MQfLnfSUMXjfUYrPs6EX+MVhkJVtYbN6q80e6BjE2BIBG3sXW3JD9xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p5b+iGgcUdw+2hbhOhjyAx8kjrUfTiYYkHHP1QrHWiE=;
 b=UIlEWSYOEu2Ske0ZioPGOLOM53Fcfh5svL3DcON8Hz9MKKO7QFnJePxEEC+08ovA7cbRLzsf0E4N/QnlujLI+eEu3zAIgEiyXdVqT8fnxqC2HZvaq2LVekHzCzkTMFYSqokEZPUYI4zpZvl96tFRtL3qX4piQ3Sfb5UqEc1GOtkjfbCVhNEyMkVCewP/QERtoEAt0YoptIQM7ZfeD+AB50wjRX4K5nGuB/aB1dkhsZQd9NVnCF4rKDyHLQ53LPI8hfGk3m91qZ4I2juYUPjndi4tHZrc9PkAOfpAM4oKxH+KAXfh8u6DvmKgRmdCM15oIGvciZLRXFyitXJe61nT/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p5b+iGgcUdw+2hbhOhjyAx8kjrUfTiYYkHHP1QrHWiE=;
 b=NqZKknCNSHdc/3BSZgfXBQhSiHkgsntlRUVIGXPzM1bv8hT59nCu887VhEH7sK2EXhZ6UvF/XUej/e34urroVhaAf+0XVPuEmAieNyx+ljqjPQbvU6qbf9A4VTXXomSMRZh0CVDrH+5++KYG2iJXv/0u+JFNxcU5n8aLbTH0/3g=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB8842.eurprd04.prod.outlook.com (2603:10a6:20b:409::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 12:05:46 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea%7]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 12:05:46 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     l.stach@pengutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aford173@gmail.com, tharvey@gateworks.com,
        frieder.schrempf@kontron.de, marex@denx.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        xu.yang_2@nxp.com, jun.li@nxp.com
Subject: [PATCH 3/4] arm64: dts: imx8mn: remove otg1 power domain dependency on hsio
Date:   Mon, 26 Sep 2022 19:45:34 +0800
Message-Id: <1664192735-14313-4-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
References: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:4:195::16) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9640:EE_|AM9PR04MB8842:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b6f3f34-b8de-4ccc-bdd3-08da9fb77171
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hPgjNqQF/CQan7kD/FtdswlOGMqrx/yaWsCvbNr/kJbX0DqEDKJooiJ0v/KiSsl70mSEOL1dfWQh4T13h7npgdO7B7oIumzXzYuiNQFwCF8iYkP0C8wvbVAEcJVfqPNMZapLHU6hvXT6IVqzd2yrcQ+Wcq5iynLqUOdgKskajhLB3is0pGEaabg/rsl/cpc7Ecd4pIN/64aMHugxk3S0PJhN/o30GcT45EsIx5+hCGu9V+GK+KUAttUcfclML3WKa5swGZO2A9D3Zl6bU/EV8rIYzRISiYZ+fSx/ce08o7IpuCnqwvHqHD7bwxRkP3XQyx8hmL7fMlrwCobsslTlV6g4YXTZT7Zy/PyQtTE9jLbsLCuw6In+m2Cq6mSeZ0jSY52F4MTcZiUrw/85941aJvrScsb1WKf+NlgFX+uHeSZumax//YWJZ8ZlrZrfqhjOmHjShRCBY5rqBAejvLNGOPG88Kt+mxFRx9+EVV/vxJ2nR1pd7nJF0b9nLGrCJjRUc7nJZe20UTAk+XoZynJaVwWlDtQP1Q4FBlkTJCRF27lGB5unyWVc56ErwL+ZHc1mz0ViWXmRnse3pWXZghWrKFh/VFpmEsyZqvBbnks/WwZNAuWRcAi4qH/UL0U6tFHENtt/fgTMk0nrU8P1y9PQnFVqYTWuyzr0v/Av+wvX2vZp0SQVkRXHiqGF8r70ClgLqKPErj0GP+jJEwlNncIzf5BryAthoG8hNL3eQ4H/yprzafIIbUlHmrqBV0OEH4dsuBgoJkTbJ1AxYjLM0kPe1Hl0BoZGDtmFewnIxBXBhLI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(451199015)(2616005)(186003)(86362001)(38350700002)(38100700002)(8936002)(83380400001)(4744005)(66946007)(66556008)(4326008)(8676002)(66476007)(41300700001)(2906002)(26005)(6506007)(6512007)(7416002)(6666004)(52116002)(316002)(6916009)(478600001)(6486002)(36756003)(5660300002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gGVSKBvVodnX2Fx75cOSBU+n+7UZGUnA/50biAdFoXxuQeYDGcXRygSKS3GT?=
 =?us-ascii?Q?WmCi8A7RSR/yAbUU31BYXi0+bj0mEXKO0gFOCLyGy3DsgL9YW95gnUwLlta3?=
 =?us-ascii?Q?Do4u0e/lsy9YOioVwMRg0/KwyUqEh/mAVjEZU62yKhqXnwmXhEFCiODdezUg?=
 =?us-ascii?Q?fgfKwfaxSG8PIroui7xNVc2IGCPnRBA9OMIT9NZ8bGGVgV0M5Y6AkzRrvj4c?=
 =?us-ascii?Q?Wig+r5WAe6bfdx1gElPW6Hb7s3OHKGah3yA8osYF6iknwjgw4ja0+rJ1m1lo?=
 =?us-ascii?Q?zzbNDqW/w96uILXOwWw2W1j3Qw8fkdf+aE64vhObPHf/NK3Ihrp3J/XeUfF1?=
 =?us-ascii?Q?fBzR/cEzPKDGgWxSDu3mZN4nMI+cgeHq3a/yrJNzyKEcye2Txjis9gPi/pnJ?=
 =?us-ascii?Q?ofxKUwNC+TvkJzO8259WTmv0tWibomhK5tZGjom9ICXzuY68lCqjgwjHHVWW?=
 =?us-ascii?Q?ciO25loUwLo8YfeeBABQ56qlvqTCHFMFR6PHJSFO+9A7Hu/FVybix5jxvc2W?=
 =?us-ascii?Q?dcDf3ryA18sq3wBYbOTt3AfVZK1HFx05TwYOk/nQbBwuOOsqmb8j4k9yax9H?=
 =?us-ascii?Q?nOe1eJghsfbiDXmoPCMKWS1QQsyZQiam7F5yp/96MyefWo8kswW3beJqgD+R?=
 =?us-ascii?Q?n0tWpAZpOQ7QswV+wYL50UihuZ7RRka3xts33U3ZlkqP0FQcEEisPVvtpGZG?=
 =?us-ascii?Q?R4zH5jj9TZ6RHTAQO9dq9JvsAkPXx/SGGMMUVgo83dq69QUnjUzSZifKj9IV?=
 =?us-ascii?Q?l2R1IXfki3So09S8jizwr8Y+/letFgO/yWEWag5J/hbwUnXpo1FWZZycv0OX?=
 =?us-ascii?Q?fFtF1SCBgsAiaEFUA0YVB0L57bBgZ5N+P5PXmBBPn+Gj9Na1oiukWvBc3n0z?=
 =?us-ascii?Q?gIYHOSXJKPIGvhANzaBNcdo3C0KGku6DBFOLE3dA7kPaMuclI92+0QRnzgod?=
 =?us-ascii?Q?3ujexIgTIp6qNj0doL03rUiG+4umkC85jx5IGwVveG9t1SeL9yZxp8I2ulX7?=
 =?us-ascii?Q?hbJ/M7jC5egs7ppXSx23ue455pciMTfyKjVThhslRvBLM+2zdy96eWS/Mzfw?=
 =?us-ascii?Q?XphSZ41ciiGMIAbKm9w7xFZhGExtRNC789WY7TgCIcuDem2WNc9gYw2OWcpj?=
 =?us-ascii?Q?u95GbpK1D2TEJrUNrpDZ2PNzMA2yRRTrSTpNezuTBtZXpAL+fvcEz8in4/Ia?=
 =?us-ascii?Q?c9hr1kQF+cyhTzR74iX9vqcvQRjGYWHDqcYEX7rpoUCPOczbD8+NytHhRv2I?=
 =?us-ascii?Q?1vy/1dZVN7rA6JI9xt+PijdSvYY+FoGt8hhd542Z5wNKGObINLQ5YfBo3Jkh?=
 =?us-ascii?Q?ZcVsJmUgRz7wIZW3zAwew+tzusmpznfvcUapEw3c3hjPpPaIX8tDzmhCkm2e?=
 =?us-ascii?Q?AlQeJqYmEhmTfx10PDm4xUDrIhqdTc0BywQipQ6uyB3OJ6Iuy8HVQuOfW7FJ?=
 =?us-ascii?Q?POsVSvja1yIJfMX1zI7EZZKCXl9hPDmkJ5kTh103S6vmlm4iOJHgqOUacnQ9?=
 =?us-ascii?Q?mNtmpJXnUYiYeHpU78bDzhETzqptN1BuzTHd1PxEI5FBwxNLqaXrKpZ11TNR?=
 =?us-ascii?Q?jPX4IDRecVBT2iXUf3s=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b6f3f34-b8de-4ccc-bdd3-08da9fb77171
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 12:05:46.1206
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iCiOVonT7YEFqOAukpHGEPvHwJlGYhrah8tiIoandoDksAAAFjlFzYPwurEVmD1R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8842
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_PASS,TVD_SUBJ_WIPE_DEBT,T_SPF_PERMERROR
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pgc_otg1 is an independent power domain of hsio, it's for usb phy,
so remove hsio power domain from its node.

Fixes: 8b8ebec67360 ("arm64: dts: imx8mn: add GPC node")
Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 0c71b740a316..81a1179d042e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -662,7 +662,6 @@ pgc_hsiomix: power-domain@0 {
 					pgc_otg1: power-domain@1 {
 						#power-domain-cells = <0>;
 						reg = <IMX8MN_POWER_DOMAIN_OTG1>;
-						power-domains = <&pgc_hsiomix>;
 					};
 
 					pgc_gpumix: power-domain@2 {
-- 
2.34.1

