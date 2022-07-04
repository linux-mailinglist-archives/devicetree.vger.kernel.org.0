Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2DDB565791
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 15:42:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234605AbiGDNmy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 09:42:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234637AbiGDNmx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 09:42:53 -0400
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2077.outbound.protection.outlook.com [40.107.20.77])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8340910B4
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 06:42:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pb4dI8qION2BqM/lDdfXBJZn7u30hcleO7gzV09pi6Usde5IN4VwrMOZeoSa3uEA/QyLCL0/tL4yquTC9U7HmLjWiYUfO4eICRsmUW8p2Bl/W2OimbDugGnUUaAAOUaEhVKcptQIv8c8vsQ6L4QdxZUvJ6yzlmIPFzRQA0/jR9NQyoJHIu4n4Ufn4vMTPv843yJBNXt+z7vIFSw8FAB4I0kSHEwZK5pRuDX6z0XON2Um5cgrwAlY8m7oBCQi11xJFDcW9Zn/fdu3XENzFYBm2bWcPP9SeK2oWuGaQdrW0yj4Xx1sSXEE9VDU/iC3A1bZxcx/Y+LnZfzUAWPKDW0jog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JnwRbKHhkEbCiYxr0HPFcSrAdp9w5ej5H9GGYA8HkOs=;
 b=PW269A4OeW3odtfm6DUNsvkhcX37zQGgOY7KypmUN4qg+19FsRxXTBvPz6R54cIFK7Y9cVbQijYNNBEBGOyajx1O79t/Ay4C4GE8RapWcwblmVMuHAe/IBU/VwLuV8RQgB0s+qhDueMfzy/NpT8DSLlTSmZLp+NIMDqd+/WxXDLB0cgr998dL3GC7f2Swmb1hEMUKAjv3H7J5xYuu+q+8RiVAm/zt/IG+iZEaue6Nh0g0JIfG/h0JWH79lWw38BUILsXPh3GM21ad6RSkzKTvqi/mCeoxRjUDGMp4Q49pUcnlF1H7+bpKGB3FhwKZzRnrPa6VyQU9u3tVk3cZAZKnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JnwRbKHhkEbCiYxr0HPFcSrAdp9w5ej5H9GGYA8HkOs=;
 b=IPjOdfhGTpq5kbH6TYb7r2ib3NsCl6eTdjjRSX+cwm30m3Bd7WSnA6fiRH0rhDQMMXwrm6Jgkt99rWnaMl73P8uOt+MFu772cYhzj7EgeTCEgMWQ5m2cvUnxBKN/+ctwq0oGlvczC0hChcZ4MxZhZZ40550NheNpuqq741MZWYc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com (2603:10a6:150:1e::22)
 by AM6PR04MB5141.eurprd04.prod.outlook.com (2603:10a6:20b:c::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.20; Mon, 4 Jul
 2022 13:42:49 +0000
Received: from GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4]) by GV1PR04MB9055.eurprd04.prod.outlook.com
 ([fe80::4c14:c403:a8a4:b4e4%5]) with mapi id 15.20.5373.018; Mon, 4 Jul 2022
 13:42:48 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     robh+dt@kernel.org, linux@armlinux.org.uk,
        devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>
