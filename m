Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7F8E6B3BD8
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 11:18:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230039AbjCJKSE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 05:18:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjCJKSC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 05:18:02 -0500
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2072.outbound.protection.outlook.com [40.107.8.72])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39B944485
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 02:18:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpr1fsOLQpnE250BlwIzhN8glVT9Sv16r/csYb89QagcJ2EZmRNNHQesx5AL7eh/pNicr1zm5biTVJWUPU8+hQy9pREvE/KlEABc/m6n/b2YzKujCrnDXMkHLEGbX9VFTr4xUsXWNF3tD+XhkhJy/4fhuY/qbGhYwpDoE4gZFt3UiiGMov2TCnyJqQI3AlJtgUxgAxaRKl0BiAC57wJ8v0/QroIPdCoPfGc4obExvjCw9cT6ed6r2MBhAqtUBYbFUQjwTh+te1Mjo9N0u4XWzgs9g82ws9RUAji7TdEPV36ubo0pGdP9qOZknCdCJ5wcJevYlVKZIaFG9/JnyNq/2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sFR1xFaRJhBB0QJMOt61beXNVDCMqjNrLE33w5KYpio=;
 b=Z0KUJB4AcHo+NqdKrVrSsT1C+oQuF+bBG2qUEndyui+OxbbtPJ1ubDmury+c4w/QIFZGPA7xrXSbb1jcVF828PQPNOUqZ8jwlarxZ63pxG3FmnFOElQOEXVmgLxhbQC75q+4KZVfX83lxUnBmtFy/jrdsxu5ISGcbVP30engpwo+ANiUTQ1ApQTWkpaJXXC1Vf+4nhzLPCG5RaaCOW68GAGFXe6+2n4sI3kjea27NPHHpOoZ44fug7AAXgHV3eIz9v5/0wZhsMoEXpDCVOPAah3ROMlRUBt6u0gGd/SLg8WhwQ8dh4tHx0xFmj4n63WvMPPB/aC/uKSYnfk1nSovMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sFR1xFaRJhBB0QJMOt61beXNVDCMqjNrLE33w5KYpio=;
 b=DoYEoabVZhyeCQeVuTE/BXbt16X4Fqjl5NwFGIBrz9uq5LYYokWjMiPT8Y3C3ol65g1b+a+Z2z7bAPgqv37m92t966w4J39MS4A7rvXg1dnCs7mct2niStw2c3CRMyHXCoWCooBJJefKNSK8UpKDIGO/TLLovMuo0ZOZr9pZtHE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 AM9PR04MB7585.eurprd04.prod.outlook.com (2603:10a6:20b:280::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 10:17:57 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::5466:bfa2:3158:97c6%3]) with mapi id 15.20.6178.017; Fri, 10 Mar 2023
 10:17:55 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     will@kernel.org, mark.rutland@arm.com, frank.li@nxp.com,
        robh+dt@kernel.org, shawnguo@kernel.org, festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-imx@nxp.com, xu.yang_2@nxp.com
Subject: [PATCH 2/3] dt-bindings: perf: fsl-imx-ddr: Add i.MX93 compatible
Date:   Fri, 10 Mar 2023 18:19:15 +0800
Message-Id: <20230310101916.2825788-2-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310101916.2825788-1-xu.yang_2@nxp.com>
References: <20230310101916.2825788-1-xu.yang_2@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR06CA0251.apcprd06.prod.outlook.com
 (2603:1096:4:ac::35) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|AM9PR04MB7585:EE_
