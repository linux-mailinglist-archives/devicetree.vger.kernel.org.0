Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A87132F8C4E
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 09:46:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725832AbhAPIqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jan 2021 03:46:24 -0500
Received: from mail-vi1eur05on2069.outbound.protection.outlook.com ([40.107.21.69]:36446
        "EHLO EUR05-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725767AbhAPIqX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 16 Jan 2021 03:46:23 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I29xMThMfsxIIcYiJWE2R1615e/SSOnVUrvfcRP10gtU4JiHLyotp0MPytHXKIKav2x7HGPyWltNH0otzMgz+EzOH6ck6XPMh6q4ZASKzjg85nl7UH69AD6RHeWBVddroCEzjHOrH/wBhObpNrQWSb6KTMRbmhsZ8aa4s+rcfN3NlmRpU6AUU4eruRK3W+iA4n6I7hgzneEfrZFleSXgHVPE0Kp1SeypJ7TCbbPNf1O0zVep+XjaVXeOkGzuyU9nuxFUFsdW1q+iIiyOEpkwtxc1TluS1XDlYma4585DzBx+W+5yVtv6kc5TQEpkB2cc2bayV5uPB8JdUn0KDtG38w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEUJDT9zIUJvNkuixru0zgbHLkjGOrF7slGR47qPBkQ=;
 b=OPkZa3lrQW45gqWxoUixEEK+w6ORh8KzhQEbck6Cy8iJyqco5wpwj4GW8pzngHBFfN1wv0WOtUVXEbPv4FSJ9QOQmhbGpalzbjqc96xIkagLeBgzSKbr3cgtPgBsgFWOpFHb8+vyrgUilvH/llngCms2bOPYENqbivCU+WKDb/YAA/dGHryqTBJMtztN/4LlnZQDIZzYWcMosei59l3g5AaDBE/uxg8ND8/1Nmlg7feaqKD99vsjOUyc644Bo9Zo9K3sHWweonBykAgqnm3oxykW5cYSwPshXVIlrmNY+hOfiRW5Z0ugfDwaQd4NSDp2o52W0dHOc0bKpy5A2Av6Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BEUJDT9zIUJvNkuixru0zgbHLkjGOrF7slGR47qPBkQ=;
 b=r+j6u4NP+UkP/3cqcI104yojfhhRREa1P+D97wuvwoVtq5C/eeqCIAfBWnKElq/IDuPdmHud+KpJrexM/P3l7glnay8pgK18EuBgrq5x7sCNZ94yiJdbASgrpaAMNa1nmu1M5ddkc0+mEqRIjXgby9rzlZ7q7YFz7pZMvlJy5kU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB7018.eurprd04.prod.outlook.com (2603:10a6:10:121::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Sat, 16 Jan
 2021 08:45:26 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::b83c:2edc:17e8:2666%4]) with mapi id 15.20.3763.013; Sat, 16 Jan 2021
 08:45:26 +0000
