Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46674339036
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 15:42:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbhCLOmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 09:42:15 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:26998 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231766AbhCLOmF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 09:42:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1615560124; x=1647096124;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=HfDFKaZn9rW7k80YC06yGuG6bnrGD0GdU2qAtlbbZKs=;
  b=Vf/l1v6Fk7N3HzeQIJI4un3NbYPfL8tBiRa/3oE+ANcKY75NWjVqY9qW
   pNOjN1vNSnKbBaDYOp7So7A/hYCggSRyLrfX35IzwOwISTOai9VZKzilH
   hG6Z7NjFtHaFe/U0EbLn1v8cErdTh87JENADPMS/NqQ1Kt6kT0OhNTlro
   cSo7HRNobOiCrVOQunFV1gsLBBrCb9O4Imoj8KzVYP8VJF+X0QyD+BnbZ
   9Sc225yv7p+Y7/aXwLZZwo2kDVW3MtknvL4ttkiZVCrmBKT3QNrFQEXZi
   zSLrjhF5kVKiEggStIx0uwh9vKn4BGDQF/15qDHAAm0CLIGz5JmxV+3pd
   Q==;
IronPort-SDR: tbFpgURgM77fKQHXK1DdrJONU5lSv3CPqH+GToqj+3ovQ3zaKbdp72mnR3fm0aqJq4/npg3an6
 ZpkIasESwQYHKAWfQirbHlhO1qPbW7h46D9klHQihk8nMIW/BUectv/P5U1MmVwcTsAzeEAzYP
 oQ50Ft0vzK33EJ6g5EnHS8N18uI7Flo2x64IybpgrfB1z3c5B1I3gG5IMu72hPIAmmNbcB5P7x
 B0Kimu3yNTTLJdatD3LpGeYBs6xKt8M6hh92VrV83sLQF20jTc0J9GR5atSiQ5BXu10ABmTKan
 HB0=
X-IronPort-AV: E=Sophos;i="5.81,243,1610434800"; 
   d="scan'208";a="106970451"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 12 Mar 2021 07:42:03 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 12 Mar 2021 07:42:03 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2 via Frontend
 Transport; Fri, 12 Mar 2021 07:42:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WIk5kih7xCln+4aOWqMRatHDlIXsnriAfv7rvhQYct1qfO0k4DA0avm1QITdovvyTIROajpnHdsJzdHv8C4xI1hoCXMiGeJYn4HtS/Wq0H/v29yk+qVGtOjqi7GcCHWNwu9WJwYjAy92gZwcTLNOGew0KV0YkKjjGy6xmT6PzM8Hwy0XN8saJFd+W78vYQ/3Ao9+5oqZ42qP07w0myc0WjCNnGKk5G1h8EpXnZoGWprinaZgpVo+S0E1/upIJuJGdENA/DNowJRqN/zV/GVLZTFFN8NyKOo837jABpvCuBY7/B2ROMGgx7vmm6b3U4m3itZdhsau6QHVpatW8ySfJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HfDFKaZn9rW7k80YC06yGuG6bnrGD0GdU2qAtlbbZKs=;
 b=hTDrv2rj0IUeNi3i5JjyRHdHMchxk4Kgy1WcVvodrIfXeDLDbrtOZAIo/wn33Hz6K8tSu/0qaiyJUbEp4ANCEEipKpcktcgIgSwrGgYZ0VomjGMUvFDAvCD1WvKET4JeJMKqSvlxDnUlcZLRzqOvlRGD43bdCR3tkifKbc+DLASSWYsyu6QP4jC6BcAVBLCZRpNePixGYQaTswZ5tf2uoSuzCEbBM9b4QpbymoQwzOKY/DLTdkWIKE5skA5vloVMNaT9ZD6uoFmirty3QHKLqLJDt+dqzPT2c3VgNfV6HXsu5gj9N8qJup9DwZSISoTYdD608bApjZPgMpQIhNvBdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HfDFKaZn9rW7k80YC06yGuG6bnrGD0GdU2qAtlbbZKs=;
 b=jMaqYCRVa0WJ3FyIw2WQNc211DV0rNcMRG0hD8fAObXnCJElQoKmcpW8G8DA3qvhOEH216iqlN10Eoz3WHkDXoNXJyTxujdO82RLH0SdAVzMjsZDF6hbYSG+FQLJzYvmgce1HOoqAJ154yfuC+I8mPunA5Sck/FYV9z/GIvxHso=
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MWHPR11MB1694.namprd11.prod.outlook.com (2603:10b6:300:21::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Fri, 12 Mar
 2021 14:42:01 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::9863:7157:f43e:3205]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::9863:7157:f43e:3205%6]) with mapi id 15.20.3933.031; Fri, 12 Mar 2021
 14:42:00 +0000
