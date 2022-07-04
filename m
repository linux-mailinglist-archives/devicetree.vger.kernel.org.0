Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED30565794
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 15:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234637AbiGDNm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 09:42:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234687AbiGDNmz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 09:42:55 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2073.outbound.protection.outlook.com [40.107.21.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75E1610B4
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 06:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EkF+kuojvSNFalmZQaP2cdrXv5Gj5t3RwK/4mSYQmoThD/imbsEHu7dnyOdyi8gypNrhx9bBK8ikauwVZvvYAhLHsdajC45gCF7qol2TjSQ0BkbGSsUZCjN0FWqZgQKhMdtS/feOHvKhGiULy2g/PRO3wjRSr4EfzBV2hqZJE8eSXiG4uBTWpO83fGcEYUEqflhB2GPK28RZ9DdjC1ANWPaScXmY7iouhknEsVwwB8LHwqncYz7cdFkh2doN0qCXUm3opEESJGR8YjHDThAh0c9b5Q9Rlv36LOaDKx/lYuDcscip0fudNupuxTBsdxtsgDVSqzLha6x7E6RKHj9TSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cgU2rC+Vlb1slWks38dR15NVowO/dWr3lfWHeT1M35A=;
 b=hluEYUZiEKJL6iTggUvin2B4EcrOM2BSM3e8cziwUGcjha0Y0d93KKDThcsAJoC2G/xJnVEj0jgh+ocZdCuN7lMA+heURSgrTPqe9mebBcQKXaI9XbIJoI/vzWRd0B2BcmBhyTVxk1G2gvvSwe6KyASTDGil0BKbk4YQ0HuiAg1fdwK3As/BL+LTxXGF/nesdU7xGWI6LK/KAWLRReTWkpYEEysttq0Va1o0/lyS28e6+Z0on62bq8QzpfLtl0LhhSvEllNttyeYiN8imn/iEA80rBqkrgN2BnGrcp6LIjH6E0ejq2MJeTl/LC7xJb8zqwLoL11suV1a6R1ev/9gcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cgU2rC+Vlb1slWks38dR15NVowO/dWr3lfWHeT1M35A=;
 b=XvrTFuaek14ZztW/aXRoVibUHJu6IFzpgnEGNl7U7rg+vRN0T2bzCfOmvvbMCOcKKrFsaw0wdgIQn4eLT2avbSZZGgdyf3tVMGrtDHRzlMn1kPaRm8ti0jMspiIWnK9Vb0/Pzknd+1QaeF2+yLdd3p+yhpvjK0GbcB1IKS5EBpQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com (2603:10a6:150:1e::22)
 by DB7PR04MB4556.eurprd04.prod.outlook.com (2603:10a6:5:36::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.20; Mon, 4 Jul
 2022 13:42:51 +0000
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4]) by GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4%5]) with mapi id 15.20.5373.018; Mon, 4 Jul 2022
 13:42:51 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     robh+dt@kernel.org, linux@armlinux.org.uk,
        devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v2 net-next 2/4] dt-bindings: net: sff,sfp: rename example dt nodes to be more generic
