Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A62B246B29A
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 06:48:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230448AbhLGFwV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 00:52:21 -0500
Received: from mail-tycjpn01on2119.outbound.protection.outlook.com ([40.107.114.119]:31394
        "EHLO JPN01-TYC-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S229487AbhLGFwU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 7 Dec 2021 00:52:20 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FTwwBZtoGFv8eDl7oNFrSOt9IB2sGAiZKjM/QZBDNji1lQl5ZpPCHlO3d+MPDLvlwce2KJ9GcfjMGF5hq+1J/mdfSOnpfBnL4OfETCxlMzsgbxg6mDkP+2zX2kVyoXrvLBr7hTztjNYWPsflMlI3QVi4IjwnSWcB4zwzB7t67gtUf0Kk4kAMVheIY6imT20bASCynvpbjG9GVRu73XLRAkhk5k4ncqzo635Hf+3dLw9m3xnrPHpgCArpmNw0HZ+DG9gtkuX9k0eaxFkSyDwpymXN5hFzdy4ItyncAsbwF/dkXDOcG4OlvMBJUXnATSZ6g0T+zBddlkM4NMkkl1CbSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cf3kyd8FdTQo92SFt2zWgtwMkWOR1fA5hsbJHxIHE24=;
 b=n0YC9zGdFn0xtOTXoXWMUgcYIX1AD51j/htHHNiMhSzCIO/PtjHzyuZVBQlh2qWMOoO/U0SNPBM3gvFV0Jl7LGe8igC7eytJItMqplkPqgir/0MlNjbva9RjZ+MXNdLstbey6f20k6iyz+ZPDIwtUG9jIVO6/gHB6kLSD9H3K0hA79gC6QsX4Xzq/w1sg3eIqnQOOiNPMA2g9ew7fYJOubvoXW/iUwKtznEL56bgpqjDUnO4BQtOF7luzJsmzsOwcOGBf3FHNpgQYrPKvngxCTPwFORRxrk6Y2rfrBtrroDol+EXgyugUF5kmpsoyfas01aQUqJ3pIKm22e0SwA2og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cf3kyd8FdTQo92SFt2zWgtwMkWOR1fA5hsbJHxIHE24=;
 b=NU7K4wHkaUla9rFz4x6t7L6dRdYNmJMGRYSZwbmGupqgst+x0VBArB34pd3BK0h2YR97zS6sS8c23PuMrlP7PFxHeoILmqEyDQqa/jVQdx9VY+OgY3XOGUBfYQvkmC2qKIFPHR5Ud/6egYbZAlaX+V+RQ0eeG/jRLhNo6ywkxwY=
Received: from TYCPR01MB5581.jpnprd01.prod.outlook.com (2603:1096:400:a::10)
 by TYCPR01MB5678.jpnprd01.prod.outlook.com (2603:1096:400:42::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16; Tue, 7 Dec
 2021 05:48:48 +0000
Received: from TYCPR01MB5581.jpnprd01.prod.outlook.com
 ([fe80::3d74:9c2e:e85a:df82]) by TYCPR01MB5581.jpnprd01.prod.outlook.com
 ([fe80::3d74:9c2e:e85a:df82%5]) with mapi id 15.20.4755.022; Tue, 7 Dec 2021
 05:48:48 +0000
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: How to indicate both flag/phandle for same property in devicetree
 yaml ?
Thread-Topic: How to indicate both flag/phandle for same property in
 devicetree yaml ?
Thread-Index: AdfrLfnQ/uwhyoOeSu2jU5kHNHccpg==
Date:   Tue, 7 Dec 2021 05:48:48 +0000
Message-ID: <TYCPR01MB55812348CE5E507748E7F1E2D46E9@TYCPR01MB5581.jpnprd01.prod.outlook.com>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f510325e-1ab4-42b5-49a9-08d9b9453d94
x-ms-traffictypediagnostic: TYCPR01MB5678:EE_
x-microsoft-antispam-prvs: <TYCPR01MB567803DCE248105427D68B08D46E9@TYCPR01MB5678.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2r5XVc9vb27xonMtvHi+b0WCKnb2O3xkOI12LUpREZbSpie4+F/2T1VX6J7WPd5Ufgw+QpnkRfCP4Jo1rMetB8oF4dzyB+zW0kty9Zqdanrb/BinwxN6FvuGwW4GJmwGYvymE3WswndxILT5jcyQb6Yj5eAz6RMDoeqWIUPkysgUywFzmt14JU+vu+rsEqtGrjNDFI9Gjgjbp7HLA0ef8+X+G6NiSrCl4ENYs8c1AVcsD5nTqGqJX1sAqQC6X9D0U6RxyaKcc/cj5gGj+Dm9y0N4PBiOeC8gMxRux0o/MmtXUFIyDhFHbK+Mz/b/rJE8bVOsMsyZXePuwlrENPHM07HnBZQbyYjI8VU3YmVRVdBPgyr7JUvqohyvb5ThSjDYOhWORI7xrL4s6MgIaHFFoAPtbYTwUY9ji9qPKnuhd+/XKWvjBFYqQR5WtFv9DKtrcUAA3d4uAkQxAzcXjOlZKDEZOvyA4cXSF1cZTBjuC8iLnh/1P9sUuBXdOZYHio578IfhSllHinqcDDBcNdGvqLd4zpAsko2JtwsS4MWQi8mT1rcTm3KgckEEzDbpdraFgR8/Cg0wJrS5W1lx2d3Wbq7ZSFZXtnTON1z5G30LRKjfmWSdjl+UH49q0lqqtHLh4CMEmXD/+v8g+OtI94IhicxhqFW2LVRUoykw/N3UgZCmR6tj4XkR6oRgdp9RjhNcVpvXy5o5l1msGKk1l91gHw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB5581.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66476007)(8936002)(2906002)(6506007)(66556008)(8676002)(66446008)(186003)(110136005)(71200400001)(316002)(66946007)(64756008)(76116006)(86362001)(38070700005)(52536014)(508600001)(26005)(9686003)(5660300002)(33656002)(55016003)(7696005)(83380400001)(122000001)(38100700002)(4744005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LrkN8UJBUm/1lh2uNY5SndzYY12DvslwTTH6ME4mw6vA8hpSwq1Sy8TS7LAk?=
 =?us-ascii?Q?IX0TYfQYz7sluWehwdeggHLC39vItEks4wj/a++hsg4KJeEfKi0B4QHnkqWJ?=
 =?us-ascii?Q?tWqFd1KklzU8nLWiAGykcPv7AkcN89rK9IWArDweOsET4eDOb4WvxZdgIUck?=
 =?us-ascii?Q?LYZEEuEDy08UW0gd+yhcydXswIax0S2DfghHdOQwBqP8fUwfEIzY+kOkrxok?=
 =?us-ascii?Q?hW0Kbws1vL67AvL9mXIV3ODMC+2Wp36QYcwjnPGMi3tFFronE8aHsw4bM/uV?=
 =?us-ascii?Q?b4cKyB+eiOyXIgDmBWg0gJxVU8FCIV0w4wwTa2Ro22gmeD8ibf9nlNDzWJv2?=
 =?us-ascii?Q?/q+7JXlLnlNne2R/nfVyvBZ2yFo91x8K8DmWX6ja7h814J8346tgxnZQTxd2?=
 =?us-ascii?Q?WQugeO1syyV4uYB+/3WbfvXVEzk/mgCCx9zGUnz3LeuyUfpj3TA2AQxwA5/C?=
 =?us-ascii?Q?RUoQHqD9kwPhFftN3vilLNEEhvtY2n1aygDIDknjnWivy/imvlbr/guvSx+i?=
 =?us-ascii?Q?6o0+886pBhJWad7HZgvHDvXj2iiP/rXZI3PNlCWcRSAZf4+Z5vaQqaALKRBc?=
 =?us-ascii?Q?LL7i/vjish6g3oM6pfvTP0Ta+ivBgSNMGlDLI7vfN50P0/pEriYdO6RcU3n7?=
 =?us-ascii?Q?wBNNIW19qz1cw0l+ldEW8xFZ+RD8zmJMHugx9bC7AQ2tSRAcJNW8YNX01FZw?=
 =?us-ascii?Q?xNO7BpZWqx3ViwPArQe29WpshZXfkerScCrPbKIzplMZOaoX1UChVrU88ptm?=
 =?us-ascii?Q?57yqd/hgO7lT8QyZmfesdTCt6nZonSqlKr3/KM6YGqr0uKNmZfkR4gFAhYwv?=
 =?us-ascii?Q?laLZyFE0uU+nAH60ptZoWurTq/4SUAl68OhQOKucL7LarfRHqnDADIU27/1D?=
 =?us-ascii?Q?3EUlw00HpjmlroSO2igaR4CKD6e9O/reODjzZ7QJSSznHOhQfRIVzmTTjYC3?=
 =?us-ascii?Q?TTES3LcLYUIxQlgsaJvfGS8hM9booFrriivFmWzAB8ak33MUwK2y7xXsOhHN?=
 =?us-ascii?Q?V1aTvCOt1n6RYva5bus/QXJagocUCamokJfylS3787nPCG5mh//wkj1spsiW?=
 =?us-ascii?Q?7zdVBIKq/jFR9ebGB+DKvm4XYSx/7fjPL44AtBzIr0TTx44Z+jZPsr6X7XY9?=
 =?us-ascii?Q?9qiwShAr0GS0h+5nqcfr089ZyFatnmBPW3C3abh3WOZPXBixlu5RzkgoiE9x?=
 =?us-ascii?Q?R/s7B3kkP7unXKAEUy/UoguLpk5cNBMyU73tiMBqduHkjM5pR4CHxAHYu3Lv?=
 =?us-ascii?Q?qXKs9zy/34VS3HxC7xHCTOhdanvoN0YtVg78HI2R4NwcvFcsjLAOouyP9he+?=
 =?us-ascii?Q?5MIauZZ9+d18D2/FRKZZ2G4H6MTnUkvDwQB11TU9RCUdBsf7s7w/XZM9mLj2?=
 =?us-ascii?Q?jTcAiRYP1nGlSTg6NAxzQvl+jDdEJm4MUMyPMNED41U2vX0trrheHZe54DON?=
 =?us-ascii?Q?GTGSO8avqFjMmie+10olJlbf8pyLNH89GJqoPkj+nTWZvzuzJyFqEytMhqDg?=
 =?us-ascii?Q?hRwNvMHBfyf/8EBaXE5D1dRO6FWecgBgEenDLAaEj+R4KXfKPprAuYCYrr/c?=
 =?us-ascii?Q?9Sh4xBjCA9N/lGP1JgW7yISBR5OLI522+gsw8Y0lDwq2dWwPL24mSdlA8j/6?=
 =?us-ascii?Q?Llz2U6XB4ZoTYc2jKO+SswnvaSGMfknhkMuUX4Dhdy+1X+21bYNq14eWAxfo?=
 =?us-ascii?Q?8R/B4Hry5KsuuX5lK3KQJr8pOLvlU5ZxisqVjLKDNIi8saw7IrBfk4fGZNQd?=
 =?us-ascii?Q?h83loPlVwg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB5581.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f510325e-1ab4-42b5-49a9-08d9b9453d94
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 05:48:48.5708
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KQE6GYqVfV/bpB8CGTtJok/WGoSRAobGCk4Y+stJdYN2QfhWjNhYB9vY10vccJ7QzwnjT8JWboEh4d9sMF1oNVYc+00l4HPs6oTfZ7RzycPZYegfzcrwZst1kzkNhf6n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB5678
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Rob, Frank
=20
I'm not familiar with DT yaml,
but how to enable both flag and phandle on same property ?

For example, bitclock-master can be both flag/phandle.

	// flag style.
	// This driver is provider if it has flag.
	// (No flag means consumer)
	bitclock-master;

	// phandle style.
	// specified driver is provider
	bitclock-master =3D <&xxxx>

I tried many yamls, but all case will be error.
How to incicate both flag/phandle in this case ?

bitclock-master:
  description: Indicates dai-link bit clock master
  $ref: /schemas/types.yaml#/definitions/phandle
  $ref: /schemas/types.yaml#/definitions/flag


Best regards
---
Kuninori Morimoto
