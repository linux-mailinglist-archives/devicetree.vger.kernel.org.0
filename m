Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8516B7D1C
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 17:12:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbjCMQMf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 12:12:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229922AbjCMQMe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 12:12:34 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05hn2228.outbound.protection.outlook.com [52.100.175.228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2390078C83
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 09:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zOEtSA60wMXs/yMCjTmhGeYB3RHdSPz2YLllpEhk3Z4=;
 b=c5fIKnmP1zN9MkKFNO6iGxDr0L9mQFB14fXpV8jWND631pzhJ1WR9ougdgHGjJrPIuYdVrPyH5XMA8zfTgqq9n6DlhJsXM9zvkzbWTPVbjpdNS7ZxxUfuyE7ryWyZjsgWubx7/NMpwlrfv0GnB3sD02NjuidY/Ekm+VLQPjp8RKmsVJqqAjoiuNgZjxX4kyZ3LKYA5EeJf2E+3+SvrGKN2/j+YHinnfjT9dcnmXZIv6xH7HvSY8HUJhM72vqjYbttpFnCzftrv0iQYdjFkKmjBpH6wCD55/CCrQ4SOyquZ0UU5kOoDgiE9bLZSxN0ydZNEI90hSQQByF10/OQhwLVg==
Received: from AS9PR06CA0559.eurprd06.prod.outlook.com (2603:10a6:20b:485::23)
 by AM9PR03MB7506.eurprd03.prod.outlook.com (2603:10a6:20b:262::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 16:12:29 +0000
Received: from AM6EUR05FT007.eop-eur05.prod.protection.outlook.com
 (2603:10a6:20b:485:cafe::ac) by AS9PR06CA0559.outlook.office365.com
 (2603:10a6:20b:485::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.25 via Frontend
 Transport; Mon, 13 Mar 2023 16:12:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.160.56.84)
 smtp.mailfrom=seco.com; dkim=pass (signature was verified)
 header.d=seco.com;dmarc=pass action=none header.from=seco.com;
Received-SPF: Pass (protection.outlook.com: domain of seco.com designates
 20.160.56.84 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.160.56.84; helo=inpost-eu.tmcas.trendmicro.com; pr=C
Received: from inpost-eu.tmcas.trendmicro.com (20.160.56.84) by
 AM6EUR05FT007.mail.protection.outlook.com (10.233.240.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6199.11 via Frontend Transport; Mon, 13 Mar 2023 16:12:28 +0000
Received: from outmta (unknown [192.168.82.132])
        by inpost-eu.tmcas.trendmicro.com (Trend Micro CAS) with ESMTP id CA82C2008026E;
        Mon, 13 Mar 2023 16:12:28 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (unknown [104.47.14.57])
        by repre.tmcas.trendmicro.com (Trend Micro CAS) with ESMTPS id 7D1AB20080075;
        Mon, 13 Mar 2023 16:03:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XALlv5hg9bzXTgN2LLD+GxWu2CPBzlXL9gL4vFaTsRB6mBeP6TrX90I5cFD74/rQ6u7T2x8kb0dTZqZCXxmQWnz0WbeQpcDgXe9bhpmVmyIIabosECyaCcZxzHNgdS7x81ryjgNrVlEd3Yog9ZzZXjY/3fJCAq8YLOiXlw+GwgEIRfI/ZNr5ia5+GWPFxCZTtZl45qCqZrnogZ1nZultJB85EiAJmMrmLJbaJfuQDzD2wZnMnJQD1SHFmfhyv1Aq0RcPPmL0ur9QfR9U9IQU3mGS7hLLJs5SWcypfqzc3FFrWgjIa1Dcu79rNNd9qRf9zPmn/YJ+bs23S6afI8V19g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zOEtSA60wMXs/yMCjTmhGeYB3RHdSPz2YLllpEhk3Z4=;
 b=dGQ/NY1JHEMzs+QHkMxyrzI/S0gjWLQSXvH8Qv7VQJPoNqHjTklqvyxiCKVF7OEsqnNo9TqMYrumDdvKUg9/kzH7iqemquGSZYushXpEv2oC3uers4HxKAVyy57+zyCYmoJVvmvFunjpqT2UIrVZOORItMeZaqYO1be4r1oe/AvilM+vDbtPamyWptmmckPrCSm/B96JeMO96nbtySe0Ff2P9JL1t19aFnrroJHsnllR0/KO1TjG/oTZKeR+mslIDDSgXtL9y1w43MJC2rWo1YIPAYacW96uWpo54UEl58a/9IT1tgba7amD4ToDXFbuDbHeVafMf4ul1oS7ftX9Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zOEtSA60wMXs/yMCjTmhGeYB3RHdSPz2YLllpEhk3Z4=;
 b=c5fIKnmP1zN9MkKFNO6iGxDr0L9mQFB14fXpV8jWND631pzhJ1WR9ougdgHGjJrPIuYdVrPyH5XMA8zfTgqq9n6DlhJsXM9zvkzbWTPVbjpdNS7ZxxUfuyE7ryWyZjsgWubx7/NMpwlrfv0GnB3sD02NjuidY/Ekm+VLQPjp8RKmsVJqqAjoiuNgZjxX4kyZ3LKYA5EeJf2E+3+SvrGKN2/j+YHinnfjT9dcnmXZIv6xH7HvSY8HUJhM72vqjYbttpFnCzftrv0iQYdjFkKmjBpH6wCD55/CCrQ4SOyquZ0UU5kOoDgiE9bLZSxN0ydZNEI90hSQQByF10/OQhwLVg==
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com (2603:10a6:10:3dd::13)
 by AS8PR03MB7781.eurprd03.prod.outlook.com (2603:10a6:20b:405::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 16:12:25 +0000
Received: from DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e]) by DB9PR03MB8847.eurprd03.prod.outlook.com
 ([fe80::dbcf:1089:3242:614e%4]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 16:12:25 +0000
From:   Sean Anderson <sean.anderson@seco.com>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org,
        Sean Anderson <sean.anderson@seco.com>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v11 11/13] arm64: dts: ls1088a: Add serdes nodes
Date:   Mon, 13 Mar 2023 12:11:35 -0400
Message-Id: <20230313161138.3598068-12-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
In-Reply-To: <20230313161138.3598068-1-sean.anderson@seco.com>
References: <20230313161138.3598068-1-sean.anderson@seco.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BL1P221CA0013.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::11) To DB9PR03MB8847.eurprd03.prod.outlook.com
 (2603:10a6:10:3dd::13)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: DB9PR03MB8847:EE_|AS8PR03MB7781:EE_|AM6EUR05FT007:EE_|AM9PR03MB7506:EE_
X-MS-Office365-Filtering-Correlation-Id: 88041a33-bc52-4c62-26cd-08db23ddbe40
X-TrendMicro-CAS-OUT-LOOP-IDENTIFIER: 656f966764b7fb185830381c646b41a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: e0aokFR7oLDdprQYMZS8T+uN2JT54jHM0k9RLq0vtuuaZj0alM4KGYv7ek8X0/b0mGhePBaGnqF5yKNI2xUrHeTyLpAx/BbVGMqyNxniZeORAUyjYgpxvmckdhzbEeIRiuA7AH2M3S66UKmdzHBxT/I0IG2hIpkvet91sqqHlKxyyp9bVJB9HT0qS8Pqa92HNPHFfM6USeNUwB+WAbwAY/Rd0q3KuMNaKMUS6KNpD9SBbRf+/YB1bGqx4ecASttgkC/Mbi9S+uJLnfLxSl+ZYtDlL8MU6pYnuNLR/jjfGwlc20JBaLJoGkRX+dAdu9cpxtqOkhkZZ8XRss54gXAFRyuKOe7rWH28W8YesndAzqPJuT0qCmzWxgQlmDQeqSJ+2+r1d3nA1PnsbQhYxu2QfQA/5L3VpdXOKG0VdCHqY6KOSTkjYpoegCYQklnAgdx1Rm1YC9G142JrqE4kOzzIf+HdTwzBbeLy04Kkk7fRMG98d2qPdRrf1J94H6PmdQ5+kDboEMwCYLu3kNDEriI+IURS3fYdUu1ZVnPeuAejAIPJxBVwfuXzaK5n4EdZNPUsE6vxp8O2drw4oyIRlrXZlo9EyjlvCoYfgAk5C4Bgtbb6u4t3sQgAF1mY9yQ6qdIuEhILR+yYaf00kR2Tx3H5t0mPkFc0tpG3z+hQlzs+EnP8ZJs207XaKjBvCn2qnozrV7sKxJlPAPcmlockM6ilow==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB8847.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39850400004)(346002)(396003)(376002)(136003)(451199018)(110136005)(41300700001)(54906003)(478600001)(8676002)(4326008)(66556008)(66476007)(66946007)(8936002)(36756003)(86362001)(38350700002)(38100700002)(26005)(6512007)(1076003)(6486002)(6666004)(186003)(52116002)(44832011)(5660300002)(7416002)(2906002)(316002)(6506007)(83380400001)(2616005)(21314003);DIR:OUT;SFP:1101;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB7781
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM6EUR05FT007.eop-eur05.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: add542a9-2791-4a68-526c-08db23ddbbf8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /HWHG7X27DeVDbY1mrd5g84chF9hL3KEvVZtdGN1uOpGy4XRv9SIIh4SklvP12iISe/T+aN/tCSxRoh7xR5Eyh5BU63EZuxMHwlEMq10tn19smnbf8w08IIWhXiml+qdX4u+IkekCjjCvT0HArplOoW3vFJGfszCjMt5LFz9uzvTVGIIDhp/HD8pjFkT7UDCMx+7UHN95asdL/RF6yVQxqg21OY68/jKoC6eE18bV78kVX2NKzrdGRz0NcU3blUsSQouIoOVxnKUd+f9f1eSH776aaPVUiniXDbBkit3dmatwzbBmd7w/PtkfOPOcGmiYAuwFJDJlZsiwtvdwvI+U8az+Ur8ETdyI48I1LrzxDiIBqmQtEvKNNZyKgfipzTbjLyEtnJFDG0SJghFd56uOHi5LNpN1ljiXbomPz90XZ51Q8Fnf1okRccFN7Rwr9jaemni7NItmQ4P3etDrcjIU5WOnfAYRB0FeaInh5AaDxShVcl0fJXTfuGjKF9g53Cl7rDlb/0/B8pp2HCR8JcKCyJMcS6XVr51s+Ga7zUvY957ylkIsFoNqqintvsxToKU/IdtHZ5qsiZYi/BGEYoVUJwqxkdCfo/+EBUJexLiatqcCSrBRDDbw7fTLbcYZVgxYWtJPbcU4h7YKuKxZ8m6DMnqu/0tuoWY5frJshCzxxCfoHvtUOQTgdJ3QZwnWqUKCc6pKclwgb6IxCapkLiyn5nORPkrZSYA503e4d/XMeb/eUZ+I0nT74Q9nRfctjjnP9lGe/y6MgTfpL/N9lv7eA==
X-Forefront-Antispam-Report: CIP:20.160.56.84;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:inpost-eu.tmcas.trendmicro.com;PTR:inpost-eu.tmcas.trendmicro.com;CAT:NONE;SFS:(13230025)(346002)(39850400004)(396003)(136003)(376002)(451199018)(5400799012)(36840700001)(40470700004)(46966006)(36756003)(82310400005)(86362001)(6512007)(186003)(41300700001)(26005)(1076003)(6506007)(40460700003)(336012)(7416002)(5660300002)(4326008)(2616005)(8936002)(316002)(478600001)(36860700001)(54906003)(8676002)(70586007)(70206006)(6666004)(110136005)(40480700001)(6486002)(7596003)(7636003)(82740400003)(356005)(2906002)(83380400001)(34020700004)(47076005)(44832011)(21314003)(12100799021);DIR:OUT;SFP:1501;
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 16:12:28.9052
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 88041a33-bc52-4c62-26cd-08db23ddbe40
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=bebe97c3-6438-442e-ade3-ff17aa50e733;Ip=[20.160.56.84];Helo=[inpost-eu.tmcas.trendmicro.com]
X-MS-Exchange-CrossTenant-AuthSource: AM6EUR05FT007.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR03MB7506
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds nodes for the SerDes devices. They are disabled by default
to prevent any breakage on existing boards.

Signed-off-by: Sean Anderson <sean.anderson@seco.com>
---

(no changes since v10)

Changes in v10:
- Move serdes bindings to SoC dtsi
- Add support for all (ethernet) serdes modes
- Refer to "nodes" instead of "bindings"
- Move compatible/reg first

Changes in v4:
- Convert to new bindings

Changes in v3:
- New

 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 126 ++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index e5fb137ac02b..59b401daad4d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -9,6 +9,7 @@
  */
 #include <dt-bindings/clock/fsl,qoriq-clockgen.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -238,6 +239,131 @@ reset: syscon@1e60000 {
 			reg = <0x0 0x1e60000 0x0 0x10000>;
 		};
 
