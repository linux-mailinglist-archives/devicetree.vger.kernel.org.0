Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B2243B3A56
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:04:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232873AbhFYBGZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:25 -0400
Received: from mail-am6eur05on2044.outbound.protection.outlook.com ([40.107.22.44]:36289
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232850AbhFYBGZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:25 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKL+C+FFMFeIEudNnu3qElcVKRxGgt9Huu2yk50SJYzjTyO4Gt/6iPrvNuTNb4U5ukdF0YBlhNgdnBJb/2N/Oa9j1ul8Jn4UsZAcysPm3znO3r1kisaT2N0ZSKVHlYMZikIcmmD+NvF7Dkqz8W9UOZ7lrcIoXNMlLV0r07dD1YRnEP87CJkqhhd7n69ToOV6IMKLMOGzIQvVYZN9eqNmqlnGr6KkoZq1XpxeXD3D7FHKFEbUINOGRZmTnCjUkNxd5g54qUxpIVRTrx1MIaAxYBJWsn13d3Kt5D4WGQjyVgTgmMt+/Q03qfgifwGLqtFq86cp9DApIv+lOv+cljSUQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMvfa1Mkq1qLplTnQmF0SNYBBG3QfoPrkgxG5GUpsAM=;
 b=nzhMkk92b8DCiUUH4fa6mPlp5Cfnbm521w89neZMnw+visWQ0D2dotnCjmt+FA36BXWnC3cgp0fMq3rN+Mq1NYC2D8FEkzyvF13HovOLCz1IeAPxubAfGdZjdMTxLHE0X0ctC1JKUqoSVGmWI8om7Q3Xl8gjogP3nuVoLID4NRpWvkobxHKrhbLnKSs4LFj/M+faPqrq6WwrmTeUBKA9q7H3zo+LeJj4EXKnRl0gAhkA3xUvdjXVCsK4SSE1xGdSYlCmnAPikrRutgmxPwotIRDAc+fcbbs5Em1i3YqtQHhlzDwMCnTKhp6tngDCrxYqeF2ejKfgNnLReucUkbwZ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMvfa1Mkq1qLplTnQmF0SNYBBG3QfoPrkgxG5GUpsAM=;
 b=CLzCx0LXbBxkZ22duTRgEucuvBEMYyz4xO3qhUy5RMpP2E7fLhRfMxOB6A5cUP4NhhuzR18tX2RLd2cy1TOEFjvsWG1cRdvtnFDPfy6GFDSJRR0ORLxreWaYCpM/wWML1rhThCu/ns3nVRd1pmbqopcuep4U9xh1ArBuBk1Mmbw=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB7PR04MB5468.eurprd04.prod.outlook.com (2603:10a6:10:86::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Fri, 25 Jun
 2021 01:04:03 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:04:03 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 04/11] dt-bindings: serial: fsl-lpuart: Add imx8ulp compatible string
Date:   Fri, 25 Jun 2021 09:13:48 +0800
Message-Id: <20210625011355.3468586-5-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210625011355.3468586-1-ping.bai@nxp.com>
References: <20210625011355.3468586-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:04:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1ff6b1d8-bb51-4d2a-be54-08d937751fc7
X-MS-TrafficTypeDiagnostic: DB7PR04MB5468:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB54685C2364FD9299A637CC6C87069@DB7PR04MB5468.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:350;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6moYmU8+1GpzKKLpf4a6VN8sdOYJmwua8QScktP+3P5MlNUSviDbJX4xCtBPfICwLy/ZqlXGXhcjlPUpxefD+DtaAVr6Bpv/qpiZTlkrOUEtDS0U44aZ83bSr3rF9doqy+3v3VkVh6T0DtOkJVE3zuV8DPwF6aMvtpCvk4hKfKTTElkFN8g6RQm4VtyXFd/w4D7tyMWhUOyrtaFVu6pY2PRI1frNLDV5rPoX4nf7HrfOzLlBcK1zerydE3dWY0s18pnHseN/OLlkWp/JT7wCMrZyLLofRkYz/WA+oEMa+s3nrBwvurf8N1t2ZtNh+s3ORuKxUh/u/v52yQxvNwA/VLlFujDb+xOYmrB/eWQS+5RJUZW4/IX048Y2T31g2Cvm9vd5CqY37QxiP2XZEXoG1R/n/9Ts6fyMX0uWPeIlQLmgsk7mALPCnqo2/94SX+SsoAirb2n+RV2Pd3MJCYGnHoXAHf5RtF2ufGzMhiWJSUSUg6viZUuUDmgeWualASqn7zyFwu+U+dXdEjRkvQ7i2I8LuvgbjFSVgJY2jRzi8cn2Hkln/tYqU6y1Yf3JyVBxHWbT9JqpkPxOctvvB4N8s501i4R1cSnlvMPw7tHkhAOAiu2OevpCcxCmSgiy0hgQHSrsMgvKaDf3Lpk/xiroxH63TzCDpuTstVbS6Ea92cotymn1e6Mrsxl9UTRU8fxY5OSeoEMyLB0HQeR2Ikx0rRwb/9I3n7N1krfIU1ZOYXTBfVBljP+OUAlWAtwAToEv4nhyKsl5ms0nkq9Sg5xVow==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(39850400004)(346002)(376002)(136003)(6636002)(6486002)(16526019)(26005)(186003)(478600001)(5660300002)(316002)(66946007)(36756003)(66476007)(66556008)(6512007)(86362001)(83380400001)(6666004)(38350700002)(38100700002)(4326008)(8676002)(4744005)(956004)(2616005)(6506007)(2906002)(52116002)(8936002)(1076003)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BtyPKSXMwnIHSNMAC2tk0c3imbJt6w6+Z/4PD4TTKEAN1EAyRa+Hv9tDiP1A?=
 =?us-ascii?Q?o4y2SWXnX+n7SlGrNzR+sk6MGifmCyO+OmnUaryrGhOnH9j2Of/f63hbOfgk?=
 =?us-ascii?Q?SIFTg7iz4paeg2A2aGLumCnjgzhcePtxced0Y58V0WnDnif60MLueBYP02pn?=
 =?us-ascii?Q?mDYIvY0uwukPQlCTZu9D5qItNH0Zeamo1n84YGbWmJVk/HRw3DY0B3CYzXhX?=
 =?us-ascii?Q?m9VW4chy+pmCTcZIES8hkOtxZi2pVCjmDt3dK8WmcoTKnB1Mlf2JGWeFuq+p?=
 =?us-ascii?Q?AxiiT0y8q8jmB/EiXkL5oUjXekwWX4GuXRZyDF+wKzTpbvfPxqRNh2cjDzGT?=
 =?us-ascii?Q?uQ3vSwgRZUgh7IoaTAEs1bXI7X/os/13KZNWvo2O1FdeqydAWImDdkttQBpf?=
 =?us-ascii?Q?QohsGGgFKn7QhekucflKYzrM81GWk/VZJ0CG6H6V7yO1VdSVf0T6frMOW4zP?=
 =?us-ascii?Q?Edbwd605VqFSw4zfDfHo4FgChsJHTH8yafAaGNtxb0vVlAWnwjR3p4lcJSMK?=
 =?us-ascii?Q?7rUff1TiGKSDevBgTaM5VgusxzcbjtkaKLYFUTREdAYu5k+pIJZ6l7ddeA/t?=
 =?us-ascii?Q?kbWuHxP+mrp63+bauiTyYhjOGOwLIV/7GRM3YtBOLGz/aU7P4PdMlvG1RVyd?=
 =?us-ascii?Q?rgqGe7H3VpQFVNe+OZZ5F15ia63YC5dZeXOsmHn71eCXPhYnUyz6ncyuCDHO?=
 =?us-ascii?Q?TwVWuCoy5oOGeULVTy6gENcw6KtxP2LUD3TRBFIGGyvOBXkU9LsHi7sX+Vpq?=
 =?us-ascii?Q?y+EgrjnAVEeu6etpBglG71LHZaQgRNqG3mO+zfGWJU0k9SlzMKz1xCQVKG2F?=
 =?us-ascii?Q?qIL1b5ucMkR6hSeiUZhTPUsFnwW1gHjAJGz/sHWH/9YUFOsaHxN4mm6mCX+3?=
 =?us-ascii?Q?sIGjwxH5wqr5lAbRqbC5HTHFfmREsp32JXAGXs+UcQrDunaFH9N+5adeddPN?=
 =?us-ascii?Q?9nsTlSd3IDwRMUd5bCwJFDMpL+eAKULhEGoARgaIHzCB2ySYJ+IHb+meUG7z?=
 =?us-ascii?Q?XhteZFPU6pRIo8HR45ylicbnFw9BcZLTPqvexkm2vhTcs1ySZGH1mZg731sK?=
 =?us-ascii?Q?MYFGFIey0zbInflWaP9HiTgl1QE7rK0ih2qirI3yUlSU+MHcSH7fxIBGjEah?=
 =?us-ascii?Q?dDJuE/zO3FjbaoMzMgHMJ83J3AJI50U9ez9qqUnMV17uLauQSDyOKepIgBDx?=
 =?us-ascii?Q?/P/er4rGZpeAczqZmnRfdEZpk75ZQNKR4/O80tHH/GHen6vqcbO5gDP6HwFJ?=
 =?us-ascii?Q?cZcgz9iUago3fdFsYQUbbrls0en0WQlWWwZHTasDk0k6KyMTD+EAnxL/w4ta?=
 =?us-ascii?Q?ImIkxxe8c8KREMXadIViL/4n?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ff6b1d8-bb51-4d2a-be54-08d937751fc7
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:04:03.6398
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EK2aF7aTGxJVxk/OGsLNPQP8zWcEyA+OJrd8Wgi4jm+pYp0Z+lZd2Ab2dyzIjPyk8g1AXTBPIfj5RX0hDThGhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5468
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The lpuart on i.MX8ULP is derived from i.MX7ULP, it uses two compatible
strings, so update the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 changes:
   no

 - v2 changes:
   refine the commit messages
---
 Documentation/devicetree/bindings/serial/fsl-lpuart.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml b/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
index bd21060d26e0..5d3fde5d4d2b 100644
--- a/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
+++ b/Documentation/devicetree/bindings/serial/fsl-lpuart.yaml
@@ -22,7 +22,9 @@ properties:
           - fsl,imx7ulp-lpuart
           - fsl,imx8qm-lpuart
       - items:
-          - const: fsl,imx8qxp-lpuart
+          - enum:
+              - fsl,imx8qxp-lpuart
+              - fsl,imx8ulp-lpuart
           - const: fsl,imx7ulp-lpuart
 
   reg:
-- 
2.26.2

