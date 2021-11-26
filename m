Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C281B45EB26
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 11:16:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376645AbhKZKUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 05:20:08 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:34590 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232582AbhKZKSH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 05:18:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1637921695; x=1669457695;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=uRnqrM2KxNP9OoaW4Y/OAYoeDqGoDUdkxwNBO0nMQZ0=;
  b=eAOWzqE38E6tcwQzdaLmM4MDzN5diMFTUMVhFZHM5BBPJ3qRD3yGAJEb
   XjcnyJUJX3EZ5Gt652fc3wLTlKlBTXdJrOaQwO5XSBEKUnexNWrtso/v/
   dIEePH0iSH9hk3oI5hJtclVmfMgBPLnPDjrUz2S2WuAZDVTDfu8lxKiXv
   AecqyMWt9UW3uzWwTlxq2v7BLwpz0EF2rwgsekdIlqPDEy6ffSp5JuCeV
   UR4L3KlJaRbPSNwRHwWZFzvLVaSKmBxyVWkc4mDpDqJ1bN7ynqmM3Wf72
   XzOer7ovEYQpCWrbSeBbiXJ9TatXjWqLj0bHOscZfShKAYDkgYhVtUWYc
   g==;
IronPort-SDR: 94qJcKEM4Nr3Z53g9+h5fw4dA5s8ztCVz4jyv+Xyj43tRe/q9fsjSnWqnhPb8AmtUzLbECga4j
 If4s29qbvLbZtreijRpQtPvkqyYXQuPI2Mvx4X+8DYwkDQ7oxR20mHjylwlAXdCmT6DpE2AGWW
 +BRDR4Lz5N+Yoc6RFH9+e6a4y3CIPrcuuie2vvhMSDty9D9TVuJswq5YBcAzUj8FcE3SqoIuof
 iYeCQoOFVuSJsTxNveuOew+N/BObNpBQR0kqp3G4CdriDhp86QtSecGprsBTBtcdBs+d5pO7s8
 bmS7H0krm6JArn2h8MMBlZsB
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; 
   d="scan'208";a="140391417"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 26 Nov 2021 03:14:54 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Fri, 26 Nov 2021 03:14:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.14 via Frontend
 Transport; Fri, 26 Nov 2021 03:14:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nB9Qq0kHFsjIEolrij64qAfrpBvaCSDYX9AKubFIEBP2WMNEzveU7JA4qql/fkvRt4SQxtJmOM7yS7FWewyS3ZIKjbch9p/sFQsxyFl4s8L6lPCf/Ul13O2UTELSt17Zgje8xS2tvEY4BOWS5EAXgb9/vWJtj7Zp9kjCoNSmJWjgj65K9WvZWcOaER7EpFObW5hgvdVoFlJvkOiL15YgTyjoMpYn59Wyo5dWVVLDjceVQgWvgF4l6DcDvKrUcY6kZ8MgdF5abvDTYpR4/qS4Sn129/k9ZozOuNeatUxJEo509InAfkCqPSe2/pSWLkmc8FOREmzbAANZRJLX0NqVhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uRnqrM2KxNP9OoaW4Y/OAYoeDqGoDUdkxwNBO0nMQZ0=;
 b=AR4VupH9pr9j7s4sA2iokDVAvBqoBP5dTXDUefBD5ywyk2YnPGaqnNvZcQuzZOJ4RM/LnlezjvfAHab42BX4e5nZ9EPSXlSb5qxIixkIONJMnjrE2duLag9WP0AWETowA3NDcnlhefBYwV0/NwVQfWkc2eH/a0f0MhjTiPJcxXETAL/abVJ+TS76xxoGwGgmtAldLLB0Z/wX/qIuF/Dp0o2X8aUqLVngmazJvqXTuQN40F0qHDkGjOhlW6j0gWeTOrk5pginXv3Py6dvnH2OCN2gD0NeR98AjW0jfwkEM5rkzKBJcsS6rgrxsdDNC8S0D10b+LRDir6SVf9DGyLGSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uRnqrM2KxNP9OoaW4Y/OAYoeDqGoDUdkxwNBO0nMQZ0=;
 b=s34QTWpjRGMp14STXrWMpMniL6KwpiTBF415eUpeyEFP3fOUWvyrRsatXWxHS+Vd2j31B0xOy2I20SZu7Yz4t/Cpw2PDkEcS4F+sNBV+OH5549og8QRO/KjzvqEnWZ9YftVBA1jQ+baGvKKRVriP+ZDBqbQEpWoYc0MrIZQ0lxA=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MWHPR11MB1278.namprd11.prod.outlook.com (2603:10b6:300:1d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Fri, 26 Nov
 2021 10:14:51 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::f579:5f0c:dfab:2d27]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::f579:5f0c:dfab:2d27%6]) with mapi id 15.20.4734.023; Fri, 26 Nov 2021
 10:14:51 +0000
