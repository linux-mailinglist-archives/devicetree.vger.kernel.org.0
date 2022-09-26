Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F00555EA7A2
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 15:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235282AbiIZNvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 09:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235408AbiIZNuz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 09:50:55 -0400
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2049.outbound.protection.outlook.com [40.107.22.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF58A1F44E5
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVZQ6W4OyA7vpSYADSjElhOc1SCQ2cILO1lp6QjsZkRIbcRxuEOb27clcE9C4+3DY4zN+ZTYV/7KymUMLYqr4D7gLHxhLY0j5QkrdSanUti21EDJhii+xNjLN/aKJcsiLKrJeFKDR5zzGISrvXlqWL9I38c3fPAyWiRwWvF7jRcyuLakDF15G0biy53ewsggdwV9Sk9QyHy9gWM4YIQrJUiJfyzZLr6JA80cIqkWYdKMBJisL7oBgB8MNgFxdQLxAoSNGwZo+ZSnZ/11oif5dl3DH+fMKwM3gCcTLOuWwKYlpFGKFyeP8I7EnBrASqbu26gdCTGB2mjGAxTaSBybYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=en5Df4l3tjb9QarCGQiSgXvsLESzExf8fWyh0syUUTI=;
 b=UtS2JKROXh17t94Aw8tD/fg3ay30l+pD8QP6o9h313I2q4xrhWYEfpRQ1uaWxyVpWcfmiWd9/Hjy/9GH4XtpXSfQK8vWuXjRWowF6xdBhOieMFxb14ropvesp/FxVu+OBmyzPPjkfLvm/M56TLU2vnaDndjaOZ7kME8FKEMluP8yhppqHTE+ID986d1ZIi1YowE2fBfGA4NASWkuPkCpJLpd6CDE2eQsgKJN5pskqw6g5NdazLNKLq14oieUxf2bGslXDYM6JalkJmZMq8U9DO2JBqfAR5G1eOdnKzwyC8/1obHDAred1mG3OrM7Zjrl6tQKZBW0w+StIU3lcpNUpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=en5Df4l3tjb9QarCGQiSgXvsLESzExf8fWyh0syUUTI=;
 b=BZop/+gf2PUUCVSdZnlA8N0TnwGs+Nym6mAaLefzQQlfzof6kVCB59OTzDvPnVwOOiTpJZcc6VpAZHGQdBNOvIQDFWBk6ygmxkpJpjsvB8t0whpzG4iCIM4pSHd+ckeoQP7h5V2xvBbkN7QzkRrBeBc0HeVMuYll4h+m/TZ3G2o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM9PR04MB8842.eurprd04.prod.outlook.com (2603:10a6:20b:409::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 12:05:31 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::4ceb:3c8:9764:6dea%7]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 12:05:31 +0000
From:   Li Jun <jun.li@nxp.com>
To:     shawnguo@kernel.org
Cc:     l.stach@pengutronix.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        aford173@gmail.com, tharvey@gateworks.com,
        frieder.schrempf@kontron.de, marex@denx.de,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        xu.yang_2@nxp.com, jun.li@nxp.com
Subject: [PATCH 0/4] Split usb otg1/2 power domain from hsio for imx8mm/n
Date:   Mon, 26 Sep 2022 19:45:31 +0800
Message-Id: <1664192735-14313-1-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:4:195::16) To PA4PR04MB9640.eurprd04.prod.outlook.com
 (2603:10a6:102:261::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9640:EE_|AM9PR04MB8842:EE_
X-MS-Office365-Filtering-Correlation-Id: 31a528db-9525-4622-e5fb-08da9fb7687f
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BperwKC7aPJ0M/ME6OnIZfZa1irC4gPqjkaEvYjYFe9PXZLoYg6QyU1ildasiFNWk/oIwT0uyCG6zwMG5nn3apkY77j9jimkeKqLLVkd26Y2Rz+nBA5Ep4pY1TH9mNRbAkfIjrIUGn0AXSAYTwOV6/KEHvvU2r/q4CtHu01smnWz5MwZMIs9u/LMNynbrC5C6UTTsYNK401ilg3KKGx/NCt904y6FPv8JrH8deVcpIbpmk7SPHZo/Kc7HgBAoswRjTCxB2Jcqi8O+IUOggC6JqL+49jz2vcCnUGqE/NYb5z2Km8xnW1X0Lh6mZM1xsL8mdZZROFKdGTY2uH/7oTCg4OQ74Dut//H7LoIlUhYgUq9oHYSHP2QKeJLKsMc0NQkNkbGxpnikk/NgfKcv+Wx7q6gilxInYHUGcUEm0xuHBQTKtfXqQwbJGt74Ctv8q7sW5tzrOIg8grDnnZqBfCu6/zoDyLat13ALChha/pie0MbLlLjD051rKT+zGHps72Q6UmuUCDHA4I6/tWF/EtPztJbpsU8MHLYtQKpD+DYA7dNGIiln+TWD5jxGcF4QGQFBML10TslyJIUsNDHmmMM6rpwtTJ6opmiy6IU/xtXI0XmsbPSiUa+PaJDYJ07RpxRM9Ubww882OqMrZ0wShG0Ldllsq8Xz++2Vkkz5gizvV3OmACxB3y+esxwr7Dpmhn2O0zeUA50blma7zXkrTYhUj85fo1Wo2BdFcAY9hIMCR0Sbhf4GUpJllkJsb7kShlOidcB3HlAQSZjWkAtvDU/TU6FkLfk92oJIZ1gFHJkdxw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(451199015)(2616005)(186003)(86362001)(38350700002)(38100700002)(8936002)(83380400001)(4744005)(66946007)(66556008)(4326008)(8676002)(66476007)(41300700001)(2906002)(26005)(6506007)(6512007)(7416002)(52116002)(316002)(6916009)(478600001)(6486002)(36756003)(5660300002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DsHYLY9LjbTZWFsGB9Ff2FjeeW7IErnYpC8FhV1q219mwuDDHQf7TKy3XOZt?=
 =?us-ascii?Q?kJ3i118a1dKYKXvBgxivjZPqNUOi5Yx8jL1cj1tVKO5IuQtEA3V+jInHsKpS?=
 =?us-ascii?Q?DYvtlDwURzogWBW/CHH3kO2FthAIY1j6Jmd6fXWBxeiVfy4MZ/fA0OcVjQSJ?=
 =?us-ascii?Q?wlhcLa95VP3RbvDgGk0CF8Q6JQvdTG80vxpVVWMdXOuzelSw6QwVJAXIQh6a?=
 =?us-ascii?Q?s7xGnEJulOdWt4va9ZDV/ieqfbHuLvSXYtZXb4DLLtlD+FkxEDhchK59nhPj?=
 =?us-ascii?Q?14q7PVJbg9UUrwLngpVMFVtayiC7ktA/i4U9lbslKi3KQEbUxmMpuKv2jWS4?=
 =?us-ascii?Q?8LoznpspzGJk3892RY4gsNoNvsocaCk0iSAHxmkwfDTuvzAgjo9mFtYEC7x2?=
 =?us-ascii?Q?ktqyzvtVAdXeZSOUmnRgT5WmpHG1vMpoWTt0BeJXFxTHq49u+T3sMmUeHUFc?=
 =?us-ascii?Q?42dBteUqoYC/69tcM9g9hTc3ElbTf41MSKosfpkVFJ46nsX2WR2kcx+KIpWq?=
 =?us-ascii?Q?b9XhxsrGas7ntNv8f6qlvGDOPMVZUADqxo5CvdxR6Hr/M4UC3gJpmthcz1pQ?=
 =?us-ascii?Q?2lZAcg6T0pjtW3Da4R8FutYR6A42up/utjL01MyiBPLGcr2Xp00zTRYkUd82?=
 =?us-ascii?Q?CjbJax860PeKzk7tzU2UlezQRGsfE7pUQ4vfcxW5382mK9acFamVku5OI5si?=
 =?us-ascii?Q?Cu0kYRZzT8TlzF+0Iw94UUmdDPDLxcVWjl0HMtv4s8bd7/gI3Z+CBOsC2W/Q?=
 =?us-ascii?Q?2S6JVs3Ii47HHBLltnNMPuRXoAA1S1TKTp7IflpZouehmVCRAGtfFNr1ByK7?=
 =?us-ascii?Q?z6czj22vJtxr32Vwj11/nr/MieXboh2gZ9ncbNdvouD4/1UqaGQyWIcyTX+r?=
 =?us-ascii?Q?EdXBy8TDKTI9a0Awz0fXE02qEszgFu6MInyfzVSVTonYeU2XlzN3cjSjWtPy?=
 =?us-ascii?Q?VresUxokNGRGX00l38DzyWKDH7OLtj/6hlsn0wlEZf85ygdjmmS0IifmJNsy?=
 =?us-ascii?Q?9UGYMI+1b3sWCs0kFF/kaVtgMwprDwPnkVo6N091QAoIssDdsU3EGHkcdufF?=
 =?us-ascii?Q?FsXWw2AEhvLAHa/CrPz5b6bVU69aiA0aEzEeLecHaCY7S962opSrmYkLBvmq?=
 =?us-ascii?Q?/lEaOcDGA0bRzhmoi6EBdyqyDE8CqDun/StgzDbOZh7FmvUs97OiH1qvR/QS?=
 =?us-ascii?Q?oOBK03WTlSon2miJ+wwS8HQ5b3HR2/YcPxX9g9XjWSFapLclVyE4BfYaGQb0?=
 =?us-ascii?Q?rzn0XNUjgm2WXBMC4MVX4EHOt4M8Y6TUC8Q2axSgvlgj9MqsR1wZTgbaFy+K?=
 =?us-ascii?Q?taVy1FWExtmCr4Zv4JrbB3MGuuRShNnJ1zvfVjRKJ7tk+1lD5VZQAhPqLg6q?=
 =?us-ascii?Q?t60YJ3ZIpiD6M+pd4mQ40TQj4vDt3cBlVWm9skr2sWYaHSQecnjbBO7tAEri?=
 =?us-ascii?Q?x+wDg79zwHnDuZyeO+a2psDRjhCr3iBMF6y4NYuiIV85pP/Rd4as0J5usXIU?=
 =?us-ascii?Q?tXD3MunJJx/IN9o9UJC+iwsjbigRsBNwS2mKQvz/5+vVf6/ELq2ahZU+GK5A?=
 =?us-ascii?Q?lXkr9zW2EKPF1/cTDYA=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31a528db-9525-4622-e5fb-08da9fb7687f
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 12:05:31.5682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cjuqwop0dsprcrm0ngcfgMz24I0rVJW0VA8BrbDEdPBzafInMkIUkzSbUYQ8mabZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8842
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Actually otg1/2 power domain is for usb phy, which is required
to be powered up for usb remote up(e.g usb runtime suspended),
this patch set is to split the otg1/2 power domain from hsio,
so hsio power domain can be off but otg1/2 is on for runtime
PM.

Li Jun (4):
  arm64: dts: imx8mm: remove otg1/2 power domain dependency on hsio
  arm64: dts: imx8mm: correct usb power domains
  arm64: dts: imx8mn: remove otg1 power domain dependency on hsio
  arm64: dts: imx8mn: Correct the usb power domain

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.34.1

