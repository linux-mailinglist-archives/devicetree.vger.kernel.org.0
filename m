Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99E78663830
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 05:32:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbjAJEcQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 23:32:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229573AbjAJEcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 23:32:14 -0500
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2101.outbound.protection.outlook.com [40.107.14.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1422660F8
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 20:32:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RoJ6Sm80IZln3gVl68Z4/lS6gTpzfbHjf/7EI+vyJJmHlhPqfP0cHBfAACbr6S9GjvVprCsE/VDsbWWrU1LUC9PvvcNEBZlRlX0sn/nUx1h+alS4h0nlkT5tju4ZuPaSHQcW8PfBQ8lMe516sNUJBpXknkEN9DccNbu4E8WwXadH0KU/2Cz3pj/6SeCEy/NXFLwDPJYziZqpaymiMgGtiVG8mVbkmXmgksqGTCkHNwUEVVBs2MLmw+e5UGqeeXZB/qdVpzyG2BF1cfgB0JSGkfAG67/1uyJnKe605MI0rXe88YXPXHPmkG/H1mvERJGgs/eM3a7Umw8XvHamc/813Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ie17FRayhJeWwVpDQo/IhDTUgJyzJGwlkQ0eB6TqREI=;
 b=M110cJzd1bDEeqVYWA0DLMjB39zAdXTPPlk8sLCDHWoNJskhkqeFU6lAG56hw+bMAW4H9+MguyZcftmGGWyKTR2lBpU5J8Q1L7cEGYW68kodm/873JnwymhKdkRLfAD3ZuJrt2gfjAQc+BiGCg2R4cXPL1bFcL2w7OXYdyoWMXFuU0Ildk4v4FE/lFaSuqZkFCUd1w9bBgcR0W6k7pGtj+C6t4RCQynljNYXCbQWHYM62lGevE0nAUG+EPxzYUISPWg/JUQl80WRJMy/q1JOpRagZNZZeuXQ703UoZghvrjtX6niwShzvPUwec97TtqXX/i1YrdhqgbeDte9tFUo2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ie17FRayhJeWwVpDQo/IhDTUgJyzJGwlkQ0eB6TqREI=;
 b=f6d22KjVA8wQ65WeGx0v/2ZYJnVfUDaYsf4yQRbsw6zcmZEy7c/KcdbY20wzCCLwE27mphh0BemQoz3/4IsCVEu8caTdsAsnwuIykRQ63GB/zCMpyBZgT05G5qVo+U1/U+z9SzhethH0UhPxhiFOC8hsp7Hd5YDsJSrn7DAGqlg=
Received: from DB6PR07CA0007.eurprd07.prod.outlook.com (2603:10a6:6:2d::17) by
 VI1PR06MB6014.eurprd06.prod.outlook.com (2603:10a6:803:d3::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Tue, 10 Jan 2023 04:32:08 +0000
Received: from DB5EUR02FT060.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:2d:cafe::c2) by DB6PR07CA0007.outlook.office365.com
 (2603:10a6:6:2d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.11 via Frontend
 Transport; Tue, 10 Jan 2023 04:32:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT060.mail.protection.outlook.com (10.13.59.229) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.12 via Frontend Transport; Tue, 10 Jan 2023 04:32:07 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 0/2][v4] pmic on imx8mm
Date:   Tue, 10 Jan 2023 05:31:58 +0100
Message-Id: <20230110043200.3636458-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT060:EE_|VI1PR06MB6014:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 69a1a3f5-c695-4b18-518c-08daf2c3a1f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mQDjV+PTbhce3p4UcrJGvRMeGzqyZKkreuqD22VjAkjAt8qF9ZfmlWjTJ5LloiwmgvKoYl6tgFJqZIF5+bSxfyLd3WEx4+J/CfPedgVx/8E1YmzF0Ij4xpTeNiZfUb/SkLd5hQ7ANh7iKPj8oq6Y8/KDf904a71jdp/EVWGXnj/+Qby7uo0yLM+1Nm78HeRWpqnzkOh6rscDjiNiUTooTab8yKHLl1nqkGydfYrXrYCCeToORD69IkMfVxiIa5RiKrjiAE972ycCHwxqwHLJ5Yza6m9WtmO1MFFSl5pTi7SP9G5sD5ur/QcLCxAs57nabDbivWoIDlM5uofKmgqBBT+t/w7hu10fb/RL3FckAvhJXufalCuZW3vxmhz2Gwe4LMlNBjLeiIwdzT43CH+auK+S9ro7fGuu7ZrS4N4t9UqgNehAyLD9rffCuYHqnVz1V0G76xay+Y5XDF/0gysDUW1FQzVRyGa/zBPh6L2LCUkVNbWoNrln16R5YO6K7MH/V6vFG/7kQBKXLGTGxo87yqHuPpD/m8Mw4AV1Rm0S8G0r8QpkAXZYlG4m6lJcY/mzuKvQjFHxQzK1LJRNcyWfOqIzbGhmPe4JAEnh9TlG2LmyLdMmVhn4PVYHhP9848KNjXs8LB63lv7wh4KS5oKYZqA/fVblpO8cBDlo/LmA65MUDyGBXTMWnHkavhLg1X78jDyCjcsclEJskD24ewwCvlmdssMzj4dXZOQDyUXq5ZqMWEdKXe08NxbXjbd4fwTr
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(136003)(396003)(451199015)(40470700004)(36840700001)(46966006)(9316004)(44832011)(2906002)(82310400005)(47076005)(336012)(36860700001)(81166007)(2616005)(1076003)(7416002)(5660300002)(40480700001)(6666004)(107886003)(118246002)(26005)(186003)(36756003)(8936002)(4744005)(6506007)(6512007)(478600001)(956004)(70586007)(110136005)(70206006)(8676002)(41300700001)(6486002)(36736006)(356005)(86362001)(4326008)(921005)(40460700003)(316002)(82740400003)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 04:32:07.1296
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 69a1a3f5-c695-4b18-518c-08daf2c3a1f8
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT060.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB6014
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

current(?) imx8mm EVKs come with a different PMIC: used to be
"rohm,bd71847", which is now replaced by "nxp,pca9450a" on the LPDDR4
variant at least the register settings etc where "backported" from
current u-boot sources for the EVK

Note: not sure if the changes should go in the ddr4-evk.dts or elsewhere;
what about backwards compatibility? = users/holders of the EVKs with the bd71847 IC?

changes with V4:
	deduplicate rohm-pmic into one dtsi 

changes with V3:
	split changes into multiple commits
	removed unused header

changes with V2:
	reshuffle common nodes into the imx8mm-evk.dtsi, and only keeping the pmic related parts separate

Johannes Schneider (1):
  arm64: dts: imx8mm: set PCA9450a as PMIC

 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)

-- 
2.25.1

