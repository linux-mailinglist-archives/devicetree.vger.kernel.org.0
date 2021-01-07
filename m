Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A88092ECF11
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 12:51:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728005AbhAGLuq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 06:50:46 -0500
Received: from esa.microchip.iphmx.com ([68.232.153.233]:27753 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727962AbhAGLup (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 06:50:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1610020244; x=1641556244;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=gApnIG5PTdde8OY4Ed0wW3Ht/LR5Cgna6Gr8s96GlRQ=;
  b=VUt2TSOKErN9Cs94g7XhvJnxPtB192Et+Yv5O7x6Q4N98bKe0gjGKjvt
   HN8p60wh4q007YEqClKw/NMsyyuG3ONVaYTsnUwFWRk+bfA3+9dCN11RM
   +GSusF1HhjlMtLweaDxJJlN80nrPCmlv0ODFmiHWbvEEKG3r3QZenYOXq
   ncJgYZ+5mRxZshHbQzz42IOPAMy2FgBpVh2kKq4V4IaSEDU+2UaZRjTjV
   hUa3DGPYJvuIE+/89E+7MKVis0A3k8XBLHsegWquDnLVJ9VBWQEFPkjhT
   NqlISN4eAfSqXycKqyDiyTJ9X7XXIOZECMPLLh+oNzsSMl+xihVCdjCGy
   g==;
IronPort-SDR: 4OKRBAxK5C5WacSgzs6Oi+BpX0fovXVvURsnOBreK6WY0GW4XQUz9nk0YNo/qqNKeXG7bHCPig
 enEj18w6dSblf6gJdBXWQfRQZyVeXgN9hY815KifxLd25QCA99qJRA//VgDhxWe5J6keItssP+
 sWD6KIPrp+1qWjL0YVL4WM+okwojjShqFqjVCDOZb9t5wQGeHrjDPyAgrLFoN8zQPddliugwPZ
 XVW2vLfPRMLWgRB9c0mP1+KjvfSmcPKjq4KOv28NcQ9nzkUXeLuYfDcOas8uQh0DfNntfYV8up
 Uow=
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; 
   d="scan'208";a="104580391"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 07 Jan 2021 04:49:28 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 7 Jan 2021 04:49:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Thu, 7 Jan 2021 04:49:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TLQ+l1p5cAGKrYxxRzRUMIuvLHOU3PUYu+C/m9gaEY2Mb45OGoBCgeyUR5fW7N5SW86w96tF3fKmgqfvagoxa+WxFDwUPl5xSjF3AShkICTMFNoa5EFQKTJ0GVpeyzaGUAOW4bzzuKBZgJHgMWp1XQ6ypBQrRkF9tA6Awd2KPE6055uX2155eXghPZECOKzF6NyQk6/B98/n1uzx1cIFZYyapBedhuXY8NJMxzwXHyj26xjNghOyFLHsvmZ42iYuSCKtTjHdPg8jcbm40aHgJC5WSXqZnpsUF5tzs3LW4F1PTBOdd65398n4h4SKHqtHw+MYlkfllCYEJzmH/tO6CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gApnIG5PTdde8OY4Ed0wW3Ht/LR5Cgna6Gr8s96GlRQ=;
 b=CBZBUXKtXSlzgaMNSOnne3Xqa/fltQWpuIqwI3iN9FVtqUTRsIcq4LB2+/GexStPirxh/6crvdQPUflmD/PUTP4VZDmiQdYPdzmSpUeMDw2/B1iiG9nSn9mbQPTHUBZ9mt39J+S6OyClfqCFvCTwqxS4pN/KewQIP+jyFJM+K2OcwIRL3N0aEmOFyGhYr/sm95AnxIyBvRUKM2RSMFKLGRrfILvA7+bpkAkUBQOHCjk0kpteXh70tkqvERPDIIztk42Zry/WkH6d+8pfRc/Q4FLB7yJFCPVbKCL2Gxsq03TaAsGqd699DHcOjorNZP51f10tJ8DcjK8IdSgJRidN5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gApnIG5PTdde8OY4Ed0wW3Ht/LR5Cgna6Gr8s96GlRQ=;
 b=YJmUwm6Fhpvl8oL5gXWfG2DLIZ58p++7wxV9d0V5lTq8shmdYp6WuKbFQqC29nH2N+tRXORgEHtJCHeXSITCAoogEhb0sCH+rBD30L2he5cPVEUveWCdsq23ipnSXui6+7zOADl8gS2WGaA/oSXuG8wkVIgUdylIIeVmCfhbaBY=
Received: from DM6PR11MB3690.namprd11.prod.outlook.com (20.178.231.96) by
 DM5PR1101MB2251.namprd11.prod.outlook.com (10.174.105.149) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3721.21; Thu, 7 Jan 2021 11:49:24 +0000
Received: from DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::2d16:756c:541c:7aa5]) by DM6PR11MB3690.namprd11.prod.outlook.com
 ([fe80::2d16:756c:541c:7aa5%6]) with mapi id 15.20.3742.006; Thu, 7 Jan 2021
 11:49:24 +0000
