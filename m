Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 40D08203B5
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 12:39:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726838AbfEPKjt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 06:39:49 -0400
Received: from mail-eopbgr50061.outbound.protection.outlook.com ([40.107.5.61]:36422
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727191AbfEPKjt (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 06:39:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OEYbYoqtoaCO5mnD2qF5OBSQYRXuDBlN326Q1NqNL2w=;
 b=oYB59ACgNwowzTK/Nf+ZogaGOFXzOzQ5fk0LOccjSM089odDSFuU4R+UOlK7fKtZRb+AcSNLazDjqoU7ceKjeJB9x68PyF1rh0v/oOBh20oU/j3+8CNh63J6gsRwEsn6DHOeS5Gug0FbzBib/6qetb62+JfLebjbO3RdNziLKGI=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3460.eurprd04.prod.outlook.com (52.133.48.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Thu, 16 May 2019 10:39:46 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 10:39:45 +0000
From:   Kuldeep Singh <kuldeep.singh@nxp.com>
To:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a compatibility
 string
Thread-Topic: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Thread-Index: AQHVC9OtkL2+pIZt7Uy9/HRX7rIojQ==
Date:   Thu, 16 May 2019 10:39:45 +0000
Message-ID: <20190516104046.23830-2-kuldeep.singh@nxp.com>
References: <20190516104046.23830-1-kuldeep.singh@nxp.com>
In-Reply-To: <20190516104046.23830-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0083.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::23) To AM0PR0402MB3556.eurprd04.prod.outlook.com
 (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7a98e20a-a305-4d05-890a-08d6d9ead00e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3460;
x-ms-traffictypediagnostic: AM0PR0402MB3460:
x-microsoft-antispam-prvs: <AM0PR0402MB346011B28C987CD3280E6401E00A0@AM0PR0402MB3460.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(396003)(39860400002)(376002)(346002)(136003)(366004)(189003)(199004)(305945005)(1076003)(4326008)(71190400001)(71200400001)(8676002)(26005)(6116002)(53936002)(3846002)(8936002)(81156014)(81166006)(1730700003)(99286004)(256004)(25786009)(6512007)(50226002)(52116002)(6486002)(6436002)(68736007)(2906002)(5640700003)(14454004)(76176011)(86362001)(6506007)(6916009)(386003)(44832011)(2616005)(476003)(316002)(7736002)(186003)(11346002)(478600001)(66066001)(2501003)(446003)(36756003)(486006)(5660300002)(54906003)(73956011)(66946007)(102836004)(66476007)(66556008)(66446008)(64756008)(2351001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3460;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ROgUAS2hbdXiKezD04XNaRsVGzX5vEC/9NNRkhAak+L20TNd5zoNvhljdHnEE3A9Tb4oar+izP99MTrto+EuGslzlQLwX5iGR+CIF8WOaE6stOoMcWTIrvOv95nctWNySQ4XEG4088Xajkljkk4i0TcWnum8I/qszLtbt1Ytjlb3Tu+9UEzgpOnw5V6HKdNG8bS14pyjyF7SdzwwwCyjvJjf3thUjDrcMv6TR7QPxspv/wfy7aF79g9JKFHidzf3PB1v4Y4+3IWs0V+YNnnQdwl+nslHjhyyMNPp71gtl7hvDUeoTLkPLPxSlTGeHkYdOehPKo7vwFArlb6hBqy2iWNXxLtPKSpHEbtvbm7O6u/veiCID66Rq2qV8v716fcIwhGJVd7/Teva1Fi/2A07z8OjI3STffrrD3fLTM+/nBM=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a98e20a-a305-4d05-890a-08d6d9ead00e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 10:39:45.8820
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3460
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
c2luZ2hAbnhwLmNvbT4NCi0tLQ0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
cGkvc3BpLWZzbC1xc3BpLnR4dCB8IDMgKy0tDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0DQppbmRleCBhNzI2MTZhMWFkMmQuLjJj
MmEzZTkxOWEwNiAxMDA2NDQNCi0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zcGkvc3BpLWZzbC1xc3BpLnR4dA0KKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NwaS9zcGktZnNsLXFzcGkudHh0DQpAQCAtMyw5ICszLDggQEANCiBSZXF1aXJlZCBw
cm9wZXJ0aWVzOg0KICAgLSBjb21wYXRpYmxlIDogU2hvdWxkIGJlICJmc2wsdmY2MTAtcXNwaSIs
ICJmc2wsaW14NnN4LXFzcGkiLA0KIAkJICJmc2wsaW14N2QtcXNwaSIsICJmc2wsaW14NnVsLXFz
cGkiLA0KLQkJICJmc2wsbHMxMDIxYS1xc3BpIg0KKwkJICJmc2wsbHMxMDIxYS1xc3BpIiwgImZz
bCxsczIwODBhLXFzcGkiDQogCQkgb3INCi0JCSAiZnNsLGxzMjA4MGEtcXNwaSIgZm9sbG93ZWQg
YnkgImZzbCxsczEwMjFhLXFzcGkiLA0KIAkJICJmc2wsbHMxMDQzYS1xc3BpIiBmb2xsb3dlZCBi
eSAiZnNsLGxzMTAyMWEtcXNwaSINCiAJCSAiZnNsLGxzMTAxMmEtcXNwaSIgZm9sbG93ZWQgYnkg
ImZzbCxsczEwMjFhLXFzcGkiDQogCQkgImZzbCxsczEwODhhLXFzcGkiIGZvbGxvd2VkIGJ5ICJm
c2wsbHMyMDgwYS1xc3BpIg0KLS0gDQoyLjE3LjENCg0K
