Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ADBF65D128
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 12:03:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238994AbjADLCp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 06:02:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239043AbjADLCQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 06:02:16 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2099.outbound.protection.outlook.com [40.107.22.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5605313D66
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 03:01:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WBmQDFV9n2RtJbyOZfItheZlWIWGUD/m3yUAYmvfTKJ7KoZLswtpyln0fMYFO+zRjPPIV5x7VyA4ePdXpfw1J/DqXtI5M2mFxz5dKsgIwcR1msO++39BS+C6tLP2DzhfgbKunDIfZmSR4jrJBvfqmGeeVJAbFQIkwiEcUOUtfCqSOQzY01e0TiiElJ4epcMqLHgTU2LaNgTAOc9BXM7f5EYFMnUPnOyGBW3BZHAz4Jlkv411KCQwmbPS/o5Qfgsp1wzGmRGsWEC+VvQmAbkmAtigSpGQQG6SCL+JBW7cMDC+QoaOKx30PrzNXr5zdGy1X5ARM8EAO6kLumlXYkTvIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HZ32XRkBmM1aJ1PKN9f/sq+o/wUV+NIBjJKlaJ6gpP8=;
 b=GvFdRhLqWBpruHs9CPkZeNyfRm+YUuKknrABe9AODz+vNfQtMw53ZcfIy9B8YPHfu9EVI25WqzedjZcHSJoOqtxMai1eIKo7EqWp/Dwo8rFxKrH1Xi2Ekcm1NeLxw3oHpO/GWGxGFQUOElV/Np6SIcOrHq9F0Wig/Pw4nGN/cp7Ryytr2RsX8sBhIy9xe+6m23SlnNTGqo0/DYgr08fE2C3w6OPJeWzNkjF7247Wj4SBlVQ6FyfFgDnL6cD7h6qLdlnCxjjG9dLYGwoeb0a9QiPIxmEygC2hOziJrxcH+iZimQXj7JLzLAhzGC1GGztbTrMwwzJHUndDbjI2JFOKdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HZ32XRkBmM1aJ1PKN9f/sq+o/wUV+NIBjJKlaJ6gpP8=;
 b=fU2rZdX9fsznoYB3tG1z0TH8j8rPb99dwF1K+gTP9WNOkErcPutCDMyIADJ341Pw/WB8GzZHVNxtrVxKcgqN0O/lQZmUYwjWkknxmtgYn1EdjYLOGkrLYTniyQYksPDA4hmDvaWTPt+EIDwWAfHVpWzfdWbK5N4m3VevF2PKHQM=
Received: from AS9PR05CA0024.eurprd05.prod.outlook.com (2603:10a6:20b:488::23)
 by AS4PR06MB8568.eurprd06.prod.outlook.com (2603:10a6:20b:4eb::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 11:01:53 +0000
Received: from AM0EUR02FT040.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:488:cafe::df) by AS9PR05CA0024.outlook.office365.com
 (2603:10a6:20b:488::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14 via Frontend
 Transport; Wed, 4 Jan 2023 11:01:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT040.mail.protection.outlook.com (10.13.54.113) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.14 via Frontend Transport; Wed, 4 Jan 2023 11:01:52 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, ob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 0/1][v2] pmic on imx8mm
Date:   Wed,  4 Jan 2023 12:01:44 +0100
Message-Id: <20230104110145.1432309-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT040:EE_|AS4PR06MB8568:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: feaba5d0-1c50-4118-0233-08daee431640
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yZ9425IWCheHygVoE6//inrhIaxlbHkhbKqWSjR/fnPUOKdKLmZtmF+LCKB1gslKUrOj9jbo+RkOYLCcXT2L5zYrWJ8KsbGTUhIrAMjBFGG/woWuVxQWB9j9cIx7+WYB368H8EUg9r0QENn7l5e52VRI1BMHJvziXWyrjY4qVndLgGl1phWF7jSXabMIu4ozUMxyW060S6+43iZhbzRuv03Jsu/H6tg6OplfseOXpdRuPhJG7uiBYc+AWWcqjyehaFfCs6vPpodQfhhoEp+xEv1z6RpEYbhBREKKHLUD+VmDQI5MBkTaDsdU0+sRW/78S79yrDlDv2irL05be6+7GnZvwV5mzztrPo5jBUYLK6aNxQnoHL06YxOGRilguwbAbNt9rzKu3cexdaRJMaqbPGMpmlJTIb5XN/OaH6ejIsE9zr9tqum5erG8l3ZPi0gTXvpoqUlM5wkKeNhzu995Vu+XnSL8ihlaZzr5BeeScmf8qc/J+35CuHV+qmiorpOCtnrQjMsg0l16iYqC6eWb9nTod1lPGX0g1YWvY0iKAuCm4Bn1loqkJL2gZerrISbzkWWqdHqFAQajZObrBuDCEgsfEQXj7bo5Xjar5SJb93U3ija/p+NA01lE/+d2AtB/EIXBirQ308eO0DTRqiPA14BMStNNPAxN4PhVY83pf0BTxOMaFAvmY+W2zKsV8Bnb627xeNxN02kEE/BIliBYGjuaykTybwCprEeagxmHREI=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(376002)(136003)(346002)(396003)(451199015)(46966006)(36840700001)(40470700004)(70206006)(8676002)(70586007)(956004)(81166007)(4326008)(1076003)(36756003)(2616005)(41300700001)(47076005)(336012)(40460700003)(36736006)(316002)(110136005)(2906002)(356005)(118246002)(9316004)(86362001)(36860700001)(4744005)(82310400005)(82740400003)(5660300002)(44832011)(40480700001)(6486002)(8936002)(6506007)(478600001)(186003)(6512007)(26005)(6666004)(107886003)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 11:01:52.8141
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: feaba5d0-1c50-4118-0233-08daee431640
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT040.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR06MB8568
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

changes with V2:
	reshuffle common nodes into the imx8mm-evk.dtsi, and only keeping the pmic related parts separate

Johannes Schneider (1):
  arm64: dts: imx8mm: set PCA9450a as PMIC

 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)

-- 
2.25.1

