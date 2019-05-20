Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41F2922F78
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 10:56:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731682AbfETIz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 04:55:59 -0400
Received: from mail-eopbgr20053.outbound.protection.outlook.com ([40.107.2.53]:35492
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1730823AbfETIz7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 May 2019 04:55:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Drgw1U/WCCJAPFryMREMhShent73GTafl2XF5jxguZg=;
 b=TQQ7ml0v/xnCCN17OI7oZK1+001VOa1vaA8wCSh6u7RZ7s9fXMo9IoZwS1a3/YsJ7Im75b0zQKjqQf48n96+TERjnhKLQndj08UfRHCB2o2j+iQRhiYtt3q8vKYrb4slaxyVvYgKg/R+xJqD/+xxcBKnwshOSm/JMAdVHEqjYtQ=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB6820.eurprd04.prod.outlook.com (52.132.212.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 08:55:55 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 08:55:55 +0000
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
Subject: [PATCH 0/3] mfd: bd718x7: Set button press duration via dt only
Thread-Topic: [PATCH 0/3] mfd: bd718x7: Set button press duration via dt only
Thread-Index: AQHVDunV7apHlVqhY0Soksc2sK/GtQ==
Date:   Mon, 20 May 2019 08:55:54 +0000
Message-ID: <cover.1558341613.git.leonard.crestez@nxp.com>
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
x-ms-office365-filtering-correlation-id: e89553b7-b5f7-4ea9-037e-08d6dd00f7c5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB6820;
x-ms-traffictypediagnostic: AM0PR04MB6820:
x-microsoft-antispam-prvs: <AM0PR04MB68206555B2EFFDC04AB35E23EE060@AM0PR04MB6820.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(52116002)(4326008)(99286004)(25786009)(44832011)(2906002)(256004)(486006)(36756003)(6486002)(2616005)(14454004)(71190400001)(71200400001)(186003)(26005)(478600001)(66066001)(6436002)(6116002)(3846002)(476003)(53936002)(6512007)(316002)(54906003)(8676002)(102836004)(5660300002)(386003)(6506007)(68736007)(8936002)(7736002)(86362001)(7416002)(81166006)(81156014)(4744005)(50226002)(110136005)(305945005)(64756008)(66556008)(66476007)(66946007)(66446008)(73956011);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB6820;H:AM0PR04MB6434.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JsP6fKTKLub4lj1RQZpux0jDo4a2JbOatg41dmyglMdLjcDw01UtnL/tQght9JUgF5Ny6V+te6YzFWNfGwkcw1o7Gnq3cbDnlDlL+VbDyas40Hscm+6Jpz2FumAOBaov7V9GB9cydF3Q+NvnVXi1sfcoFlYPx6EGeXWbQf9z1nI8qJdSA9bi+q5k5ufuODr8xMheF47Rv+4E1ucPrKAskPxLG8jAkRlhb6+88HsMcFSy+O9JwpNIOsx5jdvVOUEIdv+WSrKVtE0fhV5dVCwkeXuWlcqhdeZq9/yB/NJQgjl+ogwO7JGyKovEoD2/P8gMMDxlMmK7nQAS8pG0ZNV7dUTG7JrmaE+hACTArL+TayrEiNI75hR0dEfJ11OohJNK32UajYUYH7hAE0ovZ62Mmpmrgpc2h/+aoneK/iI5hcw=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <7D4AA115DD9EB6489166E8B154FAA49A@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e89553b7-b5f7-4ea9-037e-08d6dd00f7c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:55:54.8844
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
is not desirable, power button should behave identically from bootloader
to kernel.

Add DT properties to allow explicitly overriding press durations but
don't do anything by default.

Leonard Crestez (3):
  mfd: bd718x7: Remove hardcoded config for button press duration
  dt-bindings: mfd: Document short/long press duration for bd718x7
  mfd: bd718x7: Make power button press duration configurable

 .../bindings/mfd/rohm,bd71837-pmic.txt        |  8 +++
 drivers/mfd/rohm-bd718x7.c                    | 61 ++++++++++++-------
 2 files changed, 48 insertions(+), 21 deletions(-)

--=20
2.17.1

