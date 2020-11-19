Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 322E22B8F6E
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 10:54:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726636AbgKSJwq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 04:52:46 -0500
Received: from mail-am6eur05on2082.outbound.protection.outlook.com ([40.107.22.82]:2240
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726553AbgKSJwq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 04:52:46 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+VxeSh9ymUJFlooQcB1G0bTOeySwlMPP9/Qz36TVRp0dmMhiiPpMizCh5qZg9fENkAV6TtpUBLW1DUXGxz0e7gDLcocExLQgv94I/F5dzghVqL4kYus0xjNUEl9zSoleq3BFNuhM/0FvBk+l7IkDV9+KxgN/a5I20K9H9kLT0xTDMpbr7rz4QqgClWZKARMyY81od44XWKjUBpacjFDA0aegW8kzL+Gs4JwTAnDlFevH74yjDxJecUfQUctnUEoBNwanJqhnBhQAoiW8QilFuKd2lLgklaGdeBJj/HeCYmMxzkUVqix+GrwkqlT84uJVwD3xSLM3K4rey3FoSJsOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5IfEx/wS8M+874B59SU+meWDQ7Rq5y1RP/rF3rkoYvc=;
 b=XGjcCvMcYN2QlAUyeh0f1pSCccpwtmDjYOajZrG1a0OSQQjIaCRnGF1eX0j01FQHyBP3zkqt2cTQx1eus2Re4xm+ZMV6x5SV+UlTvm2I0Jfuqt1Tp21LXJUTaRSg7E6I2utfoEmrJHqou+a6dqATGAMRxcBiTA0VCqlwtlnDF5B6hpHAHff6iCVvICavTf/x3YmvFWVly86fStRgkAuJ7INpwJ0Zs+x/vlg2+uSH1oYd3AwLFr7bFzSQI7Emw4nTCw7pQoxTXRYQImMQG+IbqOsiu+jm1L4nDy7zIpsBHQZak8gFZxbRSgUFx9UwYneO6UAnB3ecLYqG2Ydv+ocXSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5IfEx/wS8M+874B59SU+meWDQ7Rq5y1RP/rF3rkoYvc=;
 b=ofgXnH0/M6P13aoQq4PesLT1Jq/ryBb2u1n9avmQuhe7mKPYcPTIJTJYdKZAgT7F8K6/84k6rxInUyxA2gMD+PDrx7WiFFVM7UegC4pxL9EPtJSkbFn7QS7ik3MTp1dD6vJzDbRdmj2qK5iE6acduN06IvaGhJSbSGx9H/EUk2M=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DBAPR04MB7429.eurprd04.prod.outlook.com (2603:10a6:10:1a2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 09:52:42 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::3c3a:58b9:a1cc:cbcc%9]) with mapi id 15.20.3541.028; Thu, 19 Nov 2020
 09:52:42 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com, fugang.duan@nxp.com
