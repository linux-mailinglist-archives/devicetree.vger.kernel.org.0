Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 46657311A2D
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 04:33:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbhBFDdM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 22:33:12 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:32677 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231579AbhBFDbE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 22:31:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612582263; x=1644118263;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=9QtLbDHvjNLnLiWT5BnMow5+Cbmxq2WoQVcvZgy0LPM=;
  b=cxpa/qesgDm4tELGQPiyQTjlBBiLmwA2f8unRqYr2TAUNRKEj0euDkRj
   ViujZKCMRHLlVS6TJWIHI0Eh6DHn1f0S/bdMicW46lEAD/5m7QPNaL9im
   9UiAsvyu5RpbDY6d5T1R8WaacKhcjkX0+GFjOj6e5s2gBnn+0KcvzfZ0/
   NUss2NOXO7hLqmKXlxGrfmpU+7Z5TTQlfyr3cTpPraWBMfSqsrG0L2Ahz
   AOKo15AHoNABHRmiaTGtDDOyaeasv0DryAt5+6ouw8vS8Yap7nRoYA4bz
   AJTpm5W+5Ueg5NTIaor7QJfmHkHu77dZlXPKYwf5Te9uDrrEsFoXPmJkU
   w==;
IronPort-SDR: 5h2Gtk04RpuCSCPO7hgzReEmYIGfSh1kU24Ap6+klHjZcDYMre8gGJVQizZeC4Mh9zqsRJXIcg
 hmPUcFzlgqVM1xw7LXQu3BJGrPoiMh5//kd9etcb0XuMTmdKFCjbXrBB9mZ61dcUfvW3qh86VM
 CyvdN3cH4sOjqCvZl4G/QS2pLH2/cTR8DuerL0Q7GNO35LnWR88jdghKkRezT5rMtLpPSw3lt/
 Wg4RtADUYawKSd/m7rmL5at4minbDPzEhxo+ycSgjyBMMAOpobwfDJPP2xQwD9m+IBDKzp2o5j
 eng=
X-IronPort-AV: E=Sophos;i="5.81,156,1610380800"; 
   d="scan'208";a="159264311"
Received: from mail-mw2nam12lp2044.outbound.protection.outlook.com (HELO NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.44])
  by ob1.hgst.iphmx.com with ESMTP; 06 Feb 2021 08:13:34 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HpuUoepRJfSUKKpoPD9mN6dDjUYWOkqEO2Y0WLLeeQkuzs+0SGdQ2DWOt92kjHvzcr6Wh0EPeO6gAX0K0I5z5u17TIbjW+HPCGcwhFagXFshiA8xTIR+JbBzzTzAKD2YCDu4Bs3gpM1G1aigdXjipUyXc55GsW/w5Qr7g2jnvQMDxnyfTZ0uYAx/eERinUEMZQYZWFjJLoAv5d5m7dg9eCbamqXyMnjIwfzEweDxq/A9k1dkZ90yDqY5wPXinIgY5H+98eE0Bkad8dRFQ84JB+JPe6re63FGzNfjTi6znhanfTaHhp1Bo1GjCZOOvYVIgpeq148w6QUC2SV42nf+xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9QtLbDHvjNLnLiWT5BnMow5+Cbmxq2WoQVcvZgy0LPM=;
 b=Sv2xlb9gx4sIos44bwj0Rbrt/2JekCo0kF4GEg1iSXQKCSY7tiRfNEQt5+BTtjO6yYX2gM1pxt8PEzgNAR4S6gvYeweeyWM1ThQc/UVuNlgRNX0cATkFLITPHCpUek9Yypbv1DoWKxFOoAFQ5tNqs6d4pTaM/ANgO1Vww1dKPVVpbyaBf9I8aq83rPqTfGhhrsTQHccY/EPW5KCk/Jtpn2+dsk9jEwU3vPU5qMPqr4ivJYJ7AEtS9RvTfBjBJuJcRGS+EVdlLCLKna/EazGyz9HKxY/OSXBXEd68kseZD2OO16hoKPVFB+AukGo/sS+4z7ZWi5O+AiagqD8XDaLzWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9QtLbDHvjNLnLiWT5BnMow5+Cbmxq2WoQVcvZgy0LPM=;
 b=TwNeQgerhhfe9B2sokhM1lKeQid0uvb1IAjYANVgVG/w9olOdSiDMR/u+oWRt7TShQ8XTDCHI5NcgjP2f3MmVAkN6jB5F5910k1BCN00MwEFAGbuKgfkF+2MrfAx8PgfkDq3ltbtaKtvLzzm4V65tt5DtooE6604HFCuj3qHdQg=
