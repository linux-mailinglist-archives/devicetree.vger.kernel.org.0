Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 941626DE435
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 20:45:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbjDKSp2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 14:45:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229925AbjDKSp1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 14:45:27 -0400
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04hn2200.outbound.protection.outlook.com [52.100.17.200])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F43613E
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 11:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5AEoFdiOCnsskdrindx8dhutWNHTkCEzEEKxPmkUskc=;
 b=eTBigFbJC07XqDiVWKpP81irWFngn7hOLKyzNoM/l6thtXipQY//CDK0/ffZUjm4In/t6CVo/7oZgTnkrVoJL/76CuWXePplEFd79Hb2HYjwDV8hu4Kz9ztmmOtLb/TBsA3MqoU6rmOZOEQ5HWfKRCwzsrTzf7IdHr8iVKKTND5JuWRvDRRFWwEG7oZCihdOn0lEihZekmn7z9uh99zbRb8RCArFXIEsak21HXo6v8PayZV9EfGZrTUsTmW1gjcI2xWvqEcMkiyURydGYOcYIsdA4bDfmanGpH2lYcmrP5+ihPfX8i6SpgV1T5sBEljapievcG1GLzqU5yKHAMmagQ==
Received: from AM6PR08CA0041.eurprd08.prod.outlook.com (2603:10a6:20b:c0::29)
 by AS8PR03MB9981.eurprd03.prod.outlook.com (2603:10a6:20b:631::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Tue, 11 Apr
 2023 18:45:20 +0000
Received: from AM6EUR05FT008.eop-eur05.prod.protection.outlook.com
 (2603:10a6:20b:c0:cafe::b8) by AM6PR08CA0041.outlook.office365.com
 (2603:10a6:20b:c0::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.40 via Frontend
 Transport; Tue, 11 Apr 2023 18:45:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.82)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.82 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.82; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.82) by
 AM6EUR05FT008.mail.protection.outlook.com (10.233.240.247) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30 via Frontend Transport; Tue, 11 Apr 2023 18:45:19 +0000
Received: from outmta (unknown [192.168.82.133])
        by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id 3FB712008088C;
        Tue, 11 Apr 2023 18:45:19 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (unknown [104.47.51.239])
        by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 04E4520080073;
        Tue, 11 Apr 2023 18:46:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RDewjkASn8BlH1ywc/4PK1dGQW88x5pavVbZzHgDdz0ZVOGLd35lcy6PJ000RJMk3a6HkWSyjx4R5t4gHMiFTCVqA9J5DxhafYL/ZDLfvZfR3tZSvMBURKIXBvMWyN8HZWVgQdRAiqPbRbZx4XDesA94Q358lIQP4R9xXONxalDyY2+fQz/vryj7/wgCRrHokVoIRM4WYAeDIPo6BTai9gyVCDTNL5KBAgpzPO8eemtKw6GaHszeshKVQQ2pSglja+5cOSvwfRylPYVnIbcpnOL2onO9D7ewMHryzVI9wrvE7mgmbtu1T3Nvzj8+r1Q4lWaj5Xwiy3MUWuZMkV9J/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5AEoFdiOCnsskdrindx8dhutWNHTkCEzEEKxPmkUskc=;
 b=BtTRg2QmT8ji5TtbULo3VDigH+OF8tNcgSQq/9vKCLyKgwhlJiTh+98OlagychB1MS+XAA0b49x1JJj7MiET/MUuzgfte0cIC32GUWKPb6HSPwp0MojpIIFlDe+oE2MNln4i4sKkzKcrnS4Vs3xgmSDYXJUJoQMmsVqdXT39c7xdt2qLU8usViM/TlCwCuPdLm3f6XWTidVmsfpFNJGc+x1qcH7YXi/S3+Q3DfUC8XZj5mOHsjOdVt5hAnhkV49+NxTFYOnv93TxDt//Q0mD1toafX4gwNmZQdw0m/Pp42MJNU6n1aQ6UsgRZQrSLdwaE5Aw7RbZgFRn5Wt8662ZdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5AEoFdiOCnsskdrindx8dhutWNHTkCEzEEKxPmkUskc=;
 b=eTBigFbJC07XqDiVWKpP81irWFngn7hOLKyzNoM/l6thtXipQY//CDK0/ffZUjm4In/t6CVo/7oZgTnkrVoJL/76CuWXePplEFd79Hb2HYjwDV8hu4Kz9ztmmOtLb/TBsA3MqoU6rmOZOEQ5HWfKRCwzsrTzf7IdHr8iVKKTND5JuWRvDRRFWwEG7oZCihdOn0lEihZekmn7z9uh99zbRb8RCArFXIEsak21HXo6v8PayZV9EfGZrTUsTmW1gjcI2xWvqEcMkiyURydGYOcYIsdA4bDfmanGpH2lYcmrP5+ihPfX8i6SpgV1T5sBEljapievcG1GLzqU5yKHAMmagQ==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by DB4PR03MB9433.eurprd03.prod.outlook.com (2603:10a6:10:3fa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Tue, 11 Apr
 2023 18:45:06 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::2226:eb03:a8c:a7e5%2]) with mapi id 15.20.6277.035; Tue, 11 Apr 2023
 18:45:06 +0000
