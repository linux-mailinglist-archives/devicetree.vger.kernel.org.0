Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A3C527A047
	for <lists+devicetree@lfdr.de>; Sun, 27 Sep 2020 11:35:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726255AbgI0Jfh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Sep 2020 05:35:37 -0400
Received: from mail-db5eur03hn2210.outbound.protection.outlook.com ([52.100.12.210]:63810
        "EHLO EUR03-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726239AbgI0Jfh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 27 Sep 2020 05:35:37 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MtFOivOzlgkBxq85A7J5M3+5dIwtJ3M/lq3obQiu22VFenKHmR3YxKkCsjxBafhSUYj0gBf053HhCZxp2ijqswYCYsSgsyBvAc8MYy5S7mIFsSyhg0ptczV1rgFj/JHQhMhDKCW0lcqeHeF05JzJAgIM8P7He92wSo40VSYpQmLiK4c9/B7p4XlloCYbVC9WS3MNHq3mrGedBCE0i7GKbB9AfYIFBP/WsHc0/UaYWdr0mGCO5Q4VptecRa7zRpWhfkmMzn2qunQRvic0sJg+9FVhGAsCXExQ0q6+MOlS7afdTXgfvh1kfeteKQI1PgBKwMH/V4JRU/jpHCrrGYxZew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bv7z4MYwvzIFBtRWXGc6pXn6uQao65F2eFD3p7rb0kE=;
 b=eRyz9mexY//aTzckJHIJiX26kKJL09ZDqGfOSyBW0U+AUn7AuqPYGcqj3H1pwgr7qajYz+fCFbSxkWZs2vZz2cQU+48kjcyGMiMVHrmmuxHUmnxsesHB2f+1PdhSQ59ywaDEeKMlXhpkwvbSBHMUwOj3vP9tvctkA8WknyPKWnNEsL0cUc+CaRMtCBdlMzhtl7dWhMPElybuQqVBPA2/6k/Nl5Erke2+8500D7DcZ9EGx81JI46zU+pjzujIBci6ro+KIwZeB46fRdbjvWnxytLJt0IhCDXHvDWMVST0N3Fj3wflLaMwoBniZZHdqbSQ5ZBidp/3igYaDzJ2l/O5iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bv7z4MYwvzIFBtRWXGc6pXn6uQao65F2eFD3p7rb0kE=;
 b=j36iCYb3UrZi1cX8Ac1t5f7LxP2SlbgUQHmMm+trv84anv25m5hdK/KjhT1jtHh0AHt38IiLqG1plvIYPVtNx+LV8dCOwdd+6g3XkWQmE+Eny/lQ0YiLVMzcVPLDDU27NQ6Z2tMw5Dv1TlecxN2y9LkWT6mf845SR9/ff8rpMfw=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com (2603:10a6:208:c5::20)
 by AM0PR04MB6324.eurprd04.prod.outlook.com (2603:10a6:208:13f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20; Sun, 27 Sep
 2020 09:35:34 +0000
Received: from AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3]) by AM0PR04MB4915.eurprd04.prod.outlook.com
 ([fe80::8de5:80f:f11a:5fa3%7]) with mapi id 15.20.3412.026; Sun, 27 Sep 2020
 09:35:33 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de
