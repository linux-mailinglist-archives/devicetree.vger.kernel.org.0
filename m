Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46CFE39D763
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbhFGIbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:31:39 -0400
Received: from mail-am6eur05on2089.outbound.protection.outlook.com ([40.107.22.89]:57025
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230128AbhFGIbi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:31:38 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DpBrXZAAhuXdxKkIKHXugFIur9t3LpZgHDpqZGA6EwX/r74mjmtIpEvCIjcVFe8YW6BFAIwLj4FTIrchYA9eEKesvI72ln4Ck0DdP2RdUFuyiJ6Ti4GFRnP6z1LR5b9Ucoc7pNcKLQO46CXZ/iKBW86cFLIw7DyDLtdAdYwlglNK1ggypNrFZZaQuahsoh8sFrW+8AH012ArHmeKl11h7HejpAKKoPsOHu6uHKsIWKETawVYY0qPazLuTLCrQN62q6t5IsDast5Q8fV3iPy5Steb72iHq/MIWL7ogi3dAwkTkMmgZzQZXckhjfIj7Up6M53r2j7SyCSPkcq5mbE/Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWNRlxtAgZyzJr4R5xDIk/XJExKWbQ9VGgwvnWSipE8=;
 b=YuZKOtvgtiQaTpa8fH6ueeRMF4JYS2hjxoaunpK3NdaDu1LyZmDs2XnTp98JccukbJsdAK0kk79iKp37fIkmOd/GGru0E8697FvbpnVxRNryRRBovmuyAgWxxnjZ0kkXD3HydiBWh8vqWaQtS4sHH+OjCCy4JQ2Z09jCQf8uVJNuJgkGgcncU6rbvzJbb3uEfFCDAZmwdp1LH2JNVzyMZvtwM0dw5zhyuGaJYmEcvgd3TNY/Ob/lu7QlNt5eB4RMMP/IpMw3OrqKknHO8wi50GR0mU7RQMX9pW1Kx24J5yqa71KLbve2CF1RCOIoSTZJveuFPFPMUGViNBggI9rFKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWNRlxtAgZyzJr4R5xDIk/XJExKWbQ9VGgwvnWSipE8=;
 b=lrLkrI2hqTbrOxcqLKDaDZaI9/8rufdI7d+XzphZecJYE5gcEfxW4VjRw7HnNzdtuNEmHqRENyZBKHHjuprX+CWyecIgTDAzSL5d8LYYQQEsPlPcsWDb3Z7uMUXo6ufUC+ROaABbbuWqLXjF0lekKN0W8++gA37sx8CVrcD0XTo=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7595.eurprd04.prod.outlook.com (2603:10a6:10:20d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Mon, 7 Jun
 2021 08:29:46 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:29:46 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/11] dt-bindings: gpio: gpio-vf610: Add imx8ulp compatible string
Date:   Mon,  7 Jun 2021 16:39:11 +0800
Message-Id: <20210607083921.2668568-2-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210607083921.2668568-1-ping.bai@nxp.com>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:29:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ee7ae646-3b03-48d8-d16b-08d9298e6803
X-MS-TrafficTypeDiagnostic: DBBPR04MB7595:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7595D233F60DF4A98A4EAA0287389@DBBPR04MB7595.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ikgRpRRLYKAP7zejHxaCDUSsy1u3L06iNqflIZzOWSRSRaj5s8P9iU7A++pekyTdGUmxdt7kGivMTScMovdU72wbPbc9FDm+SRIdmp9XsXX584W0tBqeYc4z0+966BtVE6EDTV1Qmupdq/+WsNmrTo08ih9HF/cSnUyqX1mBVaj/TMmuYj5R5Q5UBhFa5HdjQnrQ2so1CRgK7mQheB5MStxDbXWG25EWRkXF2O7A5hHcJOPkQPi8C1eGCIZyvlYTVqCdmI5WxC5y/fana5FlxWNpy+PgMy4kd7mbm6jpiSx0bVjbVD7yEIM/FhkYuj4rDr1iuA0a/2tcDTN89KdWGr20NA1W7KnOk3p3Ep6Ewdn624CILuLYSG+aL3561myApdFsjKnbc8gEUxiLC5gmKRmloerBKnNz+fxC/H9O2VnpG1rznnahHGNey12OpAhjDPamY0jTIdAPa67XatPCgZpPUE9OMWRTXe2Q9BD6exQG+IAUfjrdNnaKSNcpmzC+sQnp99z3lKstZkB5sXlu832r67283VqKV/qSMG8j0bBVkOO4RHyvJX129SGLTzTeEKt9lNWzA78umTIVi2MqoRuE2GI7k7CQcXzd/9FBEsHA970rt8Eg/MtUpavGdNOZY0nMTAaR82n5X7Rpc59/hO0pYo0nyNx9+fox68DJqpC388tESNdOMSA94Gn+YpeQs1Rre5/qGXEjIPkry6A7YjFeDTFnI2sin4WPxowkQgE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(136003)(366004)(396003)(376002)(6666004)(52116002)(16526019)(8676002)(1076003)(956004)(36756003)(2616005)(8936002)(26005)(2906002)(186003)(6636002)(6506007)(38100700002)(478600001)(316002)(6486002)(86362001)(6512007)(66476007)(66556008)(5660300002)(66946007)(4744005)(4326008)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?r6dY+Xa0V21yRsPJ3sPugrCa4Zc3GwEZROC+YTz0JdRCtAqtCMliqKOeO/S9?=
 =?us-ascii?Q?VskyicnBX4JST0MTFXgNyLkN9hLZKOjNNdP0svTFMgHadD/AlBNJzEMNwk9P?=
 =?us-ascii?Q?AFNNGC3yIVBm62MQuXv2wAaCPmAnLjr7GkdvXlmdrrMEhDidetAP2qNIRvt9?=
 =?us-ascii?Q?hxHxDvLnJmQXEmVF0QxBDNKlZewGMsCZ2WH3CkFsYZTeRGNRSDLB4U7uXzY3?=
 =?us-ascii?Q?WmkXkPVgswhHBY4xBv7rmLXMT0VIqjKbJ6HxKmXZ7AN29VcdO7HGVTFVlMNU?=
 =?us-ascii?Q?vbD9KikNH+LCrx7f/wbFy+JlQXqf9EHBONgrAKhBtZAqUsmujOKsAB4zH4x+?=
 =?us-ascii?Q?oSJUOR2ukFL650XCoDUoEoh6jdKsso272S4iFbOJfrbK0Fu2aOriCBz7TO5H?=
 =?us-ascii?Q?VYkzs+PLsiPGzYOyOOeu+Z9bD5Zvps572x0DNOa7ejes37IGafSR/5GzaJ+p?=
 =?us-ascii?Q?RHS1YGyhcpAeLHKRfhVbipIqaSOv5b7ZYkxAkGvboeySxqiYGxEp7AQ+vHXx?=
 =?us-ascii?Q?d0Fry71jglYdGVhx+5olfxvNp/0i0xuGAYXwl61hNW3c5DT51lsELU7fBKJW?=
 =?us-ascii?Q?rzyLs8RHBFmGO1q3rsTtEFKGKpio31WR5sSbU8KgggkIchJrlhIhByTL1GAm?=
 =?us-ascii?Q?VqnezdMfFWrJ/kyyWMCoAwDd/EtyI4BrmGDv3b35OITVN0rQ1sero5tMzKLW?=
 =?us-ascii?Q?tiH2GHnz3Ft2bxkjETNl9Ms+fQjmDUW62NYKIfYH9WRj/jXxRXlz2mo42IH/?=
 =?us-ascii?Q?7ZotkxwD94HkWxOtzyU5hMv63Kygy4Pex9z2p3pQRpxQTfI0OoQrCw0YEo2u?=
 =?us-ascii?Q?Np+qkc5DOoj2L544xVNu0ZFVSy/hs22KWGXSJg1XBZrbhlZPJ0K6brsgDIt0?=
 =?us-ascii?Q?7/pX+8S9Sox6sqGzhCJNQdCRauL8u/LOyr2HMTJvnkqlsbSkIirM0PY12EWt?=
 =?us-ascii?Q?3ePQMGd8LkD0c0Y3mnP2+FMErQDWzBjKt9/cHz1plc3DO13gY8oQiYk/I4Ey?=
 =?us-ascii?Q?BtJ3/2nPQ1fWRXZZhLA8FCgMGeSS6DpR9XFUFoLCptROpE08hhPPmIJs0xY4?=
 =?us-ascii?Q?lHMx8My6W7ywbP0HHtIzHW/8WAHyMDWxCMY4bgCSDCqS7LalQmbLnsvzyWlM?=
 =?us-ascii?Q?bE4eIBFVF1HWhAbC1UoRZCV8SWP3h59goRhRJ/zTruO/W+p12LkDE9gdWPS6?=
 =?us-ascii?Q?tLSVsogKCvcKMC5PiRu9CHXEOvwJzoeAQVg3NlaMtOhsWSnwYnMiaRgRBWvy?=
 =?us-ascii?Q?XEfcjp+LFifZFlCYg1laBGN5CffCx3DueeTqA8qnyLBlHXzaw1fVbjHp6hHC?=
 =?us-ascii?Q?9+jqRd79+smx83w98pLsUr4v?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee7ae646-3b03-48d8-d16b-08d9298e6803
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:29:46.1480
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yWoqNldc357Hn8MqNHrM2uQsNDYDXznz8PcNkmEXY317Gh3wzDX8YhFK2VLj1xchcKNaAlc6672+9HVLNRWvRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7595
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 Documentation/devicetree/bindings/gpio/gpio-vf610.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
index 19738a457a58..e1359391d3a4 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-vf610.yaml
@@ -24,6 +24,9 @@ properties:
       - items:
           - const: fsl,imx7ulp-gpio
           - const: fsl,vf610-gpio
+      - items:
+          - const: fsl,imx8ulp-gpio
+          - const: fsl,imx7ulp-gpio
 
   reg:
     description: The first reg tuple represents the PORT module, the second tuple
-- 
2.26.2