From:   Sean Anderson <sean.anderson@seco.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org
Cc:     Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linux-arm-kernel@lists.infradead.org,
        Madalin Bucur <madalin.bucur@nxp.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linuxppc-dev@lists.ozlabs.org,
        Sean Anderson <sean.anderson@seco.com>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v13 15/15] arm64: dts: ls1088ardb: Add serdes descriptions
Date:   Tue, 11 Apr 2023 14:43:12 -0400
Message-Id: <20230411184313.3679145-16-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20230411184313.3679145-1-sean.anderson@seco.com>
References: <20230411184313.3679145-1-sean.anderson@seco.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1PR13CA0350.namprd13.prod.outlook.com
 (2603:10b6:208:2c6::25) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: DB9PR03MB8847:EE_|DB4PR03MB9433:EE_|AM6EUR05FT008:EE_|AS8PR03MB9981:EE_
X-MS-Office365-Filtering-Correlation-Id: 30ab2e9c-0b16-4fcd-c219-08db3abce640
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: ATkFqkSgC1aqLFOa0kIVwweYRMjg5xnn9eLFKacvtnvB5OTZezDQmHFQdKeruMQT2+K1sU8gPEtXIvqXunqpgCTkA1ag5rCV2+XO6udyY/qqrcjsDaBItrJIO2M80dGhqGCi+q3mtwYlMgZJ/1pMvOw1coogxPdvQXvZp8wp76osekoiypjjHvdDRn/sOlk4q45JIxjopxW3jZh1DmVNwbdFqmPFUaWCKWiBfp6BiXGJwzEHbBBwUReEtbE9PpgcBNe8Nt1ifk8E4WDb4s5k7cMkr4pBT/KBCve7k5cyc4ZRGSR/7IHm3zuZZbiFzZUAh3b6kg5XqzCWiAmoUlu0JjRh/oHPuZVaZnJttWOAdtmzJqQ4v/T6pk/K7teITZLwgibnASVO+4fars8dAObAfTy+645k4wbU60MP/2/I66jQ3DSiGeaSZg9pfzV7qINcElE85rDh/GzBrSOll8XUwIyBJ+MZyUOz1Wsc7p0qvzIx+2YYF0K3zoWJnq/IcS7+j+icZMxe1bOXQfe3yciIzDk0bgkufAvt7gOhKuKaSedIsOckzz0Ezk1W3JcThh7CdbRGGh3ghbAAPlT4SIVlkF6ED6Y+X9gA80W8ay387AhzlIYmnaYxil2BpoDrcSzm
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(39850400004)(396003)(136003)(376002)(346002)(451199021)(316002)(110136005)(38350700002)(38100700002)(54906003)(66556008)(66476007)(8676002)(66946007)(4326008)(86362001)(478600001)(186003)(2616005)(26005)(41300700001)(36756003)(6506007)(1076003)(6512007)(2906002)(83380400001)(44832011)(8936002)(6666004)(52116002)(5660300002)(7416002)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR03MB9433
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM6EUR05FT008.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: df44a21a-e595-4be9-03a5-08db3abcde46
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s6KGQHcc6g05TGp25bOZ0ghXpnf7SqHnPFeKMlI+dbPv878vK9H9BeDrQj1nMKni74zHKJhXq2ViJ3BPPPCz99Y8ZehzKkvKJugl3YGFeeDh9xG9zuU86+clM35FyojTDk985A4mNOKU+7mXK1Ev4bs+rWRQlvAZ6DNG8Ifj5Ti10JvqC/5u0RdpPsprL8Us1zeA7YL3iS+ZX5uSPD0YvVyg+J3o264sy4UtIQnqTreBmdGe0CCZWdwDlYq/8zEM8hPbWZp2L1219PqvJdjRf21hiyyMHiZoOzzPrNjInfGCAqlCj4/OXu4sgOp8j6J1a3z8qunVQUDz/rRzaY+/x8rQgTtZgqEyzaWrhBmjzj+fWJKHaoXkHrod+DtEW2hxQaiU5gaiMRZf+9hzGfuGN0jjZhpG6F1E8q/LB//h7o9CH2939c5p74TZhkiyuIJgC+TZdQ1DP4JvuOT2Xxdd15H9hPYBkFKJ6o4SWYyNa6tCZlv9FYvyk8CmB1JtuYUY4Aqp5SM/i6ueUjU1XeHC/58kipoxuaOUdl1v+uWIDeESk6hMtqVGddpzwNdU00Z5OLrNEwhVRfrUi9Tuazm7RcSyRqJTAloUoto/f0C74uR0oaAvjB3rp9psflXhBlI2Y+9ZvYRmkU+lHf5djnrzcFgBKDEWA9oHTMBlNDrACu7S+2ijN/aAQB43fF4cqZa3JNUz24Jbrm3Pc95DhrEQGnsqDY0G9LAI6TdyKDLnDyB37UCXRC4RKrdMbkOYTziLlD+N2Q7w6dVigEipRvT4vw==
X-Forefront-Antispam-Report: CIP:20.160.56.82;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230028)(396003)(136003)(39850400004)(346002)(376002)(451199021)(5400799015)(46966006)(36840700001)(40470700004)(336012)(6486002)(83380400001)(26005)(6666004)(6512007)(2616005)(41300700001)(356005)(7596003)(7636003)(47076005)(6506007)(186003)(5660300002)(110136005)(7416002)(54906003)(316002)(1076003)(36860700001)(34070700002)(478600001)(4326008)(44832011)(2906002)(40460700003)(82740400003)(82310400005)(70586007)(8676002)(40480700001)(70206006)(86362001)(36756003)(8936002)(12100799027);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 18:45:19.3698
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ab2e9c-0b16-4fcd-c219-08db3abce640
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.82];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: AM6EUR05FT008.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB9981
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds serdes support to the LS1088ARDB. I have tested the QSGMII
ports as well as the two 10G ports. Linux hangs around when the serdes
is initialized if the si5341 is enabled with the in-tree driver, so I
have modeled it as a two fixed clocks instead.