From:   Joakim Zhang <qiangqing.zhang@nxp.com>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-imx@nxp.com
Subject: [PATCH V2 1/5] ARM: dts: imx6: add wakeup support via magic packet
Date:   Sat, 16 Jan 2021 16:44:27 +0800
Message-Id: <20210116084431.25851-2-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210116084431.25851-1-qiangqing.zhang@nxp.com>
References: <20210116084431.25851-1-qiangqing.zhang@nxp.com>
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR02CA0081.apcprd02.prod.outlook.com
 (2603:1096:4:90::21) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR02CA0081.apcprd02.prod.outlook.com (2603:1096:4:90::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.9 via Frontend Transport; Sat, 16 Jan 2021 08:45:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e71e09aa-feef-432c-cd75-08d8b9fb11bb
X-MS-TrafficTypeDiagnostic: DB8PR04MB7018:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB701829F37C7CA59E867B063CE6A60@DB8PR04MB7018.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:216;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JwBPE7UlAnrY2KoATu4TzR89rKnEyzgd8G0lSCq+AHu+05XN8sqSjB/OYkghbMqPiChLFUYG3x6bLSEZ/xOhZA2VeaUbE7xR+dPQcMgtRAF90A20NOWaXF3KqrDr5bkfB+FUCb5n2cmM3BuClCM2/iZWyQD/1qXD140iXTSKFmXj4ael6weJwDWlfjLTPhRrU88a8o9t+U6ywK4MNx5gO8E8N5ZvhH/5Gx1Jd8gJ+h25hnhK3oxb8TLUuLADrJfoHDjUOfl4KByr/RC6s2p8iYtdHiBanStHl8bCUy/C5W1u9J2rZpuMWM/ok6fnB6V+1Exz5vLiT0wghDwmXZ3mjeVjPUQWSQKtumEEyiBuFA4e4Fm6mq/dh4j/HVKTsNOTTELzqJcDPq3v4PllbeaRf/TrfiMY8J17Izp1MkAQRuWgpUMzr95P3QHpwmWXkpjBXZep9y0HNpGVKs2Oi15lzQOp7jsQwe9FcLF8O1dekoP1JTqSwT/RlWLDz7YQCSdKezRWGx4nA9Xod4pOR0TsPSdd2QQIronTIRkPyZBX8+lFlW0eCZK8b1yVSdePSkUiYezF6Kxag1jw1U7Bz467hA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6795.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(346002)(39860400002)(136003)(956004)(66476007)(66946007)(6506007)(2906002)(26005)(2616005)(66556008)(316002)(6512007)(478600001)(8676002)(186003)(16526019)(36756003)(6486002)(69590400011)(5660300002)(4326008)(1076003)(52116002)(83380400001)(8936002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?aEqw8goKNvaPTE9iR9ZU2KgXueCRaCaXkT9TS/TmCCLg+/vIjmlF5OPRd131?=
 =?us-ascii?Q?he+G048gv68iFgRikrgzcJ72l7Qm0IuINAQjQ7nan9YEfDWeBINvAKfjJSIh?=
 =?us-ascii?Q?9/0Vh8PaXOyZv9u9/H20HEP5TJPAnB0aBC7ciHadKTkJlcdaC2vl3QCPp6mu?=
 =?us-ascii?Q?rN3kbvvzeqe5PWShGantdYVIAnZZT56Y56TeIy3Y/Dx0frtT71PMvjlVmW0/?=
 =?us-ascii?Q?62EXkySSGbfNJyVpv0ovfbofJ30MnzilBZnXtjcygBLYdQXDQXZyIH5C9teJ?=
 =?us-ascii?Q?9z+akmacQPfAruLpb40kZpGx9APnV+fxFV9fFvo2n+umERNuSqi1dtEYlvrw?=
 =?us-ascii?Q?yN4BH1EzwnUGG1TZhpd8j/wX3O87SHNcDaI38ORIFoB8UpC6I8frGgvQ7eFL?=
 =?us-ascii?Q?Ag7ZrgoO9SudvtrVl3vM5v/g/BfgGemHimQArkGpNL3IoDYzuodNcdme8pJ5?=
 =?us-ascii?Q?DeKO5SVloPedN54BkFO2tjZHVQXV2k0GEtqcnsZ+YfirZ5U4uhUOs//eWucY?=
 =?us-ascii?Q?oyIgFmO9ZeQNQQzW7L84VSLsrt2HQtOYTYXa/DQW9Oem50Axay/BWEz/bv+1?=
 =?us-ascii?Q?Frbt38g3fmvN/wmwYazOhnHmIGCOsODsktOJa5jebRM1ziEc9ciW0X+VyBw3?=
 =?us-ascii?Q?brLNzlaJOihagQpOwHxhi5+z0Za//2mPSGP5nsVkZGFr3nihFtKmFOMcxEmp?=
 =?us-ascii?Q?CEfVSMWSikcX9gqZqVC2kl1hrHqY/2bwPSm3QSYXU+AiHfUYyWEhGDVmy3Xu?=
 =?us-ascii?Q?HR1aFZVdn0K0h+wLXTRAz+cJ7cHu30/rhboGXuESL76hAfz+bVELfZ5WVRhA?=
 =?us-ascii?Q?yL3tJjpl4UMRB8xmiUw/P1aquRy9AZjwHV1/ZoKj2CqkiwJGcZFpn2bM2NHw?=
 =?us-ascii?Q?EzbgRSROzkueaICzP1IfpmRZRe3wuDfh5vlXJXeEabyd7fPSR8UZeAvkPTF8?=
 =?us-ascii?Q?ZxX0qbJwwMu23o29aYtxYAh0dUiZPkCd2amWWLeFNA0xxXRdnCKSRXFwq3ae?=
 =?us-ascii?Q?MwvB?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e71e09aa-feef-432c-cd75-08d8b9fb11bb
X-MS-Exchange-CrossTenant-AuthSource: DB8PR04MB6795.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2021 08:45:26.0625
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XtznGW2Fj/ziOgdiUSyiNZhp82A+3+tgcyyfZtJMZorKkIfWV0PMxTQEfG357jP9Tvi5pQj7wzGoWwY1/QFu4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7018
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add wakeup support via magic packet on i.MX platforms.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl-sabreauto.dtsi | 1 +
 arch/arm/boot/dts/imx6sx-sdb.dtsi        | 2 ++
 arch/arm/boot/dts/imx6ul.dtsi            | 2 ++
 3 files changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
index afe477f32984..5e58740d40c5 100644
--- a/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sabreauto.dtsi
@@ -298,6 +298,7 @@
 	interrupts-extended = <&gpio1 6 IRQ_TYPE_LEVEL_HIGH>,
 			      <&intc 0 119 IRQ_TYPE_LEVEL_HIGH>;
 	fsl,err006687-workaround-present;
+	fsl,magic-packet;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx6sx-sdb.dtsi b/arch/arm/boot/dts/imx6sx-sdb.dtsi
index 1351d7f70a54..c6e85e4a0883 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dtsi
+++ b/arch/arm/boot/dts/imx6sx-sdb.dtsi
@@ -206,6 +206,7 @@
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy1>;
 	phy-reset-gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
+	fsl,magic-packet;
 	status = "okay";
 
 	mdio {
@@ -227,6 +228,7 @@
 	pinctrl-0 = <&pinctrl_enet2>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy2>;
+	fsl,magic-packet;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 9d3411cc597b..afeec01f6522 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -538,6 +538,7 @@
 				fsl,num-tx-queues = <1>;
 				fsl,num-rx-queues = <1>;
 				fsl,stop-mode = <&gpr 0x10 4>;
+				fsl,magic-packet;
 				status = "disabled";
 			};
 
@@ -885,6 +886,7 @@
 				fsl,num-tx-queues = <1>;
 				fsl,num-rx-queues = <1>;
 				fsl,stop-mode = <&gpr 0x10 3>;
+				fsl,magic-packet;
 				status = "disabled";
 			};
 
-- 
2.17.1

