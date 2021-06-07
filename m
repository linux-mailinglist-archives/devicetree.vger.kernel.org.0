Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E658739D767
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbhFGIcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:32:07 -0400
Received: from mail-am6eur05on2060.outbound.protection.outlook.com ([40.107.22.60]:52192
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230155AbhFGIcE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:32:04 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S1cHF9BSjSVHm4cLLhax0DHoarcvNmNhY02KsgBuJDt0daNwB6j7ftLiTsC2RZWxFSelcUVZ4raOwWovwCGHSDFSh/pe8gYPaWtHO3tl0h9eZ1eVwQXWP9J0csDguDGMVoDKx/2PKHu05QCuFNGN57jMJII7rMNPC0/9kwx1hSiOmVAEMV9PNRjjvybGnbG6D3bhV59pDWTwkdy0YjJqMrnFx7y+gBo9OyjLQtmU6I/Uov3x+HIGE2B2UgDeBK9GhfAGmZg+lG2y/LmHkzQZE20NfyntTdbwYgNb8B9bULhqsLY+V+CkebChoriY3T/XvUaJ+NRQw2T41oSKNXALog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ul3fqvUXr5Im/yA6ruzaqgMA3Unl/UjzddKiefsaEeI=;
 b=OEE0ShX5AZ+kqThBdjEP7G1Zfac8t8gwdczrsGv5XT2pVgECCbXZjJGJLdE3t9Go9rZ2akCICqO4alguqpq4jLlILSD7xZarctMyeSBWcBDHyMqD7/0eXagmQkJ/oKtxhIHIKXT1+Xti3B/KER8LZHx0L+SDGrv4UGfDVDFBwVIdqrMxbO1OJf78NgbOU8YAIBFl81vuMCZwT6MarjLRKT99qy5J6+OxnkJ96ks6HZuYNRl64eliIyi7ZiptI6kuGaND01BJxYFwJPsgInYVlzbcUTgnVYApnPbMmaVHMKlmOLU2bJt9/ATO491BPb0VUu7FY6GfACN3n2y1/Y3n/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ul3fqvUXr5Im/yA6ruzaqgMA3Unl/UjzddKiefsaEeI=;
 b=OWcYgTw/PZg720sqmvTLBhb93sRAx23Ksf5s8MhCFyOPe38gJ4Tj+Nrcxnt/m0vHcBmj/m4CZgdXvMWF0OtA7dK6zYVB9/w4lzSlbA+xLztk2DaT52XvF3mdp/Oe9qWVFz+aQ2/r3xaLPmA4gOlbf/7bNjxUTtQ2qEJtngGUMro=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB7595.eurprd04.prod.outlook.com (2603:10a6:10:20d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Mon, 7 Jun
 2021 08:30:11 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:30:11 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/11] dt-bindings: timer: tpm-timer: Add imx8ulp compatible string
Date:   Mon,  7 Jun 2021 16:39:16 +0800
Message-Id: <20210607083921.2668568-7-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:30:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b71e989-6f9b-44d2-5758-08d9298e7753
X-MS-TrafficTypeDiagnostic: DBBPR04MB7595:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB7595B9B228545C34E3297D3A87389@DBBPR04MB7595.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EIQHGjgsgn1VHrMAm4zjzYA8tefMrwkndtvcrNS0tCOOp+GvTOyGHICzJGHNPrPgOjq2ma2GNY91bydwBbWPD8arIrB/WHHbS9fH+g2WRlfeZ2gshWp3Vc/aEzfJb1R+d1SAzg9fWyRoFtrUcIeFeRAMAcastwxidS1aLktOmn3CQsrqrv76u7DTvmZcf+zAX8+T7jbkskZMoRNwF07hkeY5rma/DYc/1qi67s6TneyKqIpPqgbKQmObHOC80r3hS7X3GtONOGEmH6QeWo7u4MnohEsvuQT+VxtZnBb39653UXX2nDzt04eGl/D1Rve1bTQgJ3ZNoXSa1DIK0nMFawKTwuzqSw21m5c6/dSOujQqN/59CtnA6wuiDmQylHENg2pYQ9n+zsfD6qwz+h88KpDnUbxE4kYVN2ogUF2I0zahAuARme+3r76c+VwK6lyl4AjSKRSLgggFnwFO+89JM1Ra9AoMQRAn+TlzBRKzfRZUax0LDWHjeAmkU39T9p6I8ICpvRSYpILhtn3Rci5vbcnou0oLxc7Tb7Mw91M9Er3JUWECJaRinzUbTcwQQANV45Sxcje3TukzIDtRFKPu1bbHehmBrtQrghb5uU/tO7ku+fkq0UtBRx3khBShW841Cw0YdRRzYGblLc7iqZbVquDw/9/C+gXm2o6uIk5VokGql3Ik7IdUv0dDGoIGyNaQMcOi9lapZELATT3guw6e854PoO8Eh077ITqnvaxa8g0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(39860400002)(136003)(366004)(396003)(376002)(6666004)(52116002)(16526019)(8676002)(1076003)(956004)(36756003)(2616005)(83380400001)(8936002)(26005)(2906002)(186003)(6636002)(6506007)(38100700002)(478600001)(316002)(6486002)(86362001)(6512007)(66476007)(66556008)(5660300002)(66946007)(4744005)(4326008)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?mUVHlYYxn5ouxDdUhPQw5ZPRJqS0tKPQacNaFNetolznEhWkgQqFxiqOSdto?=
 =?us-ascii?Q?PquitrveewpUw3QUV60KVnyUuFlvxPOi7c/+573mMvMZlqtwMYootswGOj6F?=
 =?us-ascii?Q?4AM0TlOd/PzAXokvfe9kBqDXXimh0tCRfQcmlPV7UUpxISWmaUxgzRnq0swo?=
 =?us-ascii?Q?nMlngO9YdYWTpghE6Plik3m10rq0f8IpaQ4u03IRmzLJ6Pip6qDhyZOUuPR6?=
 =?us-ascii?Q?5K+p/m/WTI/BpEuUuasH96YKy92ZZjq0xZH6qG5wyhfh7JhDv6XqCWpH2hlF?=
 =?us-ascii?Q?z822qZVrALWL7uVpIJfGy7X/PQO+xuO/XoaMGU0dJ3rp5T40/SwWuFXuVn/Z?=
 =?us-ascii?Q?HmWwp4v8UnafJ1B/6425ED0uVm0JcOqiltXKk16k1rPcjQi8hDKW/w2HAItQ?=
 =?us-ascii?Q?EAjX7fwgpbQOUbPf6awQmrHAZDCYtj1idG/cV2vHVT9XMcebViyXPsfJcn6x?=
 =?us-ascii?Q?2/hA2dSYM5FxELbiL+a5aP3vkU38RU6UYCjvB/Gu+/W4Hm4eon9Ipo6tMZgv?=
 =?us-ascii?Q?SzmpY96Q7c6PhrvFvHUhdHhAGF3MINIFjPREjqSo4QlLJrP798G8rK8kdX1U?=
 =?us-ascii?Q?0tuJEZ8KvM7/IizHvrxxo/gpMT7DJLaxmbpXFJ6FV72WQaY0lA6eV1L/pufr?=
 =?us-ascii?Q?nXXFZCpCqTgDvBfk5dUu/YViOEldnyWu5ldeQv6fOSwduXo8s0JUtwhNAgrO?=
 =?us-ascii?Q?c+75sEWCBfAkjftQq3yMpwFbYkSIwysM8I1rvb0HMqoPWrL9VppW3IpeAhkA?=
 =?us-ascii?Q?+IgNX0JbY0ij4KigRPbHEGyBbP1JkmhJ/WgZ9vro+M6phO4gN3Y4Uc0OLVBp?=
 =?us-ascii?Q?aVBwYgsd/GylCtVAM34GKrePs39OItwlUMZu3Ta7e63HQlySuNko46lk9Ohh?=
 =?us-ascii?Q?J/5Cq8TlY13d1v4Z0s4igoSZEfnsMMOfOOP6MnEdI4GIIqUfvSImbAIFHF/Z?=
 =?us-ascii?Q?7DGba4N2F50Crw1YGKWBjl862LlsMsKB2z3c2aJm2dSRpcpHP1fMl+y5pogF?=
 =?us-ascii?Q?gMdsch77Sh72VfE6V5UzhIDMBuzUfJLlw+KNEJ1sog+2dikoVJUBjbS9AIAf?=
 =?us-ascii?Q?tENj2v0VGat1bjCNXRp3Kcq7uFcX6aLAQeL4t45KCnNtmjg9KsjYpfraXroI?=
 =?us-ascii?Q?XwJGl+COZXluOYScJRV8VNQvpmDznE5u9/ah/YaeumpVrzXvz3+A57C+3Nje?=
 =?us-ascii?Q?G3pg9MiFrL6a2QB/b9oN1xSJwSHOQWrbB7xOkWLixxNJo0exl20FOFx//jNT?=
 =?us-ascii?Q?j/+HTcr70+ljVPwmaYky6LE4O8/dKfUCJoJ6OKi4JlmOf5g+wiJRntrWe0gP?=
 =?us-ascii?Q?wf8YxjYyxPVVVQ+PgdA95F5l?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b71e989-6f9b-44d2-5758-08d9298e7753
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:30:11.7613
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HjLISsYSVtk1Wlninp7BjDolYg6Hs3HQdWRQtDS2LI616KfZ0zvQ3fDGO8fHHjh8QGyhE2HjrfqUnjkF16q7DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7595
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For i.MX8ULP, it use two compatible strings, so update the
compatible strings for it.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
index edd9585f6726..f69773a8e4b9 100644
--- a/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml
@@ -19,7 +19,11 @@ description: |
 
 properties:
   compatible:
-    const: fsl,imx7ulp-tpm
+    oneOf:
+      - const: fsl,imx7ulp-tpm
+      - items:
+          - const: fsl,imx8ulp-tpm
+          - const: fsl,imx7ulp-tpm
 
   reg:
     maxItems: 1
-- 
2.26.2

