Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26EFE39D769
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbhFGIcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:32:10 -0400
Received: from mail-eopbgr150073.outbound.protection.outlook.com ([40.107.15.73]:45443
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230175AbhFGIcJ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Jun 2021 04:32:09 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AO4tOUOml1z5Qw9ftnc2YCFEB5Cvyfrb+nSKVFlG3qvUVDGp0Hsz7SNVqIm8WT1ULusR/Onr4GHhLWWsjRF/oAfZ4K+52ppNq+75hgp3YUA4rmn7a4ECcV+SaYYhxsvD0os23vr+gmV7t34xbuvl+ROtdGaoQ24DxC78QD5cWOogpfI3GsKw36h3B30vnBh/sZCmSuSDRwu3eJBfoVuidKTxjCjf6fZP/ASlTlhPhHCpKqBTPztO5KBzfeOr14yIG9qcH54beX9zyC7DRbyDOohpy/Igo83ENXQrdtd9Tl05/Ssx8O8g9v6d4FBrlgn6+3KxBJB4nw37EYl67+cC/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLhGfccjpHS1kW4kfRsRwSj+pTq09yuY/8LgYGHweLw=;
 b=PVg0FWnNsu/T/DNKbhRovjZ9D/6sQwJBtlro9lTGFJJXgcAFxjGw6lRLdfL4W3eMnYGcmFsRD+RoOX7ZuexijNs7d313trMy2VnPw0OVd11GsrA1Fr494FZK886SAzCKIkvVVYdq4coMXTl0Zp2L+DJHHDlP5tu7QSiXU3mIKlYuRdgUsnQ7xMxGSp7zaWonqF+DBE5i7fwiETKom0rmPrr65UR9ceHQ7cIzMrcvcZ+8GseDoag8l7NUxXq1Dm2XJnfiMkdWSqyD2gK6atvUhXjG0LMfottHQ+cJRxPI+Dlq9/5cycJ9/6FMlvueVR8uc2ePDb70HKARJ8SNwaXCjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vLhGfccjpHS1kW4kfRsRwSj+pTq09yuY/8LgYGHweLw=;
 b=N4KElDF3PhdO7eTUHN/GaFayRQz+t9jv8U+TF7HHLcIIjEq/ABGMpoKVO8NCI4RZUHhj2OIPLTy/9Uncq+8gkAWgLWgGPCpbhWu9XmC6V9TbCmGA5IHfqjq6kj7olX1W3xOFwgZHI5oSIgWmu6l7rwVDP6oajwAj8C/qRudM0iE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB6PR04MB3125.eurprd04.prod.outlook.com (2603:10a6:6:11::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 08:30:16 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::3921:acd6:3201:b209%4]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 08:30:16 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, sboyd@kernel.org,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com
Cc:     festevam@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/11] dt-bindings: watchdog: imx7ulp-wdt: Add imx8ulp compatible string
Date:   Mon,  7 Jun 2021 16:39:17 +0800
Message-Id: <20210607083921.2668568-8-ping.bai@nxp.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210607083921.2668568-1-ping.bai@nxp.com>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [119.31.174.71]
X-ClientProxiedBy: SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) To
 DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by SG2P153CA0007.APCP153.PROD.OUTLOOK.COM (2603:1096::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.4 via Frontend Transport; Mon, 7 Jun 2021 08:30:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aa0740b0-40a9-4b90-7233-08d9298e7a53
X-MS-TrafficTypeDiagnostic: DB6PR04MB3125:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR04MB31251F9A52340A2A4F282A9587389@DB6PR04MB3125.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YmaP7uNMfhU9RBGwpXnqXVbpHk3dh6iVerYUvCe1qbTPmS33NNPQf4gH9rjeEerHrJxtVu2MQIs6qpX89dkaFpHAX90K0fsKqi31EnCzj3FRYk9pPQdncpvye2al53rpRrto0zg2MGaf+pQNsO8h9k0OLMRqqf4oql26116HJ8VlgGfdCC6mdPo6I1rugYVGsQeLlaVYsaFuQe+IlYN0NNoQ5eyAQkmQ5LJd5dyrBrsu5yiTKSO4wbXMHUS/bW3YQkukHEcNyvYrxDCl4Pkv63RdjnvTo3xLq2PjnautviImnCjzA5yzt8jsWrNqqSc6hnw5OTWr8wIWSDPmv+JMqt4xxP11K/dDdc8H0RCvO4yFngRK+UxUOoLpSQNjDCmWPmCNmjZmpvUrU1/z1zBWBURzSNGJZ/KuAqd0IKSV/Pby1lPXagZeh12slBme8m2okQY3VnJDPRX251FfgfK6rWF7xEbANZcyb+g0Bdej06ZWwww0AsOYU2ytWaY+RhnLbJKI0lRy5zuMFov4dqNElqh3GK6LUsBdjlIInWqZ/gvu1RAWVdCg2dVvWqEIG6hMc0B921W/IxyLgpbZs8bmppM0aSEPJlvTbxfW2McQLNf01khLso/n84ojxKGWzAvsjgaQTCzfAkuxLSdymJxlTLjtuhDVx9rWrVD3J5yMHgY0r69BeZ0YXILQT+V+p3z3HCQsxz+9ipb4DcFeSXpCxTOCvphegUQc9WkNMXuZibw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(8676002)(1076003)(6512007)(186003)(26005)(36756003)(86362001)(4744005)(16526019)(478600001)(38350700002)(956004)(2616005)(66946007)(8936002)(38100700002)(66556008)(66476007)(6486002)(316002)(6636002)(4326008)(5660300002)(52116002)(83380400001)(6506007)(2906002)(69590400013)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?61I6R2VTC0wUfPe6o8IxglxfBSgVclj5xiyeNAy2mDTsWDrD8DYzgGlUXwA3?=
 =?us-ascii?Q?uzG8qpl77Hohf3XlK1ZFTiXYDjsfPgkFZIQ0veOSttPwUA/KIumK4kPEQaDs?=
 =?us-ascii?Q?2L2x9iHrYKwzB71AssM0VSChCPT2F8VrL/jTZbU9+sTr6Zbq/CgRh0xst4zA?=
 =?us-ascii?Q?BhVvAryMIiHxCWKwo3DBX6y5ZqNgYzPj/rAgLoY4voB1i5xmQV8JsajKIeBo?=
 =?us-ascii?Q?FS+Ud/UZrXhodpsUvcLOVoGjG9PzyKnjJHvmgreckqhEO24/damRSeOSTu1M?=
 =?us-ascii?Q?1eiW5HUBcbNbPMXmfzdY/uUdtnKRlyy8XzbOncc4P7sho7a/E1zMyv0ODetg?=
 =?us-ascii?Q?vXeuZ8eEFNlRwE+J9TiHV08n8FtXMamX1cXjbZQeq11LGIJUmrVT/QFFhS70?=
 =?us-ascii?Q?2dx0h4R4m5ZC2jIcsWLCRbkA9H/PtI9piq7rEPvI8fiIckkyLsPqEaNjLqlE?=
 =?us-ascii?Q?2lb81FtpLv0iONu9DhgMbP3PZW6M2jyYhtLLTnxBsfBZb2YoToyreRLxShVP?=
 =?us-ascii?Q?/H1KHVp9k9c9pm6LtEBpzSvp6V5SpbwLnq9nQfanYXbNaesv/CaGv/kP/XAV?=
 =?us-ascii?Q?nDrdOFNU7ArIjvwgO2uIezRCrt7dtuYmeLUIIFUWRFKkOHfl9wQdDs8Wm6sl?=
 =?us-ascii?Q?K0cCICdf8dC2hu8owIxRHpj78J85GYu3hBG25RKcgT5/1gd0qhGgGC31jFT/?=
 =?us-ascii?Q?l3lxEQf/kVkNhWrZ8a57nGa8wMfK+1OPuwpYM12BIhOHDv++Iym7VG3zfnx6?=
 =?us-ascii?Q?zugQvcpJ0QfZ4lqmyqst9QJs8YMvoMQMPtwzwfjkG+RP+coL8HMs5VjAqnX/?=
 =?us-ascii?Q?Ba2t0MS1qgI5wwiNG/oqj8Geitvx9gNs49XHsBt8PRtZ/uHPBzCASG8yNqqf?=
 =?us-ascii?Q?QJZG+k3y4P3VfOEhZ4O9KteGDyjUunhtNmTxQdS/QKt0aol79d9DnTNT5aiW?=
 =?us-ascii?Q?qkzlmXvKbJrwNqi+LJEY04agin9MP9RcoMlLgK1H8KE5K4+uyTz7Spdt7RdR?=
 =?us-ascii?Q?E3gSALGiHO78Ekp7njoPd/7KGpI82418H7UrOmFrAwIvBvhr97JqvnBjEbSQ?=
 =?us-ascii?Q?gR1Py2w8n/y2k3sdHW+j668nrOLyXRunlxIxKMZ8I4FivnEa62vF3YwbKBgV?=
 =?us-ascii?Q?qK485lm6HVybxrKmWr16SonXyAf7ivHe+BYNCmiIrlfkQEGBDVGvpo9phmj/?=
 =?us-ascii?Q?vqvuWjFtfBnhWgR0Kqt2fD0fqH++AFBpFpSKHeZKueueBL1NQBIT0j8bi9qP?=
 =?us-ascii?Q?l3V7yVmNKWI4IdChU/ZYYlCgg6tIor1ib/xQhP3mYpDM3HaJtByh2u4lp6Ht?=
 =?us-ascii?Q?3uKkb0F4+X17FXIXV0kSe4Lh?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa0740b0-40a9-4b90-7233-08d9298e7a53
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2021 08:30:16.7394
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VJWQN3qGUTI1yI9qIm9QaM8cPcJXYmRvY6yRdR0dscJGecEJgdtgeHMDI8AAGwj82H7DD/31GwBv8ZV0aZWqDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3125
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For i.MX8ULP, it uses two compatible strings, so Add the compatible
string for i.MX8ULP.

Signed-off-by: Jacky Bai <ping.bai@nxp.com>
---
 .../devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml      | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
index 51d6d482bbc2..fb603a20e396 100644
--- a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
@@ -14,8 +14,11 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - fsl,imx7ulp-wdt
+    oneOf:
+      - const: fsl,imx7ulp-wdt
+      - items:
+          - const: fsl,imx8ulp-wdt
+          - const: fsl,imx7ulp-wdt
 
   reg:
     maxItems: 1
-- 
2.26.2

