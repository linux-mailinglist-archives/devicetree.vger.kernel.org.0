Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F048324BD4
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 11:40:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726259AbfEUJkN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 05:40:13 -0400
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]:42126
        "EHLO EUR04-VI1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726006AbfEUJkM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 May 2019 05:40:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eAoaiVTiGo5Guyhmb5IF0i/auh0hQOUlAGx391mJ0Ms=;
 b=FGMaH5RnMpd61S8snlCFTVm57pf6qpWBZBI5JELjOSAUsga1YBaVd74xkliE363kjMBwctl0OKnAt3pY+Z7OdabkWpnZd+E41LoAv+mMJmByLpmIdOrGg4F24y1hzn0Ty7J303hksf1zfiDA7gkA4v8txcBDNQATG3EmbJ51koo=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2478.eurprd04.prod.outlook.com (10.168.67.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 21 May 2019 09:40:09 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::3d45:6b81:13ba:88cf%7]) with mapi id 15.20.1900.020; Tue, 21 May 2019
 09:40:09 +0000
From:   Pankaj Bansal <pankaj.bansal@nxp.com>
To:     Leo Li <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Mingkai Hu <mingkai.hu@nxp.com>,
        Rajesh Bhagat <rajesh.bhagat@nxp.com>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Thread-Topic: [PATCH] arm64: dts: fsl: ls1046: Modify the qspi flash frequency
