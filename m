Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CC1D2B9628
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 16:26:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728640AbgKSPZo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 10:25:44 -0500
Received: from mail-eopbgr20048.outbound.protection.outlook.com ([40.107.2.48]:52088
        "EHLO EUR02-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728629AbgKSPZn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 19 Nov 2020 10:25:43 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzArBemAbuWCu785Hb0eRZosYrBmu21RunS9uHzgKRcrAtU+RrmhOqsCTmWdgKLkgJgCTmT4uU2J9q25WJW25qmZAFe0G4z1ELyW+IELGsPeupI9LhGbmH24+qkiRGZ7wBoCbNDXREZRvOqFuksuRVqWorGza0JPNQvopwFul9BElj/pov5XBOXYOlqwLsp0qcG2y8iQ0F5tEtuS1ZFsoMrSQkTohQWcdP+skoh5WSwR56zTzdItK1LEJwzs5X5/diPPCgcaRQUxi1wQCUkKQrfRQf4NoVm5Oj8fdVOCesE49koaTN7kNPM/WXjTrSXYEQBb/nxzcyS+2SIsVrF0ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rTut3K3uLyAmg9UyZfFKa6pMcYPPtwxFQ5G7oT/Q4/8=;
 b=MzKxBQPsqT0SrkewI1/Nl4ullDv9wCHGNGd6XUp9voZ+r01RY4PcYJLrBlzlE4W/WntvxOvoUYXQkx0w3X9WU4ceaWMZrBO8qKSAfxjt/WatheZ6DfNLlyieG1RihsVVdvlZ7GI63J6/6zHK8oUvOg1TF660dddce7+Kn1D9c15Leb2aSxRM3YuoRXI/EquIcqaPQOJSnl95IX9AqJeREO+peoLwUJhZNv1HAi7HdvE/LTLztMxr5mI/+A9y4hec83k+QN0wSxSLf6g+YpGFnNOwdbaDcjPV3yJXvAMz9knB97oWKx9x/Vub+RL+mXu/ijydEgPWrgMBT2W3VtDnrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rTut3K3uLyAmg9UyZfFKa6pMcYPPtwxFQ5G7oT/Q4/8=;
 b=i2y4AiV9x3gey1DzC8FtriQ3XtcAGtZTY9Y0a4eV/9wgczmiL6LqYH3NnsAO9KfdPL8Ekj1N0ICw+gguxip8Yng3dhj7LrnxqEDSYbPLqXTXrK3t88rlfk+gfmknGn5r/c1IVw4zP/1rkpiLSdLrNp5vYvzb9eJ7IDKADEZj7nw=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM7PR04MB7013.eurprd04.prod.outlook.com (2603:10a6:20b:116::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 15:25:38 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3cfc:a92e:75ad:ce4a%3]) with mapi id 15.20.3564.029; Thu, 19 Nov 2020
 15:25:38 +0000
From:   Aisheng Dong <aisheng.dong@nxp.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH 2/3] dt-bindings: arm: fsl: add imx8qm boards compatible
 string
Thread-Topic: [PATCH 2/3] dt-bindings: arm: fsl: add imx8qm boards compatible
 string
Thread-Index: AQHWvnVS5IQEt1uigUS009LxZdRCbanPcR4AgAAiGgA=
Date:   Thu, 19 Nov 2020 15:25:38 +0000
Message-ID: <AM6PR04MB4966A53D856AF7A5B10107A780E00@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <20201119125304.1279-1-aisheng.dong@nxp.com>
 <20201119125304.1279-2-aisheng.dong@nxp.com>
 <20201119132224.GB348129@kozik-lap>