Subject: [PATCH v2 net-next 0/4] dt-bindings: net: convert sff,sfp to dtschema
Date:   Mon,  4 Jul 2022 16:42:09 +0300
Message-Id: <20220704134213.13100-1-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: FR3P281CA0071.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::7) To GV1PR04MB9055.eurprd04.prod.outlook.com
 (2603:10a6:150:1e::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3ff2b91-9132-474c-f24a-08da5dc31575
X-MS-TrafficTypeDiagnostic: AM6PR04MB5141:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IvYRiwYa07yx/qwmB29wdrbz1ATuhIEQRLMvS0AfuJFH9WOHKJmaCYjXnooLvWAz4jvX9hhjRy2dpPuUQ01Syi9pqKwT3MfiQaqg18IZ11Aw2XcrhY4cs4H0nXtLRWVKvUDF35j+KINxD8StOhlNFZpFr12gT6BLuMsnxdCYcHwh4Iw19EbidmP1XdHNle6C44hw0V8ehU8Taz98DKf8hqwQ/Svk+2ECPct1utxYKQoTO32uOD/zxpdcXeqKEO5xPm/tBL4ydPjxPgbWy0QP6pTlU3/+kCyyoF4AYXXM9rxVQGO5IT0kb+MqqlF/xJr70nK4PTeNHmwj36EbE3jlKc33q1PfBkGN+h8Prd0VfXsfMc0dC6hM9bzuGfAZmkNgFP6KeTkISJ1enkBbGVkhHIcElaXeQpx2CewK7J6+ThtzwBn6AGtRpOr0JChdxd0ZXpsvTh5B6N28gD9mQePN5T0x4tw2St+upIY9DjuUqpaYKOW4ftkmvpsr25RZ7BmFhUQamj8ns8IZfDFI0TLdSK4EHVTLCpyRso8WKI/xj8pILyrko5diuDR51KtRB31RyPWfx1VpOGrJkkgH1mWH5Vt63dGYN04oobDgJmpblQQTcDXmzxsnnoz9ZGsqcDtSQ316Q+T1WZf+0Lm9VgY+/3i6jwrm5j33BH6Z9KG8zhyMjTGnNq+Ypsr/PImNuDkwe6CoHXH5sjI9vNfMgOVq3m6CRxoldozIaqssB0UK55D6EpEDX6E9zzxli40zjinOM9iUDu6AGAnzuUwNbTe1p3sz/lFs8e/yNsOmf6Umz13v1FrVIjxw7K1vEiV7u7ui
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9055.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(366004)(376002)(346002)(136003)(186003)(52116002)(26005)(6666004)(2906002)(6506007)(1076003)(2616005)(41300700001)(6512007)(86362001)(38100700002)(83380400001)(38350700002)(6486002)(66946007)(36756003)(8676002)(66556008)(66476007)(44832011)(4326008)(5660300002)(316002)(8936002)(478600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y+Cs6VGBMlhjQ+P2KtO2HwwpVYpFzgiYAwqZ9+Q1ktxf60rtww3UYu8sAFWy?=
 =?us-ascii?Q?nPSWtDt4leNvWHjZi/Wf6ryW7lDLJWk2+4jNPxN2sGFEA5RUJngqbcGxR0Ub?=
 =?us-ascii?Q?qXsmHHXEzIZH5ffVWxGunObXtBEPZeVCaKCxF7BUoWXMSOo2vDFeg6WZ6R4q?=
 =?us-ascii?Q?ocbF1da1SwPsEJxhWLEc37Hj1bk67O4b9nHmaAyVa5hMAGHhwTAjvjZYGT7a?=
 =?us-ascii?Q?JN9OZ5FZZrRy6A/nWnYNvybJPwBWNnfvzXTX5Bq9os9IiFqgzgZBnTOUm3uQ?=
 =?us-ascii?Q?7M7P5sk7SmSQUP3S7swvM+SfvyE8yIrEJiaOeRneLhTJEFn8OeZqLeVnPHXo?=
 =?us-ascii?Q?09GI2eio/oiZlelo5KvUAsI2cgm3ASVlw/dgeHC+mUjvxHfHsruS8jNp4Rza?=
 =?us-ascii?Q?+vlWh3pYjFYpmSB2WqYpYJoZR8sRfefNoYtQgqg+51ldPZWKZDssDUQ59odj?=
 =?us-ascii?Q?RAtfTzx/Di6YMrGN7E59KcBAVcK4FDf9ivyv2Yv7mtwo6cXZZkW+KkZH3AdG?=
 =?us-ascii?Q?q88FZ+k57o3ioCs59e5ySQoxIIvFDoSB+tXRtaS8kWmM8BXa0H4vofkthLjY?=
 =?us-ascii?Q?psytefgSV8TfhD7+IdIWMBP7Si2zdz1OOvi2kdzkJY8ZV6yNC3eiQv8/oZYZ?=
 =?us-ascii?Q?cXeDpWp1fNpRHfnsy1DVsKLS1OGnNDm3D+M2imctFgI8lm0Tob6qAzuB0yaS?=
 =?us-ascii?Q?GRU7CPHwif98cLico6Og7KYxJSPZFzx9t8Snlxm3ISzkLZ5sbdnpuMPdhYuN?=
 =?us-ascii?Q?ADLJUf8yZECcOHsW1ppeGJ/5BjTWF8q1fbPSF/r9LLA9E+sq0ZjrGhaT3zHj?=
 =?us-ascii?Q?cOxFvcgTJ5a43rL3LFc0v/NyEbJDxXvCL9q4feko4xE9Kg2tsqHYuYkKPN6E?=
 =?us-ascii?Q?d3y9O+PZV1sEjNnzpvxSuj5eSRIkHJQwNeUHQpneSZ2nX25lDPIUEnSeNB1Q?=
 =?us-ascii?Q?kz8XaWavH4sSn+NDtJcEvsjaYwzdaIf2qL6ioxJcgMBzY7RQBVpIeTVEF0dW?=
 =?us-ascii?Q?46V+kwHyHFhEJuHovojjBKuftefDsSzfS2Qg952eWEEM0X6ye+ok6G0u0eY5?=
 =?us-ascii?Q?KIVWjsvkF3HHcMGcK9FipVz3cg2Fy6XoV7fH1n3mHk1FXXx55WOvZATNAFM7?=
 =?us-ascii?Q?hXhoaKY/9VLkFGPcZTxhnjWSpQdf7BcTxVKf9jGkoTtOj1bAC4+N33RP/IUD?=
 =?us-ascii?Q?8+s2z79dHlp8DTivzK4aIds22enlpSoo6uOZCcdHdS30+oLRDEz8yyCXzJn+?=
 =?us-ascii?Q?/m1CKJovKAYOS6SOMo/TWIy5/3I3F7Ndf90YcFWW8XZeOCSe1Dpai4TQyJjs?=
 =?us-ascii?Q?HWzYJ6rbTkXuUajcx6zX07FZQ33YCjDlIWrtYfev24dElirfgHGZmkMQNsYs?=
 =?us-ascii?Q?SMQ0ChYlLd5MbXG8iN0ZVfWXZ1HJShCWIfpfu/IrYYlDzTC7N5egKMh+9u/S?=
 =?us-ascii?Q?piWHKkjFlwnnRCoP4AjN3EEE/BnOwAlApiTvzNmWyCUU4RMBvbY5qmH0o9Mk?=
 =?us-ascii?Q?HO7JNuBTYcx5n5qTSkK8TQYR+rQFZ0k2Ktol/4dpUhXVxsTSa9aDe8xth84q?=
 =?us-ascii?Q?zQWsbAjuK9fh/I6D3caqyg5kxhX3u7O+OCxtoyR2?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3ff2b91-9132-474c-f24a-08da5dc31575
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9055.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 13:42:48.8590
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kotjVO6ldZkWzi8oMa2517Vy4R2nvdXc72sKw1G+5wMUzMsmXfMq76O07vULbB7N3O7mmvYbzExD6pPqDk0lCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5141
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set converts the sff,sfp to dtschema.

The first patch does a somewhat mechanical conversion without changing
anything else beside the format in which the dt binding is presented.

In the second patch we rename some dt nodes to be generic. The last two
patches change the GPIO related properties so that they uses the -gpios
preferred suffix. This way, all the DTBs are passing the validation
against the sff,sfp.yaml binding.

Changes in v2:
 - 1/4: used the -gpios suffix
 - 1/4: restricted the use of some gpios if the compatible is sff,sff
 - 2: new patch, renamed some example dt nodes to be generic
 - 3,4: new patches, changed to the preffered -gpios suffix all impacted
   DT files

Ioana Ciornei (4):
  dt-bindings: net: convert sff,sfp to dtschema
  dt-bindings: net: sff,sfp: rename example dt nodes to be more generic
  arch: arm64: dts: lx2160a-clearfog-itx: rename the sfp GPIO properties
  arch: arm64: dts: marvell: rename the sfp GPIO properties

 .../devicetree/bindings/net/sff,sfp.txt       |  85 -----------
 .../devicetree/bindings/net/sff,sfp.yaml      | 143 ++++++++++++++++++
 MAINTAINERS                                   |   1 +
 .../freescale/fsl-lx2160a-clearfog-itx.dtsi   |   8 +-
 .../dts/marvell/armada-3720-turris-mox.dts    |  10 +-
 .../boot/dts/marvell/armada-3720-uDPU.dts     |  16 +-
 .../boot/dts/marvell/armada-7040-mochabin.dts |  16 +-
 .../marvell/armada-8040-clearfog-gt-8k.dts    |   4 +-
 .../boot/dts/marvell/armada-8040-mcbin.dtsi   |  24 +--
 .../dts/marvell/armada-8040-puzzle-m801.dts   |  16 +-
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi   |   6 +-
 arch/arm64/boot/dts/marvell/cn9130-db.dtsi    |   8 +-
 arch/arm64/boot/dts/marvell/cn9131-db.dtsi    |   8 +-
 arch/arm64/boot/dts/marvell/cn9132-db.dtsi    |   8 +-
 14 files changed, 206 insertions(+), 147 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/net/sff,sfp.txt
 create mode 100644 Documentation/devicetree/bindings/net/sff,sfp.yaml

-- 
2.17.1

