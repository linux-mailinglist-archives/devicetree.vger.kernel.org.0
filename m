Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04D68663F5D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 12:40:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234969AbjAJLkn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 06:40:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230406AbjAJLkj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 06:40:39 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2137.outbound.protection.outlook.com [40.107.8.137])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79AD0113A
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 03:40:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nA8CQeYXErRk80JyWTRnL0ute7l7qOWkF+4OzdTqMnRvc6PH68UyqIDH5ErQEjyClKpwVidFZufKxNpwht81M/tPdLfQl3FnWiPKWQl5j4fZLXIpD3l8iNhkgBiL5RuKRUINAIgESg8GVEdklGzEpESL+5EC2SiNzT2WxbH++Q7m/dqXY1tcZxfXsl7GljNFAbfAqwl4CvVGmgiwn8fqgaOZjsBwM0djahLKxvokifY44Tibb9CNLigYgv5idJPo00nXKtWssYypM27K9Nly3KF2USKrsaXqjMRRxZjGoYthKmwLpxgLv9qrkuYb7PoczKzafTdxqR5zqByD92mDrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VC2FUdNRttfktkIuWzLihOIZcQDDxwphoAyXjVf0PB8=;
 b=UsoL0uhCQcjmWyoHH011c/GTGMa30z5uL6/SCtZ5YWZfwspYCy6HryOQ5FOecrXBnPxC8ve4wPBwjNp7e/PBafBaXKa/K562Ri5RMb5ki/jWH8gTXLfVKBsEWnB49n+pH5+pJuyo+d2blBEJ1i0Rne8dRjRKvReycCOwuItRUMqLFcGn3opN1sVGsF+xivTHcQ8yE8YEN47DICt07Q8UMMDtcIQ+6ZC7rjMk4hnTavQOylE4Ic3ZUUKXlGBP4PNB7D1/t8bf9YHsrTmJlTZmTLRrbHh6G9g72ErGFqIGCNMeB0M2LOopP/8TIOmO1XGcWFnheTode60qmp8DS5Yx9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VC2FUdNRttfktkIuWzLihOIZcQDDxwphoAyXjVf0PB8=;
 b=gUj8iCG4tUAKqXYa1qhlwxJPqwDbHHGFa13xNpJ+237wUw7RlTxnTQ6AHvFYoMxZHu4wAFgoM7Q+IyQkwJXkX76IPc2zsqOtAQMW0Jl8AxRgBY2DvudfGZ9B2BW3M9iFy02N7BBnfU/R3/uC6ifmZFepWw0MGQc/CookWXoNcfw=
Received: from AS8PR04CA0201.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::26)
 by AM0PR06MB5714.eurprd06.prod.outlook.com (2603:10a6:208:11b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 11:40:34 +0000
Received: from AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:2f3:cafe::1d) by AS8PR04CA0201.outlook.office365.com
 (2603:10a6:20b:2f3::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18 via Frontend
 Transport; Tue, 10 Jan 2023 11:40:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT045.mail.protection.outlook.com (10.13.54.112) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.11 via Frontend Transport; Tue, 10 Jan 2023 11:40:34 +0000
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
Subject: [PATCH v6 0/3] pmic on imx8mm
Date:   Tue, 10 Jan 2023 12:40:24 +0100
Message-Id: <20230110114027.634719-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT045:EE_|AM0PR06MB5714:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 4ab80640-11ce-40f6-9ffb-08daf2ff7c8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h2etgUKqixE9MyqYErw08Y58zyuU6BwgQox2lERMmrAKMCQZH6lDj8ZGZrgWBGfTI7UlfPIt3aS614NZVJ9GtVMwxR505G7pWzkCDWdldY1MwmwP2UBTeDL48QZ4Bz14r/yLyXh0PEwXXSporjesm6CQpT0keAoa7TBsqXdgYMdVSXr/SRv06CgfRzTF4WNmRfbd/llc85EKJHABpmTzeKzGk7/El4d4V1j8AyHREbaXVGbrEd9/nKWOWr7ZqnzhvWl2zcWAM8QfaAcfF7AjpYy6nX0qecedDFsucFQ8g8C7NFkIl8WOV6JXEud8do69H8wB4YIOpTgofTiXgnv81lPEeqXISd7ePIjSRwgZB7IMiFCuopdvAcXdaoHHKTnevLx/51nYoI/dMeLxZ+iMEkKdX+xNT0GFbHuYeero+JM5lFO8sJiLIdy72zRfWgOnZqHA0g6UyyYsrAJlUur2rhbr1QNcl+AYEVQfP2jChjMWCLbkwul4KUfE18jZiUMzjcCVdbD9/mmeMqfKVCUI/XoSBUNP48sY/4IW3b//fBxUuh3eou7x1O5TPw0pyUaR6qmZ6ZyiLVm9K3OoJLB3suCLfPPVktXsT65SJI8YQDJ+5bUcJVBw9sxNx58fc9j+OYvsX77pXiA0ZVIXOYe0GsqVMmg2HazSLeG3EJua8VrnFsRwl3cfZOhy+SuxKNeqkqoq+WT0p7kXMELzCAZwR+ncTkuMxUDamiz+AGFBou0=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(346002)(396003)(136003)(376002)(39860400002)(451199015)(36840700001)(40470700004)(46966006)(36860700001)(6506007)(82740400003)(6666004)(107886003)(81166007)(356005)(118246002)(2906002)(36736006)(478600001)(6486002)(956004)(2616005)(7416002)(1076003)(26005)(6512007)(186003)(44832011)(5660300002)(316002)(40480700001)(9316004)(83380400001)(8936002)(82310400005)(36756003)(86362001)(40460700003)(47076005)(41300700001)(8676002)(336012)(110136005)(54906003)(70206006)(4326008)(70586007)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 11:40:34.3682
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab80640-11ce-40f6-9ffb-08daf2ff7c8e
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT045.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB5714
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