To enable serdes support, the DPC needs to set the macs to
MAC_LINK_TYPE_BACKPLANE. All MACs using the same QSGMII should be
converted at once. Additionally, in order to change interface types, the
MC firmware must support DPAA2_MAC_FEATURE_PROTOCOL_CHANGE.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>

---

Changes in v13:
- Split off interrupt and SFP changes into separate commits

Changes in v10:
- Move serdes bindings to SoC dtsi
- Use "descriptions" instead of "bindings"
- Don't use /clocks
- Add missing gpio-controller properties

Changes in v9:
- Add fsl,unused-lanes-reserved to allow a gradual transition, depending
  on the mac link type.
- Remove unused clocks
- Fix some phy mode node names
- phy-type -> fsl,phy

Changes in v8:
- Rename serdes phy handles like the LS1046A
- Add SFP slot binding
- Fix incorrect lane ordering (it's backwards on the LS1088A just like it is in
  the LS1046A).
- Fix duplicated lane 2 (it should have been lane 3).
- Fix incorrectly-documented value for XFI1.
- Remove interrupt for aquantia phy. It never fired for whatever reason,
  preventing the link from coming up.
- Add GPIOs for QIXIS FPGA.
- Enable MAC1 PCS
- Remove si5341 binding

Changes in v4:
- Convert to new bindings

 .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
index 9fb1960f1258..ede537b644e8 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
@@ -18,6 +18,18 @@ / {
 	model = "LS1088A RDB Board";
 	compatible = "fsl,ls1088a-rdb", "fsl,ls1088a";
 
+	clk_100mhz: clock-100mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
+	clk_156mhz: clock-156mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <156250000>;
+	};
+
 	sfp_slot: sfp {
 		compatible = "sff,sfp";
 		i2c-bus = <&sfp_i2c>;
@@ -27,16 +39,26 @@ sfp_slot: sfp {
 	};
 };
 
+&serdes1 {
+	clocks = <&clk_100mhz>, <&clk_156mhz>;
+	clock-names = "ref0", "ref1";
+	fsl,unused-lanes-reserved;
+	status = "okay";
+};
+
 &dpmac1 {
 	managed = "in-band-status";
 	pcs-handle = <&pcs1>;
+	phys = <&serdes1_C>;
 	sfp = <&sfp_slot>;
 };
 
 &dpmac2 {
 	phy-handle = <&mdio2_aquantia_phy>;
 	phy-connection-type = "10gbase-r";
+	managed = "in-band-status";
 	pcs-handle = <&pcs2>;
+	phys = <&serdes1_D>;
 };
 
 &dpmac3 {
@@ -44,6 +66,7 @@ &dpmac3 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_0>;
+	phys = <&serdes1_A>;
 };
 
 &dpmac4 {
@@ -51,6 +74,7 @@ &dpmac4 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_1>;
+	phys = <&serdes1_A>;
 };
 
 &dpmac5 {
@@ -58,6 +82,7 @@ &dpmac5 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_2>;
+	phys = <&serdes1_A>;
 };
 
 &dpmac6 {
@@ -65,6 +90,7 @@ &dpmac6 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs3_3>;
+	phys = <&serdes1_A>;
 };
 
 &dpmac7 {
@@ -72,6 +98,7 @@ &dpmac7 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_0>;
+	phys = <&serdes1_B>;
 };
 
 &dpmac8 {
@@ -79,6 +106,7 @@ &dpmac8 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_1>;
+	phys = <&serdes1_B>;
 };
 
 &dpmac9 {
@@ -86,6 +114,7 @@ &dpmac9 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_2>;
+	phys = <&serdes1_B>;
 };
 
 &dpmac10 {
@@ -93,6 +122,7 @@ &dpmac10 {
 	phy-connection-type = "qsgmii";
 	managed = "in-band-status";
 	pcs-handle = <&pcs7_3>;
+	phys = <&serdes1_B>;
 };
 
 &emdio1 {
-- 
2.35.1.1320.gc452695387.dirty

