Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4DE77B362
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 10:08:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231491AbjHNIIE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 04:08:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234591AbjHNIHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 04:07:50 -0400
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2047.outbound.protection.outlook.com [40.107.21.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A88BB1722
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 01:07:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nv/zjQIddod9SMJIolf44nmd4Xieb5HJZTq9Vvtzig98ihclnli/cgIFTmk3QBK8W6pWiCExcO9lNSk+Cb6pN/PMtsvgILgYJuh8vqRAbty6oMVKotm9r9vUZSvtXMhCw53pDcggW4s6EUNSUlrHXv4lcG8WGrr8+otHyBHmvjYzgiROteOH3qQ1x9F7fUiovz0SsAnc3FGAoNG1y+pzV2kAP0Kss16kVREX242LoPY9KgpIm+oVNLewO0LCUDZJxFJGYPqUK3uHMZQAT/bXwq2Omsi4Gsmmse+qDZcYVqh8MdcODugZfu8stdaEU2nVZBsEvAkNbvTC2Cnqr6aFjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IluMsJsOgvtrfEdnoANyYFKUSyvXDF8Jm0LtUrQYL3c=;
 b=OMRIBFUYVuRzij6oCMp5Kq4gNceGCTguwXIzeqAfPP7uEi+EuNq1QG7Ekgn5GiNyZ1mct8aBhuAq6GjcQV6eJ4+DCy8rQ0Cj7puBq7Lde8/okB9xdQNetxN3/6HwIRa6vdLAIrcqzO8Jr4y69Wm9lEGn8UDhkk6GPPuXHXUri4uDI5UpCnR38/I7rkQVPRFV7i254Oa9TB6Otb+4tFBgUdYsjAmx4oZR6NkfL9lHvHUm5EVNLhO2kyxvblq73Ckcc/zK4GAn///UqfhS17l4+xgohDs8DGEB98b/qOilq6aPoPWnuBh4Y6iU35YmZKHUbnrIO3aUCj4fnB1kntlvcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IluMsJsOgvtrfEdnoANyYFKUSyvXDF8Jm0LtUrQYL3c=;
 b=Vtdf6nv6fuF0YDswMjVE07My6g4WolyKsxXkdmasIYi7I/xDcPDaZI/WwwZn7MIHGmekyGrwVxumN/rxGDFAYyYq+m/K5SKDoVJ6MbHbbcMCpo9LLs8MBsHJVtL6yTz/hJr1+tH8DUQ1ZcC6FpWW4AKogvd6FNW1RPNeX0K1TnU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by DBBPR04MB7785.eurprd04.prod.outlook.com (2603:10a6:10:1e7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 08:07:38 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::9018:e395:332c:e24b%4]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 08:07:38 +0000
From:   Liu Ying <victor.liu@nxp.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com
Subject: [PATCH 0/2] arm64: dts: imx8mm-evk: Fix hdmi@3d node
Date:   Mon, 14 Aug 2023 16:11:46 +0800
Message-Id: <20230814081148.4027053-1-victor.liu@nxp.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0004.apcprd04.prod.outlook.com
 (2603:1096:4:197::22) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|DBBPR04MB7785:EE_
X-MS-Office365-Filtering-Correlation-Id: 673b83c2-d7e7-4ae2-e3af-08db9c9d868e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hTzkQF8Q4FtmvHidQFqGr8CSq6Wo7Popt6ywvjLi01PmdY/CoGYtTye/Z+u9kJPowuwhxNVLh6BE3GsEzDH7Z1GmT5WCub4+OUeiAW804gHqivlu1PAOUxfhTDJcjBCfrTFQNw7ScxxN2ZvoJknNDPAQXF73dbq1fm7T6ZhgTQpkFdHMxvit+NW0NggCBmsciAt+DRAWeQwY1HzM3hBUdKWKWCAbe+27mLKqfhTovnjSXUlVJsDL5HqlQFcICH2MH7fYNuWriKOA1iSEDwvm+RL/E8YNLZvJpgkBXes21aPzB2MGTra2P2JRZnU4g5kumhvz1UO4ke6rbkGJhUIMdoQ73Ssp+qX6wkG1EUaty/pbs/8mtz7KUAkqp8zpnr3P/n83zyWMVJ7Wb4m4Fv5W7TPl7QjlP+wQPqNV+PTCLxXlRrwx5hzByBQSNrK0RpjkgOdxCwi7CrhiUty9qKwI7e4lYm9TDkbINPUpKg05ag1+NHuPb8cnk4KKP76/IUpKMGq9yJS8KQn7IemDEMpQ227QAEdzIM7cy0arAEGvQ+O9r+dNHeXTXJO4u8GYCmnTvolFGA7kQyaFten/Z8+XCAxeCOf5XHA0qx3+pukisTJXy5ZqKZwNVFK2BL/kerkv0o8eq2Mad73+zPK+/zdPsw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(346002)(39860400002)(366004)(136003)(376002)(186006)(451199021)(1800799006)(26005)(1076003)(6506007)(6512007)(36756003)(86362001)(38100700002)(38350700002)(316002)(2616005)(83380400001)(4744005)(478600001)(66556008)(66476007)(66946007)(8936002)(5660300002)(41300700001)(8676002)(52116002)(6486002)(6666004)(2906002)(4326008)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CpvyKtf431hEZyX3AiUTASNKa5O4OENBj25f6vyrL/J9DJFbdK9+vps1GkqD?=
 =?us-ascii?Q?tWprjKeMBACq4GVLXfaF5+UzMk0/5OVHKppbWkbRqiGNhP+66U9Uaw7wliBf?=
 =?us-ascii?Q?VKqIze7W4mbp5c9UxLnzQnxF7NqO8oEDb4Qu57n2KC09DJbQOp3fiGSTo3yU?=
 =?us-ascii?Q?tDWUrLYM+vsGvHYviEF41XNvBBvqowUrxwcCYvrvGqS5X1x4p923xBfHRPy6?=
 =?us-ascii?Q?HmhLj/ZLtNzzIdAxS9oTebgBsPnAiUIXhavz9JNXEUaw3jNCEaGmDhBbX5iC?=
 =?us-ascii?Q?gEfpLgww0IgCbjVMXvHfaR9iER5KokNpmVcU5p2F7Ta2POAeUuFZ75bcsxiD?=
 =?us-ascii?Q?QQrczRvPOlTae15iG7iMAQp8X36PiHhkIAuJKUubxvpa6cwDl3GQeALz/S06?=
 =?us-ascii?Q?g+n2pGnS/bvXEl6xKn6fpPeQKsjHEY+kEC5BS8r+gSru7E72n6gJWPjZOr7t?=
 =?us-ascii?Q?qEUeHtAeTEwLSdOzd++FW2jqFBXAOkr6GotswXa/K4jY1FZfXCOd+KEjf758?=
 =?us-ascii?Q?v/xahFv9WKo/fbsIX0dLZnAS34AJyzCTPf2GTiuTdPJSENaP4k9Kzvo+hRLQ?=
 =?us-ascii?Q?gcj43jAmwujPpjj9IcPQEXeU0IFRQaVGCKoaostVFoogLb/TVQJ4lC8g7gAS?=
 =?us-ascii?Q?RIn/jAnuZQQivl633XbYqQdH4RjWAmF0XmGCCdLH3C5Ff6pxd6MepnUD4fJm?=
 =?us-ascii?Q?cXfcfzKQ4U0BGo7VNJcIw/CYYmgs/lhRYTWEBtsPLVAa31s2YKzaiaW4kLmK?=
 =?us-ascii?Q?sYGLkBwUGNzebepS8oWs6KxPsC8jXujBkQHtD8mtdu/w6TmcnZcja4mTkALA?=
 =?us-ascii?Q?2F8e3Z76wEItIDYTIlYCnGEoFQbliQ5bpy9ba2E1gPbih6XhHUE+GUgd0BE/?=
 =?us-ascii?Q?BSJhbPEuh0XCOZcnpTgVqQj/tHNM7oav/Spsr9VUnQvvdL+Wv4b1GxQFYxxF?=
 =?us-ascii?Q?mSD3gCT0kzZkdc+oxpJW4eo9KyLTZjCIKH5kAhUCRXLHztS2OFePH6yYgoYZ?=
 =?us-ascii?Q?yrZ7pFA5tsd6DOhCY0bISPCKufag1wdkNIB8drIi/IKPVa/68UvXdOBk4p3T?=
 =?us-ascii?Q?MqVTc7BLN1VcfHiDIA7oETsX/uaC/BZiopfUwfss41oecaVva8dhzAbVaATD?=
 =?us-ascii?Q?9Tym83nmlJa4Fcq98K+GFWsP6ZPEpmdnGlOs3e609DFYSqS9E2JhM8P1Gtw4?=
 =?us-ascii?Q?GvemL5p5Z7j0fxzJN2WqFNbpQGKySTtUgVeroZJAR8v4Aq/TNX4N0sfY14Jt?=
 =?us-ascii?Q?U4DaSNrB50lMzV7zJYM/Q2KhyyK9EamoT1dMl1Cj0kjZZ09QLrlV/dBIm7nx?=
 =?us-ascii?Q?i7svQaDZAast9GaP+GSyDR3JZps2BjrLFR04unEn85yF66tzgF/ejQeri5U9?=
 =?us-ascii?Q?ii0qj3FZjYMwvCseSbi6y3up6zUNb2M4wAozWAKUYDxETiTJ42aOLbZh1Urs?=
 =?us-ascii?Q?TwsVDmsRvOrI7vA3cNistBboCv944o2uGrawJGlwMXhDT+EAg7Eu/wYEaSDA?=
 =?us-ascii?Q?OOZLlG0Rs6u2NVgMY1uBbhf9uhhV4XSp+FvlOouTqoaet7LLVcoD9ZawVqTV?=
 =?us-ascii?Q?vp91x2CirgPgtSMaXRimdSvjSUaWNCaB7Ko7RnjZ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 673b83c2-d7e7-4ae2-e3af-08db9c9d868e
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 08:07:38.8289
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wDlMojViRh7fNsx6FGBEbyH3LGh052hNppvwT9YuCFSD2PFTOxQMDCioX58xcdg68CFhjnvTBOgej9MrcA5RIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7785
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

This series aims to fix hdmi@3d node in imx8mm-evk.dtsi.
This should make CHECK_DTBS happy if we check imx8mm-evk.dtb against
adi,adv7533.yaml.

Patch 1 is a preparation for patch 2.
Patch 2 fixes the hdmi@3d node.

Liu Ying (2):
  arm64: dts: imx8mm-evk: Add VDDEXT_3V3 fixed regulator
  arm64: dts: imx8mm-evk: Fix hdmi@3d node

 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi | 32 ++++++++++++-------
 1 file changed, 20 insertions(+), 12 deletions(-)

-- 
2.37.1

