Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEC0B40A6C9
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 08:41:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240239AbhINGm2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 02:42:28 -0400
Received: from mail-eopbgr80040.outbound.protection.outlook.com ([40.107.8.40]:35639
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S240231AbhINGm1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Sep 2021 02:42:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZtEiHL0zRVwDmnh/EbMSfcIwRH8QwpU8TS9WL6uT0TxnAWKsGXikIleNy2xVqYVcH+vvCFvMwRslF2bYeSTS8XwDbE+wBOgJNq2O9urolZSHQc7MwAPF/bvexuXnAPc8m6N/QHuLToiGuYlC/I1/wpVbngg/Mybc31T2RPteyIgYF1TBoWbQtK3WhGfeNockNGXoj1Jha3bCpr4kM7NqKOMYVOE5DS5K+Dp1TauDux5YpwzMwRxvHq4DHl1JertNPnpzPcjFYPMnGWNRQgexbGhUsAScfCl57+IYQXR0DFug9PwLf6Q7Uk6wI0e/IHFd/2KucjMwq7KQtv1Mt+QIeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=j3i66GCAvFPa7+ypVoaPrqLzOFRFcTUlKZNwccs7TT8=;
 b=S99W9GE4oPYzi/q63N9fsc4X9aVUHsoupUGqJolIox0mPW+t9fan2aaovWogqBb1jchOBGIvebaLHyXgLMt+uVJk4EQPy0/GSCk0RsjjfMDuYS7GV9jA14/Dw+QlvdgAAW9h1lgPeWONt5jO9vphhY7Bamg+cEiAMAIt6euDuMyj0okpBWa+lX+62w6hQRlOz7Z8lPGsIH13un3S0bVIJFPoD29iajfZAV2+VCgZR1hg0rpPAB+ccMjc46L8XR+G6x6wPRnwZKEYUctnODofKbABXgjZWb1TQXJwC8MgJvI/9HVYAPj+hwUn4KbzqRp637mIzpf2BjDf5dFTAEXh3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j3i66GCAvFPa7+ypVoaPrqLzOFRFcTUlKZNwccs7TT8=;
 b=GfGR3hsdSNTl4Gmrudn041B33hnbtcYTR+GWH2eUKS0O03Fdqe/Muna0dAjybIaMsHo0lHVhvMX9t+my7Hz5bjbZVGVvzqnkg71UVivDU22bTm72Oi5FB9yLx2FiGAdWNT7OL/Q5CgyLVBT46N6y3S85UOrhoAhSK7EweJJJopk=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DBBPR04MB6028.eurprd04.prod.outlook.com (2603:10a6:10:c1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Tue, 14 Sep
 2021 06:41:07 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::55b5:93f6:50b1:a49e%3]) with mapi id 15.20.4500.018; Tue, 14 Sep 2021
 06:41:07 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, abel.vesa@nxp.com,
        sboyd@kernel.org, s.hauer@pengutronix.de, p.zabel@pengutronix.de
Cc:     kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [PATCH v3 0/9] Add imx8ulp clock & reset driver support
Date:   Tue, 14 Sep 2021 14:51:59 +0800
Message-Id: <20210914065208.3582128-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17)
 To DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SGAP274CA0005.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 06:41:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d6de154-ad6c-409e-cc74-08d9774aa1ac