Cc:     festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Add imx8mn ddr3l evk board
Date:   Sun, 27 Sep 2020 17:41:23 +0800
Message-Id: <20200927094124.2714390-1-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0092.apcprd03.prod.outlook.com
 (2603:1096:4:7c::20) To AM0PR04MB4915.eurprd04.prod.outlook.com
 (2603:10a6:208:c5::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2PR03CA0092.apcprd03.prod.outlook.com (2603:1096:4:7c::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.13 via Frontend Transport; Sun, 27 Sep 2020 09:35:31 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1a5f980f-d49c-4839-09f6-08d862c8ae94
X-MS-TrafficTypeDiagnostic: AM0PR04MB6324:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB63249F58C5F652AA7E45F58F87340@AM0PR04MB6324.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:843;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nwh9L+8i12+4oMkknunuaSyMuX6BS75j7Sy/gKMw/qHsQWjWg94c1taLAzLcCRgmGV3gTyjNSEGemlq3VIjhQB+97dkxHBBaBsaalx5r3mOKB+tTBU3qtWmqt+E7tfqMdE2L/ObWkSu40Og3QnBTgoP+QuH8RRzATS+TPwRz6z2lu1uvBVzRV0U6Wpju7lWyYG9KPEQlqNxmIjNwAEeyCA9+p4gx1lutBkqn83PeHcmv2C/u2sKNadA2lBvysYWvYPx55117Gd0OP6bWLEK2u12KVZKwPgMlB0LaOgXhZPb1+hnML6Z5tMUFDZPiUV9U1c07bVFvjo0z2IiQHSJXel2jxaCF+ZLGlEghcd9k0U21T7MJ5AmGpUfZXjOvO8pkjggICLDmkn5TJU+I4Pxs1w2IgWgKaCoMf9EGRb0yJEAkUltQGjovsH946r5P74PmLiR9tw31M21gfYgr2tSQYYa8GV1oFljnoBcROHUAPUEcYL6+vIybHOLECo0wK20P+BfFI0sX/oJvXRoco/uW4dDj8aRmKXEP19/eek4tjWkksqo+x3sOasEX5ZY2UD8tLwa4WN/K6o4ht4csSCEFFd0hO7F+WK2CGE8ocAQHQAA24e8CGqKY7jwEwl92iGQpFnALBiRxtzLeaklF0+bcBxQilsjnT55yZH+VBshSIKgSACYpEycTmIEF/K88jYjUAKKO2PCP3pSyQpO4GbGEaOVV+/W9Rfxee1nj6A8EYOjoHA4RRK9TA/V/aM/KuKfLYKdsQ9rZqNnZElE1Yaa36/vks4ND0w9L1tUiJUpsuvE=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:AM0PR04MB4915.eurprd04.prod.outlook.com;PTR:;CAT:OSPM;SFS:(4636009)(346002)(39860400002)(366004)(136003)(376002)(396003)(86362001)(6486002)(52116002)(6666004)(956004)(4326008)(26005)(16526019)(6506007)(8676002)(8936002)(2906002)(186003)(478600001)(5660300002)(36756003)(66556008)(66476007)(66946007)(316002)(4744005)(2616005)(69590400008)(1076003)(6512007)(42413003)(32563001);DIR:OUT;SFP:1501;
X-MS-Exchange-AntiSpam-MessageData: KqULYzecW16ndPKv5uygrO/hZ/12QpbpLl9/UNglgj02HfUQPgkILDqqOVBMhGi6G1CEpUjolzwHXE/RtmR66UNYuF2usgU42UZahTm7CZOnP0yCaTysGZ8mC61QIfqWoqM3+FVXqm1FfcZ6WiZEJEebYf/+NUrFSLH53xQ4dzFQpOQAM/hrxIlxeDXilhdGG2PF57UU2dZcocqE+mcE2XkSwWUALZCzDY/6L08CbpbQBosoImP3lTf8PoOocEpv+paSodZ18vjI+mHix5oe+fU6jJKuaVatTM/lzNTPYGWXToLf5lZx4lL1Re2XLeTolioHwAfWK4YvDtluoP67Kw02+66GZSoRzt+ZI5ONgGbh8sesExfVieLm9+S/z8DiJjG2+Vgu7pRhdPEkUy1sSs+6a618WQmzvxMATN7xwr+x+49mzzoN420X6oEd4FSYVIM5Eo/Lw2r/P6IFf9ltzVgNCE5D/251zAOVROSnIto7mfATP1DEiTllmKLm9dMjF4P3Zaz3sL+CEE/BYwp7X6RuSpKNm2UCbuM5incDmYfTlwFZXfN32SkInp0HOXHbDItHLX9C9uCmaBYFhZ0VAkLVfcgOAURw3Lj/noSx0lg6IQ9pzESm35K8yM5d1bCfE1esXdny3AcjFz/eFiDcag==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a5f980f-d49c-4839-09f6-08d862c8ae94
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4915.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2020 09:35:33.8151
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E+A3zkB8VEcu1UD6BbCBDCPmrd25oQl4ugl0GB5KDDF9Zju1Ms8GA+H/O6XkkPPojANBuGzMJkX1SljFRqwlgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6324
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entry for i.MX8MN DDR3L EVK board.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1ca9dfa8ce9a..8199528b47ed 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -417,6 +417,7 @@ properties:
       - description: i.MX8MN based Boards
         items:
           - enum:
+              - fsl,imx8mn-ddr3l-evk      # i.MX8MN DDR3L EVK Board
               - fsl,imx8mn-ddr4-evk       # i.MX8MN DDR4 EVK Board
               - fsl,imx8mn-evk            # i.MX8MN LPDDR4 EVK Board
           - const: fsl,imx8mn
-- 
2.26.2