Received: from BL0PR04MB6514.namprd04.prod.outlook.com (2603:10b6:208:1ca::23)
 by MN2PR04MB6669.namprd04.prod.outlook.com (2603:10b6:208:1e0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17; Sat, 6 Feb
 2021 00:13:33 +0000
Received: from BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d]) by BL0PR04MB6514.namprd04.prod.outlook.com
 ([fe80::b880:19d5:c7fe:329d%7]) with mapi id 15.20.3825.025; Sat, 6 Feb 2021
 00:13:33 +0000
From:   Damien Le Moal <Damien.LeMoal@wdc.com>
To:     "robh@kernel.org" <robh@kernel.org>
CC:     "palmer@dabbelt.com" <palmer@dabbelt.com>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        "seanga2@gmail.com" <seanga2@gmail.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Topic: [PATCH v16 09/16] riscv: Update Canaan Kendryte K210 device tree
Thread-Index: AQHW+4xeGC09t/jMzkSSVnIpB80beKpKAuGAgAA/1AA=
Date:   Sat, 6 Feb 2021 00:13:33 +0000
Message-ID: <aab05bea310fbdbac38990656647dd0fbf3c8323.camel@wdc.com>
References: <20210205065827.577285-1-damien.lemoal@wdc.com>
         <20210205065827.577285-10-damien.lemoal@wdc.com>
         <20210205202505.GA3625674@robh.at.kernel.org>