X-MS-TrafficTypeDiagnostic: DBBPR04MB6028:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DBBPR04MB6028BD9BDC140ACA968C661E87DA9@DBBPR04MB6028.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1751;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u6Udzqv0zHv+64tbwVQkzdu1UVwt8mpygnXTfPTRfuf0S7I9XrslPv4B+nILVa9d8JU21FJMSrqLEpDtbKO5hpkVs2MYlyZ/bbtVCwJ4AIK9CQUlfgEFeDCsOIScFEN+phI38ND/IFQ/t0bgOR1zvQC/SmUeKoCoCegQrhJ2T814VyUH8UYB2271w8xqvTX51fELVmdO9f8pbA1PL/GlAhMlO07yZLK3xiCs95jCoIqXrgjOyNLonSQX+HMpC4rzYSsGPc6sGud+du9ZdMfXK1F5qSMCgXMgRk1DmY4cfa+zNyaaaKnbVmgPSmE63upKyi8eT1eO1OA2KzSyE5FChHtMAJFhR8t2lSlvOmIq8/FXzeIj00kyyOHfpbfenbcecr78BOESe/Ymiy6PyEKC0i4RzQ5AbRXnTM1GeWRc2uTiyYUsErbJ+0XZBs/dosNoRHkcawmj4878KniR2TS9mU4Bh+p00fr03xqq5Mp6ht10E88ly2n0MZRPu8qf/PHaMHRAG1VxDaf2ciD3mYB6iN/4wa8r/0lJfc1bOL1VRvNd+p5BmXljxM430lRYdKmZrzVM/4awA7eSQ6xzkDbOFLjI7qEisA8m9tzwAnkLgeUdTWhpAXfI8RVCrWo6I6Iz1tbfgMfXHVjKxADHICOkTV6Wn9AUTJmDaZ8L3TlQjo8OLy5MKVeiEEIgazg4G9dV0FGkicr3COHvyu+aqumnUIpzCKzFl4qolj/2gZ+JyrfI1qyhNMzlhF3yIBxtntDYISmf7uE5Tz6TmyP8HuMAMnfgimR85VaUYwbHtsjlyALDvgD/LNEDLJwdm23cxA3t
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(956004)(6512007)(2906002)(83380400001)(6486002)(2616005)(4326008)(316002)(8676002)(966005)(5660300002)(66946007)(66556008)(52116002)(6666004)(66476007)(1076003)(8936002)(38350700002)(6506007)(186003)(478600001)(26005)(86362001)(36756003)(38100700002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FjQwruFO04/qKKFkJbl4o5UPcSJcjdLxqMyz9TyBnPMmcP+WEVrfE4wdSzV5?=
 =?us-ascii?Q?/h8nlT2tZT9lNYlTBq+tZVx6bmV0vDv1K14WfDaueq6Om+HuZCcWiGpCGtct?=
 =?us-ascii?Q?pzucNctka9TUwS3LIfCFFwMbpxRb9IxkMCyN0ZTy3swyK1P5irbSc3a4VDiK?=
 =?us-ascii?Q?ecj3qJCR/uPrdp6vfYesEn0yI4TI0LjBbh7qk+lZMDzd9ejQbyfiyjnK89xu?=
 =?us-ascii?Q?8n2khJ2EaPmHN8tn8CwcunFsa1Qx4GtHNT80/rBOSSwtcOvgZlzDK4vs+fLf?=
 =?us-ascii?Q?lSnh0wFq5GUHHnLd8i4g77KD0LU3kyOo13W1Dinqm67kFWjYK8Fmaka/b4lY?=
 =?us-ascii?Q?HZL3pyqVlLCdDttAWjcgSdp6xblw79yhpGFl+P/ILuzbd30PkqoB5/rs4NJl?=
 =?us-ascii?Q?jHdypGL4FnieVqzUy0ukirdgce8qURQIz3d/sBevd4xdMAVq5iPuQi9afvq1?=
 =?us-ascii?Q?hO2hTlGwWKCRZ91N1fgRrnrFUXgdJk3B6XmnY6obdTS8MW9x858ORqrWmkGf?=
 =?us-ascii?Q?D6kyC/sD0DF52e9JtA9559IlVUfIMKJoPRXnL/MbFMGdSSDnZ/Cvg/ReRYfJ?=
 =?us-ascii?Q?Dtyf/xQlimEsHvesOEBjaZ6HpDM2Fbje3wuxAUqQ55Hl4N+lITN1QU8II3hT?=
 =?us-ascii?Q?lvbOihEgDalVILFG1T5cvTNqSGkTqaPa2paOK4JXeKo0g4rITHG5bJLXO3HE?=
 =?us-ascii?Q?z4Rkq1tLiH6Bk6OaZ3YdM6sdNefmFOlLDYVaETcysETxiTFtRWm9Nx7BBwoS?=
 =?us-ascii?Q?iS/M5uuNk3nSxIFCGv2QREoXvlamt2FiQw3DddphWBJoRNhHs/AjvdUsB5aa?=
 =?us-ascii?Q?Onwacnr5VqFGP6fEvhtmQUA35+9wxfetpxOoMGXvulqVBRkTXl0Vl4HS/oL+?=
 =?us-ascii?Q?1e0QAezsF+2pl9w/I2waksLjXlHo7G+wJ8r/8qR20woxdjCLVCHfWm5gU1aZ?=
 =?us-ascii?Q?orq7lTahCWqhgzjre5Om44uuh3JmX6/AdJKJebLDXCU9M/KNtbzuacpp5iRb?=
 =?us-ascii?Q?Dg3pQu+hNu+0PiA5tyPxxgR6s+H7cum7r3OZvl4sA1b4GSp69g2wYxeCVCMX?=
 =?us-ascii?Q?5ENBB+x/85LP5fWXarHDl9pLHm/DpaDNVFi73Iyzze0eHyWjpN/u1ocmBbbX?=
 =?us-ascii?Q?bQXcVyMVlm/Jmpb4GEMalWLEmcN2wb3f7i86cR+MoNt8oTgkaFT3bWb9YDhG?=
 =?us-ascii?Q?T8TUM610yzbLsLKc47JnchskYp9khoHwwbbSuY60A0YMCG/X/aInEoceS/F3?=
 =?us-ascii?Q?kj5/A5AIE+4I63vqU4jdllSEIwMyS9B32X+0/OK4xwsH+b1fp3sEqGHxq+Np?=
 =?us-ascii?Q?SD+699gXBDmuJ/wJAGpbJZS8?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d6de154-ad6c-409e-cc74-08d9774aa1ac
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 06:41:07.5527
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kvwwvLEPbelJKUhtYaRSzmD0XI1rFJClRWVajgUdK+WEHELSCaCG5/QoNVjWJSkI/0glXvtLyoTRN0Dz8HXOeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6028
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the clock & reset driver support for i.MX8ULP.
For some of the PCC slot, As there is a SWRST control bit share
the same pcc register for peripheral reset ccontrol. To simplify
the case, register the pcc reset controller driver when pcc
clock driver is registered.

Patch 1/9 for the dt-bindings part is send out for review previously
with the dts patchset:
https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210607083921.2668568-1-ping.bai@nxp.com/

Shawn suggests to send out the clock driver part firstly, so this
patch is included in this patchset for now.

v3 changes:
  - split the clock dt schema file into two file, one for pcc, one for cgc

v2 changes:
  - remove the useless clocks & clock-names from the dt-binding doc
  - remove the redundant fixed clock register.

Anson Huang (1):
  clk: imx: disable i.mx7ulp composite clock during initialization

Jacky Bai (8):
  dt-bindings: clock: Add imx8ulp clock support
  clk: imx: Update the pllv4 to support imx8ulp
  clk: imx: Update the compsite driver to support imx8ulp
  clk: imx: Add 'CLK_SET_RATE_NO_REPARENT' for composite-7ulp
  clk: imx: disable the pfd when set pfdv2 clock rate
  clk: imx: Update the pfdv2 for 8ulp specific support
  clk: imx: Add clock driver for imx8ulp
  clk: imx: Add the pcc reset controller support on imx8ulp

 .../bindings/clock/imx8ulp-cgc-clock.yaml     |  43 ++
 .../bindings/clock/imx8ulp-pcc-clock.yaml     |  50 ++
 drivers/clk/imx/Kconfig                       |   6 +
 drivers/clk/imx/Makefile                      |   2 +
 drivers/clk/imx/clk-composite-7ulp.c          |  87 ++-
 drivers/clk/imx/clk-imx7ulp.c                 |  20 +-
 drivers/clk/imx/clk-imx8ulp.c                 | 569 ++++++++++++++++++
 drivers/clk/imx/clk-pfdv2.c                   |  22 +-
 drivers/clk/imx/clk-pllv4.c                   |  34 +-
 drivers/clk/imx/clk.h                         |  24 +-
 include/dt-bindings/clock/imx8ulp-clock.h     | 258 ++++++++
 include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++
 12 files changed, 1142 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
 create mode 100644 drivers/clk/imx/clk-imx8ulp.c
 create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
 create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h

-- 
2.26.2

