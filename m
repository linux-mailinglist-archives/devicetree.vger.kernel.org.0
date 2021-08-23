Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66F663F44B1
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 07:43:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234643AbhHWFoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 01:44:15 -0400
Received: from mail-eopbgr140058.outbound.protection.outlook.com ([40.107.14.58]:45893
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231267AbhHWFoO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 23 Aug 2021 01:44:14 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=llcme0xbCZPOlJo0N4XfPwJWnyRZantt22BurjeX1AreTZBHgAC+uYEhlnNDPeUyVoQZrSYjecgzufz1UMhaaY7htr8JPS7IdhCPD8KW1cRK7jy5IDBEEcKdzhiRMScLSld1urGj7nVKMDQzFnI+oCQFApFAXZ1zdZXi6ZhYwiIYw7iRRIUCQduXhlRUXt8mt/AZ82VzwqRgNfoqcCTnqXT53FvdJxmtfv8360GyG2giycgmjhe0AwoCIQGh25fIwdM4eh/0jVZDfQbL1V26SvTMqEjeHRSy2sGVClSKn/MriJwywbMMlLTtKImq8tfRIobLZbNecIC4mj/8OM984w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgmtqbUcHqBquey6MCuEpvI3kQh8b2WODkbvmNUeDoM=;
 b=lnSXBNYsXF4XaCLdCGeeb2ATZKYHJoQhCnOF0IrprWUpXXlIuUJl7RIRmFjYUiflR62H28EmJccl+zowehWa4CEI3OvvrEhEpIsloy8bKDIw1MeP1bLQZ1JoGKIzybpn+1C0jon6IY2dB+FWxImaPXcIWVPIZdQwArQaCHQG1EFHAlB9KGKuw4myyNG5HxzEP/ZJbqSic/EJilJ173fnJFstBFwg102X4F+sCFXWL6EuRCUPvGGOAeIZw4VQlYr1LjR6Vtd6+wSDdYW/7Fg1UrBJkU/siq/s1VIu1bLp/8GUVE5zl76BPUH5Q0zwsTnKh2MGIy2BZV7EAMPfgKljaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgmtqbUcHqBquey6MCuEpvI3kQh8b2WODkbvmNUeDoM=;
 b=HgnZykKtcVqk5TboRAQxlRqGWUUzcQA0jBa66xd8qzEhUqBgbO/SeIN9gh0fS3JNnJH4iKGyiGYVxZU4+uQL8x/l86xb2IMJWpdsZbCJBcv2xb3l/IbK2FslKFbFqg6dA0jrHVtKZYNFFdAWNt5u4Yl8bz5c7BOSVy05uXN25iQ=
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com (2603:10a6:10:1ea::12)
 by DB8PR04MB6859.eurprd04.prod.outlook.com (2603:10a6:10:119::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 05:43:29 +0000
Received: from DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db]) by DBBPR04MB7930.eurprd04.prod.outlook.com
 ([fe80::20b9:1038:c018:97db%7]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 05:43:29 +0000
From:   Jacky Bai <ping.bai@nxp.com>
To:     Rob Herring <robh@kernel.org>
CC:     "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Abel Vesa <abel.vesa@nxp.com>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [PATCH v2 1/9] dt-bindings: clock: Add imx8ulp clock support
Thread-Topic: [PATCH v2 1/9] dt-bindings: clock: Add imx8ulp clock support
Thread-Index: AQHXja9u+4MWitugykynQnqvZR2BYat4HQ6AgAiJzkA=
Date:   Mon, 23 Aug 2021 05:43:29 +0000
Message-ID: <DBBPR04MB7930DA593071CC6328AA814187C49@DBBPR04MB7930.eurprd04.prod.outlook.com>
References: <20210810062820.1062884-1-ping.bai@nxp.com>
 <20210810062820.1062884-2-ping.bai@nxp.com>
 <YRwKxWbIXsQLmIcq@robh.at.kernel.org>
In-Reply-To: <YRwKxWbIXsQLmIcq@robh.at.kernel.org>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a5bfdfca-edc7-4bb4-59c3-08d965f8ef66
x-ms-traffictypediagnostic: DB8PR04MB6859:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB68599DBCF561478ABEDEF93F87C49@DB8PR04MB6859.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8O/ePjgNY9rfHbeqWUwlS/56aA2TOUuz8ho4kk1y0U1jcMCL/pJazyGpX3asiKbNBiA4cmuycW7aDBksZf4Gh3jDret+yx2Tv6fZkvY05oLQruHEmzSR/M7yLOqM1fgjH/YAGlnEYCWrcdwB7HWK8Q7jh7epDVIL1V1SpkTE9vy0mXHAVaBIM5lLsfrFZjCCW3WhQtPAxq43dmBM3P4nDJ3vlg6TQ0OHFhUIGG0YgM7ze5zhthYK4o40rih1xCp/pTJSzKdAUW8UvVt1sNu7Asi4wqMfkMWcAoMVTKGbigVH40DJkwL7zt/jmW3UC8k1LEYh9Jow+2neimYvZb9wSfSVWgM7xLeF3/iBWYVwn+gm24/fYpPJ+DqwqrH/wnLR+Dijx1QwmNpu/MbNaXJNEM4iNPAt4Fuf3srrHQkja2YehLLqWPDTZUfdrw6mL8bcovvWtTD/mqwcQvRvyfySBGUSfZ35LXk/0XyvmuuOVVLNFsXMZQgnIQHmmP+W1dySk0Z4AmZQfcASRE94DOgxRHofZbo9fY/mePK7+aZVWX7KRC3ODPRjQnMzfMdXxWksG4fzkZfYT9A6exwqxzLFkLQzwqdNtdCBxtj8wiZXt9Z+w2qtEj5kZJ8M0/2jkZwnfgZNkc/bnAx6f+kr1HsHg46DMSuxCFaYB6jz4NZTM62P/Y0w22P6DiMe/0gbO/WtnGsqeBItV0r5VWUE4N4MnD7dPdjAhf6JKjVu5r2zguA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7930.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(66556008)(6506007)(508600001)(64756008)(66946007)(66446008)(4326008)(186003)(6916009)(26005)(76116006)(2906002)(8676002)(52536014)(316002)(66476007)(38100700002)(54906003)(38070700005)(83380400001)(122000001)(55016002)(86362001)(7696005)(9686003)(5660300002)(33656002)(71200400001)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjJ4OFA5QTVsa0EvSGhLZUNVUEhUYWNBVU1CNFBwT3YvYVF6eGJoSUMzSnpk?=
 =?utf-8?B?d2pNdG9XLzZ0VHphZkUzT01acEMxZXp4OE12S2ErU2F1WmVMOVBySExIaXo5?=
 =?utf-8?B?R011bTJwclBlV3RleUZvVHgxZVFrNkpBRnVzVENlUCs0dVBiTTYvckpQdllI?=
 =?utf-8?B?aGhOZ1o1RmRhZkJORGlHY1hReUdnU2piZEJzcUk3SUJhVERxZEtOQlh0SDUv?=
 =?utf-8?B?NVllRHhtZ2EwZ1NJOTBxc0U1L0YwUWFRWnVrOVhQWUw1NWlnd2MwTnIyWStG?=
 =?utf-8?B?Yml6MUwvWFFDNFZta1RtTi84MG43Z1N0ZElmN2hsNFRvWDc4OW1hRmc5Q3lr?=
 =?utf-8?B?TmlmOHVRanU3S3R4YnQ2V2ZnMzEvSVB6YUV2REQ2UWxOVnhJMjJ3N2V4bjN6?=
 =?utf-8?B?ejBxM1RwU1FrMFBtZno2U0R2NnRtUEE4K3YyN2lBMGozMWVYTWdieHpOY2xa?=
 =?utf-8?B?V2ZPN2JuNUpKdFNJNEpWaWdUVU9tMnh3L0dPWFNNZjdGTDJXVFQ2cUNYaEY2?=
 =?utf-8?B?QUpMQ1lxemdwWXhaaTl5dkxUUTdOcjI0b3dNbzZVNW5DNkZVZjNPemNrQURT?=
 =?utf-8?B?WlJIcGFaTXpSZDdlTWdtSS9GN3pHUXVoK3kyOElhU1o0VCtLL1RJT2k1SEpu?=
 =?utf-8?B?OXBUL1NHdFpQOVFKenRmd1Y2Y0dsNUZidHpwT2taN1U4ODN5L2lLaFNoTkJm?=
 =?utf-8?B?ZzhNRnp5S1BWaStXVlBjV0t6WWRpNUMyb1FtMXhaWEU0ZmNIc1g0dFlYdWlr?=
 =?utf-8?B?a21xeU5zY0ZxUU16eDVveUNmTm4zckVIWE00Y29aaWxxencvRTlJakg3QXlz?=
 =?utf-8?B?czczQnJvQXV2L1hoWWZRL0thN1FQd25BdmFoRSt3elJvSWtOUlF1U2x4ZS9o?=
 =?utf-8?B?NFQ3QTk0VnZ1aG0wV0F1OFdOdXFJMjRxd2Q3VnZqZnZKR2R2UVV0NXExVmd4?=
 =?utf-8?B?aytIL0dYV09MQXRHYjltd25waVg1c2NGS0RaSExmOXoyQUdoOEdma1NoOXkx?=
 =?utf-8?B?RlpMMU5iZmF1QTM2dmVkSG1oUWVVbC9SdjMxK1lJdjM2aUVvRTFrbVN6YVhr?=
 =?utf-8?B?RUdTWjFxdTJEVmFtZXpPUG53Y21UZ3pyUyt6T3ZXMndORmZzNWlXbjkzL0pJ?=
 =?utf-8?B?ZXJZajE1TkhuYlplQnVSbW1EVWQybDlVMk1RNVRBdzJGWjFoRzFheWNOWUVp?=
 =?utf-8?B?b3lEemZGOWo3NFdKbjE4NmFZVk4ya1BKWFYzVlFKTmVaR280YTVyV1Qyc0Mr?=
 =?utf-8?B?QzJPaTJhYldGSnhqem5UUDIxZ1Z4SjVhaGw5NUtxK0xrSlNCWXNuUGpnRldh?=
 =?utf-8?B?b2xqRXdYeTRZeTJ1Y1dCQjV4QndkTzlsT2dHWU4vZGNFYm9nK2VVTDRMMlFo?=
 =?utf-8?B?ZjBsUWx2RXRtZCt3aUFxSm5wU09QbURtNEJYL2QrT0xyNDZYZXd2b0JjaEpp?=
 =?utf-8?B?S3VCVVBQSjRUQVV4YkYrWWwydWgrU3R4NnB3SkY3OFJRSlN2ZW5OSEY0aVFm?=
 =?utf-8?B?VG1qSU9iMTRMeEFScVpyVXI5RGU3TGNFT1ZFS2Q4Vm1ZTVVEcDl6SGNIN0lt?=
 =?utf-8?B?QmwvUVl3WnozZlZMaEtuUm9nWHFYbzJ4N2I4cE5UdXJicGUwbm9DQm05MUJM?=
 =?utf-8?B?K3NOdVZrZmxqMnZ2RjhuZlpFQ291RlBVSnNCOFhLZmVnaUhzOStxY3ptaGtF?=
 =?utf-8?B?ZWxGdzY0Wmd1alBWZHpkcGQ4OGpwMjYreEIxNGdOb3FXU1E1REE0dkdUeXF5?=
 =?utf-8?Q?a5hGpBxBAZ1ov6GHJ4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7930.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5bfdfca-edc7-4bb4-59c3-08d965f8ef66
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2021 05:43:29.1417
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qK1qi/a9mp+17/ExTQEgUx5bgww375il+zfcda5WQFlNkTGUh7GbI6fuu02khx/j2TmDJyvgRHfLjJ54Ul0WzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6859
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDEvOV0gZHQtYmluZGluZ3M6IGNsb2NrOiBBZGQgaW14
OHVscCBjbG9jayBzdXBwb3J0DQo+IA0KPiBPbiBUdWUsIEF1ZyAxMCwgMjAyMSBhdCAwMjoyODox
MlBNICswODAwLCBKYWNreSBCYWkgd3JvdGU6DQo+ID4gQWRkIHRoZSBjbG9jayBkdC1iaW5kaW5n
IGZpbGUgZm9yIGkuTVg4VUxQLg0KPiA+DQo+ID4gRm9yIHBjYyBub2RlLCBpdCB3aWxsIGFsc28g
YmUgdXNlZCBhcyBhIHJlc2V0IGNvbnRyb2xsZXIsIHNvIGFkZCB0aGUNCj4gPiAnI3Jlc2V0LWNl
bGxzJyBwcm9wZXJ0eSBkZXNjcmlwdGlvbiBhbmQgYWRkIHRoZSBwY2MgcmVzZXQgSURzLg0KPiA+
DQo+ID4gU2lnbmVkLW9mZi1ieTogSmFja3kgQmFpIDxwaW5nLmJhaUBueHAuY29tPg0KPiA+IC0t
LQ0KPiA+ICB2MiBjaGFuZ2VzOg0KPiA+ICAgIC0gcmVtb3ZlZCB0aGUgcmVkdW5kYW50IGNsb2Nr
cyAmIGNsb2NrLW5hbWVzIHByb3BlcnR5DQo+ID4NCj4gPiAgdjEgY2hhbmdlczoNCj4gPiAgICAt
IE1vdmUgdGhpcyBwYXRjaCBmcm9tIGR0cyBwYXRjaHNldCBpbnRvIHRoaXMgcGF0Y2hzZXQNCj4g
PiAtLS0NCj4gPiAgLi4uL2JpbmRpbmdzL2Nsb2NrL2lteDh1bHAtY2xvY2sueWFtbCAgICAgICAg
IHwgIDcxICsrKysrDQo+ID4gIGluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svaW14OHVscC1jbG9j
ay5oICAgICB8IDI1OCArKysrKysrKysrKysrKysrKysNCj4gPiAgaW5jbHVkZS9kdC1iaW5kaW5n
cy9yZXNldC9pbXg4dWxwLXBjYy1yZXNldC5oIHwgIDU5ICsrKysNCj4gPiAgMyBmaWxlcyBjaGFu
Z2VkLCAzODggaW5zZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaW14OHVscC1jbG9jay55YW1sDQo+
ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL2lteDh1bHAt
Y2xvY2suaA0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNl
dC9pbXg4dWxwLXBjYy1yZXNldC5oDQo+ID4NCj4gPiBkaWZmIC0tZ2l0DQo+ID4gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaW14OHVscC1jbG9jay55YW1sDQo+ID4g
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svaW14OHVscC1jbG9jay55
YW1sDQo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjlh
MDc1ZGUxMDg2YQ0KPiA+IC0tLSAvZGV2L251bGwNCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvY2xvY2svaW14OHVscC1jbG9jay55YW1sDQo+ID4gQEAgLTAsMCAr
MSw3MSBAQA0KPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9S
IEJTRC0yLUNsYXVzZSkgJVlBTUwgMS4yDQo+ID4gKy0tLQ0KLi4uDQo+ID4gKw0KPiA+ICsgICcj
Y2xvY2stY2VsbHMnOg0KPiA+ICsgICAgY29uc3Q6IDENCj4gPiArDQo+ID4gKyAgJyNyZXNldC1j
ZWxscyc6DQo+ID4gKyAgICBjb25zdDogMQ0KPiA+ICsNCj4gPiArcmVxdWlyZWQ6DQo+ID4gKyAg
LSBjb21wYXRpYmxlDQo+ID4gKyAgLSByZWcNCj4gPiArICAtICcjY2xvY2stY2VsbHMnDQo+ID4g
Kw0KPiA+ICthbGxPZjoNCj4gPiArICAtIGlmOg0KPiA+ICsgICAgICBwcm9wZXJ0aWVzOg0KPiA+
ICsgICAgICAgIGNvbXBhdGlibGU6DQo+ID4gKyAgICAgICAgICBjb250YWluczoNCj4gPiArICAg
ICAgICAgICAgZW51bToNCj4gPiArICAgICAgICAgICAgICAtIGZzbCxpbXg4dWxwLXBjYzMNCj4g
PiArICAgICAgICAgICAgICAtIGZzbCxpbXg4dWxwLXBjYzQNCj4gPiArICAgICAgICAgICAgICAt
IGZzbCxpbXg4dWxwLXBjYzUNCj4gPiArICAgIHRoZW46DQo+ID4gKyAgICAgIHJlcXVpcmVkOg0K
PiA+ICsgICAgICAgIC0gJyNyZXNldC1jZWxscycNCj4gDQo+IEFuZCAjcmVzZXQtY2VsbHMgaXMg
b3B0aW9uYWwgZm9yIGEgQ0dDPyBJIHRoaW5rIHRoaXMgc2hvdWxkIGJlIDIgc2NoZW1hIGZpbGVz
Lg0KPiBUaGVyZSdzIG5vdGhpbmcgcmVhbGx5IHNoYXJlZCBhbnkgbW9yZSB0aGFuIGFueSBvdGhl
ciBjbG9jay9yZXNldCBjb250cm9sbGVyLg0KPiANCg0KVGhlIENHQyBpcyBhIHJvb3QgY2xvY2sg
Z2VuZXJhdG9yLCBoYXMgbm8gcmVzZXQgZnVuY3Rpb24sIG9ubHkgdGhlIFBDQyBIVyBtb2R1bGVz
IGhhdmUgcmVzZXQgY29udHJvbCBmb3IgcGVyaXBoZXJhbHMuDQpEbyB5b3Ugc3VnZ2VzdCB0byBz
cGl0IGludG8gdHdvIHNjaGVtYSBmaWxlcywgb25lIGZvciBDR0NzLCBhbmQgYW5vdGhlciBvbmUg
Zm9yIFBDQ3M/DQpUaGFua3MuDQoNCkJSDQo+ID4gKw0KPiA+ICthZGRpdGlvbmFsUHJvcGVydGll
czogZmFsc2UNCj4gPiArDQo+ID4gK2V4YW1wbGVzOg0KPiA+ICsgICMgQ2xvY2sgQ29udHJvbCBN
b2R1bGUgbm9kZToNCj4gPiArICAtIHwNCj4gPiArICAgIGNsb2NrLWNvbnRyb2xsZXJAMjkyYzAw
MDAgew0KPiA+ICsgICAgICAgIGNvbXBhdGlibGUgPSAiZnNsLGlteDh1bHAtY2djMSI7DQo+ID4g
KyAgICAgICAgcmVnID0gPDB4MjkyYzAwMDAgMHgxMDAwMD47DQo+ID4gKyAgICAgICAgI2Nsb2Nr
LWNlbGxzID0gPDE+Ow0KPiA+ICsgICAgfTsNCj4gPiArDQo+ID4gKyAgLSB8DQo+ID4gKyAgICBj
bG9jay1jb250cm9sbGVyQDI5MmQwMDAwIHsNCj4gPiArICAgICAgICBjb21wYXRpYmxlID0gImZz
bCxpbXg4dWxwLXBjYzMiOw0KPiA+ICsgICAgICAgIHJlZyA9IDwweDI5MmQwMDAwIDB4MTAwMDA+
Ow0KPiA+ICsgICAgICAgICNjbG9jay1jZWxscyA9IDwxPjsNCj4gPiArICAgICAgICAjcmVzZXQt
Y2VsbHMgPSA8MT47DQo+ID4gKyAgICB9Ow0K
