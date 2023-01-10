Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 962D9663CDA
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 10:29:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231950AbjAJJ3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 04:29:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238158AbjAJJ2m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 04:28:42 -0500
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2120.outbound.protection.outlook.com [40.107.105.120])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E115CEB
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 01:28:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GYq7g2Gww89xc+BN6NZg8z+0u1N3jeWn6HzS/fKQCRNnExlIK5yG7qStRHbdrg7vJn6IjMrSSphTdmAX6dG5+QJKu/AtmW1oY1SW5uFJhZ/JM968DeXrZsUTRFBtKFTi/tWo0TX7ATQny5KXfoPQ8rYF4uUPdokPEH//EYqqD0o/5pwvIb9iivdTSu90SlV+NaK/PgZwJv8MN0uAd6Nvtq8nxJh7r25U5pIsa9zQoMQoSFCVv3ZgYInWnq2IgCr0xP75NWIxsrarOjo+14Upx+cWI8P1bNYcW8rsw7+z7XVxAvYJDrgYGZvd2peUdpOF+Ylzb8PE8Gmv5AVAlvOosA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dXvmQNmq/ZMKY59G9YdTxPLPcCWnVviWcqxaK1YLMsc=;
 b=Dd8cq18f5Am3/025ottxme7eCA7K77qUMY+JasR3pEB+Ty3MdAVxKe8ylnQYiC2aKmScqWset8Kte1jQAMw4kpvNjmryOeTALRS+YJRO618KagL6L63qBStfVhTsSpIQGI+r2bCzNc4MZHQXSJjnelaeMw+0c7TLM5O1rThDax+cAcJiAA64VNScn/JugD8JPseKSl8k2PLGfE4j//1D460YrZktL+mbI+J+CrwixA04uV+i7son35auia0pSVG4zCPZn5vrP350E5pKwh2KhXAHFRmFN391XtY2HkLIonCHbjDxnATNxj4EJwoBuNjGGadk4znIdGLO632eQvo5mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dXvmQNmq/ZMKY59G9YdTxPLPcCWnVviWcqxaK1YLMsc=;
 b=Lejy9gAIJI78JjjBcULSvUtUeuvS94Cz85lzrDYIMOYROpdgTjDvJqHIAwU5NIiV6drKFu1MLE1SZMd1gj2KfrSpR3Osbxjw0u0+IvlX4Zz9ukbLRilgNycPk7ItCPQpilWXpCl7srlTTdl8OmJH8pYTsvm6ofRzioE/fQ/tTJ8=
Received: from DB6PR07CA0181.eurprd07.prod.outlook.com (2603:10a6:6:42::11) by
 AM0PR06MB4179.eurprd06.prod.outlook.com (2603:10a6:208:6b::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Tue, 10 Jan 2023 09:28:37 +0000
Received: from DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:42:cafe::10) by DB6PR07CA0181.outlook.office365.com
 (2603:10a6:6:42::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.10 via Frontend
 Transport; Tue, 10 Jan 2023 09:28:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT010.mail.protection.outlook.com (10.13.58.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 09:28:36 +0000
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
Subject: [PATCH 0/3][v5] pmic on imx8mm
Date:   Tue, 10 Jan 2023 10:28:27 +0100
Message-Id: <20230110092830.3282561-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT010:EE_|AM0PR06MB4179:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 660ca57b-f7f9-4557-ae95-08daf2ed0d66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ffEpXkejLFYmpI5/YTpv8bJQu7RyRYkjfXIpeICTv6MoRXlXORGfmjjuH387RS0FAFg9X9UeickufzFw19NYSapbKu0KfpLqnr4S24potOX7nlsthD2HXO0aOhB4RuKpXWXXAqBXx7Q70W0mAbEc+quRsstq3kUG1ab16rvnuA6816sVfxAa17jE7W203T3wOLC2nuz9aFmPYy/ODQWZ1U5WA9lWHrsJh9j5KLG0sv49tBF75pTu9xx1rmMZxDEM0ijja5s9bqcnlFy9ZzdMxUpvlWvDlLVv0WW1XZjsQQt/tWJSEJYQDC8Q9Kum6mpTfeJIBwqnZkZj9XGnpArNzRYPKh/oPN8J1ogtYGozVsDKCAO/pGEd3ekJ95+lfotbbk7T7tiZkJWQkzCVcNuNSpXEiktcKFTUsXb6ZU/7XmJpjngh4YXdtdvWj8ITGg3Cgl2EYy2rIcHb9xcph9YdS6I9rMnz74gkmIR3Vb8OTdHDuu0SIl89rD9WrW0TUqfgEOgqlniUoehtTt5no0cQ75zXVnpBTt5WrbtDNrhDgqS2lc5hWXe5io2SavyHLPWQS+umktsgJrAlrucdFk5LIgdI0lfUeEyP9rXmyjvP73zQRICxE+FgbKsno5VJFH+lUYANChVnBbjiTshWGKrPC08pOR5qBUQ+NCA5FYEIHkBbBAL0YhAJnonrCufD0ORztkbkkYqHDRxQGFcUAw56ceXGuB0fvwGJf2zD75owu0/uMjHQgn7LeLjPHklakrFR
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(396003)(376002)(346002)(451199015)(46966006)(40470700004)(36840700001)(2906002)(6506007)(6512007)(26005)(107886003)(6666004)(478600001)(6486002)(186003)(2616005)(47076005)(36736006)(316002)(956004)(110136005)(70586007)(36756003)(1076003)(8676002)(70206006)(4326008)(336012)(40460700003)(41300700001)(4744005)(5660300002)(44832011)(8936002)(82740400003)(118246002)(7416002)(82310400005)(86362001)(36860700001)(40480700001)(83380400001)(9316004)(921005)(356005)(81166007)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 09:28:36.7507
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 660ca57b-f7f9-4557-ae95-08daf2ed0d66
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT010.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB4179
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