From:   <Conor.Dooley@microchip.com>
To:     <robh@kernel.org>
CC:     <damien.lemoal@wdc.com>, <jassisinghbrar@gmail.com>,
        <aou@eecs.berkeley.edu>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <devicetree@vger.kernel.org>,
        <linux-riscv@lists.infradead.org>, <j.neuschaefer@gmx.net>,
        <Lewis.Hanly@microchip.com>, <Cyril.Jean@microchip.com>,
        <Daire.McNamara@microchip.com>, <atish.patra@wdc.com>,
        <anup.patel@wdc.com>, <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v4 4/5] dt-bindings: add bindings for polarfire soc system
 controller
Thread-Topic: [PATCH v4 4/5] dt-bindings: add bindings for polarfire soc
 system controller
Thread-Index: AQHXFmqibCADlnbyAE6eN58BinkLBKp/DyWAgAFfvIA=
Date:   Fri, 12 Mar 2021 14:42:00 +0000
Message-ID: <b4c99657-e28c-cf4f-31e5-67a83ecbb4d0@microchip.com>
References: <20210311113456.15686-1-conor.dooley@microchip.com>
 <20210311174305.GA926017@robh.at.kernel.org>
In-Reply-To: <20210311174305.GA926017@robh.at.kernel.org>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [89.204.252.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23843c25-a6ac-4c32-b3c0-08d8e564fedf
x-ms-traffictypediagnostic: MWHPR11MB1694:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1694450163DAB7AA19300A8B986F9@MWHPR11MB1694.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NmBHNYhHTs4GQsPJ2SkjIYUET0cfJtNvLZIayui6CWhvffBq8VK/U6Whwb0Bn00vbZOdUxwtLJDA73WZ9fByH4ooCj+WrlWGN+27s0ugsuSA89/Z57JhfkqX347rWG3it7xgswE96+e2uwZwLZ7r7xGSYiTQ1Ta+8E++b7XlbTXxBCIUQfb8CG/BhgrpTd/OXQXxfevgnDotjYq5WVELJUDj66upvXzKVF8omM9UVoQz+N2euZD+zDjLxz29z3+vAmBpTwNZrwAoGtR/BNHZU2mWECqpeD/bzv0n9xIY3QEQgxNN1eK5MAxgDqeO8gFXaI3tApHWLn/eDd8g3HRRH71BuIZ/BzAnSRZKcca6iWDrouXVT1WWnWYJ6oBG2nrD4UZK7Nxi/xAJZi8mKunBLpuclo+xO0bKYH+m9Q9xkncZifTQ+v6n65ZP21gPwvUNMCJ8IU3iSFyF0yWn4b6dlPL/pv6jf/hDZ4RRU6uXWGX4bArz1r4XLxhJSoSSN+QHZ+oNdp8Fo7j3C62wr2eu6GDEotUDUH9if59BCoMcG4db9eabPHlPyOdjjDe0Z6GDAaUZw2vXRThr+vGqLwTuvL/vtKYsdfNWBm7Cj3d7OIRZAZJkwTptWXONqVnulsFct22bWhHDsBeBp9TDypd/Z1ElmhNiJu5ayQ+az8ansD3hZcFE4vIWZOxYYIEJMwGB
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(366004)(396003)(376002)(346002)(39850400004)(478600001)(83380400001)(6486002)(66476007)(6512007)(66446008)(6916009)(36756003)(6506007)(64756008)(2906002)(31686004)(66556008)(2616005)(4326008)(53546011)(26005)(7416002)(86362001)(5660300002)(186003)(8936002)(31696002)(54906003)(71200400001)(91956017)(76116006)(8676002)(316002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?WFNPSHRVQWtCb2YwdERjeTdmQS95UHozV0N4d29Rcm9KV2poRGdZSm53cjk2?=
 =?utf-8?B?bU01VVcrSlZIdG1lZzB4eVd5SzZuOG82QTNsek9QQWh6bVJDREdVNTI4djNu?=
 =?utf-8?B?YTFzbnZIdWhTNWY4dVd2cmNEV0NOSFZ6ZkpNY2lqUC9hMWZ3TWl6YWlhWFdP?=
 =?utf-8?B?eVREa21vMWlNaEJkZjZmaHFJMG5MMUZkbTcwaG1hcVVDVloxckJwZnJNZVlt?=
 =?utf-8?B?NktyL29VYVR3aTZvUkNmQXFaa3lkY01SSUhpT1ZWNjJsNU1IVkd1NTFoY0RK?=
 =?utf-8?B?NTk0UHBUZVdpaGRweGx6cDhlRUdLekN2ODZabkhmcXNOOVh3SW0vUzJaQVQw?=
 =?utf-8?B?TTVZNlBXT3VvUTFhZzB5dit5SE9FdjVFdzJIZTV5TjJzam9waDhSczQ2VVdW?=
 =?utf-8?B?ZHJzTDZBSE4rK1NVaml1QU5WWVErQzRINmZjRThHRmJNQmZ6WU5kK3k0M05W?=
 =?utf-8?B?ek9sTXhnV0xkcHdtWGIwNlZqbU9ob0Q5cmJqbExTV1dkZEdISGU2dUhWTnJM?=
 =?utf-8?B?NlUwMFVlUi9tQVdSeGRLREtVNmZHQTZ4dHdxQkl2MXhoOTlWNHZrbUFqeEJt?=
 =?utf-8?B?a29VTnVNZ0hLWTVjY09jOTNibkgvV21iYkNYM0IxNFpKWHNyQVBEeE00TWxI?=
 =?utf-8?B?QlVPa2FGeHZDYjJwOU5odWNUWFF4ck1MV1hWQUhsZHJ0anU1WGNBNnBiaWFn?=
 =?utf-8?B?cEs2RUU1c3dYNW9oUWNicjh4QmZ5bmZOSnpDS25abDY3Uk1EUWR6MVZQVTZt?=
 =?utf-8?B?QjdyMGlwUi9nZ0U0ZktiV3Y2YWIzSVFIUklUbi8rM20wd1V5b0dzb1ZWSStO?=
 =?utf-8?B?d2ZsSlBvbHJ3a2k4VGhUcktXWGFHb1RMMUpHMWVCdEdxUXBEUEZiZ3BRN3BR?=
 =?utf-8?B?RXF1dSt5bmRSSGpqZ1VRbHk5dkV6WldhOVUrVWdEMDREeE1ZaWdISk5UZ0Nw?=
 =?utf-8?B?bTY1bmRwMUVGaFM5N29iRGN1emIxak1HaUhIaEFxbERLUmQ2V25oQ3ZBTGUw?=
 =?utf-8?B?dnJIMVVEbUkrMjh0TnhNMEZvNzhCQ3ZCNUFFcHgrdjRwTnNkeVVOa0ZSaU9j?=
 =?utf-8?B?aDZMWXRMYk9GUU1ZTVJqZ0I2RVZ0SFJYaDFNNllhMStBSGIvUlJENE1BREhV?=
 =?utf-8?B?c2FiRTlPbCtOalVIWlpKb1k4TmROb0xZay9KYTRHTEkzaVF0QkgwWi9SZFhO?=
 =?utf-8?B?ckovanhESXFYZGFJUGV3NDN6L2gxWkhuZklwVFhiM3lDSFNYQzBBamRmWkJY?=
 =?utf-8?B?cUNXenRLL3BrUGZaREY3MEg2d1Vwdi9SU0NlSmJQVnlOZzMvNEJZdDBpbnR1?=
 =?utf-8?B?amxueE9hb3d3eVBBaGY0d2F5dC9zdk1hazNPRVNjNllacFlVQ21EVHVGNGhh?=
 =?utf-8?B?VXNMYmFVY2UyWEZTeVlUSzRpTUtVT1JnaEpVcE5iQzlneDhUOEN6WVYvV0Fh?=
 =?utf-8?B?YUlmOWVFMGE5SXcrOVowdXp1MmJZYlBsK05oRmcwbFczV2lkZVdZdzZFQWZE?=
 =?utf-8?B?bko1aWNnUEloeW5lVXZ5TzdRQnV1UW9FY0VleDNoLzRnSktzd1Bhb0FRdGE5?=
 =?utf-8?B?ZEFTRk80YS80dGhJYUF2TENjVFgrSTMvSEZ2TGZwRmErbTZkcFBwTndkd3ha?=
 =?utf-8?B?ZjI2UzIwRXlncHhEV1labWc3aUQxNE42M2NCTXEwZ2FOUjBKZk5Ma0RUT0Fv?=
 =?utf-8?B?cU5oeE9nRWdGTWtUTTQ4bHN4bnVQMDJkL1ZscjJtaEhLUk1MZHpXZmNkS0s4?=
 =?utf-8?Q?EWWoJrX/GTmp4rYMaw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CE25D4A5B1F3D048A3888B4F82AF5B4D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23843c25-a6ac-4c32-b3c0-08d8e564fedf
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2021 14:42:00.5681
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3MLUdbKnAy3UcrVkM7tBkAtCufKNF3gUl6sKfZrxtvXftvMfK0XFyvO8V5EOTpF7S980N7SWd3dfSXUa2vKb/dhoSLW2Nx6EnWRv/kTFe20=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1694
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMTEvMDMvMjAyMSAxNzo0MywgUm9iIEhlcnJpbmcgd3JvdGU6DQo+IEVYVEVSTkFMIEVNQUlM
OiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IGtub3cg
dGhlIGNvbnRlbnQgaXMgc2FmZQ0KPg0KPiBPbiBUaHUsIE1hciAxMSwgMjAyMSBhdCAxMTozNDo1
NkFNICswMDAwLCBjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbSB3cm90ZToNCj4+IEZyb206IENv
bm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+DQo+Pg0KPj4gQWRkIGRldmlj
ZSB0cmVlIGJpbmRpbmdzIGZvciB0aGUgTVNTIHN5c3RlbSBjb250cm9sbGVyIG9uDQo+PiB0aGUg
TWljcm9jaGlwIFBvbGFyRmlyZSBTb0MuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogQ29ub3IgRG9v
bGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlwLmNvbT4NCj4+IC0tLQ0KPj4gIC4uLmljcm9jaGlw
LHBvbGFyZmlyZS1zb2Mtc3lzLWNvbnRyb2xsZXIueWFtbCB8IDM2ICsrKysrKysrKysrKysrKysr
KysNCj4+ICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKQ0KPj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL21pY3JvY2hpcC9t
aWNyb2NoaXAscG9sYXJmaXJlLXNvYy1zeXMtY29udHJvbGxlci55YW1sDQo+Pg0KPj4gZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvbWljcm9jaGlwL21p
Y3JvY2hpcCxwb2xhcmZpcmUtc29jLXN5cy1jb250cm9sbGVyLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc29jL21pY3JvY2hpcC9taWNyb2NoaXAscG9sYXJmaXJlLXNv
Yy1zeXMtY29udHJvbGxlci55YW1sDQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi4yMjI1NTdmOTZhMTMNCj4+IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvbWljcm9jaGlwL21pY3JvY2hpcCxw
b2xhcmZpcmUtc29jLXN5cy1jb250cm9sbGVyLnlhbWwNCj4+IEBAIC0wLDAgKzEsMzYgQEANCj4+
ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVz
ZSkNCj4+ICslWUFNTCAxLjINCj4+ICstLS0NCj4+ICskaWQ6ICJodHRwOi8vZGV2aWNldHJlZS5v
cmcvc2NoZW1hcy9zb2MvbWljcm9jaGlwL21pY3JvY2hpcCxwb2xhcmZpcmUtc29jLXN5cy1jb250
cm9sbGVyLnlhbWwjIg0KPj4gKyRzY2hlbWE6ICJodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1z
Y2hlbWFzL2NvcmUueWFtbCMiDQo+PiArDQo+PiArdGl0bGU6IE1pY3JvY2hpcCBQb2xhckZpcmUg
U29DIChNUEZTKSBNU1MgKG1pY3JvcHJvY2Vzc29yIHN1YnN5c3RlbSkgc3lzdGVtIGNvbnRyb2xs
ZXINCj4+ICsNCj4+ICttYWludGFpbmVyczoNCj4+ICsgIC0gQ29ub3IgRG9vbGV5IDxjb25vci5k
b29sZXlAbWljcm9jaGlwLmNvbT4NCj4+ICsNCj4+ICtkZXNjcmlwdGlvbjogfA0KPj4gKyAgVGhl
IFBvbGFyRmlyZSBTb0Mgc3lzdGVtIGNvbnRyb2xsZXIgY2FuIGJlIGFjY2Vzc2VkIGFzIGEgbWFp
bGJveCBkZXZpY2UuDQo+PiArICBUaGlzIGRvY3VtZW50IGRlc2NyaWJlcyB0aGUgYmluZGluZ3Mg
Zm9yIHRoYXQgZGV2aWNlLg0KPj4gKw0KPj4gKw0KPj4gK3Byb3BlcnRpZXM6DQo+PiArDQo+PiAr
ICBhbGxPZjoNCj4+ICsgICAgLSAkcmVmOiAvc2NoZW1hcy9tYm94L21ib3gtY29uc3VtZXIueWFt
bCNwcm9wZXJ0aWVzDQo+IFRoaXMgZGVmaW5lcyBhIERUIHByb3BlcnR5ICdhbGxPZicuIFRoaXMg
d291bGQgbmVlZCB0byBiZSBhdCB0aGUgdG9wDQo+IGxldmVsIHdpdGggJ3Byb3BlcnRpZXMnIGRy
b3BwZWQuIEhvd2V2ZXIsIHlvdSBnZW5lcmFsbHkgZG9uJ3Qgd2FudCB0bw0KPiBpbmNsdWRlIGNv
bnN1bWVyIHNjaGVtYXMuIFlvdSBuZWVkIHRvIGRlZmluZSAnbWJveGVzJyBwcm9wZXJ0eSBoZXJl
DQo+IGJlY2F1c2UgeW91IG5lZWQgdG8gZGVmaW5lIGhvdyBtYW55IGFuZCB3aGF0IHRoZXkgYXJl
IGlmIG1vcmUgdGhhbiAxLg0KDQpJbiBhIHByZXZpb3VzIHZlcnNpb24gaSB3YXMgZGVmaW5pbmcg
aXQgbGlrZSB0aGUgYmVsb3csIGJ1dCB5b3UgZGlkbnQgbGlrZSB0aGUgcmVkZWZpbml0aW9uIG9m
IHRoZSBjb21tb24gcHJvcGVydHkuDQpJcyB0aGVyZSBzb21ldGhpbmcgaW4gYmV0d2VlbiB0aGUg
dHdvIHRoYXQgeW91IGFyZSBsb29raW5nIGZvcj8NCg0KwqAgbWJveGVzOg0KwqDCoMKgIG1heEl0
ZW1zOiAxDQrCoMKgwqAgZGVzY3JpcHRpb246IHwNCsKgwqDCoMKgwqAgcGhhbmRsZSBhbmQgaW5k
ZXggb2YgdGhlIG1haWxib3ggY29udHJvbGxlciBkZXZpY2Ugbm9kZS4NCg0KPg0KPiBXaGF0IGRv
ZXMgJ2NhbiBiZSBhY2Nlc3NlZCBhcyBhIG1haWxib3ggZGV2aWNlJyBtZWFuPyBJcyB0aGVyZSBh
bm90aGVyDQo+IHdheT8gSXMgaXQgYSBtYWlsYm94IGRldmljZSAocHJvdmlkZXIpPw0KdGhpcyBp
cyB0aGUgYmluZGluZ3MgZm9yIHRoZSBtYWlsYm94IGNsaWVudCwgaWxsIHJlcGhyYXNlIHRoZSBk
ZXNjcmlwdGlvbiBhbmQgbWFrZSBpdCBjbGVhcmVyLg0KPg0KPj4gKw0KPj4gKyAgY29tcGF0aWJs
ZToNCj4+ICsgICAgY29uc3Q6IG1pY3JvY2hpcCxwb2xhcmZpcmUtc29jLXN5cy1jb250cm9sbGVy
DQo+PiArDQo+PiArcmVxdWlyZWQ6DQo+PiArICAtIGNvbXBhdGlibGUNCj4+ICsgIC0gbWJveGVz
DQo+PiArDQo+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlDQo+PiArDQo+PiArZXhhbXBs
ZXM6DQo+PiArICAtIHwNCj4+ICsgICAgc3lzY29udHJvbGxlcjogc3lzY29udHJvbGxlciB7DQo+
PiArICAgICAgY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAscG9sYXJmaXJlLXNvYy1zeXMtY29udHJv
bGxlciI7DQo+PiArICAgICAgbWJveGVzID0gPCZtYm94IDA+Ow0KPj4gKyAgICB9Ow0KPj4gLS0N
Cj4+IDIuMTcuMQ0KPj4NCg0K
