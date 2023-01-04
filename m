Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 116E665D3C5
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 14:08:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234001AbjADNHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 08:07:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239210AbjADNGn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 08:06:43 -0500
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04on2118.outbound.protection.outlook.com [40.107.6.118])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDE8A3753D
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 05:06:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bL8XqI5qxEAHlGHcunXE/I6GBJkESiClY9kAvREg2+o7FfMxDKvz8S3rch2/57aNln7+kRrUuyASarrcXgWrGHOcIUPHaJTwJetHvlZpLmoxqVWs3mo8httzQt77XHF9m+eGXl3/+KaUS+kLYKY/iz6sDBnOAS80K6SiKJRygnRMbpAqG7G+zUGvkusa/X/awSzUzONIy8uhAbhSPIBQcu1s+WvSB67QW44TzaCmmQfU0S8lQniHi3mqxCW8hMiuiNJUO3MNnwhlAb9KzlvJAW0ieNqqz+RhpXCe7E8MLejcoVWeLugy8PBl6uo2AZcSGNsnGzxZaR0noSiTHuVIdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/AnUmGT3LfSvAUz6X8w/CMTc5wNfQOTITetqJkud5Mg=;
 b=jUlS5s4ERBY+Wm797e3kB5ZOwqTDxOix1HIY6cUqTLtOE+103kfWd6r8jTGCUQ/5mVQ4mOUvRFxYv4CbYNC64Xyb2hpDdC8XFoGzi2v44CWxMMOnTpoMpkOIrKPAiOfCG8qUJqOFtldhSBK7DXMRcWGB+4scEGEq3icQ2e7GoBb/gzH+ElhgJyGMGoeQKealORMct0zPFEHzoSFYKZngMAcx4souaq9VwL3JPsPOyKQ4pRBbNdePdmk4OUdsnjnKIxvq2bIzwvuZUnTvrd98/Dj/x7E5MgUxMkbsevlPwSwNWfiwPevPXfF5LwwIb7+bRgXs3ZVKjxrSbydgGIldJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/AnUmGT3LfSvAUz6X8w/CMTc5wNfQOTITetqJkud5Mg=;
 b=uPpsack8cJ33FonMFAw6FidyZ5gXzE7sRskYbtmyEVaVarLGSiZn2GwVETwiMsm2lF0cMyoB2Wg91mPgCOj2Gjsn6yMOQJCJOJ1hQacYUixl+qE2oRb2lErD4y86kbbYB4x8/gDsqing1PFpH5XJYdNdxnn2nFd1T7JuuSjTlqo=
Received: from FR0P281CA0042.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:48::9) by
 DU0PR06MB8480.eurprd06.prod.outlook.com (2603:10a6:10:357::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Wed, 4 Jan 2023 13:06:17 +0000
Received: from VI1EUR02FT040.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:d10:48:cafe::75) by FR0P281CA0042.outlook.office365.com
 (2603:10a6:d10:48::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14 via Frontend
 Transport; Wed, 4 Jan 2023 13:06:17 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 VI1EUR02FT040.mail.protection.outlook.com (10.13.60.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.14 via Frontend Transport; Wed, 4 Jan 2023 13:06:17 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, ob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 0/1][v3] pmic on imx8mm
Date:   Wed,  4 Jan 2023 14:05:10 +0100
Message-Id: <20230104130511.1560237-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT040:EE_|DU0PR06MB8480:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 7b27cfdc-6ef4-4747-f8a3-08daee547744
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bp0lgVhufmtNRAR4yOTvPf01QKuFAeDt8s7jEY7CogWqdJaXxszZaHUO6mYC3e5YZcpfMu2HIfRO/Yuz1xP3SQWIqS2DQyllaGcyXr5cQ4ycUKZUIF2/W3Su9SS8J7r40IcJSgr7tvP/NXG2OQ+Nsz4j/BGvLoijVIX7XabKj21VJGGWYBa1Si9mLxJ3Xh+pmNR+R98I0wvk0zzCG6Kg2ApMIswStnYfe7Kg5C1iutMRaRDuUWL/xTvnL9uO83GWyVTnE3GGHhVRt11kzhfxnM4v+QGIf43SGxsqea4EqpOObxdzrA+FNjgAHlKgPgoIb1iLAVftylk2gN+xOUC1b4iTvo1THVK2zsYeyWUyEUadx4QXG0gEpAtvm4YNEmHR3nCg0kcJyUBPJ/BgP/E5Z9qTCvBHXZ8nHgYWblWq7h71irOGRRLGQhUGy7De67Na9LucYhHamfQwaYUcDpjj9GfCubGn8cUzREv74dNh0DkEFqjUDmyYPZgDVusKRF26DgpHNKcJ4eTFxPH5YdgUupl4889DXrFIL7EeYzSNEXdvHdMheH6UWkxJi2ZpRbyeImfg5NhIf1uqgIhg2imE4TEj3BZjMnusKX5AjIEV4AWhn4NUxbnP82h7tCPmW/+iXf/1j66ILkkLFsFlJxIecmNnhDrGb447o5CnuYyd7vxroW9w+ld5aOC6hja8DqPIvh9tH+cMBrobHFjRg+jK9lb4ERXaGye5p7Rq/A4Z0vs=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(39860400002)(346002)(376002)(396003)(451199015)(46966006)(40470700004)(36840700001)(81166007)(356005)(9316004)(82740400003)(40480700001)(36756003)(82310400005)(40460700003)(86362001)(6506007)(316002)(36736006)(70206006)(2616005)(956004)(478600001)(70586007)(6486002)(186003)(1076003)(110136005)(26005)(107886003)(6666004)(6512007)(8676002)(118246002)(2906002)(36860700001)(8936002)(4326008)(336012)(44832011)(47076005)(41300700001)(4744005)(5660300002)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 13:06:17.0300
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b27cfdc-6ef4-4747-f8a3-08daee547744
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT040.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR06MB8480
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

