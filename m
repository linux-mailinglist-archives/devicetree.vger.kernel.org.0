Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F160C28D014
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 16:19:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729260AbgJMOTY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 10:19:24 -0400
Received: from mail-eopbgr140087.outbound.protection.outlook.com ([40.107.14.87]:7137
        "EHLO EUR01-VE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726953AbgJMOTX (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 13 Oct 2020 10:19:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgnPO1Ao02cgfEOXQuot1o5I6xyqSV+DW3Ypjxe9KIEgcPfgQXvcw6VVACjcle5acMXq9i3M44jpXFXV5xLhN0A64bDT2BCSO12DLkrrGQcWA1kIkyfUp0gpd6ogNS5jL8L8P3YuJciLtTShsi8f9XhNXDeqFy0ck68T7ObUzEzYKK1zSKN117jB8xodennJVNWZZlRiIBx4a73D0oKlb4FUIR6lYUYkpr0DfgsKZK4SX+Rt2SiBRaFtgupClI1oeV2p//ByJPQ0PyMZimOej5268ZvjOcVKVZqJkf3nQjFYgr7PxtIjvSfED+l4LhakVP6J3bfMsVUYBOteCkOvrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wYREMpds9pkXIf22L+GTiLcUVncxSEiGOKJgzvxfaRo=;
 b=bUKlt4YKbZC+lNxxP8rGbvDeX4OFpuH/4FWLYA9d0aWtBGIFVWQnj8ADOmTgC3HECUETpW1OEgBXZHNYwM707LkNr9LY9h8KSqONB7bGJfwQT08yQzoloeQZrbh+kp7wClGXKn0NuZoo/FzeQ4pb7AQ8LPUgjUdanCAny7LkBa98gwx+2u2xYpaQ+LvVDn+S4sVeQZtrRprAKejz1Dc5MFNzuJ6bTEwAv7p8uUVL3xMplZPfmBUZ/K+en3gBAqjHxoxpFUamsnkCxZV//ZogqCyNlFIwxC/ELzLKHTldDiJsgA9bIRj50Py6XApAfKphYAQ7YV9dSmXbrsrklX/yjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wYREMpds9pkXIf22L+GTiLcUVncxSEiGOKJgzvxfaRo=;
 b=ba5e4QjozsKTHNSKlzK0g6NNK1EVXogTblfdpwx/5a6Bw7RfIzwEpuXjdwl6k4prDcQScApjQfqqUHZ11m0phrdoG81kCPZM9SS5CF0BmnCILpRBOHQqegGaJ9SBAhZBrhItUDxuVkox9YDp0ZFuzWWegIIIrFK7jmNCvBHxPjs=
Received: from VI1PR0402MB3871.eurprd04.prod.outlook.com
 (2603:10a6:803:16::14) by VI1PR04MB4128.eurprd04.prod.outlook.com
 (2603:10a6:803:45::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Tue, 13 Oct
 2020 14:19:20 +0000
Received: from VI1PR0402MB3871.eurprd04.prod.outlook.com
 ([fe80::607d:cbc4:9191:b324]) by VI1PR0402MB3871.eurprd04.prod.outlook.com
 ([fe80::607d:cbc4:9191:b324%5]) with mapi id 15.20.3455.030; Tue, 13 Oct 2020
 14:19:20 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     Rob Herring <robh@kernel.org>
CC:     Leo Li <leoyang.li@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 01/11] dt-bindings: net: add the DPAA2 MAC DTS
 definition
Thread-Topic: [PATCH v3 01/11] dt-bindings: net: add the DPAA2 MAC DTS
 definition
Thread-Index: AQHWnOoCtr3hTSux8kW/8mxzWP3LvamVkH8AgAANWQA=
Date:   Tue, 13 Oct 2020 14:19:20 +0000
Message-ID: <20201013141918.vulibck3yf2ghlj4@skbuf>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
 <20201007203936.23953-2-ioana.ciornei@nxp.com>
 <20201013133132.GA3381736@bogus>
In-Reply-To: <20201013133132.GA3381736@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [188.26.174.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 81144153-f62a-4d82-95d3-08d86f82fa42
x-ms-traffictypediagnostic: VI1PR04MB4128:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4128B52EB582F43ADCDCE555E0040@VI1PR04MB4128.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d6i0bYpgBISjfqWekgf+qwTAfVuDCLZxy5gH7SDWeuxlXi4R/ahMoJsX9L2eRQjBgLNqGw3qKJwPLB6ZgqBNjM1byO4MqkeWpnafo0f+VLqEZt4757sbFEqpjW0fAtCVuyVmtmzt2TJTxZQmMrYlMFYyO2Mux3Gt+kIXCoxHwQAotksazUA+Oesall3RQxd9JJ+2OEs/U7QpE+M1Rejr0Xk3MGrLWzuFVAMLEdERyPLjw3SyAoTcJUTfW25DXrwq+z8zcZrctsklQOnr2Basig8TW3Heqg3G/RSSzVDCVksWsyEp1f9GeiyouCjIxnkV44gQPG1sXdhrqkTD+T7lLg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0402MB3871.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(346002)(39850400004)(136003)(366004)(396003)(376002)(86362001)(33716001)(6916009)(478600001)(186003)(2906002)(54906003)(6506007)(26005)(6486002)(6512007)(9686003)(91956017)(316002)(44832011)(4326008)(4744005)(71200400001)(1076003)(8676002)(8936002)(5660300002)(66946007)(76116006)(66446008)(64756008)(66476007)(66556008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: iapQHLrAlUqDbE2A4qV0rVhfDlzAo4QY/Zd1kUsrYIGnLId4aTIpWgDpFuEYuwCIlSRIx9Om4KpCXOS9ayKD620pPF9ZcCqz1XvJalabC2S0ztQpzt/o4N5+vnfzPnVXtHajw03GMkvQFyVfPBQtGzDWBuowZFq5QdUzc3p2Bkm4CBS3mncTVQrjHJquzN3cBq1DhzdUKpdi+mj39hZFjEtfjA3SGkq2kKev7Uhf8RyDo5DHnBvowHdSzY+DcdWhyq37gaVMChy7SHo/7MAxsPZisu3DBIInPZIpcrDcL9KZnOIsOSlFow2xPhCED1esKZ3Llby7wQ1KUyKdDcU2vaXPiB2lfZxGZZWaqyjtZ0ViwrsMVN3lzgk0EeRx4CSB+KQqi5TzDoKkrIu5N3Cuc/3N0uBYzus8/Qx317SyGK+5Z1/JdFTe3ZaCncW6RRFDNPQR1eJHufc9SQRkvn7tk7GnXeDoNsK/LrTaeQG8/4wNOG5Yw3cknWmblASwwk6EUeW55IslwD9hRkslDY8xqxurSBkc0/nLyX75NOfhOZ7/RuDan+VgQlzTbklPIrgEzE0dLSPqjdCYQbvxOw5PFapPqBxM7oqWl0KaSLgh75taQfYAGGumcwGTWCmv5mNFVrA0q3FmRyWjTOBgRG8W7g==
Content-Type: text/plain; charset="us-ascii"
Content-ID: <708C9641790A4F46AC9DF222B23110F1@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0402MB3871.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81144153-f62a-4d82-95d3-08d86f82fa42
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 14:19:20.6685
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I0aUsBGZU37kjZFmXppN9eoFUcUK/QUlGdfx9vjBwYbGULsA9lCC7jmKWpf3Br6LnINaMJiS22kheCUB8x9iFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4128
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 13, 2020 at 08:31:32AM -0500, Rob Herring wrote:
> On Wed, 07 Oct 2020 23:39:26 +0300, Ioana Ciornei wrote:
> > Add a documentation entry for the DTS bindings needed and supported by
> > the dpaa2-mac driver.
> >=20
> > Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> > ---
> > Changes in v2:
> >  - new patch
> > Changes in v3:
> >  - renamed dpmac@x into ethernet@x
> >  - renamed the new documentation file to use the same name as the
> >    compatible
> >  - marked additionalProperties as false
> >  - added a reference to ethernet-controller.yaml
> >=20
> >  .../bindings/net/fsl,qoriq-mc-dpmac.yaml      | 60 +++++++++++++++++++
> >  1 file changed, 60 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/fsl,qoriq-mc-=
dpmac.yaml
> >=20
>=20
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks for the review.

Is this going in 5.10 by any chance or should I resend these after
the merge window with the reviewed-by tags?

Ioana=
