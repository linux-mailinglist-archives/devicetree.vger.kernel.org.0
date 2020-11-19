Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E38C2B934D
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726567AbgKSNKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:10:25 -0500
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]:60516
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726944AbgKSNKS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:10:18 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8vYjMvALJ1SEpO+idMKz/ozHrrNqIUka++uosWeXrNE7FRvXz3fMAO5FBFWyCHyOwbdzW+KScKIdHcNTXXwveN8hULWrLELefnGnow/wCDnRhzYzEGpnpJQWTtKBKdrj020Yy7aXEpeOH7wZkccEC3vXgXqV9MNEVJzk1wgTIAnVcnQh0n0cfxVz9AIRBrMvMjJszhY7w7aVs2BLQmKO+WjRgs0q/ebMHWqhOh5tPTIXZXyDFRwSHp2wuiMho/GmjlZt1147x/KTPOmfQfKJ7VTwuJgoBdlwtrinRJVqqRGNZkNCOK3U79CdUEt6RcSX5XNRO2XCjrpzuXO3BxQOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7avBHb9y+2Utuc1ICinyFXG7FFJVc7j+RnSVQJZ/ezA=;
 b=XptMwxcRkoD/62baP28DUgUlTXcd4M2oB3MVOkucHHNB7eMsPuyt+JaeIxCygR/GzhQ8CdwjzsJ3BewnGlfqRmib3NIWH0xGOaK18SrAJ39Rlc4kVtOAqnvA7T6qJsO9bk3ffRbWZrSDWcLIrJEGKTO+9toJBrBsOXvwUvwrDuxRh/GjKvV8a1fE0qIrNwPPm0g2+Oh7uFHIgKVhB7j/m4uhQyKdFRnGic5XYYek5oq2IPOlk5U4KX0HzAQhIOXRk2MyTektrWLWFJ7I1K34p7738aIswSyA+EQrxgQ8JMxgSwsGwWd1ndiF6ypKNTfiSL1PAqYxUiJ3yusZM+E53g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7avBHb9y+2Utuc1ICinyFXG7FFJVc7j+RnSVQJZ/ezA=;
 b=DJd1nGPWVWa89Qrnp5QbyPrvT3mTffmQGXbxZLHwh2yUIaLPqgroluPfG+wUDOGgtyFjAgtCD0tLOyEEV+XeXb3JQMyKuttjiLgBgnlDbQQ9uL1j0/kZZMoZWmQldeChdof5zQNPVTVOlFxRKJbt1/5TWqkqh+r+OPhMhS2Mtxo=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3893.eurprd04.prod.outlook.com (2603:10a6:209:16::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.28; Thu, 19 Nov
 2020 13:10:15 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:10:15 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/3] dt-bindings: arm: fsl: add imx8qm boards compatible string
Date:   Thu, 19 Nov 2020 20:53:03 +0800
Message-Id: <20201119125304.1279-2-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20201119125304.1279-1-aisheng.dong@nxp.com>
References: <20201119125304.1279-1-aisheng.dong@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.66]
X-ClientProxiedBy: SG2PR02CA0093.apcprd02.prod.outlook.com
 (2603:1096:4:90::33) To AM6PR04MB4966.eurprd04.prod.outlook.com
 (2603:10a6:20b:2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR02CA0093.apcprd02.prod.outlook.com (2603:1096:4:90::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:10:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d8bb0a37-295f-4fce-0638-08d88c8c7457
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3893:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3893303B0C2910DDB060FB7C80E00@AM6PR0402MB3893.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: seX6Thwzsq03j7SDLVnqsXvVwt+qhmffswWjbLp88JgcFhZqQeGOBgdFfXSfhlVHRAFTm4tUfoxO6wzc8+aw7dkDlGfvlDPGTFJN1V8SHeddBuvWFICBXcwVi2RauksCqGJyi9h7forDzaXS12nSDnyBTWr6pMTINQhjleh98JtAWHXuM84vHawtyWwMXhAIwSLSXsAia/x73q7ZhSWtu53jCyzBASKYKQ1Rm00pmCHtcm+jh00UrKwz2Yw4kROKpkGGs0nueSv8MGxyxRqsDu+n/8Rp09YyEGODe07r5v6NicARpbtOPI4IGsKysCzX+ZBpWsEYmKlkwSau8ImkH9ifgarqZJ9dvejwjbMXEBDigjQifckGE/o2g/5sSNQK
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(16526019)(26005)(186003)(52116002)(66476007)(6506007)(36756003)(66556008)(6916009)(86362001)(1076003)(2906002)(66946007)(8676002)(4326008)(4744005)(316002)(8936002)(54906003)(5660300002)(6512007)(478600001)(6666004)(2616005)(956004)(6486002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: azeRh3ukeUEdPbwc6fd2SsCdkIhV+X1y8CYMydHpthBxkAHcn2a8/yG75M58DOzNkEwlfrwljOXmbZVI9bZV/BvycG8rRxMiDq2UZhtxEiXQ/r0jbLh7BMkPi7pSMkHMZ8q4zltf5z3ofrdtdhXxO1BHX75XlDY0qTjPjFhkh6os5tR94ERW2grdb+0yfDmHNxKwSblcfTcLOniINcWKDFrnWCGs+vSeyXk55sSegweoUvvbRF+eX5J525VwSAM9xC44PEaUE6RkXMP/B+jwLsCjVPlUFprz+FQN/3aISC2LFYujTTykTqUIAKa+pu6d94ySog68cW6bSf3D/DjXhM/0a72A2rwE04333fFRnziNu0BybhLng73X9OMuO7qkz3WItOG6P9gtU/vY4oYWSEcPg1ggXIAHvEaYjqQzsxvm3J9TaKhnwuT+rsLIBWnrNMwhO+pZ/7Go/RAmP6JPMiwkMIcyJQSRCDLa8UwEn4pGN6Lt4qjUHdldJf+45guyZkstppnd3nQ1Q3X0HhhUKeSLN/LTwFOAKqBgaGa/FidYntJYgX9OSpB+zhcaKY6D3cHfCfjiJjX5RW8W8zU6X4HLruGCQNyHTHsLqxk1X5ks7CEQ87bz8o4ofztzpH3IYUOUPHqUxnW6bx6X5XmYxw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8bb0a37-295f-4fce-0638-08d88c8c7457
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:10:15.1483
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TqKvYIFu/PX6mlO6/yq/yOaWwV8R4wAwoLbP9jOY+f5gn0+z/bxIej95w7lShf9IPFyD8H8GWtaq1f8KmHWnEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3893
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add imx8qm boards compatible string

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f793f90fe2e6..d69ac5c0554e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -726,6 +726,12 @@ properties:
           - const: zii,imx8mq-ultra
           - const: fsl,imx8mq
 
+      - description: i.MX8QM based Boards
+        items:
+          - enum:
+              - fsl,imx8qm-mek           # i.MX8QM MEK Board
+          - const: fsl,imx8qm
+
       - description: i.MX8QXP based Boards
         items:
           - enum:
-- 
2.23.0

