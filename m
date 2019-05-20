Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B71522ED0
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 10:27:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730828AbfETI1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 04:27:53 -0400
Received: from esa2.microchip.iphmx.com ([68.232.149.84]:64268 "EHLO
        esa2.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730699AbfETI1x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 04:27:53 -0400
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
  Nicolas.Ferre@microchip.com designates 198.175.253.82 as
  permitted sender) identity=mailfrom;
  client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
  envelope-from="Nicolas.Ferre@microchip.com";
  x-sender="Nicolas.Ferre@microchip.com";
  x-conformance=spf_only; x-record-type="v=spf1";
  x-record-text="v=spf1 mx a:ushub1.microchip.com
  a:smtpout.microchip.com a:mx1.microchip.iphmx.com
  a:mx2.microchip.iphmx.com include:servers.mcsv.net
  include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@email.microchip.com) identity=helo;
  client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
  envelope-from="Nicolas.Ferre@microchip.com";
  x-sender="postmaster@email.microchip.com";
  x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com; spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com; spf=None smtp.helo=postmaster@email.microchip.com; dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com; dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,491,1549954800"; 
   d="scan'208";a="33791551"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 May 2019 01:27:51 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.49) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Mon, 20 May 2019 01:27:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXOn492L8ZLyiUccWMlJFtUJaPjd4DfDSAQOd44CIPs=;
 b=39kUqRlyYwdY0UdP1OoH4ouM4FGQzY9jqiXiP3jzsgAJOxTtAPd+7+Ba4N8mHNOh+jc504Jh+y+MoD7pQ2JEKZIYFQV8tzX00468aHCOVa/83VlxtVdBH552hW5H/VqR0iZAoTWB1Tf6isAQM4EPgckukzMZpSAuydXrfPLwDi8=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1487.namprd11.prod.outlook.com (10.172.53.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 08:27:46 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::990d:15eb:1a20:3255]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::990d:15eb:1a20:3255%6]) with mapi id 15.20.1900.010; Mon, 20 May 2019
 08:27:46 +0000
