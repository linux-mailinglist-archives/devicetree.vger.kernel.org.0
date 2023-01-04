Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9A9265CC8B
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 06:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbjADFXl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 00:23:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjADFXk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 00:23:40 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2097.outbound.protection.outlook.com [40.107.22.97])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F17416496
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 21:23:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bAjYMgbAEzs1sVoN1fwerST5XyFJ6e5cbBUM0aOeJcpozXijDgF7I/xPM3HWdoxoUqplbUMpF540TjcWrOZIfJ4jbVBE023tWM7FZCVKYLGVQqhKEUUyAlnXi8OlCMVC9MR6+Bud0o0+5OBKBJvkjrJp/bSqE/mo6kAK97tMXJpQ+S0+oX3yohFHmjwUo+mLCscjkUAPl/M2qchcS9J70bncj22JHal+NVB6kDef+ZyYp+qOTgcBpsWHPou676438SI0GruEtIjLSrQu+/sCTxrfSOo8i8CN1OZLNnjbFw8R6vntE9WqIOsLn1Yskvvd++dQJJF8Z2wMlctR8+EfEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3P9uzcHACa0OBOS3FLE9IFTNm/6mi/+O3u8leVlKtgE=;
 b=n+Z7MtdRXfD1r3kAz4uuVKihdFPtYLSe43UwonHJ9j71uDA5Mlz9LnlccntVROPwDNs84s0DvyuYO9QWDA4ecWREwF45Ka/6Xww9xEtnuvBmcb+jFypCxclsElojjSOsSdgG/sxZt4YJVkYJVusPS3kNe5mUjt62WhM6eFCpCn/CMlpy6ALYrqV2TpJm3EHmGG4sbzIgHDXjF/Mt1AaYCMDTndCXqw1Q5Ke/uSj7EDrPyxfXGFEIRkyQtXNPqn7IwHWqkWLUv/LhrucnYK1ieWKjFF3eQEZtN3/0e8slY9bVfzGuF2q+C+UV30fOEPsKxz3+SybvY7s4M8XbICmwvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=pengutronix.de
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3P9uzcHACa0OBOS3FLE9IFTNm/6mi/+O3u8leVlKtgE=;
 b=P8l8Phw2fIpYYyjpjW0NadL5zVVDF+e7O9ssf3ZKGGakA/2O8sgrqZvJhNIkOR9w6yEAlQlN8pPMqz1UHF6AnsPQEbMKLyVsGym62lbdabEqLZcA95etkjKF/l6aLntTO85eyMQDIwQoF81H9CF2MVAzZ9tkBUkxhNRja7OzmNE=
Received: from DB6PR07CA0005.eurprd07.prod.outlook.com (2603:10a6:6:2d::15) by
 HE1PR0601MB2091.eurprd06.prod.outlook.com (2603:10a6:3:2a::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Wed, 4 Jan 2023 05:23:36 +0000
Received: from DB5EUR02FT021.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:6:2d:cafe::5f) by DB6PR07CA0005.outlook.office365.com
 (2603:10a6:6:2d::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.14 via Frontend
 Transport; Wed, 4 Jan 2023 05:23:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT021.mail.protection.outlook.com (10.13.58.64) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.16 via Frontend Transport; Wed, 4 Jan 2023 05:23:35 +0000
From:   Johannes Schneider <johannes.schneider@leica-geosystems.com>
To:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Cc:     Johannes Schneider <johannes.schneider@leica-geosystems.com>
Subject: [PATCH 0/1] pmic on imx8mm
Date:   Wed,  4 Jan 2023 06:23:16 +0100
Message-Id: <20230104052317.1083372-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT021:EE_|HE1PR0601MB2091:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 2f32b10a-0f72-489c-aa25-08daee13d427
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nTPgNveZHWfJB5+ebskjUTvf8F9Fq/IlpUo6oEsAoSI8Soxsj2cO/52SibrKu7HlFSpIpOLEvm7e4iyqvjNk1IPahH14IybN/wjgoFWRTOymZaF9CGqu9mOF04MwwjwSVki12eXqmsSQJmgvX70rgKnYiIwO7oHJ00QlYyT6nU93jLan/FDJTAj1TkOST/I/o/+YqwsOs0yABJ0rJeiwOoMKFzKBFyuni6cQ8OUNihgDkc/DDHtCZ/0dx54JPBcFBDzYufLqA/rcsgmtFe7EPsA5vukuy4OVsOjGV0kdHMRQ7FCtumo6TBgaZywwOtQa6Z7GiDsi3f6Jqch26fRGDiE6GdOnI82O6Ctd54pa6gO/mlEffD6XZ1Oy8O4y0314gLuCO9+VyVH/ptBl4e+524UnANr78EE74h1aT5H2KlSqOIzCc8+0w8/DLvCDDnRi40OJvhWBwbVOTSNyVG7Ce4NzNZuwn+eHLCgG85eh5rfbLji4EbnU/Siy8qVQvzrMzwRAV5E34NMVK8lGgYXHOxHnYgEZX4tahauDHwO+YKY2bzuYpykle/jsJDzG9LnDMsN0GnPYQH2BN2ENGFO6ObxdBjOyXUBU0MrDISuT8HvwvRUJQ4sahsuaO1Iy+AELOo3+nGSDeMsWVCXYaA8vRVhEgMGOJHPKq/rXhMz0BPY+sX5qWxfOt7ip9Dlj3VdaU6M3iuVsgAQDgPjzjhsajFMq/Bp2AYbGOeSYd4rv1Cw=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(396003)(136003)(346002)(39860400002)(451199015)(40470700004)(36840700001)(46966006)(6512007)(316002)(6666004)(36736006)(107886003)(110136005)(26005)(186003)(70586007)(956004)(70206006)(8676002)(478600001)(336012)(1076003)(4326008)(2616005)(6486002)(6506007)(82740400003)(41300700001)(47076005)(8936002)(5660300002)(44832011)(2906002)(4744005)(86362001)(36756003)(9316004)(36860700001)(118246002)(40460700003)(356005)(40480700001)(81166007)(82310400005)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 05:23:35.5630
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f32b10a-0f72-489c-aa25-08daee13d427
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5EUR02FT021.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0601MB2091
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

current(?) imx8mm EVKs come with a different PMIC: used to be "rohm,bd71847", which is now replaced by "nxp,pca9450a" on the LPDDR4 variant at least
the register settings etc where "backported" from current u-boot sources for the EVK

Note: not sure if the changes should go in the ddr4-evk.dts or elsewhere;
what about backwards compatibility? = users/holders of the EVKs with the bd71847 IC?


Johannes Schneider (1):
  arm64: dts: imx8mm: set PCA9450a as PMIC

 .../boot/dts/freescale/imx8mm-ddr4-evk.dts    | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)

-- 
2.25.1

