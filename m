Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1321E217C1
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 13:30:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728659AbfEQLaE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 07:30:04 -0400
Received: from mail-eopbgr130050.outbound.protection.outlook.com ([40.107.13.50]:47110
        "EHLO EUR01-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728336AbfEQLaE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 17 May 2019 07:30:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hLGBACUNgaJbwlaseeNZvxS77wDYZplHZuh9h2bEmuQ=;
 b=fsCTq+Q82c5RkowvpBU6ZM+m/vDm8vM3/kcN8SLiINEzZBbgxBc8Dy5stVLQhDtMD1TXaTvvXGQkPsB4aX7ms23oqCcSQpWp4R84KJBkDBp9P7LGqhjqhBVV0AYCBySR7UDFc+LmcdkUpWcormi8o5mixqMXA58ntCVCIl/xn0I=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB6082.eurprd04.prod.outlook.com (20.179.32.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Fri, 17 May 2019 11:29:59 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 11:29:59 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Oliver Graute <oliver.graute@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
        Oliver Graute <oliver.graute@kococonnector.com>
Subject: RE: [PATCH 1/5] clk: add imx8 clk defines
Thread-Topic: [PATCH 1/5] clk: add imx8 clk defines
Thread-Index: AQHVDII7FGokB8QeB06r9iPg0nmfkaZvLf8A
Date:   Fri, 17 May 2019 11:29:59 +0000
Message-ID: <AM0PR04MB4211706D24BBF3F9FB6CAF28800B0@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <20190517071813.26674-1-oliver.graute@gmail.com>
In-Reply-To: <20190517071813.26674-1-oliver.graute@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b5adf9f5-1b45-4c30-416e-08d6dabaff12
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR04MB6082;
x-ms-traffictypediagnostic: AM0PR04MB6082:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB6082F9BBD95EB80756E60271800B0@AM0PR04MB6082.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(366004)(396003)(136003)(346002)(376002)(189003)(199004)(446003)(11346002)(305945005)(71190400001)(71200400001)(33656002)(229853002)(66066001)(476003)(76176011)(6506007)(256004)(486006)(44832011)(7736002)(74316002)(102836004)(86362001)(6306002)(2906002)(66556008)(64756008)(66446008)(81156014)(81166006)(66946007)(110136005)(54906003)(52536014)(76116006)(66476007)(26005)(55016002)(99286004)(9686003)(7696005)(4744005)(7416002)(2201001)(8936002)(6436002)(73956011)(316002)(8676002)(25786009)(6116002)(3846002)(5660300002)(53936002)(68736007)(186003)(6246003)(2501003)(4326008)(478600001)(14454004)(966005);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR04MB6082;H:AM0PR04MB4211.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: abFa3uLB8GnCqieznt/hpjOmR6DXEoGOrR7rP96Da046o7n05VniESbNObEHAF789HWxTZiG92oe1FeXC84ZB9c8UKFJBE71QmeIgh/7+NUyO/mFpAn1ixH4K1fHIsDnJNiGmamULRKV61eAquIFm9Tl9v1B4tobwF0E/XA3qlFoRQs2vbyzlP9j3UBmpRrcXg9MG9ByGm2WwhgmdZbWRl9e8C7a/34p9RXzaxCSB6XGIeyGs70KM2s+C+IsFd2UQ5iKuivVGjBWlamKDOF5sJlSaaty6YBTkZXUPAjIPdCrMtZBgMpdQ3Q9/BQNWhGQQ0tABJDax5aUpqiCRUd8NiZZm7U8erg22vMBGHSNK34IB8J/cb1QHeW7rI5ap4bKU5LIR3Z/MPYn3QyXMGiIca97RqHVIXCPuZbplfX51OA=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5adf9f5-1b45-4c30-416e-08d6dabaff12
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 11:29:59.7332
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6082
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SGkgT2xpdmVyLA0KDQo+IEZyb206IE9saXZlciBHcmF1dGUgW21haWx0bzpvbGl2ZXIuZ3JhdXRl
QGdtYWlsLmNvbV0NCj4gU2VudDogRnJpZGF5LCBNYXkgMTcsIDIwMTkgMzoxOCBQTQ0KPiANCj4g
RnJvbTogT2xpdmVyIEdyYXV0ZSA8b2xpdmVyLmdyYXV0ZUBrb2NvY29ubmVjdG9yLmNvbT4NCj4g
DQo+IGFkZGVkIGhlYWRlciBkZWZpbmVzIGZvciBpbXg4cW0gY2xvY2sNCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IE9saXZlciBHcmF1dGUgPG9saXZlci5ncmF1dGVAa29jb2Nvbm5lY3Rvci5jb20+DQoN
Ckl0IHNlZW1zIHlvdSBtaXNzZWQgdGhpcyBvbmUuDQpbMDAvMTRdIGFybTY0OiBkdHM6IGlteDg6
IGFyY2hpdGVjdHVyZSBpbXByb3ZlbWVudCBhbmQgYWRkaW5nIGlteDhxbSBzdXBwb3J0DQpodHRw
czovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzEwODI0NTM3Lw0KDQpSZWdhcmRzDQpEb25n
IEFpc2hlbmcNCg==