From:   <Nicolas.Ferre@microchip.com>
To:     <robh@kernel.org>, <alexandre.belloni@bootlin.com>
CC:     <devicetree@vger.kernel.org>, <Ludovic.Desroches@microchip.com>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Thread-Topic: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
Thread-Index: AQHVDuXnWnGwQTdZakeZ7AmTr1r8AA==
Date:   Mon, 20 May 2019 08:27:46 +0000
Message-ID: <46c85a51-2f2c-3807-4301-dd544a7b5398@microchip.com>
References: <20190516225614.1458-1-robh@kernel.org>
In-Reply-To: <20190516225614.1458-1-robh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0230.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1e::26) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 844af231-31a1-4d4a-4def-08d6dcfd0979
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);SRVR:MWHPR11MB1487;
x-ms-traffictypediagnostic: MWHPR11MB1487:
x-microsoft-antispam-prvs: <MWHPR11MB14873F57E095610D5DC312F4E0060@MWHPR11MB1487.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(346002)(396003)(39860400002)(136003)(366004)(376002)(199004)(189003)(305945005)(7736002)(31696002)(54906003)(14454004)(6116002)(66066001)(256004)(5660300002)(72206003)(486006)(71200400001)(71190400001)(3846002)(110136005)(66946007)(476003)(446003)(11346002)(2616005)(66556008)(316002)(8936002)(229853002)(81156014)(81166006)(86362001)(64756008)(25786009)(66446008)(68736007)(66476007)(73956011)(36756003)(6486002)(4326008)(53936002)(6506007)(386003)(26005)(478600001)(53546011)(186003)(8676002)(2906002)(6436002)(99286004)(6246003)(31686004)(6512007)(102836004)(76176011)(52116002);DIR:OUT;SFP:1101;SCL:1;SRVR:MWHPR11MB1487;H:MWHPR11MB1662.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aMD6PSPcF6f3Jkz19m87L6e7O3AWplM4w47f/a8JS+9elsS2WyDWHUgSaE6857IDUmsPW7CdvpONqNh7W9FWGUJz3mpmm0wgf1pwSM5peljtQKpiZBfxR/ENcGB1n7gZJ73VYmQuEH0KpcO3pBakb6Qe7F2c3DBqdex+Fac+7uzKT9P3apoMHcUM8cp8DYwFhmKCgp4KFYFs50l9p6md3KohYJ1dc6KDZjzdTyNIV4EV7pyfPDew5nUWY0KUnADwjJkQ1lDk4HCedN0KEVG+n6qgphdG/kv09KCQUZdo1el172GR6OFXbLS0OiEyem92QhVaNeplDb3Oq6CNkGuLzBVEOB9X9Y6Gx5lAUd32SkeJ30FOgbxBETCIrcBqfC7C9nBDLWFHovPfeL1TRjMApMh6wK/NC3xjVDMGKZZKkN8=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5E287A6DB015DD4E8F435428E1BCBAAB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 844af231-31a1-4d4a-4def-08d6dcfd0979
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 08:27:46.6788
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1487
X-OriginatorOrg: microchip.com
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMTcvMDUvMjAxOSBhdCAwMDo1NiwgUm9iIEhlcnJpbmcgd3JvdGU6DQo+IFdoaWxlIHByb3Bl
cnRpZXMgYW5kIGNoaWxkIG5vZGVzIHdpdGggdGhlIHNhbWUgbmFtZSBhcmUgdmFsaWQgRFQsIHRo
ZQ0KPiBwcmFjdGljZSBpcyBub3QgZW5jb3VyYWdlZC4gRnVydGhlcm1vcmUsIHRoZSBjb2xsaXNp
b24gaXMgcHJvYmxlbWF0aWMgZm9yDQo+IFlBTUwgZW5jb2RlZCBEVC4gTGV0J3MganVzdCBhdm9p
ZCB0aGUgaXNzdWUgYW5kIHJlbmFtZSB0aGUgbm9kZXMuDQo+IA0KPiBDYzogTmljb2xhcyBGZXJy
ZSA8bmljb2xhcy5mZXJyZUBtaWNyb2NoaXAuY29tPg0KDQpHb29kIGZvciBtZToNCkFja2VkLWJ5
OiBOaWNvbGFzIEZlcnJlIDxuaWNvbGFzLmZlcnJlQG1pY3JvY2hpcC5jb20+DQoNCj4gQ2M6IEFs
ZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290bGluLmNvbT4NCj4gQ2M6IEx1
ZG92aWMgRGVzcm9jaGVzIDxsdWRvdmljLmRlc3JvY2hlc0BtaWNyb2NoaXAuY29tPg0KPiBDYzog
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IFNpZ25lZC1vZmYtYnk6IFJv
YiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+DQo+IC0tLQ0KPiAgIGFyY2gvYXJtL2Jvb3QvZHRz
L2F0OTFzYW05MjYxZWsuZHRzICAgIHwgMiArLQ0KPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTFz
YW05MjYzZWsuZHRzICAgIHwgMiArLQ0KPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05bTEw
ZzQ1ZWsuZHRzIHwgMiArLQ0KPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05cmxlay5kdHMg
ICAgIHwgMiArLQ0KPiAgIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYx
ZWsuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvYXQ5MXNhbTkyNjFlay5kdHMNCj4gaW5kZXggZjY4
MWNkNzI3MDEwLi4wMmIxMTZiNDhjM2IgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L2F0OTFzYW05MjYxZWsuZHRzDQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYx
ZWsuZHRzDQo+IEBAIC00OSw3ICs0OSw3IEBADQo+ICAgCQkJYXRtZWwscG93ZXItY29udHJvbC1n
cGlvID0gPCZwaW9BIDEyIEdQSU9fQUNUSVZFX0xPVz47DQo+ICAgCQkJc3RhdHVzID0gIm9rYXki
Ow0KPiAgIA0KPiAtCQkJZGlzcGxheTA6IGRpc3BsYXkgew0KPiArCQkJZGlzcGxheTA6IHBhbmVs
IHsNCj4gICAJCQkJYml0cy1wZXItcGl4ZWwgPSA8MTY+Ow0KPiAgIAkJCQlhdG1lbCxsY2Rjb24t
YmFja2xpZ2h0Ow0KPiAgIAkJCQlhdG1lbCxkbWFjb24gPSA8MHgxPjsNCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYzZWsuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMv
YXQ5MXNhbTkyNjNlay5kdHMNCj4gaW5kZXggMTNkNDE1YzIyYTY5Li45MjRmZTU2M2Y2ZmEgMTAw
NjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYzZWsuZHRzDQo+ICsrKyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05MjYzZWsuZHRzDQo+IEBAIC0xMTEsNyArMTExLDcg
QEANCj4gICAJCQlkaXNwbGF5ID0gPCZkaXNwbGF5MD47DQo+ICAgCQkJc3RhdHVzID0gIm9rYXki
Ow0KPiAgIA0KPiAtCQkJZGlzcGxheTA6IGRpc3BsYXkgew0KPiArCQkJZGlzcGxheTA6IHBhbmVs
IHsNCj4gICAJCQkJYml0cy1wZXItcGl4ZWwgPSA8MTY+Ow0KPiAgIAkJCQlhdG1lbCxsY2Rjb24t
YmFja2xpZ2h0Ow0KPiAgIAkJCQlhdG1lbCxkbWFjb24gPSA8MHgxPjsNCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05bTEwZzQ1ZWsuZHRzIGIvYXJjaC9hcm0vYm9vdC9k
dHMvYXQ5MXNhbTltMTBnNDVlay5kdHMNCj4gaW5kZXggNDYxMDdjMmYxYWI5Li41MjI2ZTk1MmE3
MjkgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05bTEwZzQ1ZWsuZHRz
DQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05bTEwZzQ1ZWsuZHRzDQo+IEBAIC0y
MzYsNyArMjM2LDcgQEANCj4gICAJCQlkaXNwbGF5ID0gPCZkaXNwbGF5MD47DQo+ICAgCQkJc3Rh
dHVzID0gIm9rYXkiOw0KPiAgIA0KPiAtCQkJZGlzcGxheTA6IGRpc3BsYXkgew0KPiArCQkJZGlz
cGxheTA6IHBhbmVsIHsNCj4gICAJCQkJYml0cy1wZXItcGl4ZWwgPSA8MzI+Ow0KPiAgIAkJCQlh
dG1lbCxsY2Rjb24tYmFja2xpZ2h0Ow0KPiAgIAkJCQlhdG1lbCxkbWFjb24gPSA8MHgxPjsNCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05cmxlay5kdHMgYi9hcmNoL2Fy
bS9ib290L2R0cy9hdDkxc2FtOXJsZWsuZHRzDQo+IGluZGV4IDI3ZDhhMWY0NDIzMy4uYTAwMGE0
NTlmMTdiIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9hdDkxc2FtOXJsZWsuZHRz
DQo+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2F0OTFzYW05cmxlay5kdHMNCj4gQEAgLTM3LDcg
KzM3LDcgQEANCj4gICAJCQlkaXNwbGF5ID0gPCZkaXNwbGF5MD47DQo+ICAgCQkJc3RhdHVzID0g
Im9rYXkiOw0KPiAgIA0KPiAtCQkJZGlzcGxheTA6IGRpc3BsYXkgew0KPiArCQkJZGlzcGxheTA6
IHBhbmVsIHsNCj4gICAJCQkJYml0cy1wZXItcGl4ZWwgPSA8MTY+Ow0KPiAgIAkJCQlhdG1lbCxs
Y2Rjb24tYmFja2xpZ2h0Ow0KPiAgIAkJCQlhdG1lbCxkbWFjb24gPSA8MHgxPjsNCj4gDQoNCg0K
LS0gDQpOaWNvbGFzIEZlcnJlDQo=
