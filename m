Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D038168178D
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 18:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237243AbjA3R1D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 12:27:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236200AbjA3R1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 12:27:02 -0500
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2135.outbound.protection.outlook.com [40.107.22.135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EFFE3F28A
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 09:27:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwMGaXwLjxb7T1I0LX46ugExalIJkajBwUcrju1kP4N/kuQPmKmvTQFwXnlyu0r9eUrAmmOzonuzbVeVdbU16JJhuLZfQAK9CqnQcMzpj//tB1vT186ZpccQMcviRU5p12MIrkDb85/mo/NXheOQzpfW8PPgB2FZrrmi3CKCasWf00C3Q04SZuZWJhAsP/6IpWqTvMVNBI1EcqOLyBrcigGSYxa83npOHCjLznd3ag7ATZTKpkIvgz8RxY+vSliqBwigVQOUrLrPeEsTsnWRIO9DDOo/f16jg0ziRaFTa3SUfpAB6OXme+ntxkeL6ab3HORHQGadMoHd9sjeM9HyyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQRk0KBJv7C+Dra8nYT3LdLLta3iXuQ37PI3wr+JGeQ=;
 b=KOSgmrxSUrDNjRsou8PpYUoSd9GdG7ZGBOnFT4ztMZWBCvXyhRwyu/MbfpSE8y1XLjQy/CTRLceC60PEhE0zz8rcGA6o/taUT+nQ82QP3NMA1R8wh8HH/7pUit+7Yp4oGcTSUI55kkLhvkJjxnsvtJG3oJkyDPx4Qoeg3FGg26VQSZpDCmkKgpU1dAo1nTGBABqmULbsR9a5U9rK5qJoLYv2Ib30AE30LJPxB0We+xxrvf2hQDVjEiCQDXp54KZjHmrSMIU1Itm16a5qkefZoVuOUiHBbq+SgrumYKxmqQ+wI6T/XeWp8N8P5iIKF6o35oNkZdEl4MQPuRWw6OWiBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=kernel.org smtp.mailfrom=leica-geosystems.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none
 header.from=leica-geosystems.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bQRk0KBJv7C+Dra8nYT3LdLLta3iXuQ37PI3wr+JGeQ=;
 b=uQYLvp7BJPRMyq/XJBPcV1UxbQ+A9TeRLyvOy7vjuIIkj5VSXHpAKwjmyj8bkXJGix6NbSEQtKAbKyGvlP7DLwrU29La0vF9E98F6mT/BMUb3OmTeKAxUrDN71Q7e6VKWt6/LISlHs0WdFMwEO/qnKrxuMOD/2VZHFWL0LW/Dco=
Received: from AS9PR06CA0374.eurprd06.prod.outlook.com (2603:10a6:20b:460::29)
 by VI1PR06MB5376.eurprd06.prod.outlook.com (2603:10a6:803:b9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.28; Mon, 30 Jan
 2023 17:26:47 +0000
Received: from AM0EUR02FT004.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:460:cafe::5a) by AS9PR06CA0374.outlook.office365.com
 (2603:10a6:20b:460::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36 via Frontend
 Transport; Mon, 30 Jan 2023 17:26:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT004.mail.protection.outlook.com (10.13.54.70) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.30 via Frontend Transport; Mon, 30 Jan 2023 17:26:46 +0000
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
Subject: [PATCH v11 0/2] pmic on imx8mm
Date:   Mon, 30 Jan 2023 18:26:44 +0100
Message-Id: <20230130172644.2740332-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT004:EE_|VI1PR06MB5376:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 785210cc-ae46-4637-e621-08db02e72a3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aDWDSCV8JH+/hN18zQP4v/VRDWlVAOoK17qiD+qnkGq4p7rjO21pIy69sxrg9yY1Z6ESVZKpdBP+6rQ5iB9E3ck+v41n1M5G8YFbyAcUOUFhmo3J6zVEVYw63tthO5+BXBWsX5zLvyf3bsvEsjiE3gYOJBAxpJFhnubn/Y3bd5U+CwfU0m0xKH/72r1ayJcJPBe7hhNEM+02Re0RPu+J1nkUpTmre+op/91OzC3AXssxXVBGdgMwuUc2k8faoNf0XdVmmvbYxo3/Fh1dbxtvzoLFtTi9OyoXnG0p2518i7YGvfYh4n+EQxDGBlekVBiGOoPLqdIBZRUIc7Sp2l3kmYuyUdZrUE5iO7NnoGT75Ct35hOQP6qfnSH6wft3pdkpTI9BxBoi89UrTWc+TALCIIOcZ5xmrNNs/FVgXu8V/R1/MdMhZ104r18Y1vidr/nCWALf/JL0/QSVVdTdp3nUbskU7OGHs8ebbSCpdQEUMyKZjTnTZI/aznZYsHaGUcfdD9peUTBgqo/QYYTVucqAmcKJhxQJg32HnnMYLO2SRYibCOcW7tsNU0JHjNf/L72/N5OVhFo2KotAjIBE6LDxT1hAN0Erdhra2+nyWAPnU1QSZqK+k+nbmWdPUKVa/WwCazVuTyHn5/lWFWDWhBHFZj/VzMgHqQabIktQ8v4aXcxUSUIdRVXdeh9xS4Q0+ybkXDDm0+w+Pqxk0RwbFfcT2BpaF67PBJpi7m5M/u+ToUc=
X-Forefront-Antispam-Report: CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(396003)(376002)(346002)(136003)(451199018)(36840700001)(46966006)(40470700004)(40460700003)(118246002)(2906002)(36756003)(956004)(83380400001)(44832011)(336012)(6486002)(2616005)(478600001)(6512007)(356005)(110136005)(81166007)(36860700001)(1076003)(107886003)(26005)(6506007)(7416002)(70206006)(4326008)(8676002)(70586007)(41300700001)(5660300002)(82740400003)(8936002)(186003)(36736006)(86362001)(316002)(54906003)(40480700001)(47076005)(82310400005)(9316004)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:26:46.9464
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 785210cc-ae46-4637-e621-08db02e72a3f
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: AM0EUR02FT004.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR06MB5376
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

