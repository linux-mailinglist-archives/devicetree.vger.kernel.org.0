Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C7F2581B37
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239648AbiGZUls (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 16:41:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239761AbiGZUlp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:41:45 -0400
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70053.outbound.protection.outlook.com [40.107.7.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B04637F9F
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:41:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iLrJ0Zj6N3y/KsUI53+VCsczZXh2dtFA4cV1HIHRRFNaLG7XQjAPtPaHoq2C87/LEJfUEAt+H2nRi5Pm4hItfJjdyfbdZvPwiDHUXxypLNneM5jO3JeNRvtMcWjTt2o2Kj+2xI/hIc2xMVB9mehb0NkMkIv9ZRzhVdRZbLys4yEcNz19rAHAR+fT8NKm59VrpIoWk3fFfBuHZ8zg/ZClKx0lRCBCnpqe9RdqREnoT514AFx4CbIyDLV9e4RtdzDGas+eDMHu1vYFV0UYaiXSs+jF4tx5dczETyhR7VRqXxxXNTysysuEMWfJO3/A39TqDpit3i+KVPQvmChGENiyKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HY2pC5xqaOLmE689KAZnKl30J3TnLONOqLYxM4y08r0=;
 b=HP9IAtmQkUT8LrXPMLNp6a1pbxmVgysg4DNT01hmt79XLRUbSOb03/2LTluF7M9S4+KjABtXLPCAInyCmXZ44YxUC+j7tD0ufzXD+DQAgJEMeCQ8kU6hiV9ygrAfAXxDl1GOCs0O7Zt6dZcbyTnMMlttr/k/IRU6baXdJPEAY2RbyM838ac+e/+DHJC5tT2S/t/79NakWlqyKLJMB6GxGiqoKaDrIJZr4h7R4LzitankG1ExoRSRA+UJDQV/jqb9D9TW3ttP5J+SvkbFre97Xi7Q+htdOy/PTRy8i2Vmux7fH/q0JejmFiR1wdPkAHi3dnZeqbXRFRfoZHUUI90Tvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HY2pC5xqaOLmE689KAZnKl30J3TnLONOqLYxM4y08r0=;
 b=A3zVaodacmY+5IEKGXFCuojigKBVNEjNgRkFkJMAbTMyQZoRBe37qkW13Ffqq0EVzaSyMPHR21JN4jKJB8sZ2PjJBLzL4xq0anmd41OzhW4sSw+x3+Ee5cfKaxChMCX3MeQcxtGWZUIf2Eo4CmYi8LA2j0FFzPDRi3vGj+ZaKlo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by AM8PR04MB7441.eurprd04.prod.outlook.com (2603:10a6:20b:1c4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Tue, 26 Jul
 2022 20:41:42 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 20:41:41 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>
Subject: [PATCH v4 0/3] add imx8dxl evk support
Date:   Tue, 26 Jul 2022 15:41:08 -0500
Message-Id: <20220726204111.733647-1-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0160.namprd05.prod.outlook.com
 (2603:10b6:a03:339::15) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc7151a0-6122-4fec-7a49-08da6f473f08
X-MS-TrafficTypeDiagnostic: AM8PR04MB7441:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wRiANsa6nqRtI+JaJXhZzw5BmTaCwlRcQZIupXWUCQoy293c0ncKLv89QwxiD60G2pQBwM8uC8vdtjNir1jy4TkLiEmBJffIY6RVYZ+wENTWoJvOYrf8J6/riVhiimvFeyNgJZW/BxnppxBqwJjuMVdfD8/nC46TVV8W1A0gekMVffQMsghmSbWe8IzpWNMe7wi5e+XOgdMGgqD6fxdciRo9CwtDAOrUka8Svp8xWXC1L7zlnrSkpfY/f7i0BQE7IZGIYyDdK/u9VLHLU9uGN7RhmJmQYJU8aIHeqS8QnWhwYrG0NTlgmxE91YEZKs+2JayZW5wWL4JFfKS59P0w5vWmLtVrMQ7DF+LeEWo1tcXtmFQceyFAsX96TO6uyVepERaV2b37M4lfuY1gKg6J+m3XwAfLlGjtEFK9k54+gTtEgNbFtf/cQbsgBjwAP/72+lTeYtzzi2TRIv8Qu0TdnbaKF/WyMpxhaQep5nHG/JwAnk1hX7FJibMQDhpcaBxGu/K8P4Rb3JQw3Y19j5UyCVyLV6R+apEJ9PdynXKJGEc8ujEJtnvYuyCK9BAhyRaGql/m7IyTbsd0LmAVFAGPIri3mvCiD44XFOL7j037R1BKIduiUj3ScSR0su+77eU6aA0RX6zgByn+aG4Ds/AS/xcl1bukOQvMCbzKL9P9+HPphnTsSQE9a60EFDgfUx4O19pex5Oeb4OWsIVxoRkogmRGq0SyU14yMXTppmL00Kk3IPqBRsJvEO2ie7AVvSb5BOKmrJsGbvH5zyjEz/wpG6aS76TAvuQ4rFSzhkQJ2H539vOBk9zyMp4CpQcG9Egif1S7leDnmCdMlw1JvAdtyQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(396003)(366004)(136003)(39860400002)(376002)(2616005)(1076003)(2906002)(6666004)(186003)(6506007)(86362001)(55236004)(52116002)(41300700001)(6512007)(26005)(38100700002)(83380400001)(38350700002)(5660300002)(66556008)(66476007)(8936002)(8676002)(4326008)(66946007)(478600001)(6486002)(110136005)(54906003)(36756003)(6636002)(316002)(32563001)(47402002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LkuZV+Ab6WAfUO+V2WuU6M9reZsWUSxCJd52PtFqGACvWr64zZJ5/aZVqcf7?=
 =?us-ascii?Q?RnjD6t7WoSn/jRiGBvvPOop3V9YM6twamhLWqH8yXDUpxlyfrxQomxX3M4xK?=
 =?us-ascii?Q?SODCd7FBwycyXXwMqPP8ulsrEOu18iDXdjxmkjlPXRiJSbEye5wjvn9ZtrD8?=
 =?us-ascii?Q?83IXEPkqJc488PE7QoPpfk8nkmKZ+Y1ldVgjsGH7SGSCfRp+VAR8+/DwVixU?=
 =?us-ascii?Q?sFhNG2ghpvZ3Pf3wvgiwekTSyiyzdAv1OpxUyyhHfooD+noXbDiH+3vcX7kf?=
 =?us-ascii?Q?FtyXxvwf6Frf9KM76c3EDasJjhUApX1vinhnNg2jmI5GHjbZGcMFp4nePb6x?=
 =?us-ascii?Q?xk93qrZzxsD+c0AEpLV1evyG0pSTAzsGCTN8151NHm6juU5DpacEItsbThP5?=
 =?us-ascii?Q?p80tlGAiBlGisGFT5gloEhH4+oWaxZq/HUdq6wr3WAogL9SfMibVpFGsizyH?=
 =?us-ascii?Q?PKg/YinkLKc/PznMJ0jrZUYxSX2DxuGh1kopNeVTYNNw4COzCGcdqcPtkDGZ?=
 =?us-ascii?Q?3m5gbM7nU0ZfREZYL+NrBbbd7NFYGE0TBCF4+xo7KlO6jFyc4XxpHJSyxf/B?=
 =?us-ascii?Q?EaUEgb6kxMDqlNh5XO/cTL7xaWptl7ptA2q3ON0sYVDaWgyN1k1YxjpXs8d+?=
 =?us-ascii?Q?5j/pPITsvCh5eE7XDatJPHNZCdOtBlRqBSsiGhhRu97xBfvi1HVWwqmaeurW?=
 =?us-ascii?Q?+ega6WvN6P+UtCBE9fv5hiBjeF7FFrzMbhMCBq2+lbjwjdtT3WziAmtMe/KF?=
 =?us-ascii?Q?lbd5F4undm69xZkpT5cbnb77TLCsW4ffhOPNpWpfhlW6A9CIYmrx8t6hqeEp?=
 =?us-ascii?Q?p1TL25z4zwq6KKMyswT8gFI6rea72V+PT8pQv7GsLIU1UImiMnCkVjcvHuJB?=
 =?us-ascii?Q?rnGTQCUzvmVNP7saqepkFNfhyfKs5C+ryKd1r3RVH/9KTjadWZvhnVmAJA6R?=
 =?us-ascii?Q?0dnol81mMJb7lGsSBF3WtMs98D+Top18dTmkAlHgjBnP6b7+Nfh3faTu+hRr?=
 =?us-ascii?Q?HvCbWj0ABOFtt0GFiFZ7R3tuCMA4ezbwZh/iK4BY94IDdjL/4qckna4rtjq+?=
 =?us-ascii?Q?Yp3h9y1XTj4hIbIjuavO2VWGgU4whYdoe1senPxFL3TPuIjMcaOe68aLrJcJ?=
 =?us-ascii?Q?i57d3EQc+uxTDwangvegyTWhU8c0O1d/XxtL4H3/n1JDMJPnUWTWsEcxbypC?=
 =?us-ascii?Q?noACTMzvHlZmNpgwcjGCJ8qWukuqUa2AdZyQRKQEpW2xYHulHaNbSzRtFu2O?=
 =?us-ascii?Q?GF/XMGvpGrcZwOm23Mv4Jt+1cYiqFZ1wLQXHkzJwIax5jm4ALLBC/N2EPpmt?=
 =?us-ascii?Q?tewzoRvLFztunkYYKbeR3KQUvHlWvr1jE/Hr9+PUDyjdiA2KBO052JFp+5IE?=
 =?us-ascii?Q?cCzFpRzM2PF74tY0ECxrbo6BmHPu6sVxo6EvT8WwZ1b67kwGwioq6PsHYjhs?=
 =?us-ascii?Q?W+br+KNFCCk/QyguQxfRsx1KD7XuubS6te/BfZKmCjQduIXbhUZhfVGnNkYY?=
 =?us-ascii?Q?empwTEesASQJASENW1YnaGN3o5RnuNaLXF4UjcbX29lpIYJK7PzExHfiaFOH?=
 =?us-ascii?Q?4AzOX6R16Hm4GpOazXlAoVBhq+v+6jXu+kMGrt+I?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc7151a0-6122-4fec-7a49-08da6f473f08
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 20:41:41.8946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EtkA8VLk+CHGolR3mnajDHFYFIEq8X2pfaki38P9CDcPU6ERd1AFtcAan60jBWv/ycJcUNVMwHdEtvqEVzOgCQ==
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

The series of patches is to add the imx8dxl soc and its evk board
support.

changes in V4:
  - move i2c/mmc/serial aliases from soc to board
  - correct the node names to follow the generic names recommendation
  - remove some unused nodes in the evk board dts

changes in V3:
  - re-order the commit sequence according to Krzysztof's feedback
  - correct the syntax and styple problems pointed by Krzysztof
    (Thank you for the detailed review, Krzysztof!)
  - remove the unused nodes in imx8dxl-evk.dts
  - dt_binding_check passed

Changes in V2:
  - removed the edma2 device node because the edma v3 driver hasn't been
    upstreamed yet.
  - removed the imx8dxl_cm4 alias to fix the compile error.
  - removed the extra blank lines at EOF.
  - dt_binding_check passed.

Shenwei Wang (3):
  dt-bindings: firmware: add missing resource IDs for imx8dxl
  dt-bindings: arm: imx: update fsl.yaml for imx8dxl
  arm64: dts: imx: add imx8dxl support

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../arm64/boot/dts/freescale/imx8-ss-ddr.dtsi |   2 +-
 .../arm64/boot/dts/freescale/imx8-ss-dma.dtsi | 138 ++++++
 .../boot/dts/freescale/imx8-ss-lsio.dtsi      |  14 +
 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts | 463 ++++++++++++++++++
 .../boot/dts/freescale/imx8dxl-ss-adma.dtsi   |  72 +++
 .../boot/dts/freescale/imx8dxl-ss-conn.dtsi   | 145 ++++++
 .../boot/dts/freescale/imx8dxl-ss-ddr.dtsi    |   9 +
 .../boot/dts/freescale/imx8dxl-ss-lsio.dtsi   |  78 +++
 arch/arm64/boot/dts/freescale/imx8dxl.dtsi    | 238 +++++++++
 include/dt-bindings/firmware/imx/rsrc.h       |   7 +
 12 files changed, 1172 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-evk.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-adma.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-ddr.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl-ss-lsio.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8dxl.dtsi

--
2.25.1

