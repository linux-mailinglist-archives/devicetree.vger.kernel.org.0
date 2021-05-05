Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7D47373E84
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 17:29:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233469AbhEEP34 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 11:29:56 -0400
Received: from mail-co1nam11on2112.outbound.protection.outlook.com ([40.107.220.112]:40417
        "EHLO NAM11-CO1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S233304AbhEEP34 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 5 May 2021 11:29:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wc5ImXLGdJIsThlZRoG+chS5acwVfhBt2RW+px/cvh/PWlAWz44GO4BFMsecgZ63GjOJG7HrFEGb3ocBtba/YBcKEl8v1iLOCHxn699GO/PsXM0ilOefT2I122Uk7KOnSYWpORC0AaoXBsngSTiAvW+qixFDH9aDCZoNLyop6vMpR+8j9AeXPsZIDNX18nX+0ANodZEBERWX3/KmafY2Z1W/zo/L7cQF+SpEZrDG4EddOYqOlxIw+z3i31UvopZZbpTUmtLHtNZAk/n3+kjYYQrK0ym4TZSNDEy/2+6tXaarlshyTxSoq5LCWLa2PRa9Sidw0w84+LqwZe+OxtoppA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mG4O1HQ+Hy1MSHX4rH8+PVVIIcrzlN18nvWo/i5tD0=;
 b=U5Y434Sbazv72BIMr5nZ4wZxTRHqOj5eS/+y+Zh36OZgDoTjvC1XTAs3y1M9r/HhcNrnbit5IX16PVER5bXG4Hh4mJwy0wvwVPvnZ7hfny+We4+1a559EfY76iTEiBW5l3l2ZdWgXG/pL3WnXo1IfqwSVzF81p+i5K66rEJPF245hrV0DRzffx+dM68GHUhaBXSw9q4lKG9ojR90loRN8rTMc9eVU2bKn0YYb5Yc1HnV2UxNAmyIe6X+LdH/kjmXWehQVhefESikmIKjNCZVMwqcabwwA/TqId0wJYfRnJDbX1YcbLxchMl2TkbfQLsZM7ueKEWdMjJvlBTOH/nkEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mG4O1HQ+Hy1MSHX4rH8+PVVIIcrzlN18nvWo/i5tD0=;
 b=GTho7QGwUfkrpULoFj+WoVTPrdZMu3BtDmw8AgURQcdilNPluCp1eOmYqSt5JyN4tIRbkdqWP2RzOQPX7yd85ekHqiN8aFFz+/3N4so5VDix5MoGCOsV94zuqq2LCLWZgoB1fK7XV+je8ELX3umuOWz3w79530Ji0bymDd5/lmk=
Received: from MWHPR21MB1593.namprd21.prod.outlook.com (2603:10b6:301:7c::11)
 by MW4PR21MB1986.namprd21.prod.outlook.com (2603:10b6:303:7d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.1; Wed, 5 May
 2021 15:28:58 +0000
Received: from MWHPR21MB1593.namprd21.prod.outlook.com
 ([fe80::3c30:6e04:401d:c31f]) by MWHPR21MB1593.namprd21.prod.outlook.com
 ([fe80::3c30:6e04:401d:c31f%4]) with mapi id 15.20.4129.012; Wed, 5 May 2021
 15:28:56 +0000
From:   Michael Kelley <mikelley@microsoft.com>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
CC:     "arve@google.com" <arve@google.com>,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <Mark.Rutland@arm.com>
Subject: RE: [PATCH v6 1/6] arm64: smccc: Add support for SMCCCv1.2 extended
 input/output registers
Thread-Topic: [PATCH v6 1/6] arm64: smccc: Add support for SMCCCv1.2 extended
 input/output registers
Thread-Index: AQHXQZJ6ft6iTfTFRUmVI4zVKFpe46rVAmYg
Date:   Wed, 5 May 2021 15:28:56 +0000
Message-ID: <MWHPR21MB159352805E9DACBE428BA6FAD7599@MWHPR21MB1593.namprd21.prod.outlook.com>
References: <20210505093843.3308691-1-sudeep.holla@arm.com>
 <20210505093843.3308691-2-sudeep.holla@arm.com>
In-Reply-To: <20210505093843.3308691-2-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=7c9b9dad-59bb-440b-a339-58827aad36b8;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-05-05T15:24:42Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
authentication-results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=microsoft.com;
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b02c1096-2efa-4172-2a95-08d90fda7fb0
x-ms-traffictypediagnostic: MW4PR21MB1986:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MW4PR21MB198664E3B4428F2E5DE2703BD7599@MW4PR21MB1986.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oGOb7AilhBFE0gEVf3UiDgCU1ZCYIuO1bkya4sT6Qz2/SgAgtWAoUhn5lJslC3L31A5MEOxJzrsE7EMY8g2CVqhgb0FcG1FFZgUnPc5t+Ky3bi6uEwxRTD9UU18xEZl9ABm92ae47Qn+a9XPEcpmIn7tQpoKolmlGGzAvNVHztCHMhMLlrRBIF16wgC4A1H2qDSneM8LYVSK+6uU8ae1GP4Z4e3wu9VBVWQB60e0JEMfJjIzAdfqjhwUikh3CwRqelyM0K0q/Z0td+KE0O/vL31pPy1WlAOQlXIox38iE/n4uVpRom9mMrKs89Rp4wM1yw0A4Dqn17iBf15iaajzrqMVb1D2Uc3cUeCP6lRKFqAZnL5VMh3baj6S3NAkgUQb+DOBoHLKqEa2O/J6SM5bFY8bPA63BTJuyQrrSDzWlnlIwuCmywGiHJW4Efh4+7Z3xxM3WNone4PG0f/VfvDckJhayGyTZw9iugK4YHSrTEEv85AkQ6d6cwkP8hyR4wXIhORaMHQE/INxzw/Em38dZzdfymxgoewkGVeL8kItez9Ga52DKLx/J9VXR0Cmu2N0h2RbCGUEIydgXMxb1U16K/ISlwCYuULAICBMpWvG/QQ=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR21MB1593.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(7416002)(82960400001)(82950400001)(5660300002)(316002)(8936002)(64756008)(7696005)(83380400001)(38100700002)(66476007)(110136005)(6506007)(54906003)(66446008)(66556008)(4326008)(9686003)(52536014)(10290500003)(122000001)(8676002)(86362001)(55016002)(26005)(186003)(8990500004)(2906002)(478600001)(71200400001)(76116006)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vlg5VDl4Y2VuOTJYbWFpc1Z5SzdmSmhZRE8xYXVXNXF2anJKSTV0T29Ya1dP?=
 =?utf-8?B?MklUOWNCbjc0bmxTWk9sT3VBdGw2M0pQZUh1cmJ4WFlxd3R1ZU9SMTVPMDhh?=
 =?utf-8?B?R1hheW1kR2x4TWJZd3UrMGlKMjdpZVdDb3lBb0ZHN1c2Y2FyK1dsdHJrVkMx?=
 =?utf-8?B?RmlLTk16TDFVdHdhdlhGQ21aOEZSaGlNdFBOWFQ4bW1ReGZTYXZ3cmxpdmN0?=
 =?utf-8?B?eGtpYnhVZzBldmo4SzNvQmxCMFJrSzNzU09aR1RwT1NEZ1N0bEJSUnEyb3Bk?=
 =?utf-8?B?ckduNlVqc2dlbEJxZEl5eXg3aVB5cjRncFByL3p4Q2pGQ0JGT3lzd2JQbDkv?=
 =?utf-8?B?Y1cxWFZEME1iQi8zeWp2QjJadHlkTURWNkpPWU5xNmZ4VDZzaGJEVlRBWFFh?=
 =?utf-8?B?WXFLTXh4ZGtTME5obFNXK1FDMW9maHFiMnEyVFlSbTFZSW9VSGJ2cERwdjZs?=
 =?utf-8?B?bzBLVFVTdXRMNzBndTV2N0RYZUdiblgrT08zNE5MTE53Wkp2UEJwVERka1ho?=
 =?utf-8?B?cnhuSCtUTjB3TEtoZ3hUYjhmTWRwd2gwQWt1WVVEa3NUb0xMYlhtOThNWU1k?=
 =?utf-8?B?ekJMQk1TckZ0THZWckFHTlZBTDNxV3dZbGFqcGN6VWZRaWFPTklmRFlYMGFI?=
 =?utf-8?B?RHBlL3lQOEgxNDUvM0NtVUR0SUJRR2dSeStjOVc5ZmVtckx5ZTNvNTdpRURL?=
 =?utf-8?B?UnlhdG12WlYwbnYxc0R3QzlnSE9WMEcrU3o0cnRGeW9FcFQxNXhUbW4xSW1J?=
 =?utf-8?B?Y1lVY0JPNkdzaEVDaUJKaFF1RG5kRWc5dXhQQUdNbEtCeTlHaDhkczVHYkU2?=
 =?utf-8?B?alJUbkd5VGx2cnI3VnNhemFIemNkRDNDWmEvSnVIL2Judko3TEJBcUNIdE1u?=
 =?utf-8?B?MHhLdXkvbkFhblQ2aTgrY0JUbmx4bUZrR3FucDVqeTFaSVV5ZCtSVnFFaVoz?=
 =?utf-8?B?SWE5bGRMVi8vWk9QeHVtS3lDQ1VIQzFLMm54aTRiVkJqbXJBMXlxRGhhUjY1?=
 =?utf-8?B?T293ZTlWV1JnZlFFcU5FTHkyN2JCOW14MFhQcHUzbmMxZklaNGZyYUw5NEJV?=
 =?utf-8?B?Y0Y5dmhuS3FmaTVPMk40QTUveVBBQUtzaGJCd0NnUzVoK2RwL1IyWnJUczcw?=
 =?utf-8?B?blB5NGtkcUZWNkk3QnlDQ0luV1FZaEFQVFEvWEdDaWhha05PWjlhd2NrKy8r?=
 =?utf-8?B?Q2pDSG14SlF6K0FJVHhoTGl2K1dMdXJUZFpRdjliUGxHRHlPR0J3YjE0K2Z1?=
 =?utf-8?B?M0pPelBnTk5mcW5xRFVpdTZTeTM4RUQvT1dlZEtLODZUQ0J1clQrd0RPV1I0?=
 =?utf-8?Q?cvnRDT062L?=
x-ms-exchange-antispam-messagedata-1: cPPBsjcCtak1FmfDXGe0JQ7KLhQ6/jCDH/xTd3atCwnL7J6N3wLh1fgDQmpR68rCVTw+RhAGT3XRXW7YjnKK1KKNjVf+UQwaH2n9bk1UI6yhs2NIBrFJ2CLt4U3N25ipTIdBaOhMEDfKKTlRttPaK7pbgE7/lXBCtoWdL3czwMZXs2sRUAXZKYLIk0MRtzyEQ3k1Abe/duRjfXw6DE1P1FL7xFtxdQXJAGkNezdHXGl6FacJigs+1gFzSI8es3BTX8WAbLS8NqZ8Sz90kVzbWxF97hnEb0Z8YrMShs84phj+6q9g7NRk0Gm9iU6OB5KptHv14eUhuc6iPKMDmiEpQWXW
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR21MB1593.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b02c1096-2efa-4172-2a95-08d90fda7fb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2021 15:28:56.8724
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UmvNxc8ziYQ/4XgoRDwrKCvc8hBNVWNFUEVjiwSAPBwHc2CFIzXaQBShYdY9MXSrnBOydrZAoZ4tOAJABxTrvAd818FMWR7Pk1mMxn87CME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR21MB1986
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RnJvbTogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4gU2VudDogV2VkbmVzZGF5
LCBNYXkgNSwgMjAyMSAyOjM5IEFNDQo+IA0KPiBTTUNDQyB2MS4yIGFsbG93cyB4OC14MTcgdG8g
YmUgdXNlZCBhcyBwYXJhbWV0ZXIgcmVnaXN0ZXJzIGFuZCB4NOKAlHgxNw0KPiB0byBiZSB1c2Vk
IGFzIHJlc3VsdCByZWdpc3RlcnMgaW4gU01DNjQvSFZDNjQuIEFybSBGaXJtd2FyZSBGcmFtZXdv
cmsNCj4gZm9yIEFybXY4LUEgc3BlY2lmaWNhdGlvbiBtYWtlcyB1c2Ugb2YgeDAteDcgYXMgcGFy
YW1ldGVyIGFuZCByZXN1bHQNCj4gcmVnaXN0ZXJzLiBUaGVyZSBhcmUgb3RoZXIgdXNlcnMgbGlr
ZSBIeXBlci1WIHdobyBpbnRlbmQgdG8gdXNlIGJleW9uZA0KPiB4MC14NyBhcyB3ZWxsLg0KPiAN
Cj4gQ3VycmVudCBTTUNDQyBpbnRlcmZhY2UgaW4gdGhlIGtlcm5lbCBqdXN0IHVzZSB4MC14NyBh
cyBwYXJhbWV0ZXIgYW5kDQo+IHgwLXgzIGFzIHJlc3VsdCByZWdpc3RlcnMgYXMgcmVxdWlyZWQg
YnkgU01DQ0N2MS4wLiBMZXQgdXMgYWRkIG5ldw0KPiBpbnRlcmZhY2UgdG8gc3VwcG9ydCB0aGlz
IGV4dGVuZGVkIHNldCBvZiBpbnB1dC9vdXRwdXQgcmVnaXN0ZXJzIG5hbWVseQ0KPiB4MC14MTcg
YXMgYm90aCBwYXJhbWV0ZXIgYW5kIHJlc3VsdCByZWdpc3RlcnMuDQo+IA0KPiBDYzogTWljaGFl
bCBLZWxsZXkgPG1pa2VsbGV5QG1pY3Jvc29mdC5jb20+DQo+IENjOiBXaWxsIERlYWNvbiA8d2ls
bEBrZXJuZWwub3JnPg0KPiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4N
Cj4gQ2M6Q2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4NCj4gLS0tDQo+ICBh
cmNoL2FybTY0L2tlcm5lbC9hc20tb2Zmc2V0cy5jIHwgIDkgKysrKysrDQo+ICBhcmNoL2FybTY0
L2tlcm5lbC9zbWNjYy1jYWxsLlMgIHwgNTcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrDQo+ICBpbmNsdWRlL2xpbnV4L2FybS1zbWNjYy5oICAgICAgIHwgNTUgKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMjEgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL2FzbS1vZmZzZXRzLmMgYi9h
cmNoL2FybTY0L2tlcm5lbC9hc20tb2Zmc2V0cy5jDQo+IGluZGV4IDBjYjM0Y2NiNmU3My4uNzQz
MjFiYzlhNDU5IDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9hc20tb2Zmc2V0cy5j
DQo+ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2FzbS1vZmZzZXRzLmMNCj4gQEAgLTEzOCw2ICsx
MzgsMTUgQEAgaW50IG1haW4odm9pZCkNCj4gICAgREVGSU5FKEFSTV9TTUNDQ19SRVNfWDJfT0ZG
UywJCW9mZnNldG9mKHN0cnVjdCBhcm1fc21jY2NfcmVzLCBhMikpOw0KPiAgICBERUZJTkUoQVJN
X1NNQ0NDX1FVSVJLX0lEX09GRlMsCW9mZnNldG9mKHN0cnVjdCBhcm1fc21jY2NfcXVpcmssIGlk
KSk7DQo+ICAgIERFRklORShBUk1fU01DQ0NfUVVJUktfU1RBVEVfT0ZGUywJb2Zmc2V0b2Yoc3Ry
dWN0IGFybV9zbWNjY19xdWlyaywgc3RhdGUpKTsNCj4gKyAgREVGSU5FKEFSTV9TTUNDQ18xXzJf
UkVHU19YMF9PRkZTLAlvZmZzZXRvZihzdHJ1Y3QgYXJtX3NtY2NjXzFfMl9yZWdzLCBhMCkpOw0K
PiArICBERUZJTkUoQVJNX1NNQ0NDXzFfMl9SRUdTX1gyX09GRlMsCW9mZnNldG9mKHN0cnVjdCBh
cm1fc21jY2NfMV8yX3JlZ3MsIGEyKSk7DQo+ICsgIERFRklORShBUk1fU01DQ0NfMV8yX1JFR1Nf
WDRfT0ZGUywJb2Zmc2V0b2Yoc3RydWN0IGFybV9zbWNjY18xXzJfcmVncywgYTQpKTsNCj4gKyAg
REVGSU5FKEFSTV9TTUNDQ18xXzJfUkVHU19YNl9PRkZTLAlvZmZzZXRvZihzdHJ1Y3QgYXJtX3Nt
Y2NjXzFfMl9yZWdzLCBhNikpOw0KPiArICBERUZJTkUoQVJNX1NNQ0NDXzFfMl9SRUdTX1g4X09G
RlMsCW9mZnNldG9mKHN0cnVjdCBhcm1fc21jY2NfMV8yX3JlZ3MsIGE4KSk7DQo+ICsgIERFRklO
RShBUk1fU01DQ0NfMV8yX1JFR1NfWDEwX09GRlMsCW9mZnNldG9mKHN0cnVjdA0KPiBhcm1fc21j
Y2NfMV8yX3JlZ3MsIGExMCkpOw0KPiArICBERUZJTkUoQVJNX1NNQ0NDXzFfMl9SRUdTX1gxMl9P
RkZTLAlvZmZzZXRvZihzdHJ1Y3QNCj4gYXJtX3NtY2NjXzFfMl9yZWdzLCBhMTIpKTsNCj4gKyAg
REVGSU5FKEFSTV9TTUNDQ18xXzJfUkVHU19YMTRfT0ZGUywJb2Zmc2V0b2Yoc3RydWN0DQo+IGFy
bV9zbWNjY18xXzJfcmVncywgYTE0KSk7DQo+ICsgIERFRklORShBUk1fU01DQ0NfMV8yX1JFR1Nf
WDE2X09GRlMsCW9mZnNldG9mKHN0cnVjdA0KPiBhcm1fc21jY2NfMV8yX3JlZ3MsIGExNikpOw0K
PiAgICBCTEFOSygpOw0KPiAgICBERUZJTkUoSElCRVJOX1BCRV9PUklHLAlvZmZzZXRvZihzdHJ1
Y3QgcGJlLCBvcmlnX2FkZHJlc3MpKTsNCj4gICAgREVGSU5FKEhJQkVSTl9QQkVfQUREUiwJb2Zm
c2V0b2Yoc3RydWN0IHBiZSwgYWRkcmVzcykpOw0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9r
ZXJuZWwvc21jY2MtY2FsbC5TIGIvYXJjaC9hcm02NC9rZXJuZWwvc21jY2MtY2FsbC5TDQo+IGlu
ZGV4IGQ2MjQ0Nzk2NGVkOS4uN2Q3OWM1MDYyYzVkIDEwMDY0NA0KPiAtLS0gYS9hcmNoL2FybTY0
L2tlcm5lbC9zbWNjYy1jYWxsLlMNCj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvc21jY2MtY2Fs
bC5TDQo+IEBAIC00MywzICs0Myw2MCBAQCBTWU1fRlVOQ19TVEFSVChfX2FybV9zbWNjY19odmMp
DQo+ICAJU01DQ0MJaHZjDQo+ICBTWU1fRlVOQ19FTkQoX19hcm1fc21jY2NfaHZjKQ0KPiAgRVhQ
T1JUX1NZTUJPTChfX2FybV9zbWNjY19odmMpDQo+ICsNCj4gKwkubWFjcm8gU01DQ0NfMV8yIGlu
c3RyDQo+ICsJLyogU2F2ZSBgcmVzYCBhbmQgZnJlZSBhIEdQUiB0aGF0IHdvbid0IGJlIGNsb2Ji
ZXJlZCAqLw0KPiArCXN0cCAgICAgeDEsIHgxOSwgW3NwLCAjLTE2XSENCj4gKw0KPiArCS8qIEVu
c3VyZSBgYXJnc2Agd29uJ3QgYmUgY2xvYmJlcmVkIHdoaWxlIGxvYWRpbmcgcmVncyBpbiBuZXh0
IHN0ZXAgKi8NCj4gKwltb3YJeDE5LCB4MA0KPiArDQo+ICsJLyogTG9hZCB0aGUgcmVnaXN0ZXJz
IHgwIC0geDE3IGZyb20gdGhlIHN0cnVjdCBhcm1fc21jY2NfMV8yX3JlZ3MgKi8NCj4gKwlsZHAJ
eDAsIHgxLCBbeDE5LCAjQVJNX1NNQ0NDXzFfMl9SRUdTX1gwX09GRlNdDQo+ICsJbGRwCXgyLCB4
MywgW3gxOSwgI0FSTV9TTUNDQ18xXzJfUkVHU19YMl9PRkZTXQ0KPiArCWxkcAl4NCwgeDUsIFt4
MTksICNBUk1fU01DQ0NfMV8yX1JFR1NfWDRfT0ZGU10NCj4gKwlsZHAJeDYsIHg3LCBbeDE5LCAj
QVJNX1NNQ0NDXzFfMl9SRUdTX1g2X09GRlNdDQo+ICsJbGRwCXg4LCB4OSwgW3gxOSwgI0FSTV9T
TUNDQ18xXzJfUkVHU19YOF9PRkZTXQ0KPiArCWxkcAl4MTAsIHgxMSwgW3gxOSwgI0FSTV9TTUND
Q18xXzJfUkVHU19YMTBfT0ZGU10NCj4gKwlsZHAJeDEyLCB4MTMsIFt4MTksICNBUk1fU01DQ0Nf
MV8yX1JFR1NfWDEyX09GRlNdDQo+ICsJbGRwCXgxNCwgeDE1LCBbeDE5LCAjQVJNX1NNQ0NDXzFf
Ml9SRUdTX1gxNF9PRkZTXQ0KPiArCWxkcAl4MTYsIHgxNywgW3gxOSwgI0FSTV9TTUNDQ18xXzJf
UkVHU19YMTZfT0ZGU10NCj4gKw0KPiArCVxpbnN0ciAjMA0KPiArDQo+ICsJLyogTG9hZCB0aGUg
YHJlc2AgZnJvbSB0aGUgc3RhY2sgKi8NCj4gKwlsZHIJeDE5LCBbc3BdDQo+ICsNCj4gKwkvKiBT
dG9yZSB0aGUgcmVnaXN0ZXJzIHgwIC0geDE3IGludG8gdGhlIHJlc3VsdCBzdHJ1Y3R1cmUgKi8N
Cj4gKwlzdHAJeDAsIHgxLCBbeDE5LCAjQVJNX1NNQ0NDXzFfMl9SRUdTX1gwX09GRlNdDQo+ICsJ
c3RwCXgyLCB4MywgW3gxOSwgI0FSTV9TTUNDQ18xXzJfUkVHU19YMl9PRkZTXQ0KPiArCXN0cAl4
NCwgeDUsIFt4MTksICNBUk1fU01DQ0NfMV8yX1JFR1NfWDRfT0ZGU10NCj4gKwlzdHAJeDYsIHg3
LCBbeDE5LCAjQVJNX1NNQ0NDXzFfMl9SRUdTX1g2X09GRlNdDQo+ICsJc3RwCXg4LCB4OSwgW3gx
OSwgI0FSTV9TTUNDQ18xXzJfUkVHU19YOF9PRkZTXQ0KPiArCXN0cAl4MTAsIHgxMSwgW3gxOSwg
I0FSTV9TTUNDQ18xXzJfUkVHU19YMTBfT0ZGU10NCj4gKwlzdHAJeDEyLCB4MTMsIFt4MTksICNB
Uk1fU01DQ0NfMV8yX1JFR1NfWDEyX09GRlNdDQo+ICsJc3RwCXgxNCwgeDE1LCBbeDE5LCAjQVJN
X1NNQ0NDXzFfMl9SRUdTX1gxNF9PRkZTXQ0KPiArCXN0cAl4MTYsIHgxNywgW3gxOSwgI0FSTV9T
TUNDQ18xXzJfUkVHU19YMTZfT0ZGU10NCj4gKw0KPiArCS8qIFJlc3RvcmUgb3JpZ2luYWwgeDE5
ICovDQo+ICsJbGRwICAgICB4enIsIHgxOSwgW3NwXSwgIzE2DQo+ICsJcmV0DQo+ICsuZW5kbQ0K
PiArDQo+ICsvKg0KPiArICogdm9pZCBhcm1fc21jY2NfMV8yX2h2YyhzdHJ1Y3QgYXJtX3NtY2Nj
XzFfMl9yZWdzICphcmdzLA0KPiArICoJCQkgIHN0cnVjdCBhcm1fc21jY2NfMV8yX3JlZ3MgKnJl
cyk7DQo+ICsgKi8NCj4gK1NZTV9GVU5DX1NUQVJUKGFybV9zbWNjY18xXzJfaHZjKQ0KPiArCVNN
Q0NDXzFfMiBodmMNCj4gK1NZTV9GVU5DX0VORChhcm1fc21jY2NfMV8yX2h2YykNCj4gK0VYUE9S
VF9TWU1CT0woYXJtX3NtY2NjXzFfMl9odmMpDQoNCkkndmUgdGVzdGVkIHRoZSBuZXcgYXJtX3Nt
Y2NjXzFfMl9odmMoKSBmdW5jdGlvbiBpbiB0aGUgY29udGV4dA0Kb2YgTGludXggZ3Vlc3RzIG1h
a2luZyBoeXBlcmNhbGxzIG9uIEh5cGVyLVYgZm9yIEFSTTY0LCBhbmQgaXQNCndvcmtzIGFzIGlu
dGVuZGVkLiAgIEJ1dCBub3RlIHRoYXQgbXkgdGVzdCBjYXNlIG9ubHkgdXNlcyBYMCB0aHJ1IFg3
Lg0KDQpUZXN0ZWQtYnk6IE1pY2hhZWwgS2VsbGV5IDxtaWtlbGxleUBtaWNyb3NvZnQuY29tPg0K
UmV2aWV3ZWQtYnk6IE1pY2hhZWwgS2VsbGV5IDxtaWtlbGxleUBtaWNyb3NvZnQuY29tPg0K
