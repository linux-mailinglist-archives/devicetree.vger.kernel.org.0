Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FBF6587045
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 20:14:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231667AbiHASOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 14:14:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231989AbiHASOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 14:14:14 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2070.outbound.protection.outlook.com [40.107.20.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51DBB18E34
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 11:14:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkWNkPDGN8e7FbsaRzuF16uQGx7Nz8IQKuxNDcUVKEliqsX4PcPVDiwg+QWDaPOMNjGxfgRi9br6ElunQUxkzOKMiBcStISHBysn112qiwspi3aOoHqTF3gIslZ7g3QwUO4hny1jcFHPhoW6M/TRWvM4pcuYa/9CoXv6ooDnGw9f1pQoWTDDAAc8TS5BbXMXoexLB0gDLvmtxiMQy4VeWUrG3UFVA05Pk7KbYKp4SZw5QzEjnTI0Q5O8s0PjVkgOna7aDrsnFyQ0ZDverDh/nkKBYLOgMv0dE12+5fng9TejJQUIds0wxY0R1wrkbsYKrYwAWl0OhxQGCcdHSSs/jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LD31oJ/Y0HtQJfYC7Q4e1bbuvDqqjoEjdjhMNWtYKow=;
 b=XKXkxss0cPWzQkV20GRItcd8Vs3gh3VytMMjZ3IzswoqkjLtk44QvvbHzKTguW8k/fpIEwySzN3Ow8w9LRaWpaGUuGlPY5oizdMBZucGuAe3gbRtlMFd0clZlNDp62Ir0Cv5sQtW2kHLh7thLxxfHyquwgAMIYhVmUMLfzoD/u1GRHr8MwSmE7K5hZ/y48kPCWaRLdAPMAo5AMfvpDhPK0IzQE5TKyRmPb47mo+o//r34MY+SIa+2Af7qFte76bi/Fg255PdOAWPZ6tzZsYLdErjB/SbMCjiGW5L9Ee/fGIFwNw6ET6/rk9d/OvwdbGLppXrp+HiMfg71zoPSu9v/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=seco.com; dmarc=pass action=none header.from=seco.com;
 dkim=pass header.d=seco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=seco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LD31oJ/Y0HtQJfYC7Q4e1bbuvDqqjoEjdjhMNWtYKow=;
 b=MbVJavLMQ77LCCSX+uFbiWGXk7SfsYAqlhib4FR0tYQXKDmZPzOoBItSsjM9/PrgX6qxiA6uQelDwP+eBS3D2XRUHK75ngJ7NLoBFYOVFKZmWBAApsy4mi6CNhJHNS1gKWNc3hVSYYiGwyXaNIquSzKGiL6k2Maj/th+8yz1FhKNONssXSARhr+q7HHvno8526l8ERMxIBLTjnJ0mj/FZvzZyW6A0WMWrL6Nh/Fg//ezjKlZu9+A8/xqrKR2+TYZM7LjWSRhF/mL7QZtZkndI2jf2lkJhIbnk5HX6HLGCnRJPaECq+pZFhYdJ/vcu1y0TamWGiOEkdfXvX/I3v/zMw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=seco.com;
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com (2603:10a6:10:7d::22)
 by AM6PR03MB5992.eurprd03.prod.outlook.com (2603:10a6:20b:e2::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.15; Mon, 1 Aug
 2022 18:14:09 +0000
Received: from DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::7d32:560f:9dd0:c36]) by DB7PR03MB4972.eurprd03.prod.outlook.com
 ([fe80::7d32:560f:9dd0:c36%4]) with mapi id 15.20.5482.011; Mon, 1 Aug 2022
 18:14:09 +0000
From:   Sean Anderson <sean.anderson@seco.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Ioana Ciornei <ioana.ciornei@nxp.com>,
        Sean Anderson <sean.anderson@seco.com>
