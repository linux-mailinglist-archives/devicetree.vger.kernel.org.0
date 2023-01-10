Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D14E664483
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 16:24:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233778AbjAJPXp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 10:23:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239000AbjAJPXc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 10:23:32 -0500
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2133.outbound.protection.outlook.com [40.107.241.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6DDCA198
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 07:23:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RshjAO0Goic3bN9Ov5nG8Ts+VSjOuC3XYga1KpXKe0g+XFDlWYY1Z9Z0cjWslZIJDTnBfvjkeVab2Ax/qaZV2gnACHoUQ8UX2Nz/iC0SNjhfwgEppnjcam/4UP/V4/WYlioq+40lB15HfozIT8x+f5SofvAOtGNXPzDeBKfvcPEGm5wTVzVlxeG1xPttsxlaiQWid1sdYe0OcUQLAKnkgC0x86qpDV1i4y/axfOg4tI4swAKxVbXtjhqgnsI8i2RURue0QD+uvpPZbc8NsE3k/X9dsWAJ+oNpNq0ICIs/r0MtLBLdWnJ/3OAc8HIOOnQ72TjXcZG5/Hls/0Yz97gVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXKB0V/X1rW3Am5c/9z/wsf3nIVg1IunFQbugXVJziU=;
 b=HKs8maFZBpaUDJsylIP3LmSCf6LEREsf0yJSluZ+zxr/sFNxchq4u5PVyqZwbexaf7R/x8yyY1wKUWkAXYGKOoKktOoyVkimj3hlHqSjFcXdr7WtlvJN9EZ13HYbN4DmE9G7aOl9In99UZIEBwayXhfchKre4oMstej14pdoADrNBcXKymvIMSVFSwj7jS8YO8YATW/NZXCSI7chZ9FXrMirj/golk0mOn1ISMNMoQX1s0YjBBet5vg0SMGZ3SDKq6HjtP4OSGH8XbpEnAg1gPNI2q5fxp5bbeuIE5TXiMU5rPsbOPDrMtnplFRBk5jQVqlwWxAAkv61zkjurYvY+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXKB0V/X1rW3Am5c/9z/wsf3nIVg1IunFQbugXVJziU=;
 b=QzjqYvU7SoPE96nnz2ykc5WMa80P8mqoV0L3h42hFRC1WTZzxDr2A+Tm5ZMxOnL0B+l/qgxcKB7mmvB7EL4JE/16RC2aehIU74407noywWY7WODoWdzBJKDtRc/jD4OOiBuITvaFE2oNuzb1PCvvsdP56UnW8mCSficxKQr4lkw=
Received: from AM6P191CA0029.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8b::42)
 by DB3PR0602MB3706.eurprd06.prod.outlook.com (2603:10a6:8:6::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 15:23:21 +0000
Received: from VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:209:8b:cafe::84) by AM6P191CA0029.outlook.office365.com
 (2603:10a6:209:8b::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 15:23:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 VI1EUR02FT065.mail.protection.outlook.com (10.13.60.105) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18 via Frontend Transport; Tue, 10 Jan 2023 15:23:20 +0000
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
Subject: [PATCH v7 0/3] pmic on imx8mm
Date:   Tue, 10 Jan 2023 16:23:13 +0100
Message-Id: <20230110152316.1149940-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT065:EE_|DB3PR0602MB3706:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d9be6614-7f80-4161-814d-08daf31e9b75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iVPDTzKn9+p2tRfqHsYLW/UQ7MndAOD93DXdLHz7Nf5SQ2+lQb1A4PeJAsGlGIZR4LgYwYkXkOt3CFRWTQtDDrMVjTRTJSjnX386ein6qcOCyy1i6Lc6PfstKDA/YpxnW0pW30v7MF5/7CpGQIezbrZVbLNAx4hVvJP2uty83jp9D9PnWB2JvROjg08DY2PTRXRG1uXlmiLb/igiArSAMWQA83e79cj6dNf2LzDDmFJRBvvupiUIc4WVKejW3wEUBfKYMvpmGnrQSHodvrnbWlv+9u2HEbiWpdrrMGgYO05CqDPTc6dNnwd/NeQZqFON1ZAyiOfHOxiCUV3ch0XRftRMs3GJAkvXaBiym3QHScye01+Lr0b6GZd3FC0mkW8u7wv1bE0t5BATsNuIMPe91AotPNUWZ1yxtAbqvKFTB3IAflp2Rojx3Am+A9Dn0I6Dld7QawEyH6R8AnBiltod5zLpIxrx9+Uk/Gg8E9ZZxy0LLdotjzwo2S+vw5wzwUsOUweWGlebpYCL3/DwUHa47OAa+bvMeMjV32TcQP/znT4fp6ZxwwuEUVyDBMixPOuBoK0ul6riv6k9qNqYGv0xApQb0KexV/240lNTk/zWqx4j8W+uyOQLLDIP/e2KYVs7YiDvpXlucN26ghyknk2L3xvFO/R+rwtP5M3A1mSag779ncvJhMhcg/gTxl/68P9boLcy6aLBgYmzjWweQX/wMnfPH1hqDeYy/9k2gHMpYqI=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(346002)(39860400002)(136003)(451199015)(46966006)(36840700001)(40470700004)(6506007)(26005)(40480700001)(478600001)(6486002)(186003)(1076003)(107886003)(6512007)(336012)(956004)(2616005)(70586007)(8676002)(6666004)(41300700001)(70206006)(4326008)(36736006)(110136005)(54906003)(316002)(47076005)(83380400001)(36860700001)(86362001)(81166007)(82740400003)(40460700003)(356005)(82310400005)(2906002)(7416002)(118246002)(8936002)(5660300002)(44832011)(36756003)(9316004)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 15:23:20.6428
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d9be6614-7f80-4161-814d-08daf31e9b75
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR02FT065.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0602MB3706
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

