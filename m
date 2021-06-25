Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47FCA3B3A53
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 03:03:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbhFYBGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Jun 2021 21:06:12 -0400
Received: from mail-eopbgr50063.outbound.protection.outlook.com ([40.107.5.63]:63030
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232729AbhFYBGM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Jun 2021 21:06:12 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H5Dujq1rxgC6UJEfqvymzOYTCA1TOgLh8wqkBUlzx1/85FSFJNz/A4FxdJCNDrAWh/CSg/y9jxSKK0+5w54AMltOQSlQPEGluaiKfaKjSO7wjwGeJkwujDerEhrdpTk+vUOF+KDeN89rpkV8mBiWmI2QMfWQLMY1lz6nuVQlU/CAmJNr4k/NgVvS2WX3DDOJzrLnSOkzlMd3OV8N3flUlArpKWrquiXTuAIsPeLAS1Lx9TjMNS0WMEK/SrMy1wQKr0JWKp3RZsMBvVtblwqHHhcANh5WTT8htBK5jMDqsnmyeKzVnC6ntBf2K9IPZ2G/9PdWXE2pF/8vG5gIwgb7pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GmMfyMYcrJJ0PjQzCZ4NM8WD6ciySU2qKAJa+C8t6cg=;
 b=Gr9b8wnuAcmGLIl1MqJclhSHftXhfLNZOPg52f7EpWGAsgRnqs2Ge0Pv1OTta2DBFHpg2mfwSKogy5kwGq0FjiBG+X8n/36x/hBguhhwXaspxacG1hncSXIBso37ePMjtVc4oHkYoJ4hf8QVtK04Aqtxr6/yrgfSIxo6sh4IU7WsxQhlI/KCry6PyBabNxC9C5DQSVbBQd1cKnfauy0s+3Fl+HoZJB8TcjdP0iWjQUdxXR3fC0ncdhXsnxQO5IWPg0eX77x8WC9nlTpFvhDEpGxZDR6CH9Mcfx2rTlQwjmeLMwkU8pj112tETdY9Vlu+MugoMqAx2QCADWhlPOTzvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GmMfyMYcrJJ0PjQzCZ4NM8WD6ciySU2qKAJa+C8t6cg=;
 b=h2iKN+Uq4WmdLCK5Iphkm1NowYytK8gGLlbZwqCsa1IWBODztF+oS76obwNpMjRaBfFL1BBZ6cuT+BNaZXc2Z05z/weViq8ZbfkvjYunE+I2SSq9gtyA5JYu5UJrs/4gb1hnRjLEEuqNYe6wB6n22mXbKI720SokuBA0rSllsbQ=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB8PR04MB5801.eurprd04.prod.outlook.com (2603:10a6:10:a8::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Fri, 25 Jun
 2021 01:03:50 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3164:e047:376d:4a4f%7]) with mapi id 15.20.4242.023; Fri, 25 Jun 2021
 01:03:50 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 01/11] dt-bindings: gpio: gpio-vf610: Add imx8ulp compatible string