X-MS-Office365-Filtering-Correlation-Id: e561f451-696e-4b79-39da-08db2150b6ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h6jfCXGyyMOk/uawmC+Ko4c0kw09or+4DkFn8BQA2An2TufgPNUTeFeCfzaKQ7ba3/EWu2o+e92XPX9p+34a7JT5a2tLK3rxvrBiSXs18X8+v8chV+B7eeMpT6Q50gjmmJOGRcnzsG31mDtszHPNvwOK322WtpsvDXESJ/POD/FSOY7pEM1ixVoEZBrRWn4fi7KhQJB30NTAPeTJjDqB+mqEmQnOiyLCCjMcZGcKYY3xHLl6NbU+EhBGR8BLpWeIuYAJlFRQMjqp/pDWlp8Jr21FxIcLJLOg8MvR5HEk6unADvFwIDVHzMwdoSor4oxDwnVqKSePHqRbICE0lEv4ljwwLzR6G//nb3eRTLsmQeO3JrOhBm6+FdBnM6NDEDeDG15Fk+eAdJgmnWsxzsuL8Ntl+2yy/3YGeJY/6KBoiLuXPNICU7Vy60IN563zM7k9Xaq9aL/LqMD7sQ0WEwclJJUPbpUe1UPhMt6GZ2t8PJYt2rH1MExl17ISKHgxq4ZHeKVxVX0xGRQBv97mkBb00/d1SJiFSLtHZ1O72Fx6unH7aPevvOHLJscoXTF2IguRSN9/rui5BMaAkj/SzXKj2ui8YG3Hp4fkLMOGRkAF4VNFLKe095SlADs70b4R8l+1uqoRyB3Co3P2wCENiWo1xZQGPANUkSyxIZNfwxxCRfsaq0c2uo59h9kSlW7HYkHZgajYAXF9h7RO8OSJiO1mXR6JiHkdH8ItA6UUgPrikmg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39860400002)(366004)(396003)(136003)(376002)(451199018)(36756003)(186003)(6486002)(478600001)(966005)(316002)(52116002)(5660300002)(8936002)(2906002)(66476007)(8676002)(66946007)(66556008)(41300700001)(1076003)(38350700002)(38100700002)(4326008)(86362001)(6666004)(2616005)(6506007)(6512007)(26005)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5cCfiYC/vvnZfLjLzZMv/9006A5N9hic5XcnmZOTORE/LeyDLRBoJU/EljK+?=
 =?us-ascii?Q?457wznWROGP4nToHAxyMK6ewiIhdDlfU4uLNhmdFkBAf1eGNGPbvUuNFTMoI?=
 =?us-ascii?Q?BgY+Bd0+plUepcH9h5JxStIwGuADqIgKxjlmvBWLxQ1lIPU9v8hsODHH2tkx?=
 =?us-ascii?Q?2/Gw4krYVdnhpYcj7tfMUd+1yDLXsPOYbZKkFrZUbOYK8FSnkba/h1n1Y+IL?=
 =?us-ascii?Q?dliSQCDZFaM9cz9mu9WYghzkhM1xB3uwdOM9NEKJPqen+JUALlzpadjNfk/f?=
 =?us-ascii?Q?f8+l0vOUkIdxUaNzAF9by4gDJsxISY7BWQg420wse2/qRuV6ghEGZfa+Xt0r?=
 =?us-ascii?Q?+jkU6Lt/62xyXqWGCqq2Ofxv+P6T50em1gvCNOXj6z0mQuvodDT5WUXIjEV9?=
 =?us-ascii?Q?a/kpd4Qey7nwljUbjhkL+INpHHKtO+2tBZrkeUAZdICFpwWZDgjrEaP9qQyr?=
 =?us-ascii?Q?mDr9HZzWXHI1kHvrws3yjyTnTZkGrACNzHjt7bnhAsnRBNlT438vHtMIMAc/?=
 =?us-ascii?Q?Ifs5SZmFBxDblm6tOp6qqklkxIj6hUdUtrfecPtekE2htHLkD/x4GYDmP5GS?=
 =?us-ascii?Q?hMmtdD0UIfRtTgB0bdxJXjWKG5y+Xs5sW8AsHXo3BIJKgrW/zkroGtqA7Rua?=
 =?us-ascii?Q?zBCqnbemiHjmHWfxn4x83B/DoCXv7FXXS6yxlk5kt5sibjrQrvA3HMyUKIzN?=
 =?us-ascii?Q?61OPyCAKiHWiljJYA/VVcd5ykZVnLK7/jgUIywMx5+WQDpiGoYKl3XDht/qz?=
 =?us-ascii?Q?MnuhnpH4YaX85yXmaTiRXv0/iUBDo7w0LfQYb1J3uuM2gx5ZA7EzWSDlQC0q?=
 =?us-ascii?Q?1vdS7heHosB21t1C6Vo3bz/+caEWjEZKYmpmIT2jacLmZVh09NRKZ0d0u/mZ?=
 =?us-ascii?Q?h/jYNLNEwrFzRfu5ALZjt6nO8bB1iWwuA8kx1e59ZgKTRjwWsTADl4u770yA?=
 =?us-ascii?Q?FwhVOSDTq9SnNcvek8vcFCS9E9sVHl07HLBUCaDOSmoa4hWgjKE/kaNg89F9?=
 =?us-ascii?Q?5C0W+Mg/UXMwo77iDcuU230cBiVqKpfShWTnWYMG/5KpBVEhjf3ZLH/1xciA?=
 =?us-ascii?Q?X0nW6p7v4oa2FSQWhm55ljh1f8AwN3t8cBtqK1Hyzcz/3IY8v2t+GYbqD88e?=
 =?us-ascii?Q?Ew96tL0cgWrcqfGaSbyhGuiDrfjQa8H16oaUuc0Fc+RM3YuQ3UkayGuqyCDT?=
 =?us-ascii?Q?MUtmNL2xRs1ECf/xP2q+kyd+VaTzRG1T9+YckGcvRlsFlClPyYzq9DleoNPX?=
 =?us-ascii?Q?kpgE73jGoPQQ/c/W2c9TaXOfqLhNpn1uemE680nZFw/2UJ7d10xSThMu05Vl?=
 =?us-ascii?Q?C02R3oCKnKrov2j5i7hHqF3nioksuZc9x/qpcaEJ8b2uow2JFEjtkwAkZgu8?=
 =?us-ascii?Q?JIb+MYXufVNJUcsnTgYl6SO4j/58ur89Jkp25DPyRaWxy6LMEXjF3Ys/xHnf?=
 =?us-ascii?Q?bSf1lGa19NNfbPzAvrgm0H5E7LEu3Hmcoi3xeEwzoTq1aymgFu6iGRhLlmvt?=
 =?us-ascii?Q?ejhqo+PjEXfcdk+kNZr77mHMpcjP0FoO2FWzW+xwxw9vZOjz5G8NQ0YygcH/?=
 =?us-ascii?Q?ZEsY6Ju8BHwwLq5oQOoOav1HpBamss6KgUgvGGTn?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e561f451-696e-4b79-39da-08db2150b6ab
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 10:17:55.2113
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K3pOasCuMDoAJG8AxKzwtrxrECMBYVi1e5JWodBLb9Re+UI5qW1UM0UcSAQS1dlBpHH/1VX4bw3UJLWibRWBSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7585
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.MX93 ddr pmu shares the same device node format as i.MX8. This will
add a compatible for i.MX93 and modify the title.

Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
index 80a92385367e..e9fad4b3de68 100644
--- a/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
+++ b/Documentation/devicetree/bindings/perf/fsl-imx-ddr.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/perf/fsl-imx-ddr.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Freescale(NXP) IMX8 DDR performance monitor
+title: Freescale(NXP) IMX8/9 DDR performance monitor
 
 maintainers:
   - Frank Li <frank.li@nxp.com>
@@ -19,6 +19,7 @@ properties:
           - fsl,imx8mm-ddr-pmu
           - fsl,imx8mn-ddr-pmu
           - fsl,imx8mp-ddr-pmu
+          - fsl,imx93-ddr-pmu
       - items:
           - enum:
               - fsl,imx8mm-ddr-pmu
-- 
2.34.1