In-Reply-To: <20210205202505.GA3625674@robh.at.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.3 (3.38.3-1.fc33) 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [2400:2411:43c0:6000:8d3e:27aa:85c2:44b5]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6fd2c449-447a-499b-12a9-08d8ca340a83
x-ms-traffictypediagnostic: MN2PR04MB6669:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB66696BDC8C9F2BD88BBA2FAEE7B19@MN2PR04MB6669.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6aj4pRucFhw+m/LA7jYbIV4jVk85i+HX2shZaenx3QYUArK1UvEnjUQmADEcSiA9AEfcrh5FRny1iO2sd/sz9qINYKU+7LH6kYCOvy7fNYQVl8chNgFq0z+vvyse6QgSokhtLVFxNEFHlSJLAlaKN/jqbg5R9gAqoIJ74COJ067tAPC45eg4i3S0zqvubUaaAbctT28lmstblmifDLBsQ+AuvTxxCSIMQQ0b6FcVUvz+RwBUkQwgxHp98h/mjOP4zGOM0uQc6+GImoS8v8HrY8T9kkV8Ag/cLTehNvs2aKBpIuy4b5DdHXrUnWJisBtFrMtCz01GqwwfcEAwWPLAjWRy/fWlgbd71NsB9YAptTFnjNFtesYq+VpQSgX+YtoALsh6a8FhG9AqT6Iy0CrP0C+1LECFP9sQSSCjSBtu0rJ1QdDr9QoNpK5Lz0cDtxbTiZSRXxv6ieL3zkXpJ6x/Rf3o4vsECsXxhRv0O7SJuTjrWipwfwu5RM2YKCvHaW+XeiJFDj6/7L7GvrrEcV+0Hg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR04MB6514.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39830400003)(366004)(346002)(376002)(8936002)(66446008)(64756008)(66476007)(66556008)(5660300002)(4326008)(76116006)(91956017)(66946007)(83380400001)(6916009)(54906003)(2906002)(8676002)(36756003)(71200400001)(6506007)(6486002)(6512007)(508600001)(86362001)(186003)(2616005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZW1NcXBqM3lLRW1iQ28zT09aTnRRNWcyZ0NKRGpYZHlRWmJySTR2R3N4VFEw?=
 =?utf-8?B?N1dNd3F2OStweGNuR050OEprSHBhNW5LZmpXVU5XdFpCUDQwRk9oOENGR1B6?=
 =?utf-8?B?V2NIbm1IZ2hSbXB3b2Z6MWZza0ZSN1g5T2pRMlB3V0V6cm9XeWNFNEczNlRy?=
 =?utf-8?B?NTY0RXpmZWVRTW1GdHFTZ1pRSnUrYWxBcXM5cjZ0VGZ2L2xRZlRDb3ZaY2JY?=
 =?utf-8?B?MnJtS2E1ZlV3VzkxTWZlY2tGUDh2bk5vand4RUdHdWV3dm9UQVZxMUZ3L1Ja?=
 =?utf-8?B?aTV5L1F4UHoyMWpxQ3JSSjlIZGxETmxXZ2htMURmdlJvSXVOSTRzWHVobUxr?=
 =?utf-8?B?YVE5aXlQVnJkVUJFTk9oQ0xoMzA4OHNCU252a0E5RDdaRmdtQUk4YjgvNXRQ?=
 =?utf-8?B?ZXhpVjllVjBvNVFiZ0pPbmFuZU9uQkRUNTdRK21BRzNUK1VrMTcvbFZSU2lz?=
 =?utf-8?B?VFpCREtDQ014elRnenlTVEYyckRJMkVYUnFkeGJQVmsyK3JsMzZFK2dGYkpk?=
 =?utf-8?B?UzJ1cG4rUUtMck9XMTB4YmJJWFdQblhiV0tKM085TTdITHdSRmFqSFBZb2ph?=
 =?utf-8?B?WDhuZWdXc0JxSHBrb3hZVXdyeXhIZFhOZUw2eFhjYkZhWGtkb2FkUEVqKzRC?=
 =?utf-8?B?Z1FhOUN2L1NnY2hWSE9hbWlobHpnRzRjcjRYbWEyRnlTWDljd2NiK0E2TUl2?=
 =?utf-8?B?K0w5R0s0Tkt1cUxtcm5BRksxelM4WjRCZWgzYy8zcGxIazd5T080TlZCazVQ?=
 =?utf-8?B?N3pHdE8xQ0duMytEZnVRVldUK1dNVmNsazVKblVHWE5BNlJ3VGVwZjFIQytD?=
 =?utf-8?B?Q0lYb1FySjBqVVRUY2JqOWVUWGhhaHpLWFJaMXNzY0ZLQm1ORVJBK25KUlNv?=
 =?utf-8?B?a2tSamQ5QXo2bEJqK283TjBGNzhwTTRmRDJXK2lGaXFjcG5UMWVhQ3d4V1Mx?=
 =?utf-8?B?UHJia3dOaTFUdXRxVWU3QitTVi9DVVFaMGs4bkYyWTlMK1A0N0dXVHNOc2pS?=
 =?utf-8?B?QnhGQ25oY0VsVWErT1ZVTHRWRzNhOUpDd0ozazRtTE5KbktHSjY1bjM0YWhJ?=
 =?utf-8?B?Si9aN0huTnBrVEFzbVZYMUxpeW1CczVrOWtNSEZncysyOEUrWDMxZStUbVZn?=
 =?utf-8?B?N1dVVnNrVWs4eGh4MitWT3liQ2RMSjR5T3VRV1k3SHdlSEIwbXNTRjVNS2s5?=
 =?utf-8?B?dktLQTRjMDg5dmR2NjFhdEhUNXhJdGZYb2tTL1M1QkloRitRM1pCYnBpRWZp?=
 =?utf-8?B?QkZPc2J3Mk5HQW0reGlEanE5dEdaYUlBZFg1YjdScTJmSG94R253NDlyOGQ1?=
 =?utf-8?B?cGN1bmNiekc0c2t1T2xUcVF2SzJLUnVrVE03UDJ0NnJBWmIzV3p6YU9ZbEZv?=
 =?utf-8?B?bWhBS3ErUFA4VmdvUmhzaVk2TWY2TVN4ZkwwQ09LMnEvRnZoMEhSenQ0eVdH?=
 =?utf-8?B?SVAvVFloVlhnWnZOY3BUK2JYOGdKRnlEUU5GSWFRRjVxWlJyR1dxL2RmMDR1?=
 =?utf-8?B?STdTS2pJQk5CbE1TWVNIZ2hXc1ZiOVRuNjA4eWJjQmQrMmhoYTllZEJOY2ZC?=
 =?utf-8?B?VUV4UWtxelhLeStsOWVHVlRUcGVobTZCY3FSdFQvMHhRMnZHdjgxM3dmR0po?=
 =?utf-8?B?cmxITGgza2N5Wmw4ZTFaVVJ0Vit5RUlzRTF2OEhuYXNURTdrR1crNFJ2VHkr?=
 =?utf-8?B?bmdzb0QwUWdvTjJJOWNYTEdQa0VaYlNpeXR0SUlCWlNNaSsxVFZJOUROWUll?=
 =?utf-8?B?K21leFNQK1M0SUJvMHZjeGpnMGJOZThROUtvTFJDdmtFYml1N2QrVnp1Y2d3?=
 =?utf-8?B?OHZOZVBsVXFnL2dDUjNWT2FVYU9MWEl2Tm16SmlMaU1PZU9RMER2TU15eVkv?=
 =?utf-8?B?Z1FHSGhhZVU3b0dzVTZOTkZSWlFoeGdiVmJGWnVoVjA4V3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F684ADD56524954B9CA435F6D61388EF@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR04MB6514.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fd2c449-447a-499b-12a9-08d8ca340a83
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2021 00:13:33.5640
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3D5vFw28cJUNRCMC81yOPeR1q8u2FJ5eDxsJpH/VVlKo4jTZVLa8Al3UiQINdfYAKXj4WFyPgxYX+PnVXm6InQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6669
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gRnJpLCAyMDIxLTAyLTA1IGF0IDE0OjI1IC0wNjAwLCBSb2IgSGVycmluZyB3cm90ZToNClsu
Li5dDQo+ID4gKwkJCW90cDA6IG52bWVtQDUwNDIwMDAwIHsNCj4gPiArCQkJCSNhZGRyZXNzLWNl
bGxzID0gPDE+Ow0KPiA+ICsJCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ID4gKwkJCQljb21wYXRp
YmxlID0gImNhbmFhbixrMjEwLW90cCI7DQo+ID4gKwkJCQlyZWcgPSA8MHg1MDQyMDAwMCAweDEw
MD4sDQo+ID4gKwkJCQkgICAgICA8MHg4ODAwMDAwMCAweDIwMDAwPjsNCj4gPiArCQkJCXJlZy1u
YW1lcyA9ICJyZWciLCAibWVtIjsNCj4gPiArCQkJCWNsb2NrcyA9IDwmc3lzY2xrIEsyMTBfQ0xL
X1JPTT47DQo+ID4gKwkJCQlyZXNldHMgPSA8JnN5c3JzdCBLMjEwX1JTVF9ST00+Ow0KPiA+ICsJ
CQkJcmVhZC1vbmx5Ow0KPiA+ICsJCQkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4gDQo+IFlvdXIg
ZGlzYWJsZWQgbm9kZXMgc2VlbSBhIGJpdCBleGNlc3NpdmUuIEEgZGV2aWNlIHNob3VsZCByZWFs
bHkgb25seSBiZSANCj4gZGlzYWJsZWQgaWYgaXQncyBhIGJvYXJkIGxldmVsIGRlY2lzaW9uIHRv
IHVzZSBvciBub3QuIEknZCBhc3N1bWUgdGhlIA0KPiBPVFAgaXMgYWx3YXlzIHRoZXJlIGFuZCB1
c2FibGUuDQoNClBsZWFzZSBzZWUgYmVsb3cuDQoNCj4gDQo+ID4gKw0KPiA+ICsJCQkJLyogQm9v
dGxvYWRlciAqLw0KPiA+ICsJCQkJZmlybXdhcmVAMDAwMDAgew0KPiANCj4gRHJvcCBsZWFkaW5n
IDBzLg0KPiANCj4gSXMgdGhpcyBtZW1vcnkgbWFwcGVkPyBJZiBzbywgeW91IGFyZSBtaXNzaW5n
ICdyYW5nZXMnIGluIHRoZSBwYXJlbnQgdG8gDQo+IG1ha2UgaXQgdHJhbnNsYXRlYWJsZS4NCj4g
DQo+ID4gKwkJCQkJcmVnID0gPDB4MDAwMDAgMHhDMjAwPjsNCj4gPiArCQkJCX07DQo+ID4gKw0K
PiA+ICsJCQkJLyoNCj4gPiArCQkJCSAqIGNvbmZpZyBzdHJpbmcgYXMgZGVzY3JpYmVkIGluIFJJ
U0MtVg0KPiA+ICsJCQkJICogcHJpdmlsZWdlZCBzcGVjIDEuOQ0KPiA+ICsJCQkJICovDQo+ID4g
KwkJCQljb25maWctMS05QDFjMDAwIHsNCj4gPiArCQkJCQlyZWcgPSA8MHgxQzAwMCAweDEwMDA+
Ow0KPiA+ICsJCQkJfTsNCj4gPiArDQo+ID4gKwkJCQkvKg0KPiA+ICsJCQkJICogRGV2aWNlIHRy
ZWUgY29udGFpbmluZyBvbmx5IHJlZ2lzdGVycywNCj4gPiArCQkJCSAqIGludGVycnVwdHMsIGFu
ZCBjcHVzDQo+ID4gKwkJCQkgKi8NCj4gPiArCQkJCWZkdEAxZDAwMCB7DQo+ID4gKwkJCQkJcmVn
ID0gPDB4MUQwMDAgMHgyMDAwPjsNCj4gPiArCQkJCX07DQo+ID4gKw0KPiA+ICsJCQkJLyogQ1BV
L1JPTSBjcmVkaXRzICovDQo+ID4gKwkJCQljcmVkaXRzQDFmMDAwIHsNCj4gPiArCQkJCQlyZWcg
PSA8MHgxRjAwMCAweDEwMDA+Ow0KPiA+ICsJCQkJfTsNCj4gPiArCQkJfTsNCj4gPiArDQo+ID4g
KwkJCWR2cDA6IGNhbWVyYUA1MDQzMDAwMCB7DQo+ID4gKwkJCQljb21wYXRpYmxlID0gImNhbmFh
bixrMjEwLWR2cCI7DQo+IA0KPiBObyBkb2N1bWVudGVkLiBTZWVtcyB0byBiZSBzZXZlcmFsIG9m
IHRoZW0uDQoNClRoZXJlIGFyZSBubyBMaW51eCBkcml2ZXJzIGZvciB0aGVzZSB1bmRvY3VtZW50
ZWQgbm9kZXMuIFRoYXQgaXMgd2h5IEkgZGlkIG5vdA0KYWRkIGFueSBkb2N1bWVudGF0aW9uLiBt
YWtlIGR0YnNfY2hlY2sgZG9lcyBub3QgY29tcGxhaW4gYWJvdXQgdGhhdCBhcyBsb25nIGFzDQp0
aGUgbm9kZXMgYXJlIG1hcmtlZCBkaXNhYmxlZC4gSSBrZXB0IHRoZXNlIG5vZGVzIHRvIGhhdmUg
dGhlIERUUyBpbiBzeW5jIHdpdGgNClUtQm9vdCB3aGljaCBoYXMgdGhlbS4gS2VlcGluZyB0aGVt
IGFsc28gY3JlYXRlcyBkb2N1bWVudGF0aW9uIGZvciB0aGUgU29DDQpzaW5jZSB0aGlzIGRldmlj
ZSB0cmVlIGlzIG1vcmUgZGV0YWlsZWQgdGhhbiB0aGUgU29DIHNwZWNzaGVldC4uLg0KDQpJIHJl
bW92ZWQgInN0YXR1cyA9IGRpc2FibGVkOyIgZnJvbSBhbGwgbm9kZXMgdGhhdCBoYXZlIGEgTGlu
dXggZHJpdmVyIGFuZCBrZXB0DQppdCBmb3IgYWxsIG5vZGVzIHRoYXQgZG9uJ3QgaGF2ZSBvbmUu
DQoNCg0KDQotLSANCkRhbWllbiBMZSBNb2FsDQpXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gNCg0K
