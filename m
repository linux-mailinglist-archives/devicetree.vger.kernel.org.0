Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED3123C9A8C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 10:26:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233763AbhGOI3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 04:29:23 -0400
Received: from mail-eopbgr10083.outbound.protection.outlook.com ([40.107.1.83]:2630
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230310AbhGOI3X (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Jul 2021 04:29:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijxLp0//YSSQr89mAUcNhwvLxDir3pNkZ1gHMuQkyEtM387IPMZfVhxsmltV9k/ctnuCd21c18ECOj9Xp/CQ1k4EwKhfYlo/kq+9xTjbGmvh7biC5Lsb55AB97urNUMHwXoDpgxQGfTNhGsDLDUUJH87aFC/tR4KdKZisJpNuPwgwZb5cUjS+A0w+Lnu856/iapumJKWtitqcsSAWSYKhwkFyjX5YMdsXXjMfyy/9xQxtNkWKCb49T6+kHxc8E7CpgWDpyZv0TwOId6NcKZua8GE3K/gcUCXHJ6u5X1WX67DsgqLpfVrFRmuHnB6hOTllthMQlRWbarVD0vGhzQNOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HKafLjIl7x65i+Xt9RdWBXqvaCYnJW/CbnjjDaT+Y04=;
 b=ZbgcVec1uel1hVGVV3pIjOLTN59Ll5YgSGae9wrXNQoCKiHhhWDrT4DgLLTMgElHkleLkJ8SKd/OwcbmnMJIPcurDAWIx+zkAT8CsSkjkm8kjsW0XicMCfaAfGWYiSwCa2EE9Dtx5vAURU43DdkP2uk9LrJH9VSC3IglHbRYnqQzu9nP+TA13JyXpNPPfyi2amIClnSP1Lxcij5V+4lhXp/QuurgwTlkaeb+BYTzuL0NxOlfelaPdd9T60V/n0iBTpdF9m/M9NrfZBLDw4RsYoShXn2gNVmguo1e09gOaLMu4ELCfES0wBmlyVOF9Erz+6t+zi5/5Ag0Lkl+dYS4AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HKafLjIl7x65i+Xt9RdWBXqvaCYnJW/CbnjjDaT+Y04=;
 b=fSJ7nnEJNNSCnRomOyrnSmuTS1DOvCBZWpCL9d5ZGo6ppnwYc6Ri+8sOFk2K1tB5Xv6GbIphc06oCXyM2wjwEuLXqE/m6YPZ+RIsSthlQYLnugmp/C/gNfXAasH+r2mG6XSrBzGJKIqbGH1ICCfq6uGKWZ2HIlOgq/K3k5aCI/c=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com (2603:10a6:10:2c3::11)
 by DU2PR04MB8680.eurprd04.prod.outlook.com (2603:10a6:10:2df::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Thu, 15 Jul
 2021 08:26:28 +0000
Received: from DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2]) by DB9PR04MB8477.eurprd04.prod.outlook.com
 ([fe80::9daa:ab21:f749:36d2%9]) with mapi id 15.20.4308.027; Thu, 15 Jul 2021
 08:26:28 +0000
From:   Dong Aisheng <aisheng.dong@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
        kernel@pengutronix.de, aisheng.dong@nxp.com, dongas86@gmail.com,
        robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH 0/7] dt-bindings: imx8mp: fix dt schema check errors