From:   <Cyril.Jean@microchip.com>
To:     <atishp@atishpatra.org>, <Conor.Dooley@microchip.com>
CC:     <robh+dt@kernel.org>, <damien.lemoal@wdc.com>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <david.abdurachmanov@gmail.com>, <Daire.McNamara@microchip.com>,
        <anup.patel@wdc.com>, <j.neuschaefer@gmx.net>,
        <atish.patra@wdc.com>, <Lewis.Hanly@microchip.com>
Subject: Re: [PATCH v3 0/5] Add support for the PolarFire SoC system
 controller
Thread-Topic: [PATCH v3 0/5] Add support for the PolarFire SoC system
 controller
Thread-Index: AQHW5GHKDRIvkjapkUynKUBj5I8a8qocDYSA
Date:   Thu, 7 Jan 2021 11:49:24 +0000
Message-ID: <d4b226e5-2eb8-e418-b4d7-9f04abcd40bc@microchip.com>
References: <20201223163247.28923-1-conor.dooley@microchip.com>
 <CAOnJCUKw=UBt27XQoVxU=BXtEU0Nf6D2AnmsuyNVJGvJpVUMGw@mail.gmail.com>
In-Reply-To: <CAOnJCUKw=UBt27XQoVxU=BXtEU0Nf6D2AnmsuyNVJGvJpVUMGw@mail.gmail.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
authentication-results: atishpatra.org; dkim=none (message not signed)
 header.d=none;atishpatra.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [86.40.244.225]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f7c071a-4022-44aa-3060-08d8b3024792
