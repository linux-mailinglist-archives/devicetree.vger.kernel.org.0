Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 067762B934C
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 14:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726105AbgKSNKZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 08:10:25 -0500
Received: from mail-eopbgr80055.outbound.protection.outlook.com ([40.107.8.55]:60516
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727692AbgKSNKX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 08:10:23 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0gOm1sBTLqStVuUtyw+RV3ZrVU2qeQKFgZtHvk6tQHHbVohBmWLO0o7cohGIF/dSnV9mSQMfjy49anX4Zkud2cjVlsptyQOI0qF3C0AsQQhzc2kSlPaxobRrmcwOWe10VuaO81Zyr0X7oWWFuNgkqAXFdnAnHrwKPRXavfUCRR+vxGgmEHxCu6uNNwhG56Kw1lbtkZ2B2OUuT1zm0CLVS1lED57Z5JYIG+pDBMjYW9dA1j0UB0soaS+Q88f7rmUW2L+hz2YwL3fOKP0zlGdJeh+sB8RdY8UYtJldBZSGN1bH59923SVS/T9Mj2IvCtsBSRSTIQddzc0Lm4lnvfpFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HrnqHKCjH7DZZhkXL1W/McT5VP8UG6FVTIHRT/oAlAc=;
 b=MhGpGMtXDpM6nc8oojhhpAmaBs4lWLwUNqEaT2yTME5hjMYEQg8yQ6QgkKdd/Kyw7fwAyj3hMqKdJNLLA5LNhnQ6HYEm5i6P4nMasB7ERhT+7YY8O3I3p6FwYLmFcoDf4KdpNiDEkA4DJI21DW51aNULf5gJGO51gNOrrg1Td3T995KlQIW5+wnRekMK4dy06ePpY/M9cKXEcdv2tGdPV5V+9AJpgkPvMCiCOXNekOSWFwLI1XIayMjnPzzRfp03KEQ9v4uKov1RLXECo8SGjmhOY8S2yzg0klucOhLpceFEMHUYzbF6ZIxlO7B0lNBiNsA1PjWJH2jzbF1X+Y8xtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HrnqHKCjH7DZZhkXL1W/McT5VP8UG6FVTIHRT/oAlAc=;
 b=WGkI47rjluKn/3fNj5abzyPsQQZQlX8SxfSyJrP28ygydnfUfBqye6YKTZ0D7FSQIS9TSJzw4kclHHcFavhQoUNdekY3jMYJxr9M/ik0IzjGYG/gd/l9ExKqm0fnm2wCdwEX21JghpVsbtbSuf3mLCtwYFau29YCmqQvPD2dW3s=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR0402MB3893.eurprd04.prod.outlook.com (2603:10a6:209:16::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.28; Thu, 19 Nov
 2020 13:10:17 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 13:10:17 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 3/3] dt-bindings: mailbox: mu: add imx8qm support
Date:   Thu, 19 Nov 2020 20:53:04 +0800
Message-Id: <20201119125304.1279-3-aisheng.dong@nxp.com>
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
Received: from b29396-OptiPlex-7040.ap.freescale.net (119.31.174.66) by SG2PR02CA0093.apcprd02.prod.outlook.com (2603:1096:4:90::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3589.20 via Frontend Transport; Thu, 19 Nov 2020 13:10:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 715c8561-14f3-4d08-1a10-08d88c8c75d6
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3893:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB3893A6BCE1D6B56AA9E6E8AD80E00@AM6PR0402MB3893.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kcnv7TBvlMCslNsO0zZPS/jfjFJjwa5Hb7pTO1fwh/XUbPA42hjpsK4WFv6AWCnli6vStqfmEKoUsOn3QkNniEWoCVSdox6sXqVUNGCvmKI3TBAUmd9hCe9NGQOFV2GjwCP5qYel4zF64fhZ8uzwPg/GnW7f0CU7uRuZj4x796OIm1FDhKKhJf5EKa8Tfw3Do93N4djj4+Dp4zeEBHKPc2+hKyB/HKYAlVCFWe2Vy+552mcqYfyXKkfVlq4gGMPVK2KYjW9hQYB+CXm3UxbTH9CdxJQa4Zusluz9mpja71oPKmA9rnh88Hcp6O8y/wYCugcXAtlJfTXQAEwFkyJZ5mlbOuL5zfZdHjzQjsIvEOOBMxwy5DukIrDEUzCF1iZ9
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(16526019)(26005)(186003)(52116002)(66476007)(6506007)(36756003)(66556008)(6916009)(86362001)(1076003)(15650500001)(2906002)(66946007)(8676002)(4326008)(4744005)(316002)(8936002)(54906003)(5660300002)(6512007)(478600001)(6666004)(2616005)(83380400001)(956004)(6486002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 6o3HxJhpchcMJir5VDWHw1BdQUtw7sI1aurULSLjRmfwtv6hUNbzna+s3YUKejc9FSuhJTcw50D3NPxEXgAdc/j77+fn9LqgyIA7JyHcjtVRrAo0J17OSlmKeS//jNn2siPgJia+jCqRRYLBXQtjCoGkuSVckHq4Q9/ew/MdJ3ccthFNc3ONkUkUEQ0RU1XHBrKmucDo9KVgSx46QMxaFeeRR0E+Lwy4HPOA/vBGCr+WCUw9K3BcdMvXY80+2D8XxQLem5DDFCQHo6B+/UE2SC3psLcMia8W5uBbyRqXqpsOjjIB7ONQ7ZLWjaCgirq7ayfW2jnnUOFFoGhKdp7UxgQUKwWbRE3dc+6upmKpeeHpg7fcZ4EAOZSs22DmOzRSbqKpy5e1ptiZs8vd87EKyiZ+qOpCgbIrKVW26RW7BgYnW3Z9r3GfT/ha1jUNfc4UKrccPlMIhRQh+JA32becGMjluB6xJam7fG+zjchAoaLstNnGLkn0SYw0ObTHJlzlOagqyA0SZLCZIxTv6uT/DkoGF73SUg8TniJRm81C81zytmu9uXKPrWUX3DJHghBgZMUfP2DTMErVBdiK51I09hDfZ+unmARx06CsjIBJm71wie6g13U6NDneGo27ghH1L7x0Do9ONTqX0JEVexEGwA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 715c8561-14f3-4d08-1a10-08d88c8c75d6
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2020 13:10:17.6618
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TESn6qEIN/lJne9gVFvBtiPNOI++979o8yzp+X7ymlBA7ybmLiheNIvF2PtVLug8akUD98FQ3pjkRY3V0ROIzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3893
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add imx8qm support

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/mailbox/fsl,mu.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
index 15cef82cd356..1a3dff277e2b 100644
--- a/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
+++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.yaml
@@ -34,12 +34,15 @@ properties:
               - fsl,imx8mm-mu
               - fsl,imx8mn-mu
               - fsl,imx8mp-mu
+              - fsl,imx8qm-mu
               - fsl,imx8qxp-mu
           - const: fsl,imx6sx-mu
       - description: To communicate with i.MX8 SCU with fast IPC
         items:
           - const: fsl,imx8-mu-scu
-          - const: fsl,imx8qxp-mu
+          - enum:
+              - fsl,imx8qm-mu
+              - fsl,imx8qxp-mu
           - const: fsl,imx6sx-mu
 
   reg:
-- 
2.23.0

