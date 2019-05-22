Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3DEAA25E59
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 09:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728461AbfEVHAi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 03:00:38 -0400
Received: from mail-eopbgr10051.outbound.protection.outlook.com ([40.107.1.51]:19012
        "EHLO EUR02-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728185AbfEVHAi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 May 2019 03:00:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VouzFgy1tRIaaLkbEIf0KeePJOl53KNIVhskIt8H/6c=;
 b=S/vKgDz/iUrbdRO+C/X5tHqeY6QW1QqkJc/abguSRz7DOepiZLbI0nmp5k9bUwlGPC2r4uGK0qrzblOsbUykfdK7tfYSH4BniPKjZLrhqtweTk1xOFEmPFLIMptEkVfDU2hK0VfJGXoCLZKZnmbjSSxpDpgEnrQK+yty/20rzqs=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3668.eurprd04.prod.outlook.com (52.133.39.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Wed, 22 May 2019 07:00:34 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 07:00:34 +0000
From:   Kuldeep Singh <kuldeep.singh@nxp.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: [PATCH v2 2/2] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Thread-Topic: [PATCH v2 2/2] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Thread-Index: AQHVEGwN9+M7FDipQkqKEM1raTNGpA==
Date:   Wed, 22 May 2019 07:00:33 +0000
Message-ID: <20190522070133.24953-2-kuldeep.singh@nxp.com>
References: <20190522070133.24953-1-kuldeep.singh@nxp.com>
In-Reply-To: <20190522070133.24953-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR01CA0107.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::23)
 To AM0PR0402MB3556.eurprd04.prod.outlook.com (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5ab10938-86ee-4255-8ae2-08d6de832f57
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3668;
x-ms-traffictypediagnostic: AM0PR0402MB3668:
x-microsoft-antispam-prvs: <AM0PR0402MB36688904D832548995B4E4B3E0000@AM0PR0402MB3668.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(366004)(189003)(199004)(6506007)(8936002)(7736002)(305945005)(99286004)(68736007)(76176011)(386003)(2501003)(2351001)(186003)(11346002)(81166006)(102836004)(498600001)(6116002)(36756003)(54906003)(86362001)(81156014)(8676002)(14454004)(52116002)(5660300002)(50226002)(3846002)(1730700003)(6486002)(2906002)(5640700003)(64756008)(66556008)(6512007)(14444005)(256004)(66446008)(73956011)(66476007)(66946007)(6436002)(446003)(71200400001)(71190400001)(476003)(1076003)(53936002)(25786009)(486006)(26005)(6916009)(44832011)(4326008)(2616005)(66066001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3668;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UEsqVFc0iiTPCeZNDrd0/S31Tk+34nqvqtTiIXgTlfyUPHWsk3j2dhacA8n8ZBT3zryLFU/zkhaexdsP56jTrw+tRe9RKOgbv0kieQmJy+R/BlC8V2QJubfPEi0In7a8V7LBijAvz9+mnTFBIqSrKVtImq139/lWWKllZ4joVAr/kpOKXobb64Rzkqeo0sZtPqVBVgHtx5drcCZIh/AOMVP9BxOK3onbjnB+H85aggstVaA8FO49pRFzWaqgV3yCX5g1Cx5WAz4CEuH63t60laMFrjI6PTz6eqT78RdSasOCAvyRMTOVm4f+af00pFvq/84nEffDBADgBz2/HogTsL6sspJ+NzGE2jLYDPrXbJ4gpWwtaQqbtpRiPNA28otahQwqo7sTAycbn94XJASSvt0tteZ8gvfu+OZMmSYSs48=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ab10938-86ee-4255-8ae2-08d6de832f57
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 07:00:33.9909
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3668
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

VGhlcmUgYXJlIDIgdmVyc2lvbiBvZiBRU1BJLUlQLCBhY2NvcmRpbmcgdG8gd2hpY2ggaXQgY2Fu
IGJlIGJpZyBlbmRpYW4NCm9yIGxpdHRsZSBlbmRpYW4uIFRoZXJlIGFyZSBzb21lIG90aGVyIG1p
bm9yIGNoYW5nZXMgYXMgd2VsbC4NClRoZSBiaWcgZW5kaWFuIHZlcnNpb24gdXNlcyBkcml2ZXIg
Y29tcGF0aWJsZSBmc2wsbHMxMDIxYS1xc3BpIGFuZCBsaXR0bGUNCmVuZGlhbiB2ZXJzaW9uIHVz
ZXMgZnNsLGxzMTAyODBhLXFzcGkNCg0KU2lnbmVkLW9mZi1ieTogQXNoaXNoIEt1bWFyIDxhc2hp
c2gua3VtYXJAbnhwLmNvbT4NClNpZ25lZC1vZmYtYnk6IEt1bGRlZXAgU2luZ2ggPGt1bGRlZXAu
c2luZ2hAbnhwLmNvbT4NCi0tLQ0KVXBkYXRlIHYyOiANCiAgICAgICAgQ29udmVydCB0byBwYXRj
aCBzZXJpZXMgYW5kIHJlYmFzaW5nIGRvbmUgb24gdG9wIG9mIHRyZWUNCg0KIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLWZzbC1xc3BpLnR4dCB8IDMgKy0tDQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0
DQppbmRleCBhNzI2MTZhMWFkMmQuLjJjMmEzZTkxOWEwNiAxMDA2NDQNCi0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLWZzbC1xc3BpLnR4dA0KKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0DQpAQCAt
Myw5ICszLDggQEANCiBSZXF1aXJlZCBwcm9wZXJ0aWVzOg0KICAgLSBjb21wYXRpYmxlIDogU2hv
dWxkIGJlICJmc2wsdmY2MTAtcXNwaSIsICJmc2wsaW14NnN4LXFzcGkiLA0KIAkJICJmc2wsaW14
N2QtcXNwaSIsICJmc2wsaW14NnVsLXFzcGkiLA0KLQkJICJmc2wsbHMxMDIxYS1xc3BpIg0KKwkJ
ICJmc2wsbHMxMDIxYS1xc3BpIiwgImZzbCxsczIwODBhLXFzcGkiDQogCQkgb3INCi0JCSAiZnNs
LGxzMjA4MGEtcXNwaSIgZm9sbG93ZWQgYnkgImZzbCxsczEwMjFhLXFzcGkiLA0KIAkJICJmc2ws
bHMxMDQzYS1xc3BpIiBmb2xsb3dlZCBieSAiZnNsLGxzMTAyMWEtcXNwaSINCiAJCSAiZnNsLGxz
MTAxMmEtcXNwaSIgZm9sbG93ZWQgYnkgImZzbCxsczEwMjFhLXFzcGkiDQogCQkgImZzbCxsczEw
ODhhLXFzcGkiIGZvbGxvd2VkIGJ5ICJmc2wsbHMyMDgwYS1xc3BpIg0KLS0gDQoyLjE3LjENCg0K
