Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E04686AD684
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 05:46:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbjCGEqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 23:46:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229669AbjCGEqm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 23:46:42 -0500
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on072e.outbound.protection.outlook.com [IPv6:2a01:111:f400:fe1f::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E20D657D04
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 20:45:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WhYIiE0CXtOH7RFtZjPbHzNSGRTyPZbWuSzn6xiFPlKxvn0EyHFYbRVxzNidbK386odSV1xbo6gr4fH4eWmZ1vdU3/0CcZc0vOQoXvTWF1tf4VIsPjvNJqqqMjY7R9ZoUpDl0natTmsY3c4Bo52rqq7a+upMu/FVKUjEZVDp1/CV+z/2q2J2CbWv6aAwnJwVKJS2rxFfGh+yPrPwIUzG9wa6vcLUkBiK5JuxUVjqJchGJW+co4A+yBSC1oEVvwZ+P8BMLEnuS4k0QHAGM+eQJMrKKXVZwLTwVXt1zUwEw1w//qFPXHF2POPh5utVrhBsPmUEvgW1cLqXfzvJOGhO3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sUSDFAt+Do8XeXxgV640gGNjBt5lHcqYRPShS6m3fbs=;
 b=ZBsAHkxiS2ZVYTjpoODePttgYC/1B8ksXQP3bNvHOETpPPtmANqr/E2aKzgQr1NM01PjnqZDkKHf3QZXD8ZrFv09mwewCSgvqVNN/BL1jNaCG4DsHZ7JMqleMn43bIurUVo8iEaEPn0YRC0VRykv7tAbV1joVNEcmoid7iABWUB9KfrAkJG13vQyfjhggLthBeN9PDs3Sr27k6jXeblF6pY2F4J9kW63fyobbQUVFFW3NG+1XbfYJcRMcE1WHla+We/JrzrA4VY/ur+u5p3MukEAI3H08sR7J3cvL4KsFwEqkL5xwEIpRDh1JVJOBmRLLI3fBbb7OrmC6J0/bpOvuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sUSDFAt+Do8XeXxgV640gGNjBt5lHcqYRPShS6m3fbs=;
 b=eLYCJujaqk9omlywE8fuFhczci0XNKs6Nh5kICDKzyE2orv6qYpEpXJ0TGzh6aFRwl4zUj6+n4WZ3cIeGh80gZYT9mPktsPTYFzVBExPIo/bPPnhlPfzMIKxwogMHgAWFfZrvOXDExwMQck+JPyCpimdK95OVXGDmo+QCKn4YE8=
Received: from AM6P193CA0118.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:85::23)
 by PAXPR06MB7582.eurprd06.prod.outlook.com (2603:10a6:102:12f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Tue, 7 Mar
 2023 04:44:56 +0000
Received: from AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:85:cafe::b5) by AM6P193CA0118.outlook.office365.com
 (2603:10a6:209:85::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28 via Frontend
 Transport; Tue, 7 Mar 2023 04:44:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT063.mail.protection.outlook.com (10.13.54.188) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.13 via Frontend Transport; Tue, 7 Mar 2023 04:44:55 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Li Yang <leoyang.li@nxp.com>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH v12 0/2] pmic on imx8mm
Date:   Tue,  7 Mar 2023 05:44:47 +0100
Message-Id: <20230307044449.2714529-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT063:EE_|PAXPR06MB7582:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a509f3b1-b269-435d-7577-08db1ec6b2df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bcXdFlqyX8XvrpXBOdqpjzW1tnKr1Ni6UYszTDM6oxqabFJ2ieh/z/Do9WX3AdpNLrENV93xcfcIYPJMMYd17l5qQxFaX2tgQO9ysxPWgyrGw7Hq9Lpok3Fe4agRYrVXQP0mUfmE1MaKDeWRk4qKF4ERcs9v6ms3kJFQfnz21kHiBuGhLma7Vrp7M2hknp3AIld+YVwyRxUPt3EFPjXIYFfXSTmossk50klHZIQPdG/NoMbOtQ40e6Ale9phSeKE9/aK6RRGeuXAgmWhFH4neVgrQEzcfYrSU6k+dXfSABPlIVoFR4fZPvR4kcsE7jIcW8Q0z/DlYJ1A4P1Cvw1yTKsHpjIvr9Qfa6dNHmtsy1Bqgum9AhKhRLMD+j2Oxno8X/3l2srRUWHEE7gtUed9Ppf0aPw/xTKft8QqGZF1stClnAivA18RL2S8FSYI+qDbyCOapce3m5kPScm+bTKnwfODYJputhxoL3TyHH8XSqa3J33/m+viD8/In1/LYEC0TNB9e6oNvHflPuOVTAQNrO0Fa3PiekqQ0UVgQHgifIrgOnMNcMtexuXybdlsoTvOlzkRZQPjaUxp9yOzA61lL37Q8f9du+dlTJDRwsZLbQ2s5lXPkhQUdmtHiBlIaTcNoWt/oi3ccFC73exVz+b/CsGQTxczI/xRDyYbCr+2wt+t+/nWGxSz520kMYqIc6s9wnggC64iM8+pJpUAXT/+SS+N9YTjhiigaOdnIo0Glpw=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(376002)(346002)(39860400002)(396003)(136003)(451199018)(40470700004)(46966006)(36840700001)(118246002)(2906002)(356005)(36860700001)(81166007)(336012)(82740400003)(186003)(26005)(6512007)(6506007)(2616005)(956004)(1076003)(44832011)(6666004)(107886003)(40460700003)(82310400005)(478600001)(70586007)(70206006)(8936002)(5660300002)(6486002)(7416002)(40480700001)(41300700001)(47076005)(54906003)(36736006)(316002)(36756003)(4326008)(6916009)(8676002)(86362001)(83380400001)(9316004)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 04:44:55.3279
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a509f3b1-b269-435d-7577-08db1ec6b2df
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT063.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR06MB7582
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_SPF_HELO,SPF_HELO_PASS,
        SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
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

changes with V12:
	fix syntax error
	rename files, bindings and compatible to "imx8mm-evk-revb", similar to other imx6 and imx7 boards
	straightened out comment style

changes with V11:
	correct (?) regulator min/max from:
	8MMINILPD4-CPU  SPF-31399_C2.pdf

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

