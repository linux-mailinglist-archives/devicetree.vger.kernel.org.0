Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED5F8576A75
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 01:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231540AbiGOXNL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 19:13:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231904AbiGOXNK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 19:13:10 -0400
Received: from EUR02-AM5-obe.outbound.protection.outlook.com (mail-eopbgr00065.outbound.protection.outlook.com [40.107.0.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E348F5926A
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 16:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X3gX/rjD9ck9BEdB8tq5iIQ5LrXJwnYDm3jcpBh7bPib+B42hxSFP9jryFRVBdPqTzp2YepkWSz4F8v9Y3pfqSsmB3oFfInnnjHKD94eYxhE2PpLeMERQKYE4uFDndMr9YCGjk8kFpXX3zIMJxJMakiFOu9LpI4HdPNYdasST5lhtwwhvCrI0IYVx+EAUFBZSs816lmnbnSYEaHjWCepoRuWK8hwUs3heGZthyzQ7GNN+nXpXkRRSFwcx7SwLniptb5nq3UB3pzwAR4+S200W/pha4pHKbyOOri5xwUp2Q2vAgZ6/ceLXM+qdKXZwqhKsrFhbu+OO7bKUfm2MrC6Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vgKd5oy9KhzHO29hnhhY7+SyjEV2zUMNv9ZsFs9aTd0=;
 b=gOaFVFHbAu6EG+HpNin7Bepy96rdVOLNEBBiIVmh/QBP1mTB4sF/YHhbgt5aAkDc+YJPtgVbDZO1hJGUN7Ir1ezKF6+xbMO1hsartgq2pn9bYgYLxi99iagi0rZy58tpfk+/XuSPXa/HEdvNCq1u2qIE7nbNgYPfa81izDQtFFmTJCLPWlrBJUeql7y4oQzZho6Swt208t1Sh88fsnDNd/VxN6Da6ChM1VdZqnlmwloc5NwracigyBMBiiTEyTgsAKQJefmDhb67esjVyBZeOFmD2QHL1L+W084ifw8uO3qIXQXKvvR+bWDUGgRSQPfoW2J1QWj/1j+uBLO+CIHXig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vgKd5oy9KhzHO29hnhhY7+SyjEV2zUMNv9ZsFs9aTd0=;
 b=g8n5qDZKE+juXBe/B/fMKg2Du9oSWr8RG0EG4UtvleZ1sl+ZhG4LF76n1bf1AoGS9wNRyseXN9nfWNH2PSoym7W6MeBzrV6JOvb8XrkQ+9efQxOKJTgFunvTIKSQSeLwPvpjUTHwsPhtrQq0+uWK0qm11ztjPscqL4kpsSv3h5Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com (2603:10a6:20b:3e8::23)
 by DBBPR04MB6156.eurprd04.prod.outlook.com (2603:10a6:10:cd::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.16; Fri, 15 Jul
 2022 23:13:06 +0000
Received: from AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c]) by AM9PR04MB8274.eurprd04.prod.outlook.com
 ([fe80::f46c:5b09:72eb:638c%4]) with mapi id 15.20.5438.017; Fri, 15 Jul 2022
 23:13:06 +0000
From:   Shenwei Wang <shenwei.wang@nxp.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>
Cc:     devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
        Shenwei Wang <shenwei.wang@nxp.com>
Subject: [PATCH RESEND v3 1/3] dt-bindings: firmware: add missing resource IDs for imx8dxl
Date:   Fri, 15 Jul 2022 18:12:39 -0500
Message-Id: <20220715231241.346778-2-shenwei.wang@nxp.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220715231241.346778-1-shenwei.wang@nxp.com>
References: <20220715231241.346778-1-shenwei.wang@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DM6PR03CA0064.namprd03.prod.outlook.com
 (2603:10b6:5:100::41) To AM9PR04MB8274.eurprd04.prod.outlook.com
 (2603:10a6:20b:3e8::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d17827b8-f965-4fe2-11fd-08da66b79315
X-MS-TrafficTypeDiagnostic: DBBPR04MB6156:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1P8M8y6FzwlpljJPbhCZwRL/3VGi3HzTXRQ89Z6mmgDyr1G4lUHmCXOLmmpmQ0UqxwFvHcQOAeWFaI/qGHmjujs8B9ses0TPyHSrPKHAKmv1jy3+Qv/MBQxx71glIHmzWqQ1dksjlQF0i3OCnj7W0NfCRmD72tNdkNzqV3+JYfjNabLxz11E0gbFYWzmvouz3LmE1bQatJalL/2eISrhTQdnAHYnyHSveMJ/t9fwmBRbU1NjwK0AbI22p43L1LqzWcd5hw0x9BirTkk8tAzDxBSp7Y0TjZ2B1Yqp7VlJEQwAq1wuaejf8SD6Jj/CLaDbdQa45fTEJ0o5OuFuPVFQSCnp0gcB77YENYgp2wUUqJtDdjj2Wg0iAb3k2moqV+DfE3uXW/wmRxS1cY2SF/Vtwq2C+fACQXrNDUbjj5hP8XZjj0DL1oLu+ncTpjIuoodQWL+xJo/hLqRytuHFSP5lI2/vvqAu910Q/WLvVLxpgzCiGhSldLfUhtILFKK5jqFrdX4iKaGO0786LAAdanvHOyc3z8HKqJUsy/gfFh3yU60Y5X+id0muf0LkvGIv1lMTxb05iHyV3uajfdn9CUcl+KE4WMF856wk0/Fyj7rvdDvG4jrvHmEtKiIwgugiTqV66UhgC8JNNJDRqP2rGeB3EsUPqdDcgAQicm1ukNxL9xnj738WSqxUqMhLAeyFYN6tOqi2i9lV4rahF7WrA2nO+upwAdKN9OFrhHPtuqYcSQFG0maaAicE+t90OcOAvafImZMRcQ3y5py6gUY23GF3QAt+xG2KGIEEP8PXdNyUoUYpsfZE6TiphLX19QIGtBd9yucOMnouQ5CZE4998k0rZQFldNUA+r1Xt1WSkJJuqa3ffwlGr2TidbKwkJIYct5W
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8274.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(346002)(136003)(396003)(376002)(39860400002)(26005)(6512007)(1076003)(6506007)(6666004)(55236004)(8936002)(52116002)(186003)(2616005)(41300700001)(86362001)(2906002)(6486002)(5660300002)(478600001)(54906003)(110136005)(38100700002)(316002)(6636002)(38350700002)(8676002)(66946007)(4326008)(66476007)(66556008)(36756003)(32563001)(47402002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vlitfr5zIPEvm1aP2dKpIyM5tXXjWD/49p6U0jExJbbmtZdYRrgbbC04xbVX?=
 =?us-ascii?Q?Ddm8zju90zmVKRmir+GAYNnRwj/kTWGp1y/aeVnh83euxKC4EpIVv6yL3Ln0?=
 =?us-ascii?Q?HyRFvDiFPew8rvpPpPLTIf0g76dVrHjVsIwb5FMxdOOuJaICi8ijff5GF9zn?=
 =?us-ascii?Q?OkPHKRGSGjEw72je+EEnZfhBur4gE6svNr7B1C2tQlDxXWhXz+LbKZ6S73UP?=
 =?us-ascii?Q?6RwzfI/6xBCrrn63ULorwq9blZOyk8/c6QL83hrceAHOySPofqQUSX2ZJhro?=
 =?us-ascii?Q?Wz4ep/QzhwVYdzmHmeL90TQ6HGL6AxeylWGU7E7kPpwmj84gLZl0wRqT0L97?=
 =?us-ascii?Q?Xx5XOWiaMe27EGXaenIKrXdx0SULCL/gQE1GBsxG7piH76nuhmn+D93CVYvA?=
 =?us-ascii?Q?wAlY3+gqUGOL/dAL+e2RUPvGHQb9XF0DOfjA4tu9264ntCK4JA2SpAo0ag5P?=
 =?us-ascii?Q?PBcDHsozBX38rqvmwXIEpN6lcZacxULk/SgdMQ53sa1i3PN3ZUuBcn6SC7+h?=
 =?us-ascii?Q?w+aRk81qzIOHi3NJeRMDPBdkfXyFQXiu5AHcKimIIbfcGo/wX/ZvJ15+pE81?=
 =?us-ascii?Q?TQHFl1GK0lw3EIRYDHSkvE+Z5GLC6RtrZz7rA817jtZcZqP/TZOAgfaj84uX?=
 =?us-ascii?Q?aIKIkFm8RMLiiBFhjXqhANOJrHPavaabmAJ/kI5eLeDOy1j06JUksfLzw5F/?=
 =?us-ascii?Q?EttZhRrzRWQmPiW6ZDnWJkI0gRYN/ZZss/e8oTgFIpFHBovdgJiu7xLEB/u3?=
 =?us-ascii?Q?4XlJB8B6HV9S+ic7CEgRnPWrRnGneH32cH2GL7P8fVChzY1CGu2SdsCkHhcX?=
 =?us-ascii?Q?xBHgANLesOXL5MaaYCBO7wbFDBsmb3hQQkvIujFgwT5WgiJHAdNpuKiM+Wu+?=
 =?us-ascii?Q?04x3DMhE70Jj5Ynf1byz7pGytNsjQW9F/aFYL7XGXyr09pvxjJ3yh8M5IqFp?=
 =?us-ascii?Q?HW1zoViY18SqrSM31YkpohsXteRs2aqtX6E4NH68QnPIaGot8FMwN5yKJhMU?=
 =?us-ascii?Q?/9q/IC3IxSFGHapJj5shNcwsQGUTijOEM19Oy4q/H0daCEI6ISqJ2kjEUSE2?=
 =?us-ascii?Q?c0oGszJ0Sqnzn09PbyYK84gfaaaMYjnkxt+zYdp9726t1mzW146A2MYx14zJ?=
 =?us-ascii?Q?rzi0t17Uu64tSH47WMKo0jHwrtf4SA34CKywWcKIlD9cXI+LLJDYUzmzBs+E?=
 =?us-ascii?Q?+6azD9nKSJwJxA1e+yzDimuWiUJfc25Ak5gawNqV541YRX3Tc7iZ7BT5LOaJ?=
 =?us-ascii?Q?Dl/ZCVjmf4uxlx+ANG1SD4lhVEKGqQr1bBaPlF+gUzwSUNw/yZWogyTUW910?=
 =?us-ascii?Q?3TDOQI0Yeh0d6fM9xTW0Jiez0MVyOyPiy6O0vRwYe+0F8wfk2r5pdi2XFHV6?=
 =?us-ascii?Q?RJFzJoM+haKZgzqRF4HGWB1SsPjUKKRbk2zpiyORB09nn44BjsmnIcJ1XIzH?=
 =?us-ascii?Q?UZ1wDvuRcSJ9I61OqHNXIri6RsXTVWAXqWdTT+0Vb+N1e2SwTFROJJKUm8Lq?=
 =?us-ascii?Q?1ZkqtdE2F4OwkpyACJnXVSLhPVSUbZ270ZR1G1hMGKT9U7I7it1tkBVEE0wG?=
 =?us-ascii?Q?N2+JG4xAS6zS+orlvIibAYBq1QSO8SUB7vTtDI1bX3SCKbgxu3MLgdoXIkrT?=
 =?us-ascii?Q?5Q=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d17827b8-f965-4fe2-11fd-08da66b79315
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8274.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 23:13:06.0900
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZRihjGHfwb2NWpS3I2M+tkAj6IadhAm/W/UQTOF7h6tQvFIFsRRqLvs0xcJoLYWw/nWkOkq7ou86ktBDWlPgvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB6156
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing resource IDs for imx8dxl.

Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
---
 include/dt-bindings/firmware/imx/rsrc.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/dt-bindings/firmware/imx/rsrc.h b/include/dt-bindings/firmware/imx/rsrc.h
index 43885056557c4..1675de05ad33b 100644
--- a/include/dt-bindings/firmware/imx/rsrc.h
+++ b/include/dt-bindings/firmware/imx/rsrc.h
@@ -37,10 +37,14 @@
 #define IMX_SC_R_DC_0_BLIT2		21
 #define IMX_SC_R_DC_0_BLIT_OUT		22
 #define IMX_SC_R_PERF			23
+#define IMX_SC_R_USB_1_PHY		24
 #define IMX_SC_R_DC_0_WARP		25
+#define IMX_SC_R_V2X_MU_0		26
+#define IMX_SC_R_V2X_MU_1		27
 #define IMX_SC_R_DC_0_VIDEO0		28
 #define IMX_SC_R_DC_0_VIDEO1		29
 #define IMX_SC_R_DC_0_FRAC0		30
+#define IMX_SC_R_V2X_MU_2		31
 #define IMX_SC_R_DC_0			32
 #define IMX_SC_R_GPU_2_PID0		33
 #define IMX_SC_R_DC_0_PLL_0		34
@@ -49,7 +53,10 @@
 #define IMX_SC_R_DC_1_BLIT1		37
 #define IMX_SC_R_DC_1_BLIT2		38
 #define IMX_SC_R_DC_1_BLIT_OUT		39
+#define IMX_SC_R_V2X_MU_3		40
+#define IMX_SC_R_V2X_MU_4		41
 #define IMX_SC_R_DC_1_WARP		42
+#define IMX_SC_R_SECVIO			44
 #define IMX_SC_R_DC_1_VIDEO0		45
 #define IMX_SC_R_DC_1_VIDEO1		46
 #define IMX_SC_R_DC_1_FRAC0		47
-- 
2.25.1