Date:   Mon,  4 Jul 2022 16:42:11 +0300
Message-Id: <20220704134213.13100-3-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220704134213.13100-1-ioana.ciornei@nxp.com>
References: <20220704134213.13100-1-ioana.ciornei@nxp.com>
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0071.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::7) To GV1PR04MB9055.eurprd04.prod.outlook.com
 (2603:10a6:150:1e::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb017d3a-78c3-44b2-90fe-08da5dc31710
X-MS-TrafficTypeDiagnostic: DB7PR04MB4556:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iBER9z9E5DjD5+6UREpIism3WqD+oMVmsJRB++UmRw5v3Jsx/WBvLoh2Jjrp+sO2KDVrFe3Oyyw2GsKEIcpzSI+9ZxXp6NCwFPx5fIxUAQZBzbj1tFEAZYayt37RX2EvD9R8cYQDvPR6SN7aXGBD6sWnR38NTFL01FMQ0E/beOvjz5FcrMHAvfqMNXy421SKRYltvmDI8NcIAXmmgRNBMRriTVcJUqUOxJG2RFBc47P0Hrabw2re7gFM5GEuAtcnrVrczNNFHjrje4elqKYVKYxnlv0qsBJz9C0AdU2Qj7Z7uEWbkeGaA2L8BlyoZ3SuDZPw9EdHnaLKWxmhIV5HHz9L3pAxm93qrppaBQeeHmTut5UPqIR8q8SxL0pH854WDncs5ZlAosHiSAUVnguCTiUlOZymjL3ZiIE+aMVo5D2k3AU7zfwh6BNdShTaLG6a1r9EkIXLiX7sPfUkZQqC2s0GH/Pl/FvwMo27G4/jm8EXUyLRxH2MC0Zv9EpVeRKf04dPZRrZKIz1bew/8P3/my1wa8h3QySChcNxgJv2DXbMEMW1s+71Jm3gDlI1BxdqDk0rz2vUZMXkbbno5KfvVhU0pJN9YIgvd+BEKIriXsoNWEtm4bvx9bB7hbmogJUYbKlFpCfNb9MU91DLz1IECpGS0Vum1HFqdOMalOFAFzTnoulhw8hltGYjqOCKIlCv7hB+9vRPaf8hV0KwU/4jJ/jXM2noSRkPP3XWzVIcCK83l/viuC5tlOgUqFSlqMVfQXguKOo0XIDvaPaHI04tFP35hjGq+MKiAD4dEkCbyq6hBa9vMPYv3h7HM4WaIEbCRvcIK0LuH0yFnzwMT2ZKLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9055.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(39860400002)(366004)(396003)(136003)(478600001)(5660300002)(8936002)(44832011)(316002)(66556008)(86362001)(6486002)(66476007)(4326008)(66946007)(8676002)(41300700001)(83380400001)(2616005)(186003)(1076003)(26005)(6512007)(52116002)(38350700002)(6506007)(38100700002)(6666004)(2906002)(36756003)(41533002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VAw4X/SzAg6GW6H42XZxfv8eYja4OPaAIP4Q5L9lAEkV1V8EGj4d+t7DNEcY?=
 =?us-ascii?Q?YkE+Yhm8QvqMcW8nZDBD7K7xujP/uSlLv0oEeuH7LfZ/xBXwDM1QW3hft8A8?=
 =?us-ascii?Q?NzIvbOxNZqhqy6NtJD+5euuQpZDUNgQd8YE3hjAM0HReXUzikeGF2MRJSDHA?=
 =?us-ascii?Q?X4lmA7xDJLPqn62Nv2vyqd/bIvN4WTrkoOESPtQaV38zUOp/OGgXHDpzYjBx?=
 =?us-ascii?Q?yrPOvDQmVMoGnweCiHmLO8QIcbfqWE4XCzxYlKS0UGTyFByT3n+kepgjQDEE?=
 =?us-ascii?Q?4L51YsG+N7tdJQfsmt55o3s5UFuZkYg3aaqk6bNcptEtkkpzq11c6HvUnC/c?=
 =?us-ascii?Q?OI8/KvgEMmSfhM5SWK1ahu6+g7Yo/5qDQCsctBrfTstLIVSNB07ADBgexyRG?=
 =?us-ascii?Q?Adu11J1THfcB7IJX6RdCwdBlCe/GE0fJfamniVuBchsihrFlm9FLnkkdkqZp?=
 =?us-ascii?Q?dUlpXzV8/9pVizdu7FOJJ6eLZavX0z+vhIufZCT9SjZqajgJBS/lcjX7qOoH?=
 =?us-ascii?Q?nThULjgOo6bNpkrhmhytzq1A4jHl6ZNG6+xbMSUhnPyoOnNgGMPnG4qRoul7?=
 =?us-ascii?Q?jpvGcQuEf2pDr8cc7WoJ0sCTltfmtI9cO+iqEz6jrTVVlCSJ+BGThJqLqbnt?=
 =?us-ascii?Q?M2d/AbKTamtGYI+bTJw5LBebw5ETaBPlmaHcpl1i3YcGLm+E4PpkiD66l6/z?=
 =?us-ascii?Q?IVu2f3kfyLFDZ5HMJ0RdKCg983nfQldYClbPb7lZxNatu9p5WpYq/z9Bb/fS?=
 =?us-ascii?Q?0dP+j5rKz/TgVOXDnNoVol35bRd/caUNS4lM7ASccTYHnfveUOGce2LQIvi+?=
 =?us-ascii?Q?qhWRpxRCZ+DRV+L9Hws1pU8bnFJP8n7r5kMjXXdMoSWygr0IVBkjcKGM0F85?=
 =?us-ascii?Q?P0vaFjt6InWrlzK/9znRsIQNw4t6UpNKHnFZbfnb3O8b4ss1pm6h2Mnlrcv+?=
 =?us-ascii?Q?PJDbiqARgO1Utl/Rpa20mFlgs1aXBpBY0rcJnt7690NB5o8o9YE6CEDyYVuW?=
 =?us-ascii?Q?9PGoklVNIfVvx0Sx7dCUeKJqLyNKE3PVY1U/Z35hYbpF6tBhzktPAGedi28W?=
 =?us-ascii?Q?Y/mzCpruUdtC3VZ1PcKKnpWW7Wot851J469h02EY618oW2jgrn3dWNFWxceq?=
 =?us-ascii?Q?aQeh7iFTFqkCLdlU9xSlJfCy/HvD/Bu40UuVonNn4mv7c2+XF4f2Vhg5a2oK?=
 =?us-ascii?Q?jJWh21t0sPorU30Xt+aT7QD2W6NL8IyP2DojoJ0PVHF6UPaJ2pGFxZO2AR0U?=
 =?us-ascii?Q?KZ7KafGQUXxrx7DKMi3wWpw8CK97amNcOx1HJE6PPWPR4YptQ2qXeqiXKm4M?=
 =?us-ascii?Q?HCZmK/nRx7KwjNk+5OoDh8fLHN88boEpVA60VxYQ9LRY0GBOe48ditlDz/eG?=
 =?us-ascii?Q?ua71FSFgV9boiTiVSoXeOeXqb1PiJOtFS5QRDCz+25abmom91G9ME3zNERcI?=
 =?us-ascii?Q?jw6gREsA9yWg/ONJmk9q1GPzADhzFYxfZfxM3HBt1pjQgfWp7YllOi3i6FEP?=
 =?us-ascii?Q?42N5ripLQDxBOL8NE7vmum1mFs9JJl+tfJLYqh701Dnuzu4ap8ot0cFiFeqz?=
 =?us-ascii?Q?wnw2msJ7p70Z+8zuEgxaJNSplrU4KEMv/KodK0iZ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb017d3a-78c3-44b2-90fe-08da5dc31710
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9055.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 13:42:51.5032
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MdVMoouwE3gvguTLcXCS1aTrrI55JHO7L7D529rb1DiKkLIQ+FsRTRh9qmoBlE0paK6mxuwTfR2iv0SpWBFGjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4556
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename the dt nodes shown in the sff,sfp.yaml examples so that they are
generic and not really tied to a specific platform.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
Changes in v2:
 - new patch

 .../devicetree/bindings/net/sff,sfp.yaml       | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/sff,sfp.yaml b/Documentation/devicetree/bindings/net/sff,sfp.yaml
index 86f3ed2546d9..e309395ea7e7 100644
--- a/Documentation/devicetree/bindings/net/sff,sfp.yaml
+++ b/Documentation/devicetree/bindings/net/sff,sfp.yaml
@@ -90,7 +90,7 @@ examples:
   - | # Direct serdes to SFP connection
     #include <dt-bindings/gpio/gpio.h>
 
-    sfp_eth3: sfp-eth3 {
+    sfp1: sfp {
       compatible = "sff,sfp";
       i2c-bus = <&sfp_1g_i2c>;
       los-gpios = <&cpm_gpio2 22 GPIO_ACTIVE_HIGH>;
@@ -102,19 +102,19 @@ examples:
       tx-fault-gpios = <&cpm_gpio2 19 GPIO_ACTIVE_HIGH>;
     };
 
-    cps_emac3 {
+    ethernet {
       phy-names = "comphy";
       phys = <&cps_comphy5 0>;
-      sfp = <&sfp_eth3>;
+      sfp = <&sfp1>;
     };
 
   - | # Serdes to PHY to SFP connection
     #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
 
-    sfp_eth0: sfp-eth0 {
+    sfp2: sfp {
       compatible = "sff,sfp";
-      i2c-bus = <&sfpp0_i2c>;
+      i2c-bus = <&sfp_i2c>;
       los-gpios = <&cps_gpio1 28 GPIO_ACTIVE_HIGH>;
       mod-def0-gpios = <&cps_gpio1 27 GPIO_ACTIVE_LOW>;
       pinctrl-names = "default";
@@ -127,17 +127,17 @@ examples:
       #address-cells = <1>;
       #size-cells = <0>;
 
-      p0_phy: ethernet-phy@0 {
+      phy: ethernet-phy@0 {
         compatible = "ethernet-phy-ieee802.3-c45";
         pinctrl-names = "default";
         pinctrl-0 = <&cpm_phy0_pins &cps_phy0_pins>;
         reg = <0>;
         interrupt = <&cpm_gpio2 18 IRQ_TYPE_EDGE_FALLING>;
-        sfp = <&sfp_eth0>;
+        sfp = <&sfp2>;
       };
     };
 
-    cpm_eth0 {
-      phy = <&p0_phy>;
+    ethernet {
+      phy = <&phy>;
       phy-mode = "10gbase-kr";
     };
-- 
2.17.1

