Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D71075597C
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 04:24:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230338AbjGQCYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 22:24:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjGQCYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 22:24:52 -0400
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2070.outbound.protection.outlook.com [40.107.105.70])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A3F1A7
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 19:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5fSaHqVprOQDpzCWRY2Fjb7B3OOKLfIGodzsh2Etkiu73YW5lXm6lqPYMKewe2yWFtV2aZBhtG23VQGCKr0rkSkVhs/Ss7m2yOPZJ2ihTXMtiP6kGpYHAlhsqPTtmVEcOwU0G6nVUwecezJOni98qA+2LCSqjdF8toKy67X8NPxL9OZLNrZWJL+p+WpM6TzJbapz9kCyjfXtvYC9QKf8Bfl5Y6xq21M5SxFSI5LDEclagB/jrnEr5Z/Cg/1EFG67B6mHdlqlY/a7IGn258+ONU7DWDkMxbfVrZH68eR9QylatzGJywdIOkwIQwVKbeOf8Ix7GMFlLT6hJo3f+9i6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ga/cPKTu19XWIreLzVyaFEvDwq+JGNMALWZOJbPxe8=;
 b=FF1RdB32S1Sry8LdWQ3PfBOswcUQasLj7TeGroouTiIO2EyVE2peKNfc3uDM873BuQU/+jRXeGGF5/Nh+8UxKBHhzIQwZnfUdPvYcYMFDQEshLXeji+8tRvqeBPwBVgwRGcY7Nf5bi+pFa7N4SkEr+EOhrompI6GJgnKa6JRHTma1Zhy06zLsiawGSWIHgnFg4J4sNbuq3WBe9uA350IN+0TI6j6smA+QmYsRlNGQQCyLbKJ4E29SbMl79S/H9yrKZWPlwETv60ISWccRa6fsWXgKMJ2FWE8msjboAl5kf5BXj4VECmrbDyYYwoYNG8LnZw7AnqhZVRv+2KiV8qGcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1ga/cPKTu19XWIreLzVyaFEvDwq+JGNMALWZOJbPxe8=;
 b=AzVuTT77UIoasUetVXFZYWj9+gSyFIcBZ95OmKGMRqg9DiidFtGJQnT4ykEDx+2i7JMQySuiFEq2anR02lcPV/QCQyKovmLA+yLOvX4imLvQ5QIMrunKFteNvce9jS4H+rBnUDblFSytQYh8+cZpKwlPBXL5Kd2vAJYvGd4LTi4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com (2603:10a6:5:39::26) by
 DB9PR04MB8332.eurprd04.prod.outlook.com (2603:10a6:10:24f::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.31; Mon, 17 Jul 2023 02:24:48 +0000
Received: from DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::473a:28:1d98:10ab]) by DB7PR04MB4505.eurprd04.prod.outlook.com
 ([fe80::473a:28:1d98:10ab%5]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 02:24:48 +0000
From:   Xu Yang <xu.yang_2@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Subject: [RESEND] ARM: dts: nxp/imx6sll: fix wrong property name in usbphy node
Date:   Mon, 17 Jul 2023 10:28:33 +0800
Message-Id: <20230717022833.3065617-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0046.apcprd02.prod.outlook.com
 (2603:1096:4:196::15) To DB7PR04MB4505.eurprd04.prod.outlook.com
 (2603:10a6:5:39::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4505:EE_|DB9PR04MB8332:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e702f0c-3b1f-4a9f-2be5-08db866cfdf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: crHm/aJnqY8AQbvICOjz/Mgt10X5jvKsLRbzV8tIyppbecX44NKzX9fxBKL4F/iJ2JzsISj5oBjZA3r+OxRRhXaZw4rI5rMc4xwKlKKFbU99CBieAtsvmltS9t16Tt6CkbAnIYUj9FWNLUsGI3txjNZ+KVKqr8K0TLA/Q/EFPamvfgegn825WjdJh3qyofQWOcV1y7xbtEwclMV8mpM2xrbXV9NwKxTgohYnHofhuzKIzkA3FJgXUX6MvlPwLE67mqleiNMLe4STyP6vl5yTLj+MuYW6Yb2/Xojbt00R7GB2TqzYkHeKHGU2AAnnIc/yKyjbJMp4+GmN3cLTczpWfg5xM7iYKiY5+6i89Bqpj9alU/aRHIlRzIVAtnh6uUDxIlvpOpjTzn7NNP5A2AKRKXqN3WopqRT8RwTfm8JrYVaPblMHg6h17WbvYgj7T/MehYkBWTaZIcLVRlFCXCq213kJ8N7nipllTTEuncoImckHjIT23JsLCIM1U1W/2WOstjFGPqosOxLrwYb9Tzzp6j5xC9OpYpLJ5rTXaIe0O/ZCS6xNF8gN1NxUyMi/sIIhk2Bsp5rIBxXwqY8VuHcFLBlZ50MrdPBKaQ1Ho5xNR3AC+VNL41Rk6OBkzuTjqCwT
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4505.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39860400002)(136003)(396003)(366004)(346002)(451199021)(6486002)(52116002)(26005)(1076003)(6506007)(6512007)(36756003)(2616005)(83380400001)(38350700002)(86362001)(38100700002)(186003)(8676002)(8936002)(4744005)(2906002)(41300700001)(478600001)(5660300002)(4326008)(316002)(66946007)(66556008)(66476007)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cuSkixkjjlZzhOpUpTBIQzRUP/iMv2HKSbvmnV819lhapR6HWWdAPgZ/i8sK?=
 =?us-ascii?Q?etSJ44HJ8YH0yg38Np8Yi0echQalV/Y0PtXsMyMazBhmGrxtqLB3smPIgs/M?=
 =?us-ascii?Q?9jq4Wt9CkaHbP37jHkGf/dnRmoocFheZqOF+OxJ24Tzu+sxLRyIuxThdY90p?=
 =?us-ascii?Q?Lbu06LB1WuLG2+jwoxf+K7BN8dNPAwOReydOoX56Y6qN8mblVEUC5xuGcPCj?=
 =?us-ascii?Q?wbptw+Nlx6hERwRgafXRjXMrYxC66q6k25dbXQkXYsZNnvgj8MPAH9DuVzWL?=
 =?us-ascii?Q?HoM+fM8rTQN63eoG1SJrjMosfUkoyQnMMypnbbYrOtsTnFTDHDzsbMWS5BQD?=
 =?us-ascii?Q?cL+BK9n/sYA5aAyck4IyVUv4vFVPtmO4WQMAQQEFogBmdGrsczdcGf9urjgt?=
 =?us-ascii?Q?1HNAfhQ/IWg9582nAFx8Bwpqs9EnRV3cgxMdDpWZy37MLvpgdHqEUAQMfLmj?=
 =?us-ascii?Q?AlCGNHCIC7qMNOWztMJOQlVJjKcF0nUsUutPcLXEc90YEpv3nFYR8e4DV3M4?=
 =?us-ascii?Q?ERGuB4iuE6AmVwOeIWia8T/JWTvmZbEE6MylF9fBjyjJLd+2xuc67m5c0cHU?=
 =?us-ascii?Q?+NLANZnfmS2aUj/U6t/qMh0cCdZJn4n6Qrwr2agtm3kLPo5rKbn+KypimqDh?=
 =?us-ascii?Q?qbplhuRLD8DNrBINrR42ZtxRs0ltaVSyjsLKQddsEVziX+AMkv3shK/+Yswp?=
 =?us-ascii?Q?ezJ+jw1mKlsqrU4mkX3h5OkDhFf98e2ulme/oZ/wdkR6hNxMuqddGr/5WYsI?=
 =?us-ascii?Q?BbUo4cQwWKAyfSLfpagtH6m71AbABINooYl5peMv92HibHvAjxYggoreBOth?=
 =?us-ascii?Q?TigZjgqbUMrXUD0ieJ01/fFmvsZnEHcECWP2qq7denNmeqIctIB057MJ+GTM?=
 =?us-ascii?Q?Yh43O0P4AmpGfY/fgdogf1HGrq9ZJOXzwNH22FITqpjR/a9H420nA/nKQAk9?=
 =?us-ascii?Q?d/OpXcY7b1QPckCvBuYUP8NnYwzmTsC+l7HTFgttQv0f/F07FVmsPuR3WkSw?=
 =?us-ascii?Q?pHPajxduHreafA7Mn0iJFbWJx8hQCiCR2ANfslt3z+bIQXberP9tZ4/enYLT?=
 =?us-ascii?Q?DmrtGV2n5eXCKTbI2aa3HxRp1QFnQ5NeYa1cpiq4DMRwM1m2I4DeR0TQYhm3?=
 =?us-ascii?Q?sZVsFYtwB96QY8QnMuVp1uhoJE0b6Qb0FELvY4uqACSpFlbJTrogEuy6uFEH?=
 =?us-ascii?Q?uLB7tjxHFBuduT6ErltmLUS0IoP+cIAEe5HRUDmZ+AbBETWQfwzRfsxEpi2E?=
 =?us-ascii?Q?j+BRBaIYXcA62KREzgw8Q3LBWgF/RR4fXMsIPdJ/zWYSAWK0Pd2m8RMKmPPP?=
 =?us-ascii?Q?pMhLn9ZRGwtvjF5l8EbMsWthnvpLCNUU2ZCjilAmVzq76CB8dYjVzo86Ab9V?=
 =?us-ascii?Q?yZ0jHPQMbR+Jcxg0fs41JiHhwa9xVEHC6ZasPoUtUblGu/ab52qxNEZj5fBz?=
 =?us-ascii?Q?zGDhnYdkIBlaNMqI6bRGMuTQYJZmihTXSSBcgCZWHuVMs9CdrVr34lA5q8xB?=
 =?us-ascii?Q?lrVm9eHjTrjkIVdZDQdA86y+QYxBPfIWvbywUkmLTs6XRd7DUp5H7ORGjwXe?=
 =?us-ascii?Q?0jed0Hec0jw4/VRGlnajGqcoKZAMeQgWOkXMYgi2?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e702f0c-3b1f-4a9f-2be5-08db866cfdf3
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4505.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 02:24:48.2009
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ub5EMeKt8yAAzv/bPegk6dz4I402oYhK7yyunMVjgmBgLEdof920fzvmQZ0QRBdFrzAnLbDsnL2XG08zFt2qA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8332
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Property name "phy-3p0-supply" is used instead of "phy-reg_3p0-supply".

Fixes: 9f30b6b1a957 ("ARM: dts: imx: Add basic dtsi file for imx6sll")
cc: <stable@vger.kernel.org>
Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
---
 arch/arm/boot/dts/nxp/imx/imx6sll.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
index 2873369a57c0..3659fd5ecfa6 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6sll.dtsi
@@ -552,7 +552,7 @@ usbphy2: usb-phy@20ca000 {
 				reg = <0x020ca000 0x1000>;
 				interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6SLL_CLK_USBPHY2>;
-				phy-reg_3p0-supply = <&reg_3p0>;
+				phy-3p0-supply = <&reg_3p0>;
 				fsl,anatop = <&anatop>;
 			};
 
-- 
2.34.1

