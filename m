Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2377825948
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 22:45:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727913AbfEUUlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 16:41:20 -0400
Received: from mail-eopbgr150042.outbound.protection.outlook.com ([40.107.15.42]:52615
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727493AbfEUUlT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 16:41:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2way/9sIqRHHFbskkR8nNdMkVvpw/XzfR2NZesclsOg=;
 b=imXx2Z8btDSptZDw+w2fOs28MXYRYRwlma550KfnH6DZCUnTahUD6VvJGnlb2emFcXqkb8uDkTuYauHQ0FLuwjh9pQcMXuNqxr6IExYFDJRNUj7FF+18/shvnBfLc6kHbSs5TsF7z2H+ZQmkZl8o+0LoiKeQ3EFjFMgTf99UtP0=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 20:41:15 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 20:41:14 +0000
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
Subject: [PATCH v2 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Topic: [PATCH v2 3/3] mfd: bd718x7: Make power button press duration
 configurable
Thread-Index: AQHVEBWIEayFCadtqUGcm3gRPCBI7w==
Date:   Tue, 21 May 2019 20:41:14 +0000
Message-ID: <bada813d7c3818f86851e9a31b19a7251da441f5.1558471150.git.leonard.crestez@nxp.com>
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
x-ms-office365-filtering-correlation-id: ac29df6e-7913-4ded-9bb4-08d6de2caade
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB3970;
x-ms-traffictypediagnostic: AM0PR04MB3970:
x-microsoft-antispam-prvs: <AM0PR04MB39705F2CB4C13BFAA974CAD5EE070@AM0PR04MB3970.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(36756003)(86362001)(52116002)(25786009)(6116002)(14454004)(71190400001)(71200400001)(7736002)(5660300002)(2906002)(7416002)(6436002)(316002)(6486002)(66556008)(64756008)(66446008)(386003)(6506007)(3846002)(66946007)(6512007)(73956011)(66476007)(54906003)(118296001)(8676002)(44832011)(4326008)(81166006)(81156014)(76176011)(486006)(50226002)(2616005)(66066001)(8936002)(26005)(305945005)(14444005)(446003)(256004)(110136005)(11346002)(102836004)(68736007)(476003)(478600001)(53936002)(186003)(99286004);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB3970;H:AM0PR04MB6434.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TegSCwZ8N3umeKdgSaet696x4H+/Z0EWwj3Jy/DcY3E1WI3a/R6veeKZJ7SjXQhFzDuT4c34M9Fz5Bi2+DnRPyUYDk8Q3Dn/MOWHtvcUdhtj451zaMWusaevo1igM/dkuYSHjU6LxLTD7HmZ7Z8lM6esjnEMy9M8vZTtEGtPD259UOsjcahDxow3fLzlXCTUQMSutwuNwBKze4xpnUZqvhRAxa++SkoP1InMLyQ2bDDwClg4iMhO8Jj4BTxEWRVfkpxTiWW/sv/V7qvpxES3c8+dtXiJnWEoBBpXwVkwxKixJKPyC/WfKSs6yw1GfnFsPnRkbRNvM9Y68XkwP5JTsg76RV5T0L9HEFcO1/Blu90TV3tBhgM0PkUeL3t6bPwIINZ/nhh/aIfCLaSesz6Dz/xGBTjBuU58lmnDCz45EEE=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <16686B02C1EDC944B114614CB3353D50@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac29df6e-7913-4ded-9bb4-08d6de2caade
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 20:41:14.8945
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3970
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow overwriting the values in BD718XX_REG_PWRONCONFIG0 and
BD718XX_REG_PWRONCONFIG1 via devicetree. Read values in milliseconds and
attempt to round them to something supported by the hardware.

Keep existing values (from bootloader or OTP) if property is not
present.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
---
 drivers/mfd/rohm-bd718x7.c | 42 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/mfd/rohm-bd718x7.c b/drivers/mfd/rohm-bd718x7.c
index cdbef83884f0..c061c3f421fc 100644
--- a/drivers/mfd/rohm-bd718x7.c
+++ b/drivers/mfd/rohm-bd718x7.c
@@ -79,10 +79,48 @@ static const struct regmap_config bd718xx_regmap_config=
 =3D {
 	.volatile_table =3D &volatile_regs,
 	.max_register =3D BD718XX_MAX_REGISTER - 1,
 	.cache_type =3D REGCACHE_RBTREE,
 };
=20
+static int bd718xx_init_press_duration(struct bd718xx *bd718xx)
+{
+	struct device* dev =3D bd718xx->dev;
+	u32 short_press_ms, long_press_ms;
+	u32 short_press_value, long_press_value;
+	int ret;
+
+	ret =3D of_property_read_u32(dev->of_node, "rohm,short-press-ms",
+				   &short_press_ms);
+	if (!ret) {
+		short_press_value =3D min(15u, (short_press_ms + 250) / 500);
+		ret =3D regmap_update_bits(bd718xx->regmap,
+					 BD718XX_REG_PWRONCONFIG0,
+					 BD718XX_PWRBTN_PRESS_DURATION_MASK,
+					 short_press_value);
+		if (ret) {
+			dev_err(dev, "Failed to init pwron short press\n");
+			return ret;
+		}
+	}
+
+	ret =3D of_property_read_u32(dev->of_node, "rohm,long-press-ms",
+				   &long_press_ms);
+	if (!ret) {
+		long_press_value =3D min(15u, (long_press_ms + 500) / 1000);
+		ret =3D regmap_update_bits(bd718xx->regmap,
+					 BD718XX_REG_PWRONCONFIG1,
+					 BD718XX_PWRBTN_PRESS_DURATION_MASK,
+					 long_press_value);
+		if (ret) {
+			dev_err(dev, "Failed to init pwron long press\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
 static int bd718xx_i2c_probe(struct i2c_client *i2c,
 			    const struct i2c_device_id *id)
 {
 	struct bd718xx *bd718xx;
 	int ret;
@@ -115,10 +153,14 @@ static int bd718xx_i2c_probe(struct i2c_client *i2c,
 	if (ret) {
 		dev_err(&i2c->dev, "Failed to add irq_chip\n");
 		return ret;
 	}
=20
+	ret =3D bd718xx_init_press_duration(bd718xx);
+	if (ret)
+		return ret;
+
 	ret =3D regmap_irq_get_virq(bd718xx->irq_data, BD718XX_INT_PWRBTN_S);
=20
 	if (ret < 0) {
 		dev_err(&i2c->dev, "Failed to get the IRQ\n");
 		return ret;
--=20
2.17.1

