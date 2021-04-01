Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 103E3351A15
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 20:04:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235812AbhDAR6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 13:58:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236485AbhDARyj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 13:54:39 -0400
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on20711.outbound.protection.outlook.com [IPv6:2a01:111:f400:fe5a::711])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68694C02D566
        for <devicetree@vger.kernel.org>; Thu,  1 Apr 2021 08:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RTBXtEbjT2cXf1ZoMNppNc+zPGIBZl8uK/sJjcRCDiLOu/m4vupzL3Xunp0JtzjbR/wAm80lpD5SvkRyZ5RPtGmkmXVbQAu6LucG7Z1Ah/6jB5r4IOqKcVf4Xk/PYtZDl6KMq0RCkxllP5MM/AMtCpX6Lv9KgR9Aww3ArL83acKjhT+X4KsrC7vysmjdK8P6cxazheMpv40AUUORaE9NeJaKjgFDIW3zgJjVXQJe7jQIuehHViD4sUijgjk6zUdky4+FAsCj7nwUiJw+/4ZPWwOzcaO9FFOD4jRgYs2cNOBjMGeDBp6UPWFiJHmq99BrNa0Idla0VJ9+zNwqMUMSlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1VryHxhP8aEXKA8c9qqwYaKfdiSJNwSXJvvtG3FHkJI=;
 b=OrDDxrfNMX4EqczmAZemCAnq+FsURJ5IonrnWOf779dTqnTo19YZ13bK5nQ+zwW3nEM+PlC0f6ODYTpZW1cQfcEwWbu8tsjCpANYhaaunXNmf6vY0WxCz8zZ5R2hQCZO86xWHvPhVFsElmWQ67KgLkB4Dm29ssNEyrQMnglxXQtI6FAq+WfphbcKPN/LdcpLq7vP4yLYtDtwOBObdMBCYp0dOM9cpXh2cuEaXqfF2ky41hwT+bTvOHhvtdoKH58qYLE79qyON185G3RalbaxPHJOCrOiq+3FY9YzlesiUoYqHctPgA1gdUBnhzFDAH1kw1tIyyhoN+EydgHxHG8ZJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1VryHxhP8aEXKA8c9qqwYaKfdiSJNwSXJvvtG3FHkJI=;
 b=ccOee6oMoQOHEkOBOgRKqlmettHhSZmWhe/aYblXFHrypPeRoRwB5G6eSv9BeWHGhMQULK12S9WM7Lfp+U6McdL14Q3PRibiue0WuSyAB98S0e9wyPMZb94DYbJRhjbuejzTnxKJeywBlDScBumb1iHDRwtuUBwXm9WibNy0HtQ=