From:   <Conor.Dooley@microchip.com>
To:     <krzysztof.kozlowski@canonical.com>, <geert@linux-m68k.org>,
        <robh+dt@kernel.org>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>,
        <damien.lemoal@wdc.com>, <Lewis.Hanly@microchip.com>
CC:     <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH 6/9] riscv: dts: microchip: mpfs: Fix reference clock node
Thread-Topic: [PATCH 6/9] riscv: dts: microchip: mpfs: Fix reference clock
 node
Thread-Index: AQHX4hGSnfyPBPrmmEGmKCXbzlxSC6wVkVGAgAAH1AA=
Date:   Fri, 26 Nov 2021 10:14:51 +0000
Message-ID: <fc4a0c49-1a3f-68d6-de54-820d3e9c0938@microchip.com>
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-7-geert@linux-m68k.org>
 <3b8442c7-fafb-421b-cd5b-4b57d1b545c3@canonical.com>
In-Reply-To: <3b8442c7-fafb-421b-cd5b-4b57d1b545c3@canonical.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65f838a5-16b3-4e13-b90b-08d9b0c59573
x-ms-traffictypediagnostic: MWHPR11MB1278:
x-microsoft-antispam-prvs: <MWHPR11MB1278660046A6C0922B9A8D9F98639@MWHPR11MB1278.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: miep3ruSNt4qvtZccbju3jfjAo6L7xf4OfcclXud8IwBlvoKkbUTjmRsSy9G4zu0VHU+3fttkUmR08DSm6sI08ZnJUaiejh88ALgPjkkdaxFmOe3b89bzpq6k7KaW7S3dnItjGBx1mLNVGOKjWMcRoXKI1N/PUHORac3h6JBqjZ6ekdoG5KEZ1a/tw0yq1a3fm+OrVwfZ55Pn/jP8ccFZ+R5ubXg/EM66vC0vjvxjvOsyTF3yLF14Q9R0fHIy87Jl4qXRuMhItQ6OR82r1kK0EClkvHTEn2/B6FBzyHHeDyPHLXCkgg6qwCoMZZOgYtCIJsL4ctbh63Hv0uLr51tAEAgeKo3E9C18AL2vrNqpMQX/HpDWjb4Pluk5GOGosQnm4JgjJU2deiC82I1ypVBT5tgvn2tga4F1R8Hof1Ee2pQ7xd6VtMK6Rv++NAB+MRozKej7xlqEK3Sip4AbE//8oIXOA+YKFD+YDE+Ob+QGskDrprMmkq021qtLWnO2OFzDdQoIzVzVbjyKWRyC9aVwCs4Jpa0/+H7JJLwHLxLUtj3O65qef/bcrigfbq3s8kC6Ep2NTDIOAjX75dLHy/rLqtm7b03fQH2rzcJavQZykrHYTmNKoE2b/4pF1y7O8XycNScfbV2indElILgM48aUsAT/UdRLx1CiCDSAhMF5m0HdS4+fo8c/W9iDIVXgckz2oxkGNhL4lkSyvlpbfNzjPu5ZmeicYZq86N77rw+1WUq7UiJ7HPx7HMDX0MhG0orHf7hpf3RnaXdb3zJ+vnKkA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(54906003)(110136005)(186003)(2616005)(6512007)(8676002)(31696002)(5660300002)(316002)(6486002)(8936002)(36756003)(2906002)(6506007)(86362001)(6636002)(31686004)(122000001)(71200400001)(64756008)(66556008)(66446008)(66476007)(38100700002)(76116006)(91956017)(26005)(53546011)(4326008)(508600001)(38070700005)(83380400001)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzU0R3FYQVFsak8rNmdmaXBRRENteGxnd1BGVnI0a2Y3akk4NE9SVzRjQitn?=
 =?utf-8?B?YklPT2cvTjU5bnhlbDNCZCs2TlJuWmFrUUFjYllqeUtTTkpLNncrU0FpdXoy?=
 =?utf-8?B?amN6Si92eFlRVzRCQWI1cTF0d3lRTGg0a1YrUXlKODdCaUNHc000QXFtOHNM?=
 =?utf-8?B?enB2c2w3MVk3MEdtSFlsaDJKdmpkd0JYdjJhcE5udEtZOXI0YTFSaXptckFn?=
 =?utf-8?B?dWtXUWgwZ0I1R2JKOFNEeWdIUjZ0Kzc1amZrNzhsVExOMW13enpwdkRuNUpO?=
 =?utf-8?B?ZmsrYktWbFczYTdpdEtsSXQvVERJSGpqcGtScE1jeUFBWFBZaXNjU3JOakNQ?=
 =?utf-8?B?RlM1aDFHSnhNeVRwSmhCN3E4THN2N0xpZkJuKzZ3VFoydThSOStVelRJQi9w?=
 =?utf-8?B?eGMwWnhjRGFGdk9lUkxyN3RWRytQSkMwL1N6L056OWtsaE94N2pjUStnTlpX?=
 =?utf-8?B?TUdWOGJUSHptcGZsdDZ4aFhla00yK1FNVjFYZkgzSkpmSUdEcG9nS0hkY2lM?=
 =?utf-8?B?dWFoSnZ1M0YxWXlNQTB3MVJmYkVsYzlUREI1ZHVxc1dhek5BTjhwaFZrS2Nn?=
 =?utf-8?B?eUM0cG9lRElqUm1jUFFENXZHbVhDdTFnKzNzOUFwVkZZOVpFeFhCalV4MHEx?=
 =?utf-8?B?b1A2YkxtSmR4VEE4b1hIaDkxa3Y3b0I1ZjhwUXRIM2tWZllrNkVwVlN2aEtw?=
 =?utf-8?B?bEdQTFZiMEREYXhqRURtbWVxRThPeGhVWXRWTVZ4WEhRaGZycmdpdExsb1pF?=
 =?utf-8?B?YUIydlVQSGgrYzdqbU82eHhMQ0ZnU1FLUk9sdmwwaDAwTkhsVitFck16RUx6?=
 =?utf-8?B?VEVibkZOMys0ZWplZkJMUVhyQlpycWZjWE11QndLRzJ1a2I0dkNERGxUaFVZ?=
 =?utf-8?B?MFU5YVY2TnRZWnk5blpXLzA2SkszSFVoak1QWVNsK0puN0VFaCs3WmZNQzQ0?=
 =?utf-8?B?OEsySEltbTdrZWZ1UkdwRUhFRUpSZjEzbDQ5RlJ1bG1reFVJejVGU0RqMjRw?=
 =?utf-8?B?N2p5dksvVG5NcDYwcGJwQzQ1MDF4a3JIS25meW1GdWhVSmN3Nk9SQ1lHS3dl?=
 =?utf-8?B?M0pvZlUvNnFFeFJZbEhkWmkyaGNyN0RqUWo3REV6UzNQN1V0S1ltODg5RUp4?=
 =?utf-8?B?bTg5RzJoa1dZYmtSQldNQjhlOHdIMVdaQnBmR3FQSS9INjBtRFZyZW1DSC9Y?=
 =?utf-8?B?Q3hZS0c0RnVkUG1rM25sN1pDNkdKRUg3cTVWbVlxdFhLL3pWR3hoL0tXd0Qx?=
 =?utf-8?B?aVRscDBYaXIzOUNCQ1owUWY2NS9UVnRaemR4L3o3UUZacG9qQWM0ZHVXRWpu?=
 =?utf-8?B?SU5lM1dBUlpFc3pCRmdPNndEeExhUHJmZ3M1OVdZdzJRaEpFMXprUmhEZzRN?=
 =?utf-8?B?M0JsMjFQQjNtUFRpU1EyUWVVeGYxeUVzZmRCWG1QWXdXSmNKTHV3MVkzYmNx?=
 =?utf-8?B?WUlUUDhSUGZoYjk5TWVyTFp2ZTlRTUZuaXJHRWwvY1pQTllHN3JGZFJiYUFX?=
 =?utf-8?B?RUt3cUU4N1VFdXZ0N25IOHZyNjVrVGViRUk2dUN5Q0RhUkMzY1ZsUEhVOEk0?=
 =?utf-8?B?MWdvK3kwcXMxWGozWWMvc0NKOFEyMkRYRzhKNnpqQU9FTnlTUU11OXJZU0lx?=
 =?utf-8?B?OUk3VSsvdVlmbHNZVlVtVlBZL2xsNWcvL0ZEZmdzTklXNzdReW40WWdiY1My?=
 =?utf-8?B?REhYL3ZuY3REZ1R3TDdyUEMzTlBmcVZEclNZZmtZamorMFJLaHI3VzFwcG9u?=
 =?utf-8?B?TFpCcWhyWmI5WUorckh5dVJJSDE3Q2FMaDRINTcvREw3dzJkMGpLMmNTV2Y1?=
 =?utf-8?B?akFOMGIvQVBockhocWFnaFg0MU4rRExNcFNmOTl6SHNSdzFJRTJPN1BwWGlR?=
 =?utf-8?B?QXBzOHhHSXJiQ1RHUER2YTM5ZXJMUGNiSVlpRGxqVnliUUNnaEJwbkNnb3Zl?=
 =?utf-8?B?KzRKMXpBeEpVa3lzK2RsTlZvUGZXYmR1ZmVDek95ODJQdG9BL0xsM2ZYVDJD?=
 =?utf-8?B?eFZ0ZjRyL0lrQXVleG1HTVhmS1dOekt0dzlGVkhUMU9jRndEaHI5b09WSmRU?=
 =?utf-8?B?bGtVM09tZi8xbFZUZWd1UURkcWMxMGR3VEFxbHBQSGRLVm1ZT3Y4clorWk9R?=
 =?utf-8?B?SnVDdVFQSVk5NFFEdlE1NWlYOGVhWE1yR1FqVVJVQTJ2TWRNVTU0NmRobnlB?=
 =?utf-8?B?NHNNeE4vQzJwOXk3UTlMcWF3Ylc5QzFwd0FIdHo4dzZzd005VU5ZQzJxRXJ4?=
 =?utf-8?B?dUdETmhIOWJHWWRaSEg0cUc5Ri93PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5ECBCFEB2ABA3E459C99F60EE0118C6A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f838a5-16b3-4e13-b90b-08d9b0c59573
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2021 10:14:51.1164
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VUwmbm9gtxRk9eTiJqI+yO7R/aJjVBwkLhN5RJyOM1deGlS7JDZnUhUsZYcgNPNrt7a7ZlJDZ2LAb6rjeVsyPtrzEekVKR6khwz0Q5d0OKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1278
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMjYvMTEvMjAyMSAwOTo0OCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToNCj4gRVhURVJO
QUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5
b3Uga25vdyB0aGUgY29udGVudCBpcyBzYWZlDQo+IA0KPiBPbiAyNS8xMS8yMDIxIDE2OjMxLCBH
ZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6DQo+PiAibWFrZSBkdGJzX2NoZWNrIiByZXBvcnRzOg0K
Pj4NCj4+ICAgICAgYXJjaC9yaXNjdi9ib290L2R0cy9taWNyb2NoaXAvbWljcm9jaGlwLW1wZnMt
aWNpY2xlLWtpdC5kdC55YW1sOiBzb2M6IHJlZmNsazogeydjb21wYXRpYmxlJzogWydmaXhlZC1j
bG9jayddLCAnI2Nsb2NrLWNlbGxzJzogW1swXV0sICdjbG9jay1mcmVxdWVuY3knOiBbWzYwMDAw
MDAwMF1dLCAnY2xvY2stb3V0cHV0LW5hbWVzJzogWydtc3NwbGxjbGsnXSwgJ3BoYW5kbGUnOiBb
WzddXX0gc2hvdWxkIG5vdCBiZSB2YWxpZCB1bmRlciB7J3R5cGUnOiAnb2JqZWN0J30NCj4+ICAg
ICAgICBGcm9tIHNjaGVtYTogZHRzY2hlbWEvc2NoZW1hcy9zaW1wbGUtYnVzLnlhbWwNCj4+DQo+
PiBGaXggdGhpcyBieSBtb3ZpbmcgdGhlIG5vZGUgb3V0IG9mIHRoZSAic29jIiBzdWJub2RlLg0K
Pj4gV2hpbGUgYXQgaXQsIHJlbmFtZSBpdCB0byAibXNzcGxsY2xrIiwgYW5kIGRyb3AgdGhlIG5v
dyBzdXBlcmZsdW91cw0KPj4gImNsb2NrLW91dHB1dC1uYW1lcyIgcHJvcGVydHkuDQo+Pg0KPj4g
U2lnbmVkLW9mZi1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4N
Cj4+IC0tLQ0KPj4gICBhcmNoL3Jpc2N2L2Jvb3QvZHRzL21pY3JvY2hpcC9taWNyb2NoaXAtbXBm
cy5kdHNpIHwgMTMgKysrKysrLS0tLS0tLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPj4NCj4gDQo+IEl0IGlzIGFsc28gbG9naWNhbCBiZWNh
dXNlIHJlZmNsayB1c3VhbGx5IGlzIG5vdCBhIHByb3BlcnR5IG9mIHRoZSBTb0MuDQo+IEl0IGFj
dHVhbGx5IG1pZ2h0IGJlIGEgcHJvcGVydHkgb2YgYm9hcmQuLi4NClRoaXMgaXMgb25lIG9mIHRo
ZSBmdW4gRlBHQWlzbXMgbGlrZSB0aGUgR1BJTyBpbnRlcnJ1cHQgY29uZmlndXJhdGlvbi4gDQpU
aGlzIGNsb2NrIHNldHRpbmcgaXMgZGV0ZXJtaW5lZCBieSB3aGF0IGRlc2lnbiBoYXMgYmVlbiBs
b2FkZWQgb250byB0aGUgDQpGUEdBIC0gdGhlIG1zc3BsbCBvdXRwdXRzIGFyZSBjb25maWd1cmFi
bGUsIEkgY291bGQgcmVkbyBteSBGUEdBIGRlc2lnbiANCmFuZCBjaGFuZ2UgdGhpcyB0byA1MDAg
TUh6IGV0Yy4gSW4gdHVybiB0aGUgbXNzcGxsIGNsb2NrIGlzIHNldCBieSANCmFub3RoZXIgY2xv
Y2sgc291cmNlIHRoYXQgaXMgYWN0dWFsbHkgb24gdGhlIGJvYXJkIG9mIGVpdGhlciAxMDAgb3Ig
MTI1IE1Iei4NCg0KU2luY2UgaXQncyBub3Qgc2V0IGF0IGJpdHN0cmVhbSBwcm9ncmFtbWluZyB0
aW1lLCBJIHdvdWxkIGFncmVlIHRoYXQgDQp0aGF0IHByb3BlcnR5IHNob3VsZCBiZSBtb3ZlZCB0
byBvdXQgb2YgbXBmcy5kdHNpLg0KPiANCj4gDQo+IEFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93
c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGNhbm9uaWNhbC5jb20+DQo+IA0KPiANCj4gQmVzdCBy
ZWdhcmRzLA0KPiBLcnp5c3p0b2YNCj4gDQoNCg==
