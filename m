Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD9B4581B3A
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233443AbiGZUl4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 16:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239805AbiGZUlw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:41:52 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70053.outbound.protection.outlook.com [40.107.7.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0DD124BC8
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:41:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RgpOURoYgDtoisiS6UhKaO0kJO7HrORtmcrlFkTtHyiQm3Z11CykIZsanHvIM52dO+0+/3Cr2ASs5yGffoQbvzb19EVzW3Wh9IYC5zr1whRMtJ0lODIZ3EwSJZbWNw7clNQY0kzjP3ym0w8E3TvWY/O1bs/+OFT45WqYvo4Yt/MQgcH/K1boZ/YRxKWEpBkDySapHQTxFVjsyE/UlGgChL1glWbyDDtz+roWO4/PpM6FEqgZ/bNdTpFxNzoKvhpurIZ48B6E4lVGnS4MZFsKkeO6TDj+55+ZhiDz8scgSJWyrt4h6Ds3wdIjkWq9ramHB4rOzkgkDya4DyMFyhaPvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPZcrb7n8f5opy5GrKcrRnnFdfBuq1/FxlfL3y2sDXQ=;
 b=IbOEUHkGOxkglpjt7upEOkAHvf2IDaB6mjAVz8gs9jP0She8ZA6Kq3d105liS2/Tiqgx6etg2gJazS5ID7NqNiF1RkQlLhkJ5RxuGmf3AL4GOL0wG5qqUq3V4IqXKFjAkWVSdGwZkhUPHTBvxLqLa4/AwWJ52sBDPDzTG1GD30RMLaatj9B3rgerQPLatuWZ1/t5/rhSvXttnHwDg1z9nZGA/9/IL9ApZJC/cxRwi9bpY8vNdsZ5jyvlbSfuhqVbx18+D4r0ntAIcYmEA3wt2P2JnrMQCXXcPk/pi9uEvQNg0p02UsF9Qs0ceiHMNBxfyBwDxhUxYk42rNI0YQ6onA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XPZcrb7n8f5opy5GrKcrRnnFdfBuq1/FxlfL3y2sDXQ=;
 b=SQ9QO71QeqtumDflNUysnzit59EQsfk176piB4wWrSpcf+d8cG5TrKDFyLaJqKUTEThANDCqzGQnM2RWE1SbmO5rmUsy63C4EoBhv14QSmHKpZn3IKyRxmE5UV6vD6TfZhxAg7tYA8VUDou8l6lrYeHFBMci2Tz1jEbsFeFstwo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM8PR04MB7441.eurprd04.prod.outlook.com (2603:10a6:20b:1c4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Tue, 26 Jul
 2022 20:41:47 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 20:41:47 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/3] dt-bindings: arm: imx: update fsl.yaml for imx8dxl
Date:   Tue, 26 Jul 2022 15:41:10 -0500
Message-Id: <20220726204111.733647-3-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220726204111.733647-1-shenwei.wang@nxp.com>
References: <20220726204111.733647-1-shenwei.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0151.namprd05.prod.outlook.com
 (2603:10b6:a03:339::6) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cf335e41-a4c5-4221-484b-08da6f474278
X-MS-TrafficTypeDiagnostic: AM8PR04MB7441:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oubUAOxmqQtplkZdUZ5lsyg6zP28oSXa3uGRsrIfttsvK2Zv6/n2hAtmqoOTXNCqMx5bp+vOIytTIf7GaA74o+d86l3p0S/etiMkuRuxeVg2ArhQaaIGC5/1Nm+czdoWxjhvuRjZ5DjLzmaStPygziqCgcQuzXj0aSK1GwzYYTm3Qx5KqaGbDdZsE9M6uAv2sJC3Y5K4ehXyHGPAMiXSQYp6ZOPGDOy/r+3KDJGiIJZsv2ZTvIr2mkoFIIp60otVvW8w5ma4o7wUqJ4aQNWxd6IauZFtoiJsU9lD9OX7/bUCPs6/Xidv+zfF3XGX15pgWBYDYDxDBtloPTynAMnGXw0xf7+anYo58otsnUGnlQUuhJIum/LRkcph9NCfoSjRPy5gjfbRwLe9rzkiniy/SHKPYLT+N1dHp8hbRcMhS93/23Vfcgoi+QCyrklymUdWrNeOguyMXY2mhPj7eE4hXyy4WKvHD4qMdpIOgZKOBWB+HTolqgqIMSc4CmZP/gmag0Ob+ooQ+UVtLyEz5pD3clAKwi30L+94UdSZxOgO9mCTkz8iEtZzMWVFCWq2MPiRNxbV/hMphifpFdj9jGlUUIvfs7W+W1q3fs9gSGIKij/F0TMo9YEmfIW1yRraFungcLipYh1HKees9uoR3QQTSwoOci5YfrHTwD1F+pKVkV3ElFR8LCEcDc3E555uTSnr8fZes1ndJeocc8IIE0qwmVrUoqWHqFUEK0ZQKCdo+6SJHEGkksOUUTQKii9fD0bsaKcSiJ07hYGzxHbVQOO8g6LAvEfXdqhf4B3qSkCwUSQdR1dPmVnuF56lzFVM8DlDXQDB5dXb7nUEX3EgquKYew==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(2616005)(1076003)(2906002)(6666004)(186003)(6506007)(86362001)(55236004)(52116002)(41300700001)(6512007)(26005)(38100700002)(38350700002)(5660300002)(66556008)(66476007)(8936002)(8676002)(4326008)(66946007)(4744005)(478600001)(6486002)(110136005)(54906003)(36756003)(6636002)(316002)(32563001)(47402002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kteZLtWscCR9oHL+/QHkuIh6B79ej7PxkyYXWWDruLXAbXzcvnwP6jNzTZA1?=
 =?us-ascii?Q?XLkeFm490FrwTr9TIEjwzqHke0uwLWaO8FHoXZCF3PNs4RTd8foxSjzZg6Bh?=
 =?us-ascii?Q?EARrTqct9/5nRvVdoG3MpSFNdC89f2D2d7cljTKWr33FNJ0/F7/7p4z4JbLj?=
 =?us-ascii?Q?PLGAgEnAZSCs/wXc47+vy7nZlFjS6EKFL7rd0FBCLw/1ByYgaPKNRh24fDDB?=
 =?us-ascii?Q?I+IeaCvVNwZiLE1zcMoDcJ27QGVFBVqkeeP+MRnj3/1V+aSXWxQkUNCTPLPN?=
 =?us-ascii?Q?zbjafVf38nk763037KSZ/1HwS2BYGinq43OCGskkmeZOhwoZ8z5oyRczB47B?=
 =?us-ascii?Q?0ETHL0gPQ1RpIA4ePEnYJmFeDvO3YnF3PsThJdBkUMbtrKpGjpnBLK0FJxhF?=
 =?us-ascii?Q?fTJo4MwZ7Y6g7sLlvwyrjkaezAmCeP9mvqwBQPLy8mPDDZa6Zdo/qmNZLBBY?=
 =?us-ascii?Q?EpcFMXqRXanOvqnoGB7tCnUW4z5Fn1l5iLWFfticFORATrHbyJWJw/X9rmwT?=
 =?us-ascii?Q?39Bd5zqJBEAWOMAya0L9bnuiWqFyUVCwkNhF+VLYTtRKC8OK4VNPjaNOrQEf?=
 =?us-ascii?Q?zzNQZMTD5njq/kMHcE04X2JxI0zbxcXDLvFixwog9Dk5Vj/na5N+myYkl3P2?=
 =?us-ascii?Q?XxYIOzyPh6XXKICXQT9RFxUg4qzAFdrgW+EJmw9uKiCcDPF9MT3l3z46izGc?=
 =?us-ascii?Q?HhDEb9IfX4SiE++mRyF2grnfcjz/bzN/OFLuLpuYHbWuhb63XrRg3BvDz4a9?=
 =?us-ascii?Q?+HKKBAlx2Z/R/6qpWgX6InZw6+34OCHXNA/LheraUGlagkQWIweWNNDWZY9D?=
 =?us-ascii?Q?VFwQOoH359uctYC6QJ4j/eRgrlZWLqjmRUjkPMI2a3azpsyepvLAmjDLpNzn?=
 =?us-ascii?Q?pCzwWo0WWDvRX+G0aG9dcqjIHpQBuIpvlCPlA3ifX5L4p16f1WCF6h9vMsBe?=
 =?us-ascii?Q?Zg/ojTY19mpPTc0fd72u94GIPyMWshhaPBahhSh9WOqU0IWABbq+bAtksGXj?=
 =?us-ascii?Q?aee15ssFEX9+Q4giDlPAUIR44IQybQ0hok7QmCM3Ku6MhdfVLk9iN/wgCrOr?=
 =?us-ascii?Q?ZfBfNSJUw7WxH6byTf0xTCpeRYZpOAWVunmbvxoWHWcLOQZJwmS+bkYm082K?=
 =?us-ascii?Q?zUnds2DLXC2DsU1wKDLgqPWYcRtI2A81ViI89o5jn69+8WhLGBpTZDQqJ9KP?=
 =?us-ascii?Q?DkgoBG6owZdvCbq6fJmV56H94MR8M5MtZlOx+Y4wKs7KM/504pqWiKH+RxmD?=
 =?us-ascii?Q?wdJN1RaIhody0MH2YWo6wuISC/JEDhtRvbe/BoCHPwvG6OpAGsoRixew+JOT?=
 =?us-ascii?Q?tJjpKx2ytIBzsGdfm4WFt2CgQgp8YfI3KDzkb3PcF3qB0nN0y9YFYAAquIpW?=
 =?us-ascii?Q?ueJ9Hutq8OqpHZlv3OmPv8Idq22ID4xvaHuTdfoiGD9iozRP/+3tRoH0TVwK?=
 =?us-ascii?Q?GJFKjFyN7DmrtzfsVMaFlONla3ZuIeUM/C6wOTYpOpacIigKVNkYH/z10wNn?=
 =?us-ascii?Q?ZWV5vBL9OFINLyKc1BrBkgt/B0XhTFtexZAtVHYsgatJrgYGsYjyk2/Lgfwj?=
 =?us-ascii?Q?3KAGdyXvmwfunNvkjKVtT9SrhA9xE+BIAO0+8oID?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf335e41-a4c5-4221-484b-08da6f474278
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 20:41:47.5824
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U3/cZrPghMUCTkJBctUxpVyPi49NKRYZ2/vq6enm+OKmDIH2obJY8GuPPob1ILj116ZSB79AIkwkgVS3QZjCfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7441
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.MX8DXL is a device targeting the automotive and industrial market
segments. The chip is designed to achieve both high performance and
low power consumption. It has a dual (2x) Cortex-A35 processor.

Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7431579ab0e85..26bef585b97aa 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1034,6 +1034,12 @@ properties:
               - toradex,colibri-imx8x     # Colibri iMX8X Modules
           - const: fsl,imx8qxp
 
+      - description: i.MX8DXL based Boards
+        items:
+          - enum:
+              - fsl,imx8dxl-evk           # i.MX8QXP EVK Board
+          - const: fsl,imx8dxl
+
       - description: i.MX8QXP Boards with Toradex Coilbri iMX8X Modules
         items:
           - enum:
-- 
2.25.1

