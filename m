Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2B6681789
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 18:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236781AbjA3R0I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 12:26:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235545AbjA3R0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 12:26:07 -0500
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on2137.outbound.protection.outlook.com [40.107.14.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4853A3EC44
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 09:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nxBcvntHfu8urYSAmawaD0OysBouBP9FhuzNjUXEr2Ssv6u4Sb3IQ9Ydqj5oeEM7EqJSy79CmPsmp1ktUxx2V5hM/ncURJJYc1MBJluVPH3SBczirvV+3o4NGT3GIEPkAiiGHP2xFNS00kg+52Qc+viyCAEcpB/VG60TalGsgCRY2G8gVSkPM3LeE1+SPLAQEZ2b8ZrJBQ9IT9og8ejsIY5YqdBOWUyeV+PnPb6Ik04n0lsmM0JIHIK6gPtyfMKGCP3Wwo32Y/+8nyn1vt14zeQqjjNTQxpGryMRi7xaEd4Mxg8k8NHtfOuVkWcxixRz2EaZqtuTvTroi/p+VlihAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQRk0KBJv7C+Dra8nYT3LdLLta3iXuQ37PI3wr+JGeQ=;
 b=G+6mKnrebV6D3kwuFffJKjlm3whChf8XQlEG5s2TmLVhXKu0p8Y2RoxNFCVqd8/8SbcMR3S/9oEmprXug0oUHBW5pRneVtb5tVbaqlHtu+2WHfFW8a2+ONhjFJd2kRjCAajk9MkzPIHTtXM5v3CaN5isN3cZmqtBYsKxBvkPO8xOD1DtorzcGWySvTLrPelqbUXbmxIG86ocu4fLBh/0S9+XS3DfUK/EXhca3tUygihM9rNTr3BNSDqS2d6l/tXEAGuqk4cvlgLppUQqxCRLUbEZuAtTUHmfU9XCxCKQ8akNL8FplFVtYeduUfPeAlmhjPJdC6tmfGIOdJ1ZRAVoBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bQRk0KBJv7C+Dra8nYT3LdLLta3iXuQ37PI3wr+JGeQ=;
 b=KnCF9xeDVeUR7Z/vpk6RX/dGO3vTX0xcOdrfIsZXy5+SdFU7OdfbqommPqx/c+xvCTkxgPhPyV9nZCwww4rpt91WK7/OhS6DduDLmlvCmgRiesOb7wvsiWoRspBDrnCma93HPjwB1Y1VgKhvGoxjGt5e4dSzCy+2IDzwJUxw1d8=
Received: from AS9PR05CA0223.eurprd05.prod.outlook.com (2603:10a6:20b:494::19)
 by AM8PR06MB7380.eurprd06.prod.outlook.com (2603:10a6:20b:316::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 17:25:59 +0000
Received: from AM0EUR02FT005.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:494:cafe::9e) by AS9PR05CA0223.outlook.office365.com
 (2603:10a6:20b:494::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 17:25:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT005.mail.protection.outlook.com (10.13.54.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.30 via Frontend Transport; Mon, 30 Jan 2023 17:25:59 +0000
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
Date:   Mon, 30 Jan 2023 18:25:51 +0100
Message-Id: <20230130172553.2738182-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT005:EE_|AM8PR06MB7380:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 8da29b84-bc0d-4829-5885-08db02e70dc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iU9FCNP3OocvjfCl25mGVBSmuZYoIV0+saZsUBsdLaTB8xCpWY07TUWYow6J9gTUJBduzUsNlp0ckyMk1o7ibJz76/0SgE+AfgvgudwaKhu7/MWYY1MHVb76jCEzcIBGX9j3yUNZdVtqtCJDcnM2vH2Ji6yzBBviO6kbVaRPprwmq//8iIBKCJJ8VhR600pRJPbNteflqWXNFlU0Wl2GuP+biD9YeB+97RtKUwmArYAEO9vaUsVjhr0BhbH1DwNVAERrK6HBjPpdnVLcUt5d1TtRPHg8ylCUs5NHYLnl1rsmw0xV0LYQ46qHhC/6AHhiPdEP/hjYmAtchb6WqmfSiUFeAwH/IpqjOSUkKUcpreuhZJb6IxWepZRItFjuHuFII9Bujqm08YLT+VrpGUBzbJkqLaSBnNiovkGL3i1RKpeHOwVRDMmPNy7r7bOf584y0NQVQrPJ1gux6q9JHH2TTkWQybZ3bX+ZAsLBJ92nI/PWHS7HHur4SuHXtJcq8CVqBt3WIPR6JxhFcz9ety6/cpj8dfiLjWzjUcXEcKvZKC7ZgEkSQTmox97t89zEADLIZ1rC3AzV3WGktqfVx88abf7VLLD/RDV41C15rWFbwL1wm3/DyY9tqCVjA4UoTye9CRk1cwH3V3xU2BUr9TZmRSwChUeoeuD/4F51YzMlspOdRpaHtUIZc3nIQsomLWdvi1caHTepyVeH8wrD72Lri4CLRsgSt5HcCw24HVguPkQ=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(136003)(396003)(376002)(346002)(451199018)(40470700004)(46966006)(36840700001)(186003)(107886003)(6666004)(40460700003)(41300700001)(6486002)(83380400001)(956004)(2616005)(6506007)(336012)(6512007)(478600001)(1076003)(26005)(47076005)(54906003)(110136005)(36736006)(316002)(70586007)(70206006)(118246002)(4326008)(8676002)(82740400003)(5660300002)(36756003)(36860700001)(2906002)(81166007)(86362001)(356005)(9316004)(82310400005)(40480700001)(7416002)(44832011)(8936002)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:25:59.1357
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da29b84-bc0d-4829-5885-08db02e70dc5
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT005.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR06MB7380
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