+		serdes1: serdes@1ea0000 {
+			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
+			reg = <0x0 0x1ea0000 0x0 0x2000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+
+			/*
+			 * XXX: Lane A uses pins SD1_RX3_P/N! That is, the lane
+			 * numbers and pin numbers are _reversed_.
+			 */
+			serdes1_A: phy@0 {
+				#phy-cells = <0>;
+				reg = <0>;
+
+				/* SG3 */
+				sgmii-0 {
+					fsl,pccr = <0x8>;
+					fsl,index = <0>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_SGMII>;
+				};
+
+				/* QSGb */
+				qsgmii-0 {
+					fsl,pccr = <0x9>;
+					fsl,index = <0>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_QSGMII>;
+				};
+			};
+
+			serdes1_B: phy@1 {
+				#phy-cells = <0>;
+				reg = <1>;
+
+				/* SG7 */
+				sgmii-1 {
+					fsl,pccr = <0x8>;
+					fsl,index = <1>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_SGMII>;
+				};
+
+				/* QSGa */
+				qsgmii-1 {
+					fsl,pccr = <0x9>;
+					fsl,index = <1>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_QSGMII>;
+				};
+
+				/* TODO: PCIe1 */
+			};
+
+			serdes1_C: phy@2 {
+				#phy-cells = <0>;
+				reg = <2>;
+
+				/* SG1 */
+				sgmii-2 {
+					fsl,pccr = <0x8>;
+					fsl,index = <2>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_2500BASEX>;
+				};
+
+				/*
+				 * XFI1
+				 * Table 23-1 and section 23.5.16.4 disagree;
+				 * this reflects the table.
+				 *
+				 * fsl,cfg is documented as 1, but it is set to
+				 * 2 by the RCW! This is the same as the
+				 * LS1046A.
+				 */
+				xfi-0 {
+					fsl,pccr = <0xb>;
+					fsl,index = <0>;
+					fsl,cfg = <0x2>;
+					fsl,type = <PHY_TYPE_10GBASER>;
+				};
+			};
+
+			serdes1_D: phy@3 {
+				#phy-cells = <0>;
+				reg = <3>;
+
+				/* SG2 */
+				sgmii-3 {
+					fsl,pccr = <0x8>;
+					fsl,index = <3>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_2500BASEX>;
+				};
+
+				/* QSGb */
+				qsgmii-0 {
+					fsl,pccr = <0x9>;
+					fsl,index = <0>;
+					fsl,cfg = <0x2>;
+					fsl,type = <PHY_TYPE_QSGMII>;
+				};
+
+				/* XFI2 */
+				xfi-1 {
+					fsl,pccr = <0xb>;
+					fsl,index = <1>;
+					fsl,cfg = <0x1>;
+					fsl,type = <PHY_TYPE_10GBASER>;
+				};
+			};
+
+		};
+
+		serdes2: serdes@1eb0000 {
+			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
+			reg = <0x0 0x1eb0000 0x0 0x2000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#clock-cells = <1>;
+			status = "disabled";
+		};
+
 		isc: syscon@1f70000 {
 			compatible = "fsl,ls1088a-isc", "syscon";
 			reg = <0x0 0x1f70000 0x0 0x10000>;
-- 
2.35.1.1320.gc452695387.dirty

