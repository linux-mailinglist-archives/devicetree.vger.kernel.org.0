Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B9862061F
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 13:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727353AbfEPLrO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 07:47:14 -0400
Received: from mail-eopbgr50058.outbound.protection.outlook.com ([40.107.5.58]:33327
        "EHLO EUR03-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728028AbfEPLrN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 May 2019 07:47:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i1zV2I3hbXMl6nuFQu7WQV+7SoBRA5LIURRfak/wWmg=;
 b=o8bAaBeMpWScsd9PD8EGpIl79nWHDYO0Z7YHzWsRK0H/fAr58ApZUicQSjNdW+MgHpY2ODpUQ0UlkFl6OVKQdfECeg81NUiPmV2JutGtBB4Y4HENLfYcElMp+u/hTqHKHt/BKPliL0MFaA1lOJwVY7eMZWzN73pxtadvSdUrxr0=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3570.eurprd04.prod.outlook.com (52.133.46.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 11:47:09 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 11:47:09 +0000
From:   Kuldeep Singh <kuldeep.singh@nxp.com>
To:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
CC:     "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: [PATCH] arm64: dts: ls208x: Remove non-compatible driver device from
 qspi node
Thread-Topic: [PATCH] arm64: dts: ls208x: Remove non-compatible driver device
 from qspi node
Thread-Index: AQHVC90YmacDPCnlVkuTbUWoWNq11Q==
Date:   Thu, 16 May 2019 11:47:09 +0000
Message-ID: <20190516114807.30817-4-kuldeep.singh@nxp.com>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
In-Reply-To: <20190516114807.30817-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PN1PR01CA0117.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00::33)
 To AM0PR0402MB3556.eurprd04.prod.outlook.com (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 952071e7-6a0b-4ecf-1ecc-08d6d9f43a59
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3570;
x-ms-traffictypediagnostic: AM0PR0402MB3570:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <AM0PR0402MB35703E569289787C1ADA4972E00A0@AM0PR0402MB3570.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:226;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(346002)(396003)(376002)(366004)(136003)(189003)(199004)(478600001)(5660300002)(6486002)(26005)(73956011)(4326008)(1076003)(6506007)(66066001)(386003)(44832011)(4744005)(102836004)(2201001)(86362001)(446003)(66556008)(2616005)(486006)(11346002)(64756008)(476003)(53936002)(66476007)(66946007)(66446008)(3846002)(6436002)(71200400001)(71190400001)(52116002)(6116002)(76176011)(99286004)(305945005)(68736007)(2906002)(14444005)(256004)(8676002)(110136005)(6306002)(54906003)(50226002)(81166006)(6512007)(36756003)(7736002)(316002)(25786009)(81156014)(8936002)(186003)(14454004)(966005)(2501003);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3570;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: duqHK3SqykWZbO6LKnYxAJahLPOYu6f5RoIOnGZVAjEtxJNl1WOH2/mcLa6cZSsnWtCK0p7XL5zREmT7RkJwFaIgBgkHBZ327g/Cp8MOIrmfCsdhMxb6HmF/xvEfuAaoZe50kPuaAdJBF/xxmbJHb0Xig+d2UqZHO5zpxInVwiTJ46SKefTLwLqlDZTk5W1oW3Dx29KzxShYIny3Ys/JXZN5QV1F1LcigY8NwwyQiMPQHBkk2ye9N8ivh5+Ov8TH/RJSDAZQDQQ0RJ1U1ytRExfLbZisFpuhpWZFFrnNDMMYw+eo7QnugIW1MOWyk+TccEWuRvNo6N/+sc/TwwYNP1jjzIeFUieIdUtm8fzMiewowrsFEZuP2EAHIpoH3NXxIK9tvl9yiiwS+89Vxlu9PO5mhKqTUGTcTwlveDxd4fk=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 952071e7-6a0b-4ecf-1ecc-08d6d9f43a59
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:47:09.6658
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3570
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

U2luY2UgZGV2aWNlIHByb3BlcnRpZXMgYXJlIGRpZmZlcmVudCwgc28gcmVtb3ZlIGZzbCwgbHMx
MDIxYS1xc3BpDQoNClNpZ25lZC1vZmYtYnk6IEFzaGlzaCBLdW1hciA8YXNoaXNoLmt1bWFyQG54
cC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBLdWxkZWVwIFNpbmdoIDxrdWxkZWVwLnNpbmdoQG54cC5j
b20+DQotLS0NCkRlcGVuZGVuY3kgb24gaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRj
aC8xMTAwNDcxLw0KRGVwZW5kZW5jeSBvbiBodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Bh
dGNoLzExMDA0NzIvDQoNCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9mc2wtbHMyMDh4
YS5kdHNpIHwgMiArLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQ0KDQpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxz
MjA4eGEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2ZzbC1sczIwOHhhLmR0
c2kNCmluZGV4IGQ3ZTc4ZGNkMTUzZC4uOGU1YmE1MTNiMjRmIDEwMDY0NA0KLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMjA4eGEuZHRzaQ0KKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvZnNsLWxzMjA4eGEuZHRzaQ0KQEAgLTYwNiw3ICs2MDYsNyBA
QA0KIA0KIAkJcXNwaTogc3BpQDIwYzAwMDAgew0KIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQot
CQkJY29tcGF0aWJsZSA9ICJmc2wsbHMyMDgwYS1xc3BpIiwgImZzbCxsczEwMjFhLXFzcGkiOw0K
KwkJCWNvbXBhdGlibGUgPSAiZnNsLGxzMjA4MGEtcXNwaSI7DQogCQkJI2FkZHJlc3MtY2VsbHMg
PSA8MT47DQogCQkJI3NpemUtY2VsbHMgPSA8MD47DQogCQkJcmVnID0gPDB4MCAweDIwYzAwMDAg
MHgwIDB4MTAwMDA+LA0KLS0gDQoyLjE3LjENCg0K