Date:   Fri, 25 Jun 2021 09:13:45 +0800
Message-Id: <20210625011355.3468586-2-ping.bai@nxp.com>
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
Received: from localhost.localdomain (119.31.174.71) by SG2PR06CA0188.apcprd06.prod.outlook.com (2603:1096:4:1::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Fri, 25 Jun 2021 01:03:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29752ceb-17c7-448f-3050-08d9377517e5
X-MS-TrafficTypeDiagnostic: DB8PR04MB5801:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB580192F9B8B52200BD6D0C6F87069@DB8PR04MB5801.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +3vDwrPBKZtPHIueJZYnje2/7ZLZ+4YVEScxZbg7GPt5h+9nXv9k7n3/MFHQTiPaBG5i3rnetihAlSbuYWm+ragRhW4W9V9MmGBcgPFMmfxphFTRMG7zbqKAAtB4LW44plrWQ1HSHosi/Ld2rhXDWVmtRc7LcGl0Rzu5skEpdlM/Vhm16YgD7TVUEY2Ak3U3ugGc6vQ3wGQHnBjx/tm6t0GUly/v/j/ZM199zb+hu43gEBTa/7Qz5lux3ObzK9OjfP9Kqgkx/MKdaYBkxpy5WavRogAaoejB4JQoOJgEO3YFFwLdC5osqOFGy3Scdq+TmA5PCxZZ/T5MVad3Ihk86L5oK7gsMOuSqL4oTxediumqBcBi1+xDW/1ovHH6UYOHF2n6q+kNhg8ngVePYH5H+ScH7fn6rUEV5Zc0FSBcLouVgePf/7c5z9HQtNzozK7t1IpN5JmihKWUDwqoVRSmKVVZOZaUPUBCP1Q4kzIf1eYYQXc2Yc+K+/96Xz+z2ea7N+/TvICdvcuG2VQDbRxXCbMrJhym+S1enq1Hme5HfTXgUGOAHjH1/dKOCs+nmyzO7icKiLMoOyhZKhZhfggIVxmfDpCtcP6vN6xVHq/alZdDXYpIarobIiZmF4a/lfI0BM4VK10j9kzXR8gRQ52P2uUb4UhbACNeet9E5Gusj8JBsfifCi3dVnHV4DfLABmq9WUUwllqscCYiewerUtVFpMQjVVozcCrEHrwPgSDxyM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(346002)(376002)(136003)(366004)(6506007)(6636002)(4744005)(5660300002)(478600001)(36756003)(1076003)(26005)(6486002)(52116002)(186003)(86362001)(16526019)(6512007)(2906002)(956004)(2616005)(316002)(4326008)(66476007)(66556008)(8936002)(8676002)(66946007)(38100700002)(38350700002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hFi7cxedS2FaXuYVZbWvawfjRTPzN/hSihgaZxqz+zXxwWEbvUqzqDcZ5oT0?=
 =?us-ascii?Q?TjFEMQLf2RJmy+S9ukOFtnJ8ghIPz0j4oO02seMpP/gUeN68euFBJ7WmBBBu?=
 =?us-ascii?Q?rlZd+16uoxw6pKL5proT/LEHjVkTUf5DIFhIlfRsSSHWUmojBdGV39gjtksY?=
 =?us-ascii?Q?iJtpiiYjVGT+rxV27x/d5Mv2AqLhrz+zYOt/qo97etus6LF4cywXMrxh0aZ3?=
 =?us-ascii?Q?Yk+kf2EPEQijkYRdnAdIRn9Pm0c9jxadanDCtxs7Ch96dUTLrtJXH6t6c/T2?=
 =?us-ascii?Q?FYoAWZrKjX2DKGchSd4WQIMmDAT31bXKss4KsSTZd376sBarHhrRE5brZ5lo?=
 =?us-ascii?Q?O1F5PZju/O6w4qOuOi8R7XtZFC5aQ03SYg1oyd/EQ9QQbON2ZE9h6XDrfgsJ?=
 =?us-ascii?Q?/8dGhpDVqX5WwnGp10YyCCpHRvOEpzHCAQWYZsXDPVQFqzjvym+YpcqEdEw2?=
 =?us-ascii?Q?HlvQBHPD21VWoXIn9qYiMEH8jCixWisC20+NAIV+UYbEeSKMuMQSVJeySlCV?=
 =?us-ascii?Q?ubDVVWC/BJZV6VBwo+atxTfZ8vGFpoM+CLdYhfP2tZEq76yK//D3+XHj1vPC?=
 =?us-ascii?Q?L7eJ4FCoRWpTNh99EvlM6sIWLoz+LkJU0I/67c8Bo1+42sTLhdHrU5Eotf3u?=
 =?us-ascii?Q?ugTG7Pf8Htby8rkhMDf8393OmcRWrXixrLdEzrjJHE2SzU6vM07Dqw0zhsZH?=
 =?us-ascii?Q?wxoJ3BIg2DNs5lK+5Akx7/acTcwQcxMoTKy3R9ravd7BsGafbmUxl8eigZdT?=
 =?us-ascii?Q?FFZR6A/ePRHGDZRnjFK0B+JQppO4NVrx5KYbMvad0bOGixzW0sCtgouuXoK/?=
 =?us-ascii?Q?P8b3nT0HTTI5fiFsUGXdMsV7gRQgisa4a0nx1CJSja31g3NlQ3ahGVt2LirD?=
 =?us-ascii?Q?9ex7S0m2Gf32RL53xz30Fejc7ESrhXDqJ9DIVaYRB3UstY0kQ+xFTKsSrh9e?=
 =?us-ascii?Q?O8VrQnngNQzJDRF2H2U9DFN0YRLDhnW+x52efNfJppoXODLYASlrWzBN1iNY?=
 =?us-ascii?Q?UnaXz5b26tr1zrFLeuKCQtR/koqnVlSjPmlJ9KBQEP/ILFQSbU/RlEe0QXVW?=
 =?us-ascii?Q?df2wNY7njdjg+NeP2EclxM0H1KsOOQYFXGqqvReYHENdr+peIbOKIdofGCRH?=
 =?us-ascii?Q?gk6nKgAAoXDctkh0z7TzdpAcKR4ysPSjlbr6y9O6pgFoOwdXJ7FYSCqN/2RB?=
 =?us-ascii?Q?KKYcW7a7LKzzM8iRSoW3mvJvcoPCmjK3BR4PQXYVAPVL0yS+0cADUXDOCa56?=
 =?us-ascii?Q?icxrjMxycXGWrkg5a3Scs3qZRLsjsHDV8TaQ3Vihog2McleVgD0aBTlm8tWN?=
 =?us-ascii?Q?/IoIw4b9VpGQyKRr7+HrHALW?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29752ceb-17c7-448f-3050-08d9377517e5
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2021 01:03:50.4917
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DPAy8bOG8LinzQvLEIIeUJjT0wB49O6uallWfZi8ECgxGXHtNjlrvCJ/ys5YGqQVZ2kXAfbBx4dX72vD1VlETQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5801
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 - v3 changes:
   no

 - v2 changes:
   no
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

