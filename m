Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4254E25946
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 22:45:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728313AbfEUUlQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 16:41:16 -0400
Received: from mail-eopbgr150042.outbound.protection.outlook.com ([40.107.15.42]:52615
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727493AbfEUUlQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 16:41:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lXq73tbMJnfuMyfPcfVzprVxJwcp+bZoNmtN/+KBQE4=;
 b=nYpeoPrzYN4rAe3Qq9kKGVSRzyHNu9f23lUPMYfNBRi29TmVYUOWD6db1iKin7OH38EAycs8gBtjbV92OnZlpaJIipt+7g5vC/WpR60fVB0tINzpzPaomKhlOkU1Umr7ZqdCqffbqXzt1GQDgah57wpD59x4QttMa++IDVbjLyU=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 20:41:12 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 20:41:12 +0000
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
Subject: [PATCH v2 1/3] mfd: bd718x7: Remove hardcoded config for button press
 duration
Thread-Topic: [PATCH v2 1/3] mfd: bd718x7: Remove hardcoded config for button
 press duration
Thread-Index: AQHVEBWHmAHXX/uy10eYy8IyUG2pTg==
Date:   Tue, 21 May 2019 20:41:12 +0000
Message-ID: <3afb20a0e4b14588d9fc6af7bd86920127feeba2.1558471150.git.leonard.crestez@nxp.com>
References: <cover.1558471150.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558471150.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0430.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::34) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9aa0f93-1cc9-4af7-5375-08d6de2ca91f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB3970;
x-ms-traffictypediagnostic: AM0PR04MB3970:
x-microsoft-antispam-prvs: <AM0PR04MB39705E04FFAA17EDCE6B895CEE070@AM0PR04MB3970.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(36756003)(86362001)(52116002)(25786009)(6116002)(14454004)(71190400001)(71200400001)(7736002)(5660300002)(2906002)(7416002)(6436002)(316002)(6486002)(66556008)(64756008)(66446008)(386003)(6506007)(3846002)(66946007)(6512007)(73956011)(66476007)(54906003)(118296001)(8676002)(44832011)(4326008)(81166006)(81156014)(76176011)(486006)(50226002)(2616005)(66066001)(8936002)(26005)(305945005)(14444005)(446003)(256004)(110136005)(11346002)(102836004)(68736007)(476003)(478600001)(53936002)(186003)(99286004);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB3970;H:AM0PR04MB6434.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y6v7DwdiYPL+dnvoMi6VYhi6m9oWSRdzdAwoyxTpfvxMArbEuZuUwdJ5RKd62JlTVhDpxV0OUMQXOghn+oII8PmvR9MXc/T1npvPcnfWxVlBy46liOOLZVahvh6wvd1Vn1f7ntzaWgxus46zudvfcqL7jGe6xfbZ17oPahTPiKy+yNuP6GOxbDyHj+rxPGNiRtGOa9mUnJKDXXKPbV8hQ28BtAsyhVu/chCU6CLGBGPeLEsPkP1vam7azBh012md1Bevr0tz79gPSqOGt1pMT7PEljIv15SsjSeH+SoHg11mqx0hrTeKUtRMxz8IzrHLhL4+ROlB1rEHNwXD5tGc0KYe8rRa78U0YzlJVv8Ye2NIhTL3Yz/Z8KlgO7Odq0eIxvrq26RlHWO5WN6QDEfNeP85kB7LcnUT77FWZ6ybhho=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <890B93925C7E29428C5069DFFEABA9D6@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9aa0f93-1cc9-4af7-5375-08d6de2ca91f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 20:41:12.4289
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3970
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
Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
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

