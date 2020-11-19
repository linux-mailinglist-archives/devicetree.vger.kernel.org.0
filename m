Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA8952B93E0
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:46:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726719AbgKSNpU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:45:20 -0500
Received: from mail-eopbgr80051.outbound.protection.outlook.com ([40.107.8.51]:21955
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726407AbgKSNpS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:45:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L8fbEuS4GQxOd4ZD+S+/euar3q+wnvyEQIWkJkghDcUjwgw+1Zj/JPgD3VrmW0nsWSYVkDAY5QlAHzsr3310JrZTn84U4u6iC/AmEpB4nZ/0sK25Y45FOetR/SBjIETaFzDsQduk678gNU/dDTfKmlQRDWTXj/zymfNiiPqjjT0MYkNVxcWqHi3DwRIWYk4ISzT5d3XT6xUtQKPysUOVi3+8o2tnLiayjQCCK+9XebSeORpTg5wLA/VgQQSJ29/r0tti+oHGPdJxmht7MIVAi7kZMsQ0x6lxXbDJFOMaPTx4Mmm2AFbpGZiihwKHE1tnI6IqpQVXOPzTbK+aMI7x8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=taCkw/lL1qNb99YRmwtzbQ6pYpazLoz6NqnHrvlRqWY=;
 b=As6NGF32/goIGTozBBcyovVGMZTungxwkcFjWeyDvYzXvAzUK75c1CPyUSsPJZybnN2vnybb8qH2QXWIqeqd864pz1c6EOO+4q3T5Y+Fz1pLnbQ3xxUQl+6PsvbkXfK4zMnzzkqD1uWz5WzLlYG5J0QrPgroSW5dCrYPlmnOk9XFmYO1txXX10QixMWa3WAO+mcbAvUMkX5jXkWFt6+W0CPzJ5/aQ7XeMlDUDxtsQJL3Lj+MkZ69Bd88u8TEtV3gu/SAdgho5xhiecD2XgcR555k54UVPADuOnxcsjRDGRee8eLPxDWrUMC049s+D4WF2ApNVCssFcORqTblH2Hdlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=taCkw/lL1qNb99YRmwtzbQ6pYpazLoz6NqnHrvlRqWY=;
 b=nUr93SIqd8XbsP0dMTqYOgydDjApR8CWUaFc7ZIgZaL351gJSYlxhwMnZNIWJWyr8z1fNLNjd8NVrEUX5bY6/GxWCgJdesh3pe+GTK3+UlMo4RyC9tku/FKBDMtWBXYis71ptHwXXfCVqomXrJqZuazVY2j5MvQP6tqxG0GueZU=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3784.eurprd04.prod.outlook.com (2603:10a6:209:23::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Thu, 19 Nov
 2020 13:45:04 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:45:04 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     shawnguo@kernel.org, fabio.estevam@nxp.com, aisheng.dong@nxp.com,
        kernel@pengutronix.de, linux-imx@nxp.com, mirela.rabulea@nxp.com,
        jan.kiszka@siemens.com, dongas86@gmail.com
Subject: [PATCH v4 15/15] arm64: defconfig: add imx8qm mek support
Date:   Thu, 19 Nov 2020 21:26:54 +0800
Message-Id: <20201119132654.1755-16-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201119132654.1755-1-aisheng.dong@nxp.com>
References: <20201119132654.1755-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26)
 To AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR04CA0164.apcprd04.prod.outlook.com (2603:1096:4::26) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:45:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4b834843-89fb-4eb0-824a-08d88c9151c7
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3784:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3784D3A2F536737522CF7BE580E00@AM6PR0402MB3784.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:120;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sv0XXTSJas7+L6kaNxPxxdw5uaISyU58g8FrfWsftNr+ymAwNGroirrFQIxvzpDn//g4EJZs6bE9XS5tMfoip2KfC+Ye0UtjWHn7AMrEnIXsxIToqIla/eUwYAnF8GI59D9En9D05Xqt59AtaPjAvpvgMWygiSQA8Ck3gMaMKdlAA0PRxPklriqfjEgnXERRoz09meG0KJ6bSRyEPH/ZZAIq/4aWTs6kNERheoXFs0HSD+TvZJXxnUZsvtC9/Yrswn/TpHwK/Wr7YsTyx6JJLA8IDISIlG5DSlVCFxNLcRaCGLUOu9PCnbKyHme9Ms2GbKYX01t1MIfZuSl7TffgehviTC88YcDgoUwsfDMwO3Udz4lKTX0Ke3LcMavxvxw+
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(83380400001)(4744005)(186003)(66946007)(5660300002)(316002)(956004)(478600001)(6486002)(8676002)(66556008)(66476007)(6666004)(16526019)(2616005)(36756003)(6506007)(86362001)(1076003)(26005)(4326008)(52116002)(6512007)(8936002)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 5T6MFg5UsK+Jc4oD6ItKhXNPeigD9r+PhbFdTSiz4ZvhhLWhRMth22Y67zqTFkb3AuhKt7M1byS6e4bmboe/cBDanrBsi+hG5v5pm/Gm5ubvHkbtHwXGO2Ond5ZLoPPtFp9DMuBZEsNaN8+fJogAkwU3SHoAUwv9IdZ+6MdkZwW4OmlgV56DsqbjE+lup/ycsVuWViClUi77XHaaSmbY3Y9CNdxM/ozmm4Dr0sIqB4fIfkyuHXC/ApaxK1nXo7f9plf7L9hwG4f7J1RrXMQFrS719HM6qOlIi2NB3vMnn+zyoSqonuPdO8cdiCo8JLYwzlDpiuy5FT7GTzKZN+l1ir4hmP6z2u7awt5V0cdYEPkQRR+N1Cg5Hf+ciUorgLudTXS5E9dy1AH5Ni2Lymo/lWgo2h3cPytcQUFAuBjy7GwNYXFZwwPa7Fyit40YEOU1zVqZbv3fDa9DYaEd8Of6Q/5oXsnvYrQhz7f54QJYldnsHKj6+lDPI6walz0Ap1LUUPViE0WP2mygu9cXrl4ZCZgRttCv0a7OBnXlhfqCUmem+TVWfFHhxjWIGTGFsh4OdyJzlWh1pBHMBXT81C+9eBTQlw1opM2CecCyT/MaKvUCKIgo3gCbHKPkgwW4ZBQUSMsQSFEXisa9nn5/kp5vZw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b834843-89fb-4eb0-824a-08d88c9151c7
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:45:04.5969
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g6LeyWiw/GCPvcznfGfC442V7Eb5LRvoO89vzqCM99e68XV8jeJVo48l7RfJgru2Mqxi7eOVHj1fOxa9J/977w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3784
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Except MX8QM pinctrl driver is missing, all other necessary drivers
for a booting are reused from MX8QXP which are already enabled
in defconfig.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>

---
ChangeLog:
v2->v3:
 * add more commit messages
v1->v2:
 * no changes
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 821b21a56ad7..587f2f296f77 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -481,6 +481,7 @@ CONFIG_PINCTRL_IMX8MM=y
 CONFIG_PINCTRL_IMX8MN=y
 CONFIG_PINCTRL_IMX8MP=y
 CONFIG_PINCTRL_IMX8MQ=y
+CONFIG_PINCTRL_IMX8QM=y
 CONFIG_PINCTRL_IMX8QXP=y
 CONFIG_PINCTRL_IMX8DXL=y
 CONFIG_PINCTRL_IPQ8074=y
-- 
2.23.0