Received: from MWHPR21MB1593.namprd21.prod.outlook.com (2603:10b6:301:7c::11)
 by MWHPR21MB0160.namprd21.prod.outlook.com (2603:10b6:300:78::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.1; Thu, 1 Apr
 2021 15:50:06 +0000
Received: from MWHPR21MB1593.namprd21.prod.outlook.com
 ([fe80::cbc:735e:a6a5:8b9c]) by MWHPR21MB1593.namprd21.prod.outlook.com
 ([fe80::cbc:735e:a6a5:8b9c%8]) with mapi id 15.20.4020.009; Thu, 1 Apr 2021
 15:50:06 +0000
From:   Michael Kelley <mikelley@microsoft.com>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        Mark Rutland <Mark.Rutland@arm.com>
CC:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>,
        "arve@android.com" <arve@android.com>,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: RE: [PATCH v5 2/7] arm64: smccc: Add support for SMCCCv1.2
 input/output registers
Thread-Topic: [PATCH v5 2/7] arm64: smccc: Add support for SMCCCv1.2
 input/output registers
Thread-Index: AQHXIYTuVfgKLBOea0WtuuprKE71waqWMVEAgAAJGQCACZ9vkA==
Date:   Thu, 1 Apr 2021 15:50:06 +0000
Message-ID: <MWHPR21MB15939FCE24BDF74B06616560D77B9@MWHPR21MB1593.namprd21.prod.outlook.com>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-3-sudeep.holla@arm.com>
 <20210325144113.GB41100@C02TD0UTHF1T.local>
 <20210326121833.GA56294@C02TD0UTHF1T.local>
 <20210326125124.yl234hz5ipr6yn2d@bogus>
In-Reply-To: <20210326125124.yl234hz5ipr6yn2d@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=5f99b7fa-532f-40e0-9a3c-385d5e82417c;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2021-04-01T15:48:21Z;MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
authentication-results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=microsoft.com;
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c7288b6-1e7d-4517-c7b4-08d8f525d242
x-ms-traffictypediagnostic: MWHPR21MB0160:
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MWHPR21MB0160D3AA2964C9A9E6093A57D77B9@MWHPR21MB0160.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hO7k6TSRjLWQriLeyr9OjJ9s5kp6MBjza3TiCp9gjIdWcOpiEEPK/MMThVVbVkYeSUp98ulx5By7YWhvm+OWtpZiIRKONjgH8o4L6HWgEkXJartAHOZtRdsN9pxM8P7kuXWiLcipDlYOcUNJhUKy47znYtnGizkU79ANo2yJx6dR3ZEcRg+CXnRsVl74gwNM9mE69ncRHBBYKakpJkC77+q/xwbDXYLFTNcgbq/TwNe/C91Te1vILTgvqd50kG9eW+BjXolMPQ0u8dKtFzHbM1kwZUDUZbZ1gaZ90NI+j+lJSQ3bdY3Y/05jhlMumZux4eJPJWas3MVTOlBtWGpFXCDG5b+hKFVf3fIGXU/pMSVmjXTpTU6kgjDFmlzmoLCNf0cxkWjw5U9xAC8UBN6BohUvJxYMyV3jRMLjgN+D+dpIjZrpnUW9F3YhN3sr2+2MX4lomtrZs4TBD33Yp8owZ9cVU9Wf9a0ud4Wukm7wF8smfjUXoJLx1w0FwICFDyNXTDUHKZjS0Vse3FIGq3xTAnMRJsHsTerTEp8Z4CFYw3BrYbLLYLg148Tx05ZqEmuPusRh4LOtZxXr8364xfumZd6pcXRJK7iiKrXKt3O1kQrDcKqOsJLs3tna9vCj8QX+Aq2NcFmlVENb6UC63e8oE5dg+kgL5KUNq2AESO4gd58=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR21MB1593.namprd21.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39860400002)(366004)(346002)(396003)(376002)(76116006)(66476007)(8936002)(55016002)(66946007)(86362001)(52536014)(316002)(26005)(478600001)(66556008)(64756008)(8990500004)(83380400001)(10290500003)(2906002)(66446008)(38100700001)(4326008)(7696005)(186003)(8676002)(9686003)(6506007)(82950400001)(82960400001)(110136005)(54906003)(71200400001)(5660300002)(33656002)(7416002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?Q2pzYTNsR3RIVTliVk9ZdGpOQjArYjRmclNZK3NSYThkS3graGNWODNocmpz?=
 =?utf-8?B?bzRpQ3JERE5CamVhekdVMjU0eXkyUVhYNmVwNnVabmJxa21OaUlzMnN2ZnZQ?=
 =?utf-8?B?UkdKSWdaNzVMTWxDTTRtYmRqb2JETVI3V0lKcnhnQk83MkZRcVJab1piVWF0?=
 =?utf-8?B?dE9ZNFBkOGpXTjNSdERWdWorRzFKam53MjlNNjlMTTF5UVRkSWZBL3BPdG9I?=
 =?utf-8?B?SSt4QU55NEIvYjZlN3BIbW9aTmI4MlFLV1N0eU4vdkZNQnNmdHRIRCt2bTJM?=
 =?utf-8?B?a2doTitaL0s3c1BLek5kc1RsaU43SU1QTGpzc2ZEODdrWE5LVU1uTStxS1h4?=
 =?utf-8?B?TE5iYVZoQTJXSHI1dWpRZUw4YjBxMEFHNTdFZEtQSFZZbUtGZlptV3kyb3FE?=
 =?utf-8?B?dEtONEdhVDlXQ0hSbHduQU82VmYxamJSNWhUTysva0ZubmkwOEs1R0tldWp5?=
 =?utf-8?B?R0prSmRlR1R2NTU3THF3anU2YTBENHUvaUdnZFpsaVZpcTZ3a21iWXdVdDJW?=
 =?utf-8?B?UXk3anRENW5KQ2ovSzArc1lBZjFNQWpkdW1wN29URUVtNFJvTW1oRGVFM0VZ?=
 =?utf-8?B?VXpMMmxwbnlBeGVpVHh2L0lmd1lacEdRREFPYzZ0dkJhN2FJMUJGVGwrRjBN?=
 =?utf-8?B?SW01RklCRFNSMWlqbXl0NG13VW45ZHh2RTh3eTlqWHdwN2dDRlVHbytIMCtm?=
 =?utf-8?B?K21GZFQ3Vk1EV2xoVEVFUWxIaDFsZ2lpbnV6STJ6Qm9HMnJERzVzRzd4MVBx?=
 =?utf-8?B?a3ZubUhrQVF3dWhvcWpDSGVFMk4vMC8rc3AwQk1JV0xuaXQzZHQzd1E3VVhW?=
 =?utf-8?B?WXJXOVZNWVRkYllWVkU5QmUrbWcyT21EN3pUSFJoV0ZGZGNSNW9ZcHZRejJp?=
 =?utf-8?B?WDIzL2dIc2w2RzVUZHJSaGU4RDNJblVaWG5wMDNxMWhTVFNuTCtLbXoyeTQ5?=
 =?utf-8?B?b3NxSnlDZlFRUXU5ZGJ5UFlUZ1FaaFJ1U2sySDRuZEtjVGh5N3RrdlN0QVRm?=
 =?utf-8?B?cVQ0d1VZQmV2OEdIT255a0VsaElLdDNwWDlpclZWWmlHU3RpZUhwWU1uUSs4?=
 =?utf-8?B?SGxvUytEaUw5RCtDOXM2TXBKYmk5VWxhTHh4dThqUEFibkxjYjJZWDUwY1dw?=
 =?utf-8?B?OE9SUFBqTHhLbmxjV0dNZjBOUFZpWHB3NWtvQkZvTE0va1E3Y1cxWDI3bTA5?=
 =?utf-8?B?RmpIdkdvY0xjbWFPQ1hkWC9BbnVoMldwYnJpTHQrenlCOHA4WWJwWTA5Zm8v?=
 =?utf-8?B?bGZRU0owR00rS0UxaEl4bXg5MWRFbEZzdWwrOVYwbXJkY2JPUkE1S1hjSk1M?=
 =?utf-8?B?RWNrVkp2ajR4dUdqR3pJeTFUeElCRm5DdHoram9XeGFZVHJvVEVFQUEwci80?=
 =?utf-8?B?WjYzRTZmNnZmTEZ5cUdmeCtvR1pIazRJZllkTXRlaHNyeHFUL2lVMVptWDNX?=
 =?utf-8?B?cFl4RE5jNW5mRWRFSVh5QzZPajAwMzAvZ3U0U2pyYkJBZURFank3Nm5uSHp5?=
 =?utf-8?B?NG94QlFnMk9weWZXUFZtZjlGenBmMTl0NXJNT0ljMWRETzNVSmRtVlhpR1Fn?=
 =?utf-8?B?b2xQejgvY2twR0JqZjlKTEd5MFdZZVFpQXpQZFkwSldzYzdQaU5WUFU2K3dI?=
 =?utf-8?B?cDNMeHJOUURGUHdqUDVuWlY3VGcwNUFKYjlraUlzUTU5QjhJWUIyL21CZlkw?=
 =?utf-8?B?MkVLU1hCYWlNaEV5OStzdmcwNVZqQXdncDVCVDZqRjFJcUVsUHl3U2hud1R1?=
 =?utf-8?Q?jHp7r2NEu63ZxgX3zxZM1TfQpSTOJMxSn2siH7X?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR21MB1593.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c7288b6-1e7d-4517-c7b4-08d8f525d242
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2021 15:50:06.1772
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hIwvOXJRlxSMkorwD0zcz40CLQxWTC7pDnmBuEbzXZlViV0hnBEpo1eIs4B37zLj5ctuQH3cfoT6XT55ELz8v7c104tSTjW4Sjr7opbbrNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0160
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RnJvbTogU3VkZWVwIEhvbGxhIDxzdWRlZXAuaG9sbGFAYXJtLmNvbT4gU2VudDogRnJpZGF5LCBN
YXJjaCAyNiwgMjAyMSA1OjUxIEFNDQo+IA0KPiBPbiBGcmksIE1hciAyNiwgMjAyMSBhdCAxMjox
ODo1MFBNICswMDAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6DQo+ID4gT24gVGh1LCBNYXIgMjUsIDIw
MjEgYXQgMDI6NDE6MTNQTSArMDAwMCwgTWFyayBSdXRsYW5kIHdyb3RlOg0KPiA+ID4gSGkgU3Vk
ZWVwLA0KPiA+ID4NCj4gPiA+IE9uIFRodSwgTWFyIDI1LCAyMDIxIGF0IDAyOjMyOjUwUE0gKzAw
MDAsIFN1ZGVlcCBIb2xsYSB3cm90ZToNCj4gPiA+ID4gU01DQ0MgdjEuMiBhbGxvd3MgeDgteDE3
IHRvIGJlIHVzZWQgYXMgcGFyYW1ldGVyIHJlZ2lzdGVycyBhbmQgeDTigJR4MTcNCj4gPiA+ID4g
dG8gYmUgdXNlZCBhcyByZXN1bHQgcmVnaXN0ZXJzIGluIFNNQzY0L0hWQzY0LiBBcm0gRmlybXdh
cmUgRnJhbWV3b3JrDQo+ID4gPiA+IGZvciBBcm12OC1BIHNwZWNpZmljYXRpb24gbWFrZXMgdXNl
IG9mIHgwLXg3IGFzIHBhcmFtZXRlciBhbmQgcmVzdWx0DQo+ID4gPiA+IHJlZ2lzdGVycy4NCj4g
PiA+ID4NCj4gPiA+ID4gQ3VycmVudCBTTUNDQyBpbnRlcmZhY2UgaW4gdGhlIGtlcm5lbCBqdXN0
IHVzZSB4MC14NyBhcyBwYXJhbWV0ZXIgYW5kDQo+ID4gPiA+IHgwLXgzIGFzIHJlc3VsdCByZWdp
c3RlcnMuIExldCB1cyBhZGQgbmV3IGludGVyZmFjZSB0byBzdXBwb3J0IHgwLXg3DQo+ID4gPiA+
IGFzIHBhcmFtZXRlciBhbmQgcmVzdWx0IHJlZ2lzdGVycy4gVGhpcyBjYW4gYmUgZXh0ZW5kZWQg
dG8gaW5jbHVkZQ0KPiA+ID4gPiB4OC14MTcgd2hlbiB0aGVyZSBhcmUgdXNlcnMgZm9yIHRoZSBz
YW1lLg0KPiA+ID4NCj4gPiA+IE1pY2hhZWwgS2VsbGV5IGlzIGFsc28gbG9va2luZyBhdCB1c2lu
ZyBTTUNDQ3YxLjIsIGFuZCBvbiBoaXMgSHlwZXJWDQo+ID4gPiB0aHJlYWQgSSdkIHN1Z2dlc3Rl
ZCB3ZSBzaG91bGQgZGVhbCB3aXRoIHRoZSB3aG9sZSBzZXQgb2YgU01DQ0N2MS4yDQo+ID4gPiBy
ZWdpc3RlcnMgbm93IHRvIGF2b2lkIGZ1dHVyZSBjaHVybiBpbiB0aGlzIGFyZWEgKHVzaW5nIHN0
cnVjdCBib3RoIGZvcg0KPiA+ID4gdGhlIGFyZ3VtZW50cyBhbmQgcmV0dXJuIHZhbHVlcykuDQo+
ID4gPg0KPiA+ID4gSG93IHBhaW5mdWwgd291bGQgaXQgYmUgdG8gZXh0ZW5kIHRoaXMgcGF0Y2gg
dG8gZG8gdGhhdD8NCj4gPg0KPiA+IEkgKnRoaW5rKiB0aGUgbWFqb3IgY2hhbmdlIHdpdGggdGhp
cyB3b3VsZCBiZSBtYWtpbmcgdGhlIGludGVyZmFjZXM6DQo+ID4NCj4gPiB2b2lkIGFybV9zbWNj
Y18xXzJfe2h2YyxzbWN9KHN0cnVjdCBhcm1fc21jY2NfMV8yX2FyZ3MgKmFyZ3MsDQo+ID4gCQkJ
ICAgICBzdHJ1Y3QgYXJtX3NtY2NjXzFfMl9yZXMgKnJlcyk7DQo+ID4NCj4gPiAuLi4gYW5kIGNh
bGxlcnMgbWFuaXB1bGF0aW5nIHRoZSBzdHJ1Y3RzIGRpcmVjdGx5LCB3aXRoIGFybTY0IGhhdmlu
Zw0KPiA+IG1vcmUgZmllbGRzLCBlLmcuDQo+ID4NCj4gPiAvLyBhcm02NA0KPiA+IHN0cnVjdCBh
cm1fc21jY2NfMV8yX2FyZ3Mgew0KPiA+IAl1bnNpZ25lZCBsb25nIGExOw0KPiA+IAkuLi4NCj4g
PiAJdW5zaWduZWQgbG9uZyBhMTc7DQo+ID4gfQ0KPiA+DQo+ID4gc3RydWN0IGFybV9zbWNjY18x
XzJfcmVzIHsNCj4gPiAJdW5zaWduZWQgbG9uZyBhMDsNCj4gPiAJLi4uDQo+ID4gCXVuc2lnbmVk
IGxvbmcgYTE3Ow0KPiA+IH0NCj4gPg0KPiA+IC8vIGFybQ0KPiA+IHN0cnVjdCBhcm1fc21jY2Nf
MV8yX2FyZ3Mgew0KPiA+IAl1bnNpZ25lZCBsb25nIGExOw0KPiA+IAkuLi4NCj4gPiAJdW5zaWdu
ZWQgbG9uZyBhNzsNCj4gPiB9DQo+ID4NCj4gPiBzdHJ1Y3QgYXJtX3NtY2NjXzFfMl9yZXMgew0K
PiA+IAl1bnNpZ25lZCBsb25nIGEwOw0KPiA+IAkuLi4NCj4gPiAJdW5zaWduZWQgbG9uZyBhNzsN
Cj4gPiB9DQo+ID4NCj4gPiBJIHRoaW5rIHRoYXQgY2FuIGJlIGhpZGRlbiBpbiB0aGUgRkYtQSB3
cmFwcGVycywgc28gdGhhdCBkb2Vzbid0IG5lZWQgdG8NCj4gPiBiZSB3aGF0IEZGLUEgZHJpdmVy
cyBzZWUuIERvZXMgdGhhdCBzb3VuZCBwbGF1c2libGUsIG9yIGlzIHRoYXQgcGFpbmZ1bD8NCj4g
Pg0KPiANCj4gU291bmRzIHBvc3NpYmxlLCB3aWxsIGdpdmUgaXQgYSB0cnkuDQo+IA0KPiA+ID4g
PiArICBERUZJTkUoQVJNX1NNQ0NDX1YxXzJfUkVTX1gwX09GRlMsCW9mZnNldG9mKHN0cnVjdA0K
PiBhcm1fc21jY2NfdjFfMl9yZXMsIGEwKSk7DQo+ID4NCj4gPiBBcyBhIGdlbmVyYWwgbml0LCBm
b3IgY29uc2lzdGVuY3kgd2l0aCB0aGUgZXhpc3RpbmcgYXJtX3NtY2NjXzFfMSBjb2RlLA0KPiA+
IGNvdWxkIHdlIHBsZWFzZSBkcm9wIHRoZSAnVicgaW4gdGhlc2UgbmFtZXMsIGFuZCB1c2UgYEFS
TV9TTUNDQ18xXzJgIG9yDQo+ID4gYGFybV9zbWNjY18xXzJgID8NCj4gPg0KPiANCj4gU3VyZSwg
bWFrZXMgc2Vuc2UuDQo+IA0KPiA+IEZXSVcsIG90aGVyIHRoYW4gdGhlIGFib3ZlIGNvbW1lbnRz
LCB0aGlzIGFsbCBsb29rcyBnb29kIHRvIG1lDQo+ID4NCj4gDQo+IFRoYW5rcy4NCj4gDQo+IC0t
DQo+IFJlZ2FyZHMsDQo+IFN1ZGVlcA0KDQpTdWRlZXAgLS0gbGV0IG1lIGtub3cgd2hlbiB5b3Ug
aGF2ZSBhIG5ldyB2ZXJzaW9uIGF2YWlsYWJsZS4gIEkgY2FuDQp0ZXN0IGl0IGZvciB1c2Ugd2l0
aCBIeXBlci1WLg0KDQpNaWNoYWVsDQoNCg==
