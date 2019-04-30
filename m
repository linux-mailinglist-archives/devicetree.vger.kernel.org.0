Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 561B6101F6
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2019 23:40:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726412AbfD3Vk5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Apr 2019 17:40:57 -0400
Received: from mail-eopbgr140080.outbound.protection.outlook.com ([40.107.14.80]:18614
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727001AbfD3Vk5 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 30 Apr 2019 17:40:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IRdIBy3HO1BSlxQo1Qn2bwIMzDM+PQW0JpSm24A72ek=;
 b=LlvUT4g59/TdD+9fi4H/Mpg4aAZutCUSOktsRjpDVs5OyIz7jb2Td6NpbJq1Y1Vvqvg/cXECZ1AIU75R9HoVgeT82CGBnlYMsGMkajG9TSONpkPaNhtShEE3oYhkx69xx7L5U8sRRe5AYAMi+K74QoMZOEQQxE5+ZvOufPdVHXA=
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com (20.177.49.159) by
 VI1PR04MB6303.eurprd04.prod.outlook.com (20.179.28.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.14; Tue, 30 Apr 2019 21:40:20 +0000
Received: from VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c]) by VI1PR04MB4910.eurprd04.prod.outlook.com
 ([fe80::d973:1a7d:2eb6:281c%7]) with mapi id 15.20.1856.008; Tue, 30 Apr 2019
 21:40:20 +0000
From:   Frank Li <frank.li@nxp.com>
To:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lznuaa@gmail.com" <lznuaa@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
CC:     Frank Li <frank.li@nxp.com>
Subject: [PATCH V10 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Topic: [PATCH V10 4/4] MAINTAINERS: Added imx DDR performonitor driver
 maintainer information
Thread-Index: AQHU/51PIrv1mFz+kkq1dJe5X4Ly6w==
Date:   Tue, 30 Apr 2019 21:40:20 +0000
Message-ID: <1556660398-25450-4-git-send-email-Frank.Li@nxp.com>
References: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
In-Reply-To: <1556660398-25450-1-git-send-email-Frank.Li@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0501CA0153.namprd05.prod.outlook.com
 (2603:10b6:803:2c::31) To VI1PR04MB4910.eurprd04.prod.outlook.com
 (2603:10a6:803:56::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=frank.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.5.2
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5a8057c8-7c2a-4ef2-8d49-08d6cdb47197
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR04MB6303;
x-ms-traffictypediagnostic: VI1PR04MB6303:
x-microsoft-antispam-prvs: <VI1PR04MB6303A1114D8F2D641C28158A883A0@VI1PR04MB6303.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(376002)(366004)(39860400002)(396003)(136003)(189003)(199004)(2501003)(476003)(6116002)(7736002)(36756003)(316002)(50226002)(53936002)(2616005)(66066001)(14454004)(68736007)(6436002)(8936002)(4744005)(6486002)(5660300002)(486006)(3846002)(7416002)(8676002)(25786009)(52116002)(11346002)(99286004)(76176011)(2201001)(81156014)(305945005)(478600001)(81166006)(26005)(4326008)(446003)(71200400001)(102836004)(256004)(386003)(6506007)(86362001)(66556008)(66476007)(2906002)(64756008)(186003)(66446008)(71190400001)(110136005)(66946007)(6512007)(73956011)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB6303;H:VI1PR04MB4910.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bUdgkVsuam+jlnY1TDotctPxeJk+k2UE11VFYBzgg0fZIlRYiYcfP/c4yGH9z4a+EjwbgWjjUrkNR4t13ua0x+Mh43A1o3hugivztBRueVu50keAJ+MAmC+azoxrpzWNXpfqS3ooj0RM84B9S/DcAYNi++UqQMUJGvMhMy/FcPFFf2la/RYZeQKJI4h7R73IEzk5DL0FDRcTc0q+WfZ/eNSzGlrSnT9j56J9NMTnq2lcPE2e39/JsVenePDiR6etare2tUfUO9SwdoEz05A7TbeiODYU2twnsZYxLc+2cXPT1anoDV8EXxVZE0PGIOyJV7PlmOJWZk7lTxpRLtD+dxxa/xbPNiDWcn1OHjONWHje8Mo7MeRnoazlAC8bt4eh0Ey8MSUWhb3CkOfBU+zz6fp2vFdffJnOIeKZYYLOnv4=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a8057c8-7c2a-4ef2-8d49-08d6cdb47197
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 21:40:20.6901
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6303
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

QWRkIEREUiBwZXJmIGNvdW50ZXIgZHJpdmVyIG1haW50YWluZXIgaW5mb3JtYXRpb24NCg0KU2ln
bmVkLW9mZi1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+DQotLS0NCk5vIGNoYW5nZSBm
cm9tIHYxIHRvIHYxMA0KDQogTUFJTlRBSU5FUlMgfCA3ICsrKysrKysNCiAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlO
RVJTDQppbmRleCAyYzdkNGUxLi42YTk4NjhiIDEwMDY0NA0KLS0tIGEvTUFJTlRBSU5FUlMNCisr
KyBiL01BSU5UQUlORVJTDQpAQCAtNjI2NCw2ICs2MjY0LDEzIEBAIEw6CWxpbnV4LWkyY0B2Z2Vy
Lmtlcm5lbC5vcmcNCiBTOglNYWludGFpbmVkDQogRjoJZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1j
cG0uYw0KIA0KK0ZSRUVTQ0FMRSBJTVggRERSIFBlcmZvcm1hbmNlIE1vbml0b3IgRFJJVkVSDQor
TToJRnJhbmsgTGkgPEZyYW5rLmxpQG54cC5jb20+DQorTDoJbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnDQorUzoJTWFpbnRhaW5lZA0KK0Y6CWRyaXZlcnMvcGVyZi9mc2xfaW14
OF9kZHJfcGVyZi5jDQorRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BlcmYv
ZnNsLWlteC1kZHIudHh0DQorDQogRlJFRVNDQUxFIElNWCBMUEkyQyBEUklWRVINCiBNOglEb25n
IEFpc2hlbmcgPGFpc2hlbmcuZG9uZ0BueHAuY29tPg0KIEw6CWxpbnV4LWkyY0B2Z2VyLmtlcm5l
bC5vcmcNCi0tIA0KMi41LjINCg0K