Subject: [PATCH 3/5] arch: arm64: dts: imx8mq: assign clock parents for FEC
Date:   Thu, 19 Nov 2020 17:52:47 +0800
Message-Id: <20201119095249.25911-4-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
References: <20201119095249.25911-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26)
 To DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR0601CA0016.apcprd06.prod.outlook.com (2603:1096:3::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 09:52:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e7ff456d-1f11-4843-e1a4-08d88c70db83
X-MS-TrafficTypeDiagnostic: DBAPR04MB7429:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBAPR04MB7429D00A81F5E7F417ED2516E6E00@DBAPR04MB7429.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fIYSBWQXWKs2A44IONbis8pz6k2563c2rJMgm/AW+eOVpj7C4DeaOrldhyESNC+2M861EbjklVvlWubnQw3g4w3nLHCPLBILYRZ++91Emn/ONDlX9Sg9wbIzwAPuwmEWNiXAjGbYWJxnSJjI/rA07nYy694SNCOiTKvatJXcbbgljx1JjfNnPukuMUnFVi35sSQUTDVR7WWUYW2FREZqc/6FFi0yFVHx/PWsvYfH8DpLtvb54PJ9CT7LIzl7c7OYlvZvOXQJiBSNq1UrTfEK0zZWI9sn1+Wpa4n37eP1rlbin7fHaLLi0gfQ/0y61/XryG7GMEMWJ2IE45V/4Vylwem+iKpFakKKxuiL7dTC5uOj0ttwA1ifAZ5yzeDiT8xAIkUN7X1XVrByep5PovL13mu+v6he4lvnbe+nf1zNyac=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39860400002)(346002)(136003)(376002)(66946007)(66476007)(52116002)(83380400001)(6506007)(2616005)(6486002)(69590400008)(1076003)(956004)(316002)(4326008)(478600001)(86362001)(16526019)(8676002)(66556008)(2906002)(8936002)(26005)(186003)(5660300002)(6512007)(36756003)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: jw0KupKAeq73j8B3Q45wRsc5vTET3CA9YetaYxceD6lIKVvU+UL48AqNVvz5cb35owlHDYwotgDw7CIqRiOBzaPOw3+cVR1L1JOkzP88W2+cHjLgmHkY4SWOwI9YshaxJ+xOu5kT3bU+uQBL9jv+W8LwNMAqELNdEDw2+//PJc59p/Ir5VjfTu83e8+zFD/ZwfNpLZgdQ3Kn2NqKBIuagP3+t5goKtO9dT3rbhtYXafendfq8tC9IgAs54Kqkil+M2nUePDPO7Qg+ElRLOqh2x5jRSvPuXTNhPZU38omLogAx8TsZiHAcHNl9u5omWPknkVsn/C7GfcgZDCQKKbq9AJrxuL7dc2JtYOa4CLJgVYK80a5OYT/0ImZEyHSxN+D4bS1+z6izuvVXrTh1oMbMuHpGXuPk6Z+uJol1TqQF+nyRnJsok2O78CWUKyKcDfLhmBY15CdZRPDC3/4Ppx9lJ3+4ZQ3S9itvkh5GTlL5zLXNK5U8Dhp+orfbXcOlyTicOdgcItbxKYa9N3N0s2Kdz+3SYV/BWfdgwjKEBTYUfJDSbf6moZJrbPDHI5Q7+gEF1uNyrxHjt8mp+RFf5Z6FF56z2bpM7ysH4Ogo1lXCoopaxHLiHOcILIQwsSrl+MQ114nvWoy9uf0BWg5BwtGOxxpta8EXpYgCwn07g+9tP4gjI0B0j48CNWKtlFwXyN/6kRirT63lMufExF+D13J0SOy+4TBGiNaSgO49rAEM/QXRzqaHvbzc/eu6KvPQWP5Jb+md/HDB3kOhaFx6IXCbo3olmX/mANMBxj6ZQdvgwcjSFGIge4IP9mC96iziIopQPmtvOpn+zLtmjKNMxidpQNSn9e5sYtdF3lFytwLMUs5VoLDUkN2CjQzGKaVgv9pO59w7PwPNjDkHGefEVMReg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ff456d-1f11-4843-e1a4-08d88c70db83
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 09:52:42.2971
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2+JXDlMj+FQGtVfvSL4TBC6pEjjjwBE1ypocr4JLAyELdaW+U9aiwvr2dIMxFrXTTiv7y3jGp/FHSEkMhavRWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7429
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Assign clock parents for FEC, set "ptp" clock to 100M, "enet_clk_ref" to
125M.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index a841a023e8e0..8682a484dea5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1152,6 +1152,15 @@
 				         <&clk IMX8MQ_CLK_ENET_PHY_REF>;
 				clock-names = "ipg", "ahb", "ptp",
 				              "enet_clk_ref", "enet_out";
+				assigned-clocks = <&clk IMX8MQ_CLK_ENET_AXI>,
+						  <&clk IMX8MQ_CLK_ENET_TIMER>,
+						  <&clk IMX8MQ_CLK_ENET_REF>,
+						  <&clk IMX8MQ_CLK_ENET_PHY_REF>;
+				assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_266M>,
+							 <&clk IMX8MQ_SYS2_PLL_100M>,
+							 <&clk IMX8MQ_SYS2_PLL_125M>,
+							 <&clk IMX8MQ_SYS2_PLL_50M>;
+				assigned-clock-rates = <0>, <100000000>, <125000000>, <0>;
 				fsl,num-tx-queues = <3>;
 				fsl,num-rx-queues = <3>;
 				status = "disabled";
-- 
2.17.1