Thread-Index: AQHVD7ktQ8RWPOovOUGEsxSVPIIdWw==
Date:   Tue, 21 May 2019 09:40:09 +0000
Message-ID: <20190521150336.8409-1-pankaj.bansal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR01CA0131.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:40::25) To VI1PR0401MB2496.eurprd04.prod.outlook.com
 (2603:10a6:800:56::10)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60f29b2f-3da4-4420-532e-08d6ddd05020
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:VI1PR0401MB2478;
x-ms-traffictypediagnostic: VI1PR0401MB2478:
x-microsoft-antispam-prvs: <VI1PR0401MB2478A67360B4E6966C45FC1EF1070@VI1PR0401MB2478.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0044C17179
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(366004)(39860400002)(376002)(396003)(346002)(136003)(189003)(199004)(26005)(14444005)(256004)(66946007)(66476007)(66556008)(64756008)(73956011)(81156014)(81166006)(8676002)(25786009)(6636002)(53936002)(6512007)(7736002)(71190400001)(36756003)(71200400001)(66446008)(54906003)(4326008)(2906002)(99286004)(8936002)(110136005)(386003)(6506007)(102836004)(316002)(52116002)(44832011)(305945005)(478600001)(68736007)(50226002)(486006)(6436002)(86362001)(476003)(2616005)(3846002)(66066001)(186003)(1076003)(14454004)(5660300002)(6486002)(6116002);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR0401MB2478;H:VI1PR0401MB2496.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cVJ/ARjbfqZ4nmuROt83UveH8Gk1xQRusE4Bymbo9omDHirCh+PzhBscSVh8fVt3cD/X1OjQDKxMV+CGJvcvIAz712aKto8xqrxWLIw0N/7gyzaI82ZsuTixpquHbaYg4Rc50csIw2i4hsdCHHZ9JbOB/dGNBHGVtl3J6ECFWCHr9xYXcvSII+34S2Pv5+JLiOooJ/7AVO2Da8Y7Eqa9wluSJ1oQBHAIYYikL4rjedusSNQH1oWS4g6c1lkHMAHjoJ5CbsEBMbZLxAXPV6pFvIBaXSNiXS7NkhfbtIrh9cGkvvmowX3qncwf2VEXKSc+4v1iJalNAjilnyns9BGBGMFyCJoeOk4BrnS0eUd+IkUBQ/87f/DeyQe0n46/NB51gDmUymYUC+5qoS7Xs8Fu3JDeMIjU5c03oYKxe3TL5Sc=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60f29b2f-3da4-4420-532e-08d6ddd05020
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2019 09:40:09.1569
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2478
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhlIHFzcGkgZmxhc2ggaW4gbHMxMDQ2YSBiYXNlZCBRRFMgYW5kIFJEQiBib2FyZHMgY2FuIG9w
ZXJhdGUNCmF0IDUwTUh6IGZyZXF1ZW5jeS4NClRoZXJlZm9yZSwgdXBkYXRlIHRoZSBtYXhpbXVt
IHN1cHBvcnRlZCBmcmVxIGluIHRoZWlyIHJlc3BlY3RpdmUNCmR0cyBmaWxlcy4NCg0KU2lnbmVk
LW9mZi1ieTogUGFua2FqIEJhbnNhbCA8cGFua2FqLmJhbnNhbEBueHAuY29tPg0KLS0tDQogYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcWRzLmR0cyB8IDQgKystLQ0K
IGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczEwNDZhLXJkYi5kdHMgfCA1ICsr
Ky0tDQogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQoN
CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS1x
ZHMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMTA0NmEtcWRzLmR0
cw0KaW5kZXggZWVjNjJjNjNkYWZlLi5lNDQxZGJmYmZiODEgMTAwNjQ0DQotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS1xZHMuZHRzDQorKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS1xZHMuZHRzDQpAQCAtMyw3ICszLDcg
QEANCiAgKiBEZXZpY2UgVHJlZSBJbmNsdWRlIGZpbGUgZm9yIEZyZWVzY2FsZSBMYXllcnNjYXBl
LTEwNDZBIGZhbWlseSBTb0MuDQogICoNCiAgKiBDb3B5cmlnaHQgMjAxNiBGcmVlc2NhbGUgU2Vt
aWNvbmR1Y3RvciwgSW5jLg0KLSAqIENvcHlyaWdodCAyMDE4IE5YUA0KKyAqIENvcHlyaWdodCAy
MDE4LTIwMTkgTlhQDQogICoNCiAgKiBTaGFvaHVpIFhpZSA8U2hhb2h1aS5YaWVAbnhwLmNvbT4N
CiAgKi8NCkBAIC0xNjksNyArMTY5LDcgQEANCiAJCWNvbXBhdGlibGUgPSAic3BhbnNpb24sbTI1
cDgwIjsNCiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KIAkJI3NpemUtY2VsbHMgPSA8MT47DQot
CQlzcGktbWF4LWZyZXF1ZW5jeSA9IDwyMDAwMDAwMD47DQorCQlzcGktbWF4LWZyZXF1ZW5jeSA9
IDw1MDAwMDAwMD47DQogCQlzcGktcngtYnVzLXdpZHRoID0gPDQ+Ow0KIAkJc3BpLXR4LWJ1cy13
aWR0aCA9IDw0PjsNCiAJCXJlZyA9IDwwPjsNCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9mc2wtbHMxMDQ2YS1yZGIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvZnNsLWxzMTA0NmEtcmRiLmR0cw0KaW5kZXggNmE2NTE0ZDBlNWE5Li42ZjU0MTFk
MDliYjkgMTAwNjQ0DQotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMx
MDQ2YS1yZGIuZHRzDQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMx
MDQ2YS1yZGIuZHRzDQpAQCAtMyw2ICszLDcgQEANCiAgKiBEZXZpY2UgVHJlZSBJbmNsdWRlIGZp
bGUgZm9yIEZyZWVzY2FsZSBMYXllcnNjYXBlLTEwNDZBIGZhbWlseSBTb0MuDQogICoNCiAgKiBD
b3B5cmlnaHQgMjAxNiBGcmVlc2NhbGUgU2VtaWNvbmR1Y3RvciwgSW5jLg0KKyAqIENvcHlyaWdo
dCAyMDE5IE5YUA0KICAqDQogICogTWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPg0KICAq
Lw0KQEAgLTEwNSw3ICsxMDYsNyBAQA0KIAkJY29tcGF0aWJsZSA9ICJzcGFuc2lvbixtMjVwODAi
Ow0KIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQogCQkjc2l6ZS1jZWxscyA9IDwxPjsNCi0JCXNw
aS1tYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwPjsNCisJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDUw
MDAwMDAwPjsNCiAJCXNwaS1yeC1idXMtd2lkdGggPSA8ND47DQogCQlzcGktdHgtYnVzLXdpZHRo
ID0gPDQ+Ow0KIAkJcmVnID0gPDA+Ow0KQEAgLTExNSw3ICsxMTYsNyBAQA0KIAkJY29tcGF0aWJs
ZSA9ICJzcGFuc2lvbixtMjVwODAiOw0KIAkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQogCQkjc2l6
ZS1jZWxscyA9IDwxPjsNCi0JCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDIwMDAwMDAwPjsNCisJCXNw
aS1tYXgtZnJlcXVlbmN5ID0gPDUwMDAwMDAwPjsNCiAJCXNwaS1yeC1idXMtd2lkdGggPSA8ND47
DQogCQlzcGktdHgtYnVzLXdpZHRoID0gPDQ+Ow0KIAkJcmVnID0gPDE+Ow0KLS0gDQoyLjE3LjEN
Cg0K