Date:   Thu, 15 Jul 2021 16:25:29 +0800
Message-Id: <20210715082536.1882077-1-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0083.apcprd02.prod.outlook.com
 (2603:1096:4:90::23) To DB9PR04MB8477.eurprd04.prod.outlook.com
 (2603:10a6:10:2c3::11)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by SG2PR02CA0083.apcprd02.prod.outlook.com (2603:1096:4:90::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22 via Frontend Transport; Thu, 15 Jul 2021 08:26:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 46f9f667-a2ba-41e7-936f-08d9476a3dfe
X-MS-TrafficTypeDiagnostic: DU2PR04MB8680:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DU2PR04MB86802038D092EFDECEDEB6D280129@DU2PR04MB8680.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UwQ97nUdlnmpV+d7kU4p5HkR+ePpsX9+oM4zC2yAf0B6dVSA7mx4ulwFxGiBbmZkXMPR5IYvAYyt7jhhHJnWfZmskYnJ2nqpI//3Q3a2ZPQKwSY1CxZ+Ev0TWnw8JC5v8ump0FghNXY4jQQ7urJ4uYGZNBCgmPhZQ17IzRIngH1O3EWivWky9XQ8w8IyZ3QSI//VDS8Dhl4B5qVHt77CQNvdYzsF/g6A24DGF6x8ksFzx9asuwlQ66Ce1cdXTTvDSVYgCR5T8oUKrqdEfMcQ/XE25ufzgMHBq94Y0nQWYYcPxberbJUnwo/nQnpsftPJFqq+DcoRdgIcS8zY0UqOb0QAWL1xxTbOZYsvg6N0rPiw8ULQ7OhKPOoDMFLcu4IuYUscKC7irUM2KqY1ZR1jC+/60/2VqGkkAKgCTZOp/AdgZdDwv550KOYJA27NlMomhBGhbA6FrMJp6GyMddOdA154MW47I9Jj8kOChsdDGznMNJ/crRZKdWe/CCHu5/71djzc0kryTkYWeMqawbw7+OjcXDkh/ooTp5i+uCwaKKG0/qJucl2AVbP/GEvPzu0LwqUNJFx7nGsbR/gkMqBckfd24sCxMQW06ZOeEmRxPSd7ZNA6zyWWXf0wMfVvz9b/lH1i7FTHbH9DeS6QkwIh0lxIF2ewTQQz4seUAfeyf/Q7563NWNNwvo6QriQeDsE0ps04BfoCv9ULccrLlbQc9OC/sN5Tasc0WxokDsq/YIs=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB8477.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(39860400002)(376002)(366004)(396003)(6506007)(2906002)(52116002)(186003)(5660300002)(6916009)(4326008)(6512007)(8936002)(1076003)(36756003)(8676002)(38350700002)(478600001)(2616005)(6486002)(956004)(26005)(38100700002)(316002)(66476007)(86362001)(83380400001)(66556008)(66946007)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kVKYB3gyIPXZHjojavg0ij1PhQhpEpiyzU6DAITEXCi4yC6ZT3cX64VYD9Wx?=
 =?us-ascii?Q?uC6Qm+mx4/ruvWdIxecScdUzxN8O0TJptAA1iaMfPAQqsHMI0+BwMQialbmU?=
 =?us-ascii?Q?iSYag+oSInT+vLFAmUYc9M3OE67AYjMEQs4hqUqQzSrPyIfanYH3l6KJQqWg?=
 =?us-ascii?Q?qjsEXLbj4effYZvig57RGwINUmLW/jdxtatZddR6alJrnx9ckvH+JNkHuR4g?=
 =?us-ascii?Q?buffAIMYE+0aVU27JjVnPuCOMSTUCHJcv2vJfPSyBfnsAqZBDg8AVzOZtILO?=
 =?us-ascii?Q?QbEpS+6KHuA21HXiWKuvdDYf91R4YQcxHLLnz9fE7k5JSOnYGX6t8FZAZfE/?=
 =?us-ascii?Q?u0rzBpJWHqiUmF1BTYQLJe7RR6EctPRSAsuzD9MHA5VRnF/4A7VlP1d1TfRG?=
 =?us-ascii?Q?2iHOvtVnPlMiphViQhpgvlGInUO7QbtBxyA5GP37fKhmua3rJ2FCiQlwei9q?=
 =?us-ascii?Q?9CJCTNwakU/mrmfn7QWMOFCeTuBg3gk1aOAltSbb4bX9Bm/RFnFlmp4e3M5H?=
 =?us-ascii?Q?CNoroR+cFmn7oncYHvm+4mBfvkyLPO+MMOWdd3CIU5EIdMu4tBmN/Jjh71Dw?=
 =?us-ascii?Q?J2JCoSH/j9Ei6sBfDDbpmpdzxAFZvz9TLhCHEVskRQFJGy5mMpPDSx+SZXB4?=
 =?us-ascii?Q?Qi0IVDMwwfmdXB1oS5rD7eR4I+eWWxJZEwmVVPCnzp1WMY3bi+EcoqsqQDUe?=
 =?us-ascii?Q?+gcCdWNKbBAJHkfthZrxaPy1g0tq1IJW51hAsT7hcY/RpXZX5iH//pkRjIMY?=
 =?us-ascii?Q?k7/qJbrg7DcDvJo2LV8JwJccILR1hWUvjUdqSt4r3Mb7mlyN1vGmYRusY7bj?=
 =?us-ascii?Q?eUjSbnldhdf+cmT2Bs0ysVj70wT4OfxDYt3ooR8LUDr4kIAwe154C6TaxmrZ?=
 =?us-ascii?Q?y7VlJYWrfolFKafy+efq629ezNJ3wtIZTo9upplSKClLxDn19JDhSZGjDUBf?=
 =?us-ascii?Q?dgMEQGLB/Y1bjYBRz8ahm+NqUTNQmUpBcfBpAXkop2Hd8EaP0SmQ00fIaCRm?=
 =?us-ascii?Q?KLMVZBGo/I6dTBgdzz/6/a35JFoKtiLQ9JgfVaCqb2m85vqgOqw1rlPwNcDd?=
 =?us-ascii?Q?ODrtbt+q4MQvPIjpL+VJC8+gD9YBaL5metw6wxtEB7w+BIuwzh8x8jzIbkjB?=
 =?us-ascii?Q?O3glKqN9xBMMqPCJ+r+SQTYo6WtbFASWmmzV73hsKiyyQofWFEn05oECoxU2?=
 =?us-ascii?Q?HjUrqlkA3FQZwWObNjTCnimmwh4Nwp4nDM4Sa4kXj+Kh06aUmPj3uiiNUTOf?=
 =?us-ascii?Q?X0u7fBxq8g4pGqMwdXI68hmZxgDOArtS5dF1a8xMj9GjK94vpqch5OZCGTf7?=
 =?us-ascii?Q?pwtYIDGpdJT6KJ/kNqKmXa7E?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46f9f667-a2ba-41e7-936f-08d9476a3dfe
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB8477.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 08:26:28.3667
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ft1SrzASHWBy0yFekIAXh4qAssZH6Rp9NQHDVYX+uF3Z6cHyqL80YSkamA4GRIBVlmR4/lO2eZ1nw2qXktI48g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8680
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series aims to fix a lot of dt schema check errors on
imx8mp evk board found by make dt_binding_check and dtbs_check.

There're still a few check errors remain (e.g. crypto/dma/fec) which
needs convert to json schema first and fixed by separate patches.

Dong Aisheng (7):
  dt-bindings: can: flexcan: fix imx8mp compatbile
  dt-bindings: spi: flexspi: convert to json schema
  dt-bindings: net: dsa: sja1105: fix wrong indentation
  dt-bindings: phy: imx8mq-usb-phy: convert to json schema
  dt-bindings: soc: imx: add missing anatop binding
  dt-bindings: soc: imx: add missing iomuxc gpr binding
  arm64: dts: imx8mp: fix fspi dt schema check error

 .../bindings/net/can/fsl,flexcan.yaml         |  2 +-
 .../bindings/net/dsa/nxp,sja1105.yaml         |  4 +-
 .../bindings/phy/fsl,imx8mq-usb-phy.txt       | 20 -----
 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      | 53 +++++++++++
 .../bindings/soc/imx/fsl,anatop.yaml          | 68 +++++++++++++++
 .../devicetree/bindings/soc/imx/fsl,gpr.yaml  | 69 +++++++++++++++
 .../devicetree/bindings/spi/spi-nxp-fspi.txt  | 44 ----------
 .../devicetree/bindings/spi/spi-nxp-fspi.yaml | 87 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi     |  2 +-
 9 files changed, 281 insertions(+), 68 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,anatop.yaml
 create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
 delete mode 100644 Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
 create mode 100644 Documentation/devicetree/bindings/spi/spi-nxp-fspi.yaml

-- 
2.25.1

