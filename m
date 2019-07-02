Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 51E125CD3A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 12:03:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725996AbfGBKDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 06:03:40 -0400
Received: from mail-eopbgr50089.outbound.protection.outlook.com ([40.107.5.89]:33765
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727126AbfGBKDk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Jul 2019 06:03:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tYzlO707Qw2fTG6vLMK1XGGTqgl++K/SanBFHd0uJO8=;
 b=qd1d8FsF+anMVyrzF6/YK5IXwFs/GEzQSB0C3OKibO5N2DU3y/BOKHm38/dunmOUeB3XSiaNv2/AVPWc6W0n63DQOLA4iIXRJzliD12BZo7IOMjQAk5/HEumFSjNCbJkQOYf741k3vDKGg0itctS/05+Gby7lLB+qrHudrbQIU0=
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com (20.176.236.22) by
 DB7PR04MB4234.eurprd04.prod.outlook.com (52.134.108.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.15; Tue, 2 Jul 2019 10:03:36 +0000
Received: from DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290]) by DB7PR04MB5178.eurprd04.prod.outlook.com
 ([fe80::2c71:9f2f:8db1:a290%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 10:03:36 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "festevam@gmail.com" <festevam@gmail.com>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        Peng Fan <peng.fan@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [RESEND PATCH 0/3] Add power domain driver support for imx8m family
Thread-Topic: [RESEND PATCH 0/3] Add power domain driver support for imx8m
 family
Thread-Index: AQHVML1pZppPTVnPL0eEpnBnRQNJWA==
Date:   Tue, 2 Jul 2019 10:03:35 +0000
Message-ID: <20190702100832.29718-1-ping.bai@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.21.0
x-clientproxiedby: HK0PR01CA0011.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::23) To DB7PR04MB5178.eurprd04.prod.outlook.com
 (2603:10a6:10:20::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ping.bai@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3f452e4-6718-4186-dd9b-08d6fed48c12
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:DB7PR04MB4234;
x-ms-traffictypediagnostic: DB7PR04MB4234:
x-microsoft-antispam-prvs: <DB7PR04MB42342108C541402F218CB9D687F80@DB7PR04MB4234.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(189003)(199004)(14444005)(6512007)(6636002)(6436002)(2201001)(71200400001)(386003)(50226002)(6486002)(71190400001)(6506007)(8936002)(256004)(25786009)(486006)(5660300002)(36756003)(3846002)(6116002)(52116002)(86362001)(66476007)(66556008)(64756008)(476003)(66446008)(4326008)(66946007)(73956011)(1076003)(54906003)(81156014)(316002)(186003)(26005)(110136005)(2616005)(102836004)(81166006)(53936002)(66066001)(2906002)(68736007)(305945005)(14454004)(478600001)(7736002)(2501003)(8676002)(99286004)(32563001);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR04MB4234;H:DB7PR04MB5178.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HZionVAWvYYuVHjYCaZ6qkZd70rZOz9xCXwWsn7rY14o1yLhVt8NezUJ3e2xagH5x2OP1YucS2yxfN33yNpnoFMN4uPVHC28WmIdXyilLVgCZx5voJV/q8FfI0l7OcGcon+ECtj89K2JAKzxp48IocMAtjI/xQm36IeV8+LgwVDtU2hj8ssTfBZiPPzq+eOq3D0pJfxfoGM4Wbo9i9fR8+KMIP/G5raeJHobwqarQW24ZNES/WnMfKHSax/DGQAu3QnCx6+zHUYTvEMXGc93HOVTNROiFbCIWwbAY5/IjiVa+jDTj2bcebRfCsFxy0frD2xpe0f60t/qmv4zn8pN4YEwdJBRRIjbdaNXewbpl45Uttd38eMUSP6Z09DyPS7/vHnHeJj5m19P0XIqmxl/dFg5oSjMMZt2VSLDOfXG91o=
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <766968F6F8A0DD4BA88B3A7E38BF3337@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3f452e4-6718-4186-dd9b-08d6fed48c12
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 10:03:35.9190
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ping.bai@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4234
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I just resend this patchset again to let us rethink & find out a quick way =
enable
the power domain support in mainline to help other modules upstream.

The GPC module is used for system power management for CPU core & periphera=
l's
power domain. For the whole i.MX8M family, different SOC has different powe=
r
domain design. Some power domains need special on/off flow(need to access t=
he
register out of the GPC module).

It makes us hard to reuse the GPCv2 driver to cover all the different power
up sequence. Each time a new SOC is added, we must modify the GPCv2 power d=
omain
driver to make it resuable for it. We need to add a lot of code for each ne=
w chip.
We need to access the SRC & SS's GPR in GPCv2 power domain driver, it is
burden to maintain the GPCv2 power domain driver. For example, in the futur=
e
i.MX8MP, there are ~20 power domains, some of the power domain need some sp=
ecial
handling only for this specific chip, same situation on i.MX8MM & i.MX8MN.

THis patchset add a more generic power domain driver that give us the possi=
bility
to use one driver to cover the whole i.MX8M family power domain in kernel s=
ide.
kernel side driver don't need to handle the power domain difference time to=
 time.
All the power domain on/off sequence can be abstracted & handled in TF-A si=
de.
it can simplify the power domain handling in kernel side. All the power dom=
ain
details can be hiden to TF-A side. TF-A image is SOC specific, we don't nee=
d
to care more about the one image principle.

I know some guys suggest to use SCMI to implement the power domains, but it=
 is
a long way, need more time to investigate. especially, for the current SCMI=
 power
domain, it can not meet all our requirement for power domain management. On=
 i.MX8M,
some of the power domain on/off need to handle clock and external regulator=
s, it is
not a generic handling for other SOC vendors, I think.

Additonally, the SiP Service Calls provide interfaces to SoC implementation=
 specific
services on this platform. For example, Secure platform initialization, con=
figuration
and some power control. I don't think it can not be used for specific SOC.

Jacky Bai (3):
  dt-bindings: power: Add power domain binding for i.mx8m family
  soc: imx: Add power domain driver support for i.mx8m family
  arm64: dts: freescale: Add power domain nodes for i.mx8mm

 .../bindings/power/fsl,imx8m-genpd.txt        |  46 ++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 103 ++++++++
 drivers/soc/imx/Kconfig                       |   6 +
 drivers/soc/imx/Makefile                      |   1 +
 drivers/soc/imx/imx8m_pm_domains.c            | 224 ++++++++++++++++++
 include/soc/imx/imx_sip.h                     |  12 +
 6 files changed, 392 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/fsl,imx8m-genpd=
.txt
 create mode 100644 drivers/soc/imx/imx8m_pm_domains.c
 create mode 100644 include/soc/imx/imx_sip.h

--=20
2.21.0

