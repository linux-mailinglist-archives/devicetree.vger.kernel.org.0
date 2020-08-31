Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7261257667
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 11:20:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728384AbgHaJUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 05:20:30 -0400
Received: from mail-am6eur05on2046.outbound.protection.outlook.com ([40.107.22.46]:60449
        "EHLO EUR05-AM6-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725829AbgHaJU0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 31 Aug 2020 05:20:26 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZPmC8CdJqBXp2jaiFE0nvvF1sVX8lTMRQF1yCdsTeI/FdDshZcaghgnJ3NlqZ40/19bPsqveWqMW4ZIkxW71BAxgJ1eehz1T1s2U//piijowkmUlD3X/nKRWyKnY7NYq1tP8zqKEaRm8+C10ufsvn+b0TGl9XvKCqBh37vUtpvEGX34nxhvdkoqBsrWCTb1xhnup4Fy9eGQodwbW1IvYFFYDCrdUav73eN5Rmi3MBviyI4SuOLEjWRfHrUaLtolII3EGMPW4K6eVdT7MzKM2cp2pXvB4cSfjEPAxXVD3UgSZ9p7rycBjelryp1sTJjB961VZKi2AGadfGK+KhrXjeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ex8FmJlz5R9BhXNqzflo9EnRYJCqDT5WEGQg432RjJY=;
 b=U8FadOxirtnGoFP8h2wqcy3mXcKYUzNh8K2B9HlIKTnt4S0dc+MGgN6isP3cZHHMOhiFZkJQU+NH/Tt6QX6NgdwQ80hRWJlnJCxJKE6+xXVhEqqzDiUBqn26Ew6z7uc/Tg0lRsqshQbu3SbLDy6R7Ds7WehI93cFj2f58gLbgx8dAXTH044SjBm2Bdtmf6R5AB0ZN5X6JLvPXiMp6zm5zRQWJzJ+l55CwZ69Q5fcUHc8FEMDEZoY7YdPsdKbdxvBKezZTBpIM8gN0D2HgeJweMzUOpEbkkglRaOZBVWvy36ryKiytWdO33hdsbxoLHsh2R3BIhUcnugKatRKl8YDKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ex8FmJlz5R9BhXNqzflo9EnRYJCqDT5WEGQg432RjJY=;
 b=FEE0Yn4Ff/zcmHUWxYy07FQQ5WUUrZtO3DTakx2Xg0bn7Gesc5XjCA7pidLULqal4cF0QfIOdp6qm8AL+Qso30OoxLSCzGSvD5mTt8VNgN8Xi446R6rTMw2dk/RM6iAmRiBVtE740giIjVTXkqtYkXduJHV0OKC3xbInR6eLgwI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR04MB6178.eurprd04.prod.outlook.com (2603:10a6:208:146::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.21; Mon, 31 Aug
 2020 09:20:23 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3326.025; Mon, 31 Aug 2020
 09:20:23 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 1/3] dt-bindings: arm: fsl: Add imx8mm ddr4 evk board
Date:   Mon, 31 Aug 2020 17:14:12 +0800
Message-Id: <1598865254-20248-1-git-send-email-ping.bai@nxp.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SGAP274CA0003.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::15)
 To AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 10.192.242.69 (119.31.174.67) by SGAP274CA0003.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::15) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3326.19 via Frontend Transport; Mon, 31 Aug 2020 09:20:20 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1f01683a-c311-4fb5-f90e-08d84d8f1683
X-MS-TrafficTypeDiagnostic: AM0PR04MB6178:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6178617C5E9395629CFF521A87510@AM0PR04MB6178.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zr6F/fbLCUaAScLVRGy0Hmjbw2AeMkTAvWvCabTrg5NMzmDJVnpJnte5vUEfNzGTihtasZ8RRg0IJ+dpb21Nei8cma4R0e3UF3kju+9dVBEiyqDqJapyaJGg5zyTgTIGt2gBFGsiwz6XPOUJRlHbr6r8bs6mWs95ybpIdF2zyLD6mQHT2jC0BcFFYykeggM6fGBpeZer1yDy6HyXEafhVaFKg/1vQOzyJxNxAsH7lY/FI6QIHV2gjiJlsj1mo+7G+kF8fHs+1W0FZxidwjZZjYZqZuJzaREqY+Qp0dLsA1jx8faIfnWzJ/iDNKvUnzSKVifswCJhH9pLVpfF9ut/I5nb9k+gtUn8PwABF0cyiiI1kjO8zFMDAPMxYH2myP3v
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(366004)(39860400002)(136003)(8936002)(36756003)(26005)(2616005)(86362001)(6666004)(16526019)(186003)(8676002)(956004)(52116002)(66556008)(66946007)(66476007)(83380400001)(478600001)(5660300002)(16576012)(6486002)(316002)(4744005)(4326008)(2906002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: GoelZNzz1yyz8fNXspWqDVNgdkkYuAkC9X5Zix8wTSMfHO6KxkOD07Zk+gdQSoMTD1dvrBUiusbfJYj4uhDBlt878UZHHCZ9u6jYCr3aX/TQqKAj9uOal38UmpzJNCGx5kjEDb3j5srjj8wOfhcHB4ZIdJsW5ePKa2wSbxy6552HVuCo4efCGKHg7YOSbO3xSA4ZRN/6uNp073KfpqFhgqjCb+7RQ7EBYxA1mvAkDXPOJZGoQq2NtWhwwzoNmnQXInNZnaZmQc55fHQIZYHIVAIT8Gq6ejkiG5L4G4Zhbhw3oYvZGOHoDD2vM1c7Vo02YjelX+/qWjb8X8+kRCj/UPBAomp491bvWUIJFayB23JsqTopemGdJ4f4JRRsR+ityXhgOTKx2EvXGJbGD0Wxw4KsGcTlZ85LDgevyGAaN/mmeV9xeQ7Iw9u0EI0SWvg3uKmcKBq6tCT2seOKIuM8mnzED770PqlXl8XGMCdMl/JqLk0DH7pdlznI7Oep56bm+Dffcx5illJuzv4odRHlLv/RltOd2F6yeG0iwOGPFnx9BC7lEro4eZ+crRHcxpDfIIoXSJnzvlYgyWkecFMs77Fo/YWfU9/GIB/eZLCeKnKtgTyDT/xhoUmHvyGMZ7WKofUHWgA063+gRsGWlL2SXA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f01683a-c311-4fb5-f90e-08d84d8f1683
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2020 09:20:23.0952
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /V5qXXafK7Qn5zm0OR7bdxhdwVCW7T1Ir/I/uePbBhO+R8eZ3SRwE8+UFVtf7Vqf+Sh4+IOGowFVPajMYdTK9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6178
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entry for i.MX8MM DDR4 EVK board and update
the comments for imx8mm-evk as it is populated
with LPDDR4.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for V2: no changes.
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 37cef8653541..a460fef5da00 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -346,6 +346,7 @@ properties:
         items:
           - enum:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
+              - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
               - variscite,var-som-mx8mm   # i.MX8MM Variscite VAR-SOM-MX8MM module
           - const: fsl,imx8mm
-- 
2.26.2

