Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB78625945
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 22:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728288AbfEUUlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 16:41:14 -0400
Received: from mail-eopbgr150042.outbound.protection.outlook.com ([40.107.15.42]:52615
        "EHLO EUR01-DB5-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727559AbfEUUlO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 16:41:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bfiq/vIiOuvsHqF+BQZMxg8taUYLP5xpfjq59jBV97A=;
 b=rAF+++i98aGNRqM9S5QbRsnOVeRnN0Ed5RXDvz+jhzOdjgoVfq2kJCHZ/p3RrphzjC+5qJGYH9AFoxrUIdUnmJ75WCJ079cY/xvPSXpuuvAtqRHnnZGnGVUU7kNSBQY/yJr+PjWQ4Ecn4dsECDqAhHIRo+oRRtT5HEAiL6zlqqA=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB3970.eurprd04.prod.outlook.com (52.134.92.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 21 May 2019 20:41:10 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 20:41:10 +0000
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
Subject: [PATCH v2 0/3] mfd: bd718x7: Set button press duration via dt only
Thread-Topic: [PATCH v2 0/3] mfd: bd718x7: Set button press duration via dt
 only
Thread-Index: AQHVEBWFR7ADgdaGUEibZiyeov26zQ==
Date:   Tue, 21 May 2019 20:41:10 +0000
Message-ID: <cover.1558471150.git.leonard.crestez@nxp.com>
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
x-ms-office365-filtering-correlation-id: 3dc45f85-7bf9-4db7-819b-08d6de2ca805
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB3970;
x-ms-traffictypediagnostic: AM0PR04MB3970:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB3970CFAB413DD77D6ECEBC71EE070@AM0PR04MB3970.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(346002)(39860400002)(376002)(366004)(136003)(199004)(189003)(36756003)(966005)(86362001)(52116002)(25786009)(6116002)(14454004)(71190400001)(71200400001)(7736002)(5660300002)(2906002)(7416002)(6436002)(316002)(6486002)(66556008)(64756008)(66446008)(386003)(6506007)(3846002)(66946007)(6512007)(73956011)(66476007)(54906003)(8676002)(44832011)(4326008)(81166006)(81156014)(486006)(6306002)(50226002)(2616005)(66066001)(8936002)(26005)(305945005)(256004)(110136005)(102836004)(68736007)(476003)(478600001)(53936002)(186003)(99286004);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB3970;H:AM0PR04MB6434.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WFdWWbgvi1FTiEfiKSlGYrbW/QfFuy+cG07z4pyxh66Of9w02ii82nPheJb5VEJPpQMmRkesrye7l0zqSBOzRuZEgSWIOuaJtEBYdRXJJlkGr+g8fa7hFYejQ+JlE6zRPlSgMWusMa5OyFnVkVrnVsxd/J7HVJVU31t+dF+zhMB0o922k85pEn228rBuTlnkQZXdc062tApopQOwWGTYjyna0i/clmnr+VD0DWddhokUg7g3FREuKScTkDp5gKa+neCJFFWZ0Vz38BFMacGY7VnM1Yws6GXeZz8rOs2/dASFDOlcrJasnpOHFmNHavFGT9Ci4ZL/8ZaAW8yGBkkYy3ykG8Dm01MPP/Ok6LWIKbWl6OgogotPtYAbr2fxn3tJ5iinZGauVhQRc9Mpn+d+62a/jdkJCOJY3n8MGyOImgk=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <F446258C55C1014A9AFE8BF5C134C01C@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dc45f85-7bf9-4db7-819b-08d6de2ca805
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 20:41:10.7459
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
is not desirable, power button should behave identically from bootloader
to kernel.

Add DT properties to allow explicitly overriding press durations but
don't do anything by default.

Changes since v1:
 * Attempt to round to closest supporting value
 * Spelling fix in PATCH 2 commit message
 * Collect acks
Link to v1: https://patchwork.kernel.org/project/linux-arm-kernel/list/?ser=
ies=3D119597

Leonard Crestez (3):
  mfd: bd718x7: Remove hardcoded config for button press duration
  dt-bindings: mfd: Document short/long press duration for bd718x7
  mfd: bd718x7: Make power button press duration configurable

 .../bindings/mfd/rohm,bd71837-pmic.txt        |  8 +++
 drivers/mfd/rohm-bd718x7.c                    | 61 ++++++++++++-------
 2 files changed, 48 insertions(+), 21 deletions(-)

--=20
2.17.1