Subject: [PATCH] dt-bindings: net: dpmac: Add phys property
Date:   Mon,  1 Aug 2022 14:13:46 -0400
Message-Id: <20220801181347.3873041-1-sean.anderson@seco.com>
X-Mailer: git-send-email 2.35.1.1320.gc452695387.dirty
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MN2PR14CA0011.namprd14.prod.outlook.com
 (2603:10b6:208:23e::16) To DB7PR03MB4972.eurprd03.prod.outlook.com
 (2603:10a6:10:7d::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d836560a-da57-4bef-bc5f-08da73e9a11e
X-MS-TrafficTypeDiagnostic: AM6PR03MB5992:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J9uVhLewcCh6LIRhGuPpiQk6c7SL1XJ+2UEoZojz5cOl1zpF4vweBrq6OQueLvfeMddEJnq+V+lMHW3gYo9hsTFC9Gumz+4poRnI5RMneTvccgkEYw56ozhWwzQcTFz/m5IsdGDAXg70BwdsRW/Z2WgMPwHAUdAccjV8haq6MLXg+HKtWM5X/7JvRes/z5VIPLcbTIMlazYala0cXaJ42NMEkYQV1MiQ+GsCDFqLooC5QZzq3TxWSmYocRDIFRVJRxhFBzZgOYiOd1UcTyvhYlwcIAKfjJNRjvkc0rbkxloI8qxlZq0iCfwxO1B+gSoqNFyenvGERRVer59mv+7AFOTb6SgNJVKXOA6JrNIK3lq4XCoIv/cY87JhYR0cJSPX4P75OVffZEKsuWU0+oFM7uQ6Vb08Yd5uVeq1prTNRVBouUIErtyzagY/BZKdxo1tGQP+kFgctCx4WHzjjASfFyZbTrTxlNctQW1ST+bcOETdKd1J7RKN+eRvmWQC+I48rVvMmKply10vv2VP0dEh6PyzWBv2Fbs1C1grL8Ll6u1QWVZ8hQMVoKsk3pPuQewKI6V3ThnevkquldUTxSjpP96MwRB59x2uvwIWOKlXuXhHoKtKvX4WRsa8oyqaCYAryCedtHwZ9q3/257O3V9fhWAn9WXOv7T1SiqWVDuRwLvfpGKbdGil4APD09PQsAW+Qku/mIp4lzrxInPnhZ6yLxXbkvbOkmonx3FgjpDjIAVMCT+Ge0Jf38Zz4CzlR9bJgEsdHoYtsEN02ASJHnMMOtrCI5NUN9zlsXTbRpDWSpA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR03MB4972.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(136003)(39850400004)(396003)(366004)(346002)(52116002)(4326008)(6512007)(107886003)(6506007)(2616005)(1076003)(86362001)(8676002)(186003)(26005)(5660300002)(8936002)(4744005)(44832011)(6486002)(66476007)(36756003)(66946007)(83380400001)(6666004)(110136005)(2906002)(316002)(54906003)(38100700002)(38350700002)(41300700001)(66556008)(478600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FbWG07lKGHrV2jTdig8qY2HX9q4IjGTxZaXxl5ljtHeUwDFcd8PuyEcVWDV2?=
 =?us-ascii?Q?5N6W7wsjHgEzHj2n0KNMNof69US3fbeVZQfA/yFI3JwkcZxwQbOw7dyLr0Zl?=
 =?us-ascii?Q?6RA+4naaiQBGrx1/tON8aGiGFIhhwDtXUeQ8mPNAOJbrdsQfwqQWrnoGtzzS?=
 =?us-ascii?Q?laNEtgzdqRW8WMpvO1j5SXyuvKlwvcHY7eBwzt5l5tWzf9MpcAciIX/nEYDp?=
 =?us-ascii?Q?gl1Q7qFLG0ARlOloeDWpmBBiRYvP+Zjy1kpdHrNBUw+xVtsXj0yKkfQSFeMM?=
 =?us-ascii?Q?qAfyiroA2JBFuf7OgmFKFN7F4QgsAsGMUgieKVonPavvdUJWxDSSKZtkG4aW?=
 =?us-ascii?Q?sGS6ATCe7TrcoTK0vxHAM0y6Uau8I+/+TMIPzjjdEpPVskZ7z9y3Cw0y4XDb?=
 =?us-ascii?Q?ujJFygcJ12TXq3/xSyYnZkLNkbAuz1kx5uskRwiv6Fl2Rl+coo70WGB8z5Tp?=
 =?us-ascii?Q?Nv/1NOMrK6tJqcjtet/1NJsI/xE1BcBHUlVD8h7vKUFdKpNBv52NpAwO/3e5?=
 =?us-ascii?Q?csgBD9y4TrLiWPAaoY3in1WFz3dGqRaVWRwIREmxKZ30BRlbbX0Nz2W6s2CJ?=
 =?us-ascii?Q?ayvI0Yiuc4LkGteWpmbcvOj5AVg+OrXQ4h1O3WAx0wTMhH2B4Dz8eFBo3kbR?=
 =?us-ascii?Q?N3ds2E6HLkgbGdQ0iyK1wMsUE7rRa5ZZz857s1NaOw3b+TfT4M9p9xPZ8FAu?=
 =?us-ascii?Q?5lpDLWvNOCjxbYANJ0PK8q84mmIBJnRoqnyBfhJsSRMUW+upZlZ2OVHSTow0?=
 =?us-ascii?Q?sdrrnNzjMbORsXf6rOfyNkrlP2nc7mbsUlW78el40Tn4oSMK5IPuc3tZ65oP?=
 =?us-ascii?Q?LQ6M7n033ErwOMBfcA6IA+LWMsz/2pyzEbHCI3H9C1PN+xG5Qqo7vz4IONuk?=
 =?us-ascii?Q?vORjb+/nZsaNGceaHp0S3dGhAO7QZBFCILoOlh9YUecj055N/30ZIesubsgP?=
 =?us-ascii?Q?xHyTWWsu4Lf4bRuk23MgJVIraOUI0zbIR9cwTyG8ynldgIfDzOGhPzhATUbl?=
 =?us-ascii?Q?AeZE/VMrzjukwd5jAK3w9Q312V2mIBQXXnXoLo55re8p//gXqSp0NrlUMdcs?=
 =?us-ascii?Q?t9ynHRlqRSFnUZ5I7nLrSRsuqSXxb+j4QTOQr2dkwD5JKstdst8A1GS8mDWt?=
 =?us-ascii?Q?7XAb4XA43KtJJE0dmLtOmnALc90JtGcprNZNcrDtFtDS+Scaq9k1lhqaqfO/?=
 =?us-ascii?Q?V5lVgeADNhlWrFTzCgEx+9bVm2TjLPewpbhR0/0ehb9KLEHKOILGNgCofP7L?=
 =?us-ascii?Q?WNUNhU2kmGSlyPfHQQt2P1GoagODKaMD6+4b/t8hM4Hw5rK33/fTNlhzsk53?=
 =?us-ascii?Q?vxT/ARK4ikJ5MfgpAyOyrTNUDEAdnu0vD59gySDWd5gyuTBBzK8c8K4jAgZt?=
 =?us-ascii?Q?jjvbczNb5IM3i0oi5ofFZ86kvia2fxbKzznAfJhDn/WqG8oMBQ7g0L6EXRgp?=
 =?us-ascii?Q?HYLWVQWqQn8mdxdRyN85RCCujMi/XPypNyTzK7FbgG4ldyUHU53GAv97356L?=
 =?us-ascii?Q?ht9zpWKaPQeRVsPIMFfZBXuV9j2Or2WwIbffdsg/DecPDlF1noIQL34ARzNR?=
 =?us-ascii?Q?1ltF1ksBE1xVmobsRKXPpV09/8AKXhokvsX/BXboV/Dxf6uaUVT6+qFrAoM/?=
 =?us-ascii?Q?uA=3D=3D?=
X-OriginatorOrg: seco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d836560a-da57-4bef-bc5f-08da73e9a11e
X-MS-Exchange-CrossTenant-AuthSource: DB7PR03MB4972.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 18:14:09.6879
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bebe97c3-6438-442e-ade3-ff17aa50e733
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zMA2xMLvkl81nY3E7D+MwvkGeoQb8rIIIxCirk6jSU+ubdm9fi7C9uoZDMEIyRzer6lvEv3ll6RFcB8Bk1jOmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR03MB5992
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This silences warnings like

arch/arm64/boot/dts/freescale/fsl-lx2160a-honeycomb.dtb: ethernet@8: 'phys', 'sfp' do not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml

Fixes: f978fe85b8d1 ("dpaa2-mac: configure the SerDes phy on a protocol change")
Signed-off-by: Sean Anderson <sean.anderson@seco.com>
---

 Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml b/Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
index 600240281e8c..b46c7e174a03 100644
--- a/Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
+++ b/Documentation/devicetree/bindings/net/fsl,qoriq-mc-dpmac.yaml
@@ -30,6 +30,9 @@ properties:
 
   phy-mode: true
 
+  phys:
+    maxItems: 1
+
   pcs-handle:
     maxItems: 1
     description:
-- 
2.35.1.1320.gc452695387.dirty

