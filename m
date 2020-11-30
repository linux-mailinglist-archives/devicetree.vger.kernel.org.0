Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD7B62C84F4
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 14:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726082AbgK3NST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 08:18:19 -0500
Received: from esa1.microchip.iphmx.com ([68.232.147.91]:4840 "EHLO
        esa1.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726041AbgK3NSS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 08:18:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1606742297; x=1638278297;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=BoVnVpP5SVGmOeo9GGU5ax7rd1jbk81yMBmlN/9ZIvE=;
  b=Ha+4YnkAmwN8qt/3sy7POC+LwroHUzs6fozzNdl+9bDVHJbsvlMUN5ca
   CMzoO6cR2uUFHSuk8vpT5qbMzqJkTrjVM1MR5yihXmVBef4r+XF4ZRy9y
   01UKzd2xGXQsm0fcnzrfBNx72ico6jViWVeu9qg7jCwzGAPk+VYGnWAqR
   M8N/YySTXlFb6f0oyX2DzUjath6dLW/5cy9V02OA7xadeN76dNHleYa85
   iksKjKXzYhaH2k/8yML3SGfqMxu/ouO4xMW43u35g2UYKnIclu8/Abd3S
   BJ/Tdyhy6mQDg6BsLia27b4a02ue4dPZVA6wXiJKAKyommSHmFQwUd1OA
   Q==;
IronPort-SDR: NjqX59UsmBIg1VjsMhciqN5zTBEs3HwnATxOy2GighZCOp13FTA17XXhJRggkuORmcxEihNpFv
 l2eNxSXusJBxg6dICkC3f3rtJZn9jzjKpLlDddFuBxGLcSBptZIZbuWv3Sof9wxf/fcXJKP2CF
 9/YMjrKM+Aji1jQbhpNqkvbUuB8OAvx+iRYw2Bz2PcJRw2xNP4S+2k0JRkcSHQz/CEKmbNkDmu
 pscbjHOYzFzLgaLIwSPyQ/kzjxPPwAGhtapQDt8tlGJG7qz7vt3ZsK5eWohPsSpmtlVe4/8Ooi
 trU=
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; 
   d="scan'208";a="105468636"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 30 Nov 2020 06:17:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 30 Nov 2020 06:17:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Mon, 30 Nov 2020 06:17:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OvfihjAIg0BbVYiiAyLl1pOuhzoa9LfEPIpKDJWvGtwiLqTe26q+dzrkQNmf977rRTsA7C5esEOGsbva1H69e59l4PLpUEg+4jyXxAoTUGb0I6lIBuBbBI4iYt4T1FrpYe2LWVAl/xupZA3i7xYJsslO/xTC45BLVOTOXIHJ9ueSNqsTwxrCd1bMOob/GijwNXGNbQPEwQzPGl3j9T97cYgt04FdaQ+PnHk5Wq0GBxUqa8UHRb+t5w5ui9onDo+TcOeF4tWA83qG7zth3aXUQF4CLJCBNtIwhx860im48N+Aa8r0fwLCsJL8UNdTe9Y5+4IqUYoBTCWoH9wQNIUjQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BoVnVpP5SVGmOeo9GGU5ax7rd1jbk81yMBmlN/9ZIvE=;
 b=hJNYZ1nYJ0skMjj59dGVIiYkgh4RDiClmGp6jCV+KYIO2rH0aOm6erPQ2N/C85TBjPfD+Fh38N56woZmdKjqgLHBeaC/sGyHJhGE+1ph1t9+uqegt9N4J+iubzyl94MIRq4P7Rjr/IeZuZ9iL1CGZA0Rhe8lOPpAD8Opn9aelhfrzL6E4RrLdpmgt8tE1ZHbT7rEJ7F1/cm5pGn9jqHEjfezCl9rbiqwPXtvTjsK+lDkCIXETiTDss34xY6blC6Vy3OhLDtpVPSxNTOHwPwtljjPnDUdugZWGoEsY5cAlV5Y9bDuyvSdaXMPMNNQe5x1q6vQ3BilzdkTipJBFoDG7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BoVnVpP5SVGmOeo9GGU5ax7rd1jbk81yMBmlN/9ZIvE=;
 b=ISiM7dpKeMtqPuPZMGFUp+u0sPj181JwTrGyD6gTZSiVvK7Nbi2zuHPAlYORvX/NPqwNMGpZsgVtfvEVZuq0VNgViKDk2tCFysG+BSQKWGYVxAOHZzHkFWTol74KO3vutTOPwAES1zIPBFfgpDizvHSiSUPnVGyRsw2jiyqoaRU=
Received: from MWHPR11MB1247.namprd11.prod.outlook.com (2603:10b6:300:2a::11)
 by MWHPR1101MB2094.namprd11.prod.outlook.com (2603:10b6:301:4e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.22; Mon, 30 Nov
 2020 13:17:05 +0000
Received: from MWHPR11MB1247.namprd11.prod.outlook.com
 ([fe80::8073:14fc:edb1:4c78]) by MWHPR11MB1247.namprd11.prod.outlook.com
 ([fe80::8073:14fc:edb1:4c78%4]) with mapi id 15.20.3611.025; Mon, 30 Nov 2020
 13:17:05 +0000
From:   <Conor.Dooley@microchip.com>
To:     <Damien.LeMoal@wdc.com>, <robh+dt@kernel.org>,
        <jassisinghbrar@gmail.com>, <aou@eecs.berkeley.edu>,
        <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
CC:     <Cyril.Jean@microchip.com>, <david.abdurachmanov@gmail.com>,
        <Daire.McNamara@microchip.com>, <Anup.Patel@wdc.com>,
        <Atish.Patra@wdc.com>, <Lewis.Hanly@microchip.com>
Subject: Re: [PATCH 3/6] dt-bindings: add bindings for polarfire soc mailbox
Thread-Topic: [PATCH 3/6] dt-bindings: add bindings for polarfire soc mailbox
Thread-Index: AQHWvpYmzf/iqbxifkGhZlQXpkWFUKnguQQA
Date:   Mon, 30 Nov 2020 13:17:05 +0000
Message-ID: <6618812d-fd10-8935-03b2-75165460840b@microchip.com>
References: <20201119170432.18447-1-conor.dooley@microchip.com>
 <BL0PR04MB6514991EB7AC9B0139BEF513E7FF0@BL0PR04MB6514.namprd04.prod.outlook.com>
In-Reply-To: <BL0PR04MB6514991EB7AC9B0139BEF513E7FF0@BL0PR04MB6514.namprd04.prod.outlook.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
authentication-results: wdc.com; dkim=none (message not signed)
 header.d=none;wdc.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [89.204.252.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 33d35c9e-f360-42e5-5fd2-08d895323b8a
x-ms-traffictypediagnostic: MWHPR1101MB2094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2094231E92DFEAD6BE1EEBFF98F50@MWHPR1101MB2094.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xfv970qtzs9yqKcjrA20LMiNiItj4u4+wDjTA8+8msxyLZqn59FH0DXB5a1ATOZiZWSF12Vtej6HdXjxNc4rXLaCQaNMzQLPEoQUbKc5gDdVLlQV5kW1nywMQYUoa28evsYU/2aXL9o8OSGpa2LCzc015Srn8SlL6o1iElb0eFCZEWB6rBQtQq3wmfF5qGF/YE+XXe4mTtwk8krmikQi4sPoLooHPgVEz5GIaF3ZnJKUMnkC0YZo7nJn52veSkQUjuho7tev0F3DMgSZ7YvJdiGVvD0hb115xMp9C4eX/JbSyQ53EHLSdBl5CbDvKZIZhkUJWjFUn+pKBUvVxbzK/Jgzb/o+oTMUQue4DaxDaMTg60761II+SMWvaGwN0QGTjOngAA9jvRsQv6eK+L/DqPh7bkwdCirnVBcomTgD8gIFCG1aNgrnLpeD8BWrH0ilGlXMgnKIRGIUP+dWwjc7Qw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR11MB1247.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(376002)(396003)(39860400002)(136003)(346002)(71200400001)(8936002)(53546011)(316002)(31696002)(2616005)(83380400001)(6506007)(478600001)(8676002)(5660300002)(66476007)(6512007)(107886003)(66946007)(64756008)(186003)(31686004)(86362001)(7416002)(76116006)(4326008)(36756003)(15650500001)(26005)(54906003)(6486002)(66446008)(2906002)(66556008)(110136005)(91956017)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?UjJXNXNSZE04cTJXb09uQWlob0lyUXZ2b3dMNjdUNDRzRGhQZUNLdnN2eHhH?=
 =?utf-8?B?eTNPZjNqWjNVWnBVL3ZPQmx5NXR3NG9KcU1RM0tUR29QOGE1eldTakI0UDg0?=
 =?utf-8?B?TlpkQW9XcWY2VFBIYUg4SCtZTmdDa21OV0U1dTkwcStaUWJubGF0WUVFVkhX?=
 =?utf-8?B?ZmZQb002blpraENaVzRoeTkzMGVKWFcrVHZGU2M1emNVWkJjZUhqMlRzK003?=
 =?utf-8?B?b1JkVVpYVE9aNXB4d0tiM1ROYkNqRDROZTR3Q29MdHVGOFcyQ21OZUhGa1NX?=
 =?utf-8?B?L0FTaUY5WjdtWVRVVm9JbG1ZT3ZzTm9KUnlvZzZjRVlUaWpSZjJUOHVuK3B3?=
 =?utf-8?B?RFlhTVQxeC91UVQxRVZ3N3c0WWpjWGFYMDFZa0RQazZ5UTNRbWJjZ1JjOEg3?=
 =?utf-8?B?VnVqTjB0d1BPY3ZrNUhXckVaeVhHUWYrYWZSUEFDRUtHOGM2Z1I4MVBoVThi?=
 =?utf-8?B?S0ZLSmhLKzFjSUZpVzlrc0c1cXM4U3AzYjJXQXF2U3c3cHMwcVRjeHFUd0pR?=
 =?utf-8?B?cnIzQlVtQVd4VzNjUkdXVDdxOUp1MC83TUkvaFA0dzNTeVVadm1QTGxFZU1E?=
 =?utf-8?B?Q1VudUJiMmxEdmx6RE1zcnZ5TzhmWmxYMG53VW9QM3dQckV1cy9ZblYzT3RQ?=
 =?utf-8?B?RjVUb1pTSW5IbnExTVJpbEZXek1tbS8rTllkVWxPZnl1M1IrV3lBdXdMeWNQ?=
 =?utf-8?B?Z3NVcVNNZ0M5ZmJmRTdHRmdSUWtqSzdhSHVUWXpZanU5RFdFc01CNHBlVk1l?=
 =?utf-8?B?ZERxUTZkeXRaejJMQXJTVTBwZmRNVDdBL1F4UytreUs2VWZlRDFyS1lIeGJl?=
 =?utf-8?B?clhuaERPQXNJZWxmUnVGMmZmQWFsZjduWm9Ed3RobTg1Mk5DQkpYekFiVy94?=
 =?utf-8?B?NStBcnc5MnpaZ0VBSnlXYzdSZnVmWk5wMnhuNmJNVnh0OXAxWWV3QWpkbDU5?=
 =?utf-8?B?ODBhMFdsbnMvbHZXWHVWL1FxcU9QaE9Yb3ZxVGxob2UyTG96K2Frem42NkI2?=
 =?utf-8?B?ejE4RHNoSUhYOHZneDFqOGlmZXFidnZqbS9YWmtzdFNNT2NlWUNDbzFkMlpV?=
 =?utf-8?B?Ylo2U1htaTJNdEpRTXNOckZiUERYZjRxMXhRZTFEVmQ2Z0dOVjRuc0pFRmpM?=
 =?utf-8?B?OWNoa2NSeDhKOG9mL0V5VFZKZTdHZG9jTXNMcDUrdThuaGRyekFCS2NqOUhh?=
 =?utf-8?B?VUI4dHFvQnNYSmtMZ3g0VUFyVG5UNFJuZ3FnYVpQakI4c2dlNFNNOU5OYVZw?=
 =?utf-8?B?NCt5V0w4SUhOT0s3ZkZxbDMxQmRMUVpWSTViRzV3L3MzN05rQWhiK0g2Yi90?=
 =?utf-8?Q?mhvPjzpwe0t04=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FC71195A31CF254395A0C5D6FF5D7740@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1247.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33d35c9e-f360-42e5-5fd2-08d895323b8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2020 13:17:05.1753
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b3TJqi/W/r3p6hPtG0wDUGKCpxx2msKrN9+WevIJb5ay2JiJ0haE0T8EG19tD5hdd8tYAx5lfyLTiGaL9+SuCrmwVyKVFEAnh5Zq0lw+myU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2094
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

T24gMjAvMTEvMjAyMCAwMDoxNCwgRGFtaWVuIExlIE1vYWwgd3JvdGU6DQo+IEVYVEVSTkFMIEVN
QUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IGtu
b3cgdGhlIGNvbnRlbnQgaXMgc2FmZQ0KPg0KPiBPbiAyMDIwLzExLzIwIDI6MDUsIGNvbm9yLmRv
b2xleUBtaWNyb2NoaXAuY29tIHdyb3RlOg0KPj4gRnJvbTogQ29ub3IgRG9vbGV5IDxjb25vci5k
b29sZXlAbWljcm9jaGlwLmNvbT4NCj4+DQo+PiBBZGQgZGV2aWNlIHRyZWUgYmluZGluZ3MgZm9y
IHRoZSBNU1Mgc3lzdGVtIGNvbnRyb2xsZXIgbWFpbGJveCBvbg0KPj4gdGhlIE1pY3JvY2hpcCBQ
b2xhckZpcmUgU29DLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IENvbm9yIERvb2xleSA8Y29ub3Iu
ZG9vbGV5QG1pY3JvY2hpcC5jb20+DQo+PiAtLS0NCj4+ICAuLi4vbWFpbGJveC9taWNyb2NoaXAs
bXBmcy1tYWlsYm94LnlhbWwgICAgICAgfCA0NiArKysrKysrKysrKysrKysrKysrDQo+PiAgMSBm
aWxlIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKykNCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21haWxib3gvbWljcm9jaGlwLG1wZnMtbWFp
bGJveC55YW1sDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tYWlsYm94L21pY3JvY2hpcCxtcGZzLW1haWxib3gueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tYWlsYm94L21pY3JvY2hpcCxtcGZzLW1haWxib3gueWFt
bA0KPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNWQ2Y2Nh
YTEzZGMyDQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWFpbGJveC9taWNyb2NoaXAsbXBmcy1tYWlsYm94LnlhbWwNCj4+IEBAIC0w
LDAgKzEsNDYgQEANCj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5
IE9SIEJTRC0yLUNsYXVzZSkNCj4+ICslWUFNTCAxLjINCj4+ICstLS0NCj4+ICskaWQ6ICJodHRw
Oi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9tYWlsYm94L21pY3JvY2hpcCxtcGZzLW1haWxib3gu
eWFtbCMiDQo+PiArJHNjaGVtYTogImh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMv
Y29yZS55YW1sIyINCj4+ICsNCj4+ICt0aXRsZTogTWljcm9jaGlwIE1QRlMgbXNzIG1haWxib3gg
Y29udHJvbGxlcg0KPj4gKw0KPj4gK21haW50YWluZXJzOg0KPj4gKyAgLSBDb25vciBEb29sZXkg
PGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPg0KPj4gKw0KPj4gK3Byb3BlcnRpZXM6DQo+PiAr
ICBjb21wYXRpYmxlOg0KPj4gKyAgICBjb25zdDogbWljcm9jaGlwLHBvbGFyZmlyZS1zb2MtbWFp
bGJveCAjIFBvbGFyRmlyZQ0KPj4gKw0KPj4gKyAgcmVnOg0KPj4gKyAgICBpdGVtczoNCj4+ICsg
ICAgICAtIGRlc2NyaXB0aW9uOiBtYWlsYm94IGRhdGEgcmVnaXN0ZXJzDQo+PiArICAgICAgLSBk
ZXNjcmlwdGlvbjogbWFpbGJveCBpbnQgcmVnaXN0ZXJzDQo+PiArICAgIG1heEl0ZW1zOiAyDQo+
PiArDQo+PiArICBpbnRlcnJ1cHRzOg0KPj4gKyAgICBtYXhJdGVtczogMQ0KPj4gKw0KPj4gKyAg
IiNtYm94LWNlbGxzIjoNCj4+ICsgICAgY29uc3Q6IDENCj4+ICsNCj4+ICtyZXF1aXJlZDoNCj4+
ICsgIC0gY29tcGF0aWJsZQ0KPj4gKyAgLSByZWcNCj4+ICsgIC0gaW50ZXJydXB0LXBhcmVudA0K
PiBUaGlzIG9uZSBpcyBub3QgbGlzdGVkIGFzIGEgcHJvcGVydHkgYWJvdmUuDQo+IERpZCB5b3Ug
cnVuICJtYWtlIGR0X2JpbmRpbmdfY2hlY2siID8NCkkgZGlkLCBjYXVzZXMgYSBmYWlsIGlmIGl0
IGlzIGxpc3RlZCBhcyBhIHByb3BlcnR5LiBJJ20gZ29pbmcgdG8gcmVtb3ZlIGl0IGVudGlyZWx5
IGluIFYyLg0KPj4gKyAgLSBpbnRlcnJ1cHRzDQo+PiArICAtICIjbWJveC1jZWxscyINCj4+ICsN
Cj4+ICt1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlDQo+PiArYWRkaXRpb25hbFByb3BlcnRp
ZXM6IGZhbHNlDQo+PiArDQo+PiArZXhhbXBsZXM6DQo+PiArICAtIHwNCj4+ICsgICAgbWFpbGJv
eEAzNzAyMDAwMCB7DQo+PiArICAgICAgY29tcGF0aWJsZSA9ICJtaWNyb2NoaXAscG9sYXJmaXJl
LXNvYy1tYWlsYm94IjsNCj4+ICsgICAgICByZWcgPSA8MHgwIDB4MzcwMjAwMDAgMHgwIDB4MTAw
MD4sIDwweDAgMHgyMDAwMzE4YyAweDAgMHg0MD47DQo+PiArICAgICAgaW50ZXJydXB0LXBhcmVu
dCA9IDwmTDE+Ow0KPj4gKyAgICAgIGludGVycnVwdHMgPSA8OTY+Ow0KPj4gKyAgICAgICNtYm94
LWNlbGxzID0gPDE+Ow0KPj4gKyAgICB9Ow0KPj4NCj4NCj4gLS0NCj4gRGFtaWVuIExlIE1vYWwN
Cj4gV2VzdGVybiBEaWdpdGFsIFJlc2VhcmNoDQoNCg0K
