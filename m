Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B4FE922F79
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 10:56:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731695AbfETI4B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 04:56:01 -0400
Received: from mail-eopbgr20053.outbound.protection.outlook.com ([40.107.2.53]:35492
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1731684AbfETI4A (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 May 2019 04:56:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ecAfN/FL7yABcrC9DGCkZ9z1HFAySp0l33yS51z1/tA=;
 b=KJsXzkk8kCq7GAuunrCql28Fs202FaqybdEF6HsAJBIvePgVXByf1oeVusVelvmb4pLE/Xl9yqoU88rRLB+B7oA9JGiCA7tYLMsaBSmzR7f33vUSsD7AZ0USPW7LDjc38mEYKAFxbxaGWpSILJobFWvucUT4MG7zeGQ/aPb5eZw=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6820.eurprd04.prod.outlook.com (52.132.212.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 08:55:56 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 08:55:56 +0000
From:   Leonard Crestez <leonard.crestez@nxp.com>
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>
CC:     Robin Gong <yibin.gong@nxp.com>, Angus Ainslie <angus@akkea.ca>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 1/3] mfd: bd718x7: Remove hardcoded config for button press
 duration
Thread-Topic: [PATCH 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Thread-Index: AQHVDunWzNv+WFDkN02S18dUF3SQHg==
Date:   Mon, 20 May 2019 08:55:56 +0000
Message-ID: <ed27e04ba7486cce7860197bc8c76bcedafde398.1558341613.git.leonard.crestez@nxp.com>
References: <cover.1558341613.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558341613.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: VI1PR0202CA0002.eurprd02.prod.outlook.com
 (2603:10a6:803:14::15) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0a58513-a5aa-43cd-c1eb-08d6dd00f875
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB6820;
x-ms-traffictypediagnostic: AM0PR04MB6820:
x-microsoft-antispam-prvs: <AM0PR04MB68201244E00880506659434FEE060@AM0PR04MB6820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(52116002)(4326008)(99286004)(25786009)(44832011)(2906002)(256004)(486006)(14444005)(36756003)(6486002)(11346002)(2616005)(14454004)(71190400001)(71200400001)(186003)(118296001)(26005)(478600001)(66066001)(76176011)(6436002)(6116002)(3846002)(446003)(476003)(53936002)(6512007)(316002)(54906003)(8676002)(102836004)(5660300002)(386003)(6506007)(68736007)(8936002)(7736002)(86362001)(7416002)(81166006)(81156014)(50226002)(110136005)(305945005)(64756008)(66556008)(66476007)(66946007)(66446008)(73956011);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB6820;H:AM0PR04MB6434.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BgwvfH1ctPcUZ6afEsxJDhBAVlLBenf1JRRP5bpjLhrh5iv07JklcX/uz5+GWHz9GJOhLPFVYG1bzIoID2xEPat5eZ3jBPWhq8EILbEE4s2MOl8R7Z4rNPUx9HNQg5sWbBzP9+JAhJSDLG8U5QVCJwBMD39vFPykEJOXdFj0mmpU9wn+f5jPDI6eoUihiaFJNmuXIHHyMnr7r5F+AfCDlbo+M6MPKzW46WSbdSBCBn1OnZ8Hh2NyH6YRH+swM1efyoCVZEHo/if1PxJ+7P5uYokr3OZedjfdWI7wrQP753QMN9O7cYsQVN2CUxJemB8YFCqvvpdlrNeT7oIB4kFrrQLSOt0b/rIepXLva26PKLAulOom1hJ0dZN5JRisPLOcKFbzsyHScUJy6y4gBNsUqQLEJt8yNRn9KoWwhpt2hsg=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <11F0B0946517B24C9DC75E7EE8C1629A@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0a58513-a5aa-43cd-c1eb-08d6dd00f875
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:55:56.0707
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6820
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The reset button on imx8mm-evk is tied to PWRON_B pin of bd71847 and the
long press duration is set to zero from OTP. The linux driver overrides
those values and breaks reset from button.

Overwriting OTP or bootloader configuration with some hardcoded defaults
is not desirable, keep already programmed values instead.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/mfd/rohm-bd718x7.c | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/mfd/rohm-bd718x7.c b/drivers/mfd/rohm-bd718x7.c
index a29d529a96f4..cdbef83884f0 100644
--- a/drivers/mfd/rohm-bd718x7.c
+++ b/drivers/mfd/rohm-bd718x7.c
@@ -115,33 +115,10 @@ static int bd718xx_i2c_probe(struct i2c_client *i2c,
 	if (ret) {
 		dev_err(&i2c->dev, "Failed to add irq_chip\n");
 		return ret;
 	}
=20
-	/* Configure short press to 10 milliseconds */
-	ret =3D regmap_update_bits(bd718xx->regmap,
-				 BD718XX_REG_PWRONCONFIG0,
-				 BD718XX_PWRBTN_PRESS_DURATION_MASK,
-				 BD718XX_PWRBTN_SHORT_PRESS_10MS);
-	if (ret) {
-		dev_err(&i2c->dev,
-			"Failed to configure button short press timeout\n");
-		return ret;
-	}
-
-	/* Configure long press to 10 seconds */
-	ret =3D regmap_update_bits(bd718xx->regmap,
-				 BD718XX_REG_PWRONCONFIG1,
-				 BD718XX_PWRBTN_PRESS_DURATION_MASK,
-				 BD718XX_PWRBTN_LONG_PRESS_10S);
-
-	if (ret) {
-		dev_err(&i2c->dev,
-			"Failed to configure button long press timeout\n");
-		return ret;
-	}
-
 	ret =3D regmap_irq_get_virq(bd718xx->irq_data, BD718XX_INT_PWRBTN_S);
=20
 	if (ret < 0) {
 		dev_err(&i2c->dev, "Failed to get the IRQ\n");
 		return ret;
--=20
2.17.1

