Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97FE16803ED
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 03:56:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235522AbjA3C4s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 21:56:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235527AbjA3C4r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 21:56:47 -0500
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04on2135.outbound.protection.outlook.com [40.107.7.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44E121A968
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 18:56:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRVdXYbzQDKVxwlp2LW9rHmOwE9y1jfKcjexpuNPloqHJckmUadrK3JTN9yCt6Xt9zIq1sQmNIbtrVQuux3XxxU6SLJafV0lGHdbzZUb69wHPcEqLWQ9Q/E5TAf85wWKX1BaHCSM6O+F6bnMRJ9pW8i9/A4bUgqMonDvuZgxl/tj9xnwVvtg3tB9ni9IKU2vDU9VD/B8upfh5D/nK+saVMBOJZssZgcjuK4u12QJCBZ1/nRix5oxLAQYQVs/MM2lmeUK8kxNK27qtY3iUcr0ILWwjjqE206Pca3LK/t/0xolNy1v5J27IuE7EgYrhhAe449B+LmCCc+gjwy8u0Lpew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U5ae5pxu7N8Xp1grt1zz83nnYH0GX5ZjpZ/pjpsd0xM=;
 b=lQh4yO3PwPd6M3I2MYpL7xLXGTUb7ksYYFL9rmxqSqs32tPhQDg1Hxc3xehyiKd5nfELr1sdEUXHQimwVaZkg0OqatMa4RVFtCDfU1p49tjW4aFiYeI4V1fI0QsGtjyXVZtoSxKLNKfG4e3VZzzzCE03WDPUd4qu21g+fwJ+lPa7pMazfbWqrO16QnuRpOllO03OqT9oWIQP8y4XZqxbJ+7ZbhauRUoIf64tfAFfA9hQb41Jolgn+y+AZ7gjx0fwqXG1g8eTlQSIe9PqUNruhY/Xw7F7jSeoEg5I734HbK3zcZ/TFPfYhmrdwWltvbHLzaK9YdwUaQRFvWKoQNkRfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U5ae5pxu7N8Xp1grt1zz83nnYH0GX5ZjpZ/pjpsd0xM=;
 b=p9Dh1N2dJ3Ok++KukcyRw6/aznHjVk9lMxNIqimiKZgb9VUJSlzv+3+Zo5oCWcamMpBjL7cej6a8FE3DTQHdYST3jSDwPoaef88X2k6QWYGU0GlFM1jOfn14VP7bdzWA1y6ZTLX5bV++yy74kLE+wr3BBltAg3gtupW4+Cb1tsM=
Received: from DUZPR01CA0197.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::11) by HE1PR06MB3979.eurprd06.prod.outlook.com
 (2603:10a6:7:98::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.30; Mon, 30 Jan
 2023 02:56:41 +0000
Received: from DB5EUR02FT047.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:10:4b6:cafe::28) by DUZPR01CA0197.outlook.office365.com
 (2603:10a6:10:4b6::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 02:56:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT047.mail.protection.outlook.com (10.13.58.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6023.16 via Frontend Transport; Mon, 30 Jan 2023 02:56:35 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v8 0/3] pmic on imx8mm
Date:   Mon, 30 Jan 2023 03:56:30 +0100
Message-Id: <20230130025632.4101943-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT047:EE_|HE1PR06MB3979:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ed41db69-011b-4746-577b-08db026d99c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6VUboipFrY7VcX7rhTYDQPuWtPDuyVEoMIuA8LnX+4M28TIHC6R2dMy+X3Nz8+JMlrqFqXpNQEx/3NUR86Fqx3tYAPyOeM2yeh+R8wSxw5kOd0m6F/ggkJ7FSMUSa96rKlG2Q3WGNlDvetMI6OiJp/ZVSehezQS72mycq3/tRCT3aVI+IDCrBgZnRSFqfZy1rmsdsgI+J/LMLisJ2z8pp52NxuYT1cByAIjj/ImDl/XLpescvXIkvDAo/+138ea3UV7B8ySLAPC4F+1gBgbbBziWEc05qFZt0XuFrIwCre91914ROfX2rVjVlkKtrSbN8t4W3vpymIJecTLcipzWOYALt1GjsNklPaWEBgR5pHQ8SPrVLnHYQOJkKHU+jWia1ihUZ2X/+sVkEwOk8eW7CQSgHp15MKfyazx9z7zlBLFj6kTmcXtFbq0H38UhyhhJNz+EBjfMmprLDPeeCP6yFS03rOLwkuSkO+JdyUBJu27jm0zWxp2Oi4d0K5TD962Zcgj59FG87sOWTS8F1bI/i2gNmQywBNvrSGHja+HmEbjsH9HV+YovCFcgo2r33BS4fEQm0m6ROezWWaUVHgsnrZ4cfErIeVlUxWDBzzSBClz36Nnx5gwemDX186nykHwATPCh5lcy6Ff/SO6vxFSaNxi0ZU7kKp5/4uCwhhQCBu100HG32MOnDfy34bdY3W/aMpj2nLjS95oD1grzu67Fn1lo2XBHbx44F4NcVDIJHf0=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(396003)(136003)(376002)(451199018)(40470700004)(46966006)(36840700001)(26005)(6512007)(186003)(1076003)(6666004)(107886003)(6506007)(36860700001)(82740400003)(9316004)(83380400001)(356005)(86362001)(40460700003)(40480700001)(36756003)(81166007)(336012)(2616005)(956004)(47076005)(82310400005)(44832011)(8676002)(4326008)(41300700001)(7416002)(8936002)(118246002)(5660300002)(2906002)(478600001)(6486002)(316002)(36736006)(70586007)(70206006)(110136005)(54906003)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 02:56:35.2791
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ed41db69-011b-4746-577b-08db026d99c8
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT047.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR06MB3979
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

changes with V10:
	- keep rhom-pic node untouched, for the "old" evks, and
	  delete+replace the node in the newer evks = EVKB
	- migrate voltage levels set for the rhom to the nxp pmic

changes with V9:
	drop 'rev b' references

changes with V8:
	rewording of commit messages, to reference "EVKB" instead of "rev-b"

changes with V7:
	add missing "acked-by" tag
	(finally) add missing makefile entry for imx8mm-evbk.dtb

changes with V6:
	move A53 cpu-supply nodes back into imx8mm-evk.dtsi
	rewording of commit messages
	fix syntax error during compile

changes with V5:
	split of bindings into separate commit
	rewording of commit messages

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