In-Reply-To: <20201119132224.GB348129@kozik-lap>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [180.171.84.81]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 557dcbe0-6bac-437f-044a-08d88c9f5e91
x-ms-traffictypediagnostic: AM7PR04MB7013:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM7PR04MB70134DDACB28F21D27FA98C780E00@AM7PR04MB7013.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FCSSSU3htpUL2SSXjnG+D+4LQg4ZuMzCaUg1jV/bQsy63OLgw6Ele7lbK4OK+nxNlseHymrBvbtZv52tpnoV1EjJ+7BVNQSbA4FGvXuIN0Ksj9qojCUA2UR8K/Vr4QSGw4LeXFMCHKA3kjfBNjUS3U15Bb+sGhLWeJrsbo6OXk6AK+CYw1ymbtLuHH0PtRDXqL9GyqLZgP/sZEZYXwSDcxCpCtuu4ghDzL8+iiDvZTi1vmUU7WwOE1rRRnhsdOVUkv1EQ5m+nFVbdwdLYBzMkiIlG08sdY9SsN3NeQqMl29bUf/+dKYL4fqgJCr8R22QzCdEBul6+oiAA7N7vaMftadQaYGTAcBCTik0m1VL3xoWl0NwNo2BWfS36IGypSiS
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4966.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(366004)(346002)(39860400002)(376002)(316002)(6506007)(54906003)(52536014)(2906002)(44832011)(26005)(7696005)(186003)(55016002)(86362001)(71200400001)(5660300002)(9686003)(76116006)(33656002)(66446008)(64756008)(66556008)(66476007)(478600001)(66946007)(8676002)(8936002)(4326008)(6916009)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: H/301qHwVtjEH0vWSaVSu9xdHRUpANHaBCDIsZiiKM1euwPJXqypcY/I3htYjHU5X6r3Vi75GBBgQUqHJLBUgwudYIwgjY2rGFrjrDrmLEEF5eYNSfiVtGuXtQT9qwlAbHl1RN/zUZubqEMmNM1Fz7286+GkuAq0R1lL5SaUNlfL0Ya1H/68dG99RV5vHeuhtiRPYmCMUd9b58yTaKOcXwz+cS6qXhXusUSe+aX+jgKijf5DN4oVNRQe/Exzuj1DK3JmW5c/k5bE9S5vEBYffIyNRqG23UBVtUCpiHc+u6uTlLDCNqR5RO8wy28bHWiC0qMKMoSsxOxrRHAGj9lgFl89FSlyEgV/CV9xioxGXeykmA48phZfid0hALma1x5dY5z4y22Mor231qpKpCzprCKQmL7ZSVxOmp+hqgJmPKm0SXbKl4FmLKeARcZZG7OQKAK2NBpe+dBza/iENm1OE61I4drDEEFSXgyffTBKAit0UGD37xM3NYA409oDY5fg88oBV+CwPXpPSxHRjJxd/5Z8LZefrN4QmMy+99JQZxnvEh1XPMIH0IRnjNF03a8+GvYtqLstTJCd/PL6+5zXmETK/nZJetSnMOZIR37Na3gwDhl/Omx5GzJx+v2MT5T2OM9otOvzH8m4azfDUjQdpA==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4966.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 557dcbe0-6bac-437f-044a-08d88c9f5e91
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2020 15:25:38.6096
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O/ma9q+mhsf3PdbGUiMrP7+4VwyMZ4lkJzPcaN4gKTL+lcK6sBtOn/ZT9c3hUvFh91XrPyzaTsD+P8WsLEmnFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7013
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBGcm9tOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IFRo
dXJzZGF5LCBOb3ZlbWJlciAxOSwgMjAyMCA5OjIyIFBNDQo+IA0KPiBPbiBUaHUsIE5vdiAxOSwg
MjAyMCBhdCAwODo1MzowM1BNICswODAwLCBEb25nIEFpc2hlbmcgd3JvdGU6DQo+ID4gQWRkIGlt
eDhxbSBib2FyZHMgY29tcGF0aWJsZSBzdHJpbmcNCj4gPg0KPiA+IENjOiBSb2IgSGVycmluZyA8
cm9iaCtkdEBrZXJuZWwub3JnPg0KPiA+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZw0K
PiA+IENjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+DQo+ID4gU2lnbmVkLW9mZi1i
eTogRG9uZyBBaXNoZW5nIDxhaXNoZW5nLmRvbmdAbnhwLmNvbT4NCj4gPiAtLS0NCj4gPiAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbCB8IDYgKysrKysrDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQo+IGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9mc2wueWFtbA0KPiA+IGluZGV4IGY3
OTNmOTBmZTJlNi4uZDY5YWM1YzA1NTRlIDEwMDY0NA0KPiA+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vZnNsLnlhbWwNCj4gPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2ZzbC55YW1sDQo+ID4gQEAgLTcyNiw2ICs3MjYsMTIg
QEAgcHJvcGVydGllczoNCj4gPiAgICAgICAgICAgIC0gY29uc3Q6IHppaSxpbXg4bXEtdWx0cmEN
Cj4gPiAgICAgICAgICAgIC0gY29uc3Q6IGZzbCxpbXg4bXENCj4gPg0KPiA+ICsgICAgICAtIGRl
c2NyaXB0aW9uOiBpLk1YOFFNIGJhc2VkIEJvYXJkcw0KPiA+ICsgICAgICAgIGl0ZW1zOg0KPiA+
ICsgICAgICAgICAgLSBlbnVtOg0KPiA+ICsgICAgICAgICAgICAgIC0gZnNsLGlteDhxbS1tZWsg
ICAgICAgICAgICMgaS5NWDhRTSBNRUsgQm9hcmQNCj4gDQo+IE5vLCBwbGVhc2UgaW5jbHVkZSB0
aGUgYm9hcmRzIERUUyBpbiB0aGlzIHBhdGNoc2V0Lg0KDQpHb29kIHN1Z2dlc3Rpb24uIFNob3Vs
ZCBJIHJlc2VuZCBhcyBEVCBwYXRjaHNldCB1c2luZyBpdCB3YXMgYWxzbyB1bmRlciByZXZpZXc/
DQoNClJlZ2FyZHMNCkFpc2hlbmcNCg0KPiANCj4gQmVzdCByZWdhcmRzLA0KPiBLcnp5c3p0b2YN
Cg==