x-ms-traffictypediagnostic: DM5PR1101MB2251:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB22517BE3858BA8DE4700F15A9EAF0@DM5PR1101MB2251.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nDKdz3RBTmFENedeo9C17snt/QfWkAolfZJufopPXr+UP+cldWM5Jo5ZpVNiD2YUZGC0KlGRVcWiEBmXYN4OwbXjGa5EFREIwZF92Be5Lm5mY8forCDiPoIqPoFmH54fZ4ok5pR3TVf0w6X+MG2EeC7hSxNifENxV6af62Lhoc+suAgScOT1O8fgkU2fWxlNU5ye7Knvvy+T9T8HjsVAO6/9KdfSm8bhA9vDS58DhlS5+QeTEX2kebrqZbpdcDREEL4i62VgJCvtVp2fJsQOmfGX4yo82Rex+zIakebKebMRcfDEtxOp+TiSmuB6fyLWj/IWqDFyeF0vWJM/3DW3Y7avpdbb58ui0akrr+S1qSr3TwjB5UvWS2k5skWDOMoW3OSWx4mgYKRcHwUxjxhFufVuiDVQYJeJ43rmpgLYAgmFTFLTamM8zZMYn/Zjj1o4Z9S5gtjBEkRSXN+wLsrgrJduPGPcRRrCkpJYUHocY0QJDSy515p3MucwWpKOGPQNj2InxjBzIuBjUHXGNSI5uWL5IBVntagUQWEScxIvt5M=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3690.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(396003)(136003)(346002)(376002)(366004)(6486002)(966005)(7416002)(6506007)(8676002)(478600001)(83380400001)(31686004)(6512007)(2616005)(53546011)(66556008)(66476007)(5660300002)(66446008)(64756008)(107886003)(186003)(26005)(2906002)(86362001)(66946007)(8936002)(6636002)(4326008)(91956017)(110136005)(54906003)(36756003)(316002)(76116006)(71200400001)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?YlBudE9GNlFqbkpVQytDL3BjcWlkRDl1S0RJdDBtQ1hONURXVGNWUDJSVUR3?=
 =?utf-8?B?ODVDVzR5bWdiUnlpZnZKcEZiTWlTQ3RiQUJhZlF2N1UydERQSWZjbFpmd2hV?=
 =?utf-8?B?UXBENjBxd3Jab25KQ3JUeG1kZGF5U1h4NlN4UkdsbHpDak1Memd2YS82TjBG?=
 =?utf-8?B?N2o5T2hLS1YzTU9GampxdXN4MmhKZndIVHVMcldiMVRKcDVRNTZKbllmQjF2?=
 =?utf-8?B?c3VPT3c3NktCaTRsWkhNeUplWE1CSEFBRmtqNDJJMDFoNklETXhleS9wQlNP?=
 =?utf-8?B?SlV1Z0N3Mzcwa0tZY0MwZWVPVk1JSjZ4NmhKZjBWa3ZVdXZpWjJrMWdhNEtk?=
 =?utf-8?B?ZHRkN0I2d0dTeThTTW80eGtpRWRWUHVUVGhDK2xmSTVIcE9lSUlGNXRIc3Nr?=
 =?utf-8?B?ekZ0NUJBTmdWUFNiMUxueTJYZEtsdmJianV3WnVyUjRiOWJKeUtMSVRmaGMw?=
 =?utf-8?B?czFZcnFKK0JjTDd5SmNhdWRqUDZmbkpjRXZROFdKZFpYOUxNWTlaOEh5Q3BQ?=
 =?utf-8?B?K0FlNVhkUkx5clJOMzhTc2x1WUVTTHdnNm1WZFNCamRYYzVnRk1LeC8xQWJW?=
 =?utf-8?B?eUpHZ2s2aWl5c1RiQjFMNi9uOHppMFhlbXpBSW41Qnh2cDlQdWp1cTRacWVx?=
 =?utf-8?B?WGJPL0h4WGtMS0czREdFU05adkZqVDFsWUQ5NjB3QnRvb3N2Yll3SThJTmps?=
 =?utf-8?B?TVJOc3pmdVhVTlpOSjRDRExhRHlZZVRRY0crVngybm02VTZkajlmNDE0L1VL?=
 =?utf-8?B?M2VwVER0RS9jdURvMzByNEFDQjByaC95dXIzdGpBTU84cUoyN0hhMUhTL204?=
 =?utf-8?B?REJUN2VNSEtIRFArQW00WkxIdlBVVHZHSGl3RnFYMVBDclRkVDNsQnFFSFpH?=
 =?utf-8?B?UjR3bkp0Wm9iMHlxZUloSitCWG5IVUdxbVRCTE96MXpLVVNWdnMxL29qR3F3?=
 =?utf-8?B?SGFjTWdYdFpYZzdnUllEM0pMalBNT0NrNzFqWGtwSkF6dnloYkgxMlBvbGFq?=
 =?utf-8?B?TWZDdzNOcDUzTHFXaHlQYm50WFMza1lzbHRlWVhJbUNhTTNPQS9CYURNNUFn?=
 =?utf-8?B?aHpUMVhLTGZGekdraGtBR0FTQU91ZXphcjhPT2pVeUpMVHBNVlVsTTNzb1lE?=
 =?utf-8?B?WVdQRUg1YUlBSmJGWVlQaUpJeG5WRm1SRmdxZU9QYUwwZkx6K1RFRkYxalJD?=
 =?utf-8?B?WEpuUDlPODZMdG9RZXRnaXpoNE5YbVp0YVdza2ljMDVFRnNMa2hQRUlDd1NS?=
 =?utf-8?B?VUxTRU5NV3ZrN0VWODZMOFkrSHdpdG50MUhWRE5SQW42OVp5WVM3NjR3ZXJU?=
 =?utf-8?Q?kocF4mzGbVWDs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C7E9503FCE13E4AA954C99F8F9302A4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f7c071a-4022-44aa-3060-08d8b3024792
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2021 11:49:24.3315
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mpvua+kaXm0+hpKxIkgA7GszMCH2VsQi34LHz3HO5SXKQWJIHdjzqC0Pqo/N/MrkXguOntVATcugWAAU0SzUuuhhjR6qo24WS6cLbXFut/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2251
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMS82LzIxIDc6MjUgUE0sIEF0aXNoIFBhdHJhIHdyb3RlOg0KPiBFWFRFUk5BTCBFTUFJTDog
RG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNzIHlvdSBrbm93IHRo
ZSBjb250ZW50IGlzIHNhZmUNCj4NCj4gT24gV2VkLCBEZWMgMjMsIDIwMjAgYXQgODozMyBBTSA8
Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+IHdyb3RlOg0KPj4gRnJvbTogQ29ub3IgRG9vbGV5
IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4NCj4+DQo+PiBUaGlzIHBhdGNoIHNlcmllcyBh
ZGRzIHN1cHBvcnQgZm9yIHRoZSBzeXN0ZW0gY29udHJvbGxlciBvbg0KPj4gdGhlIFBvbGFyRmly
ZSBTb0MsIHVzaW5nIHRoZSBtYWlsYm94IGZyYW1ld29yay4gQSBNaWNyb2NoaXAgZGlyZWN0b3J5
DQo+PiBpbiB0aGUgU29DIHN1YnN5c3RlbSBoYXMgYmVlbiBjcmVhdGVkIHRvIGhvbGQgdGhlIG1h
aWxib3ggY2xpZW50DQo+PiBkcml2ZXIgYW5kIHdpbGwgYmUgdXNlZCBmb3IgZnV0dXJlIHNlcnZp
Y2UgZHJpdmVycy4NCj4+DQo+PiBUaGlzIGRpcmVjdG9yeSBpcyBpbmNsdWRlZCBieSB0aGUga2Nv
bmZpZyBvcHRpb246DQo+PiBDT05GSUdfU09DX01JQ1JPQ0hJUF9QT0xBUkZJUkUsIHNvIHRoaXMg
cGF0Y2ggc2VyaWVzIGRlcGVuZHMgb24gQXRpc2gNCj4+IFBhdHJhJ3MgUG9sYXJGaXJlIFNvQyBz
dXBwb3J0IHBhdGNoZXMgd2hpY2ggaW50cm9kdWNlIHRoYXQgb3B0aW9uLg0KPj4NCj4gV2hhdCB2
ZXJzaW9uIG9mIGNsb2NrIGRyaXZlciBhcmUgeW91IHVzaW5nPyBJIGFtIHdhaXRpbmcgZm9yIGFu
DQo+IHVwZGF0ZWQgY2xvY2sgcGF0Y2ggdG8gcG9zdCB0aGUgbmV4dA0KPiB2ZXJzaW9uIG9mIHRo
ZSBiYXNpYyBzb2Mgc3VwcG9ydCBzZXJpZXMuDQp2MiBjbG9jayBkcml2ZXIgc2hvdWxkIGJlIGF2
YWlsYWJsZSBzaG9ydGx5LiBJdCBzaG91bGQgb25seSByZXF1aXJlIHR3byANCmNoYW5nZXMgaW4g
dGhlIGJhc2ljIHNvYyBzdXBwb3J0IHNlcmllcyAocGZzb2MgLT4gbXBmcyBuYW1pbmcgY2hhbmdl
cykuDQo+PiBJdCBmdXJ0aGVyIGRlcGVuZHMgb24gdGhlIE1BSU5UQUlORVJTIGVudHJ5IGNyZWF0
ZWQgaW4gdGhlIHNhbWUgc2VyaWVzLg0KPj4NCj4+IENoYW5nZXMgZnJvbSB2MjoNCj4+ICogRnVy
dGhlciByZXdvcmtlZCBkdCBiaW5kaW5ncyB0byBzYXRpc2Z5IGVycm9ycyBhbmQgZmVlZGJhY2sN
Cj4+ICAgIChob3BlZnVsbHkgcGhhbmRsZSBhcnJheSBpcyB0aGUgY29ycmVjdCB0eXBlIGZvciB0
aGUgbWJveGVzKQ0KPj4gKiBGdWxsIG1haW50YWluZXJzIGVudHJ5IG1vdmVkIHRvIEF0aXNoJ3Mg
UEZTb0Mgc3VwcG9ydCBzZXJpZXMsIHRoaXMgc2VyaWVzIG5vdyBvbmx5IGFkZHMgbWFpbGJveCBk
cml2ZXINCj4+ICogQ29udmVydGVkIGNvbmZpZyBvcHRpb25zIGZyb20gTVBGUyB0byBQT0xBUkZJ
UkVfU09DIHNvIHRoZXkgYXJlIG1vcmUgcmVjb2duaXNhYmxlDQo+PiAqIEZ1cnRoZXIgc2ltcGxp
ZmllZCBkcml2ZXIgY29kZSBmcm9tIGZlZWRiYWNrDQo+Pg0KPj4gQ2hhbmdlcyBmcm9tIHYxOg0K
Pj4gKiBTcXVhc2hlZCBoZWFkZXIgaW50byBmaXJzdCBwYXRjaA0KPj4gKiBGaXhlZCBEVCBiaW5k
aW5nIHdhcm5pbmdzICYgc21hbGwgZml4ZXMNCj4+ICogQ2xlYW5lZCB1cCBkcml2ZXJzIGZyb20g
ZmVlZGJhY2sNCj4+DQo+PiBDb25vciBEb29sZXkgKDUpOg0KPj4gICAgbWJveDogYWRkIHBvbGFy
ZmlyZSBzb2Mgc3lzdGVtIGNvbnRyb2xsZXIgbWFpbGJveA0KPj4gICAgZHQtYmluZGluZ3M6IGFk
ZCBiaW5kaW5ncyBmb3IgcG9sYXJmaXJlIHNvYyBtYWlsYm94DQo+PiAgICBzb2M6IGFkZCBwb2xh
cmZpcmUgc29jIHN5c3RlbSBjb250cm9sbGVyDQo+PiAgICBkdC1iaW5kaW5nczogYWRkIGJpbmRp
bmdzIGZvciBwb2xhcmZpcmUgc29jIHN5c3RlbSBjb250cm9sbGVyDQo+PiAgICBNQUlOVEFJTkVS
UzogYWRkIG1haW50YWluZXJzIGZvciBwb2xhcmZpcmUgc29jIG1haWxib3ggZHJpdmVyDQo+Pg0K
Pj4gICAuLi4vbWFpbGJveC9taWNyb2NoaXAsbWFpbGJveC1tcGZzLnlhbWwgICAgICAgfCAgNDcg
KysrDQo+PiAgIC4uLi9taWNyb2NoaXAsbXBmc19zeXNfY29udHJvbGxlci55YW1sICAgICAgICB8
ICAzNCArKysNCj4+ICAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgICAxICsNCj4+ICAgZHJpdmVycy9tYWlsYm94L0tjb25maWcgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDEyICsNCj4+ICAgZHJpdmVycy9tYWlsYm94L01ha2VmaWxlICAgICAgICAgICAg
ICAgICAgICAgIHwgICAyICsNCj4+ICAgZHJpdmVycy9tYWlsYm94L21haWxib3gtbXBmcy5jICAg
ICAgICAgICAgICAgIHwgMjg1ICsrKysrKysrKysrKysrKysrKw0KPj4gICBkcml2ZXJzL3NvYy9L
Y29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPj4gICBkcml2ZXJzL3Nv
Yy9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KPj4gICBkcml2ZXJz
L3NvYy9taWNyb2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgICAgfCAgMTAgKw0KPj4gICBkcml2
ZXJzL3NvYy9taWNyb2NoaXAvTWFrZWZpbGUgICAgICAgICAgICAgICAgfCAgIDEgKw0KPj4gICBk
cml2ZXJzL3NvYy9taWNyb2NoaXAvbXBmcy1zeXMtY29udHJvbGxlci5jICAgfCAxMjcgKysrKysr
KysNCj4+ICAgaW5jbHVkZS9zb2MvbWljcm9jaGlwL21wZnMuaCAgICAgICAgICAgICAgICAgIHwg
IDUxICsrKysNCj4+ICAgMTIgZmlsZXMgY2hhbmdlZCwgNTcyIGluc2VydGlvbnMoKykNCj4+ICAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tYWls
Ym94L21pY3JvY2hpcCxtYWlsYm94LW1wZnMueWFtbA0KPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9taWNyb2NoaXAvbWljcm9jaGlw
LG1wZnNfc3lzX2NvbnRyb2xsZXIueWFtbA0KPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9tYWlsYm94L21haWxib3gtbXBmcy5jDQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3NvYy9taWNyb2NoaXAvS2NvbmZpZw0KPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9z
b2MvbWljcm9jaGlwL01ha2VmaWxlDQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3Nv
Yy9taWNyb2NoaXAvbXBmcy1zeXMtY29udHJvbGxlci5jDQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBpbmNsdWRlL3NvYy9taWNyb2NoaXAvbXBmcy5oDQo+Pg0KPj4gLS0NCj4+IDIuMTcuMQ0KPj4N
Cj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
Pj4gbGludXgtcmlzY3YgbWFpbGluZyBsaXN0DQo+PiBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRl
YWQub3JnDQo+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJpc2N2DQo+DQo+DQo+IC0tDQo+IFJlZ2FyZHMsDQo+IEF0aXNoDQoNClJlZ2FyZHMsDQoN
CkN5cmlsDQoNCg0K
