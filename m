Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 166CC7D1DE
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 01:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729512AbfGaX12 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 19:27:28 -0400
Received: from mail-eopbgr70082.outbound.protection.outlook.com ([40.107.7.82]:39460
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1728774AbfGaX12 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 31 Jul 2019 19:27:28 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ffxpI/dl7QyvAtHTSMCSviuMo+QjhcgADE3w4XdqC/OjYZ6bstyGMHziuQIIegJERsQn7+KHbh8cZCviaSfjo/tbnHtSm4bnb0i3jSMmBwSzfYfDINlf41ZkpUbPK8fUAhzWq07KfxRQ+2bFrthRxZ9KnYoKhZJaBb3lR89E5Qs1+Wl78LpHHyAmDP7WBPVsPI3rxHMxwtDJ8UbN44pxmHf5l8jcvgwEQjvgPMx6D4xTq823dB3gn7qdUn00iP8GlBBbPfWRmS0iWWZwsPoefxon3A3EmkLzHMNpULkHVmDNqCSsIgUR5WI8vPYfeyT8PCPYTbd3VIeZOgGFMfa+mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eynCtvBkfWAcpqxXYyHZJwCu3DbWxse8mP+8BXFSs4Q=;
 b=gUIb/rTMVJ+s2TjPcqLLKeauSrW6DpvpsNT/hM+RYsI5yEYiQOn25p0JKRaxAgF2U0zo2gL9xRYEEkDXAr1GMgtHuYtIw1TDazOAQVyrPwOrRBZ+qYqzmrw2Es43krYwkAV1tSzjfVQSqo4Imijj2SSwrLXb2U4i0FbDmZqf7Tzd3BLHKa85MhV//y/ZMeSVybo1jabZeak8qTkeX1v2h3LSYkIU8RP1K2A+WlbAC3/H1bJqhX1p/UgAhtzFlBNOtc0ctA5zjsZyRnDfztekkqWL0zmjWEeg1gQzAHOZrRdA25vVJ8Ob5SgzSOBqhAdDke6wyNQb5vgEgrn+HCUTvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eynCtvBkfWAcpqxXYyHZJwCu3DbWxse8mP+8BXFSs4Q=;
 b=VIQQgmkdjgwZxtRGjeyb4JhRCgnUiHI5JOS8mDOr+g6ImeBVgqt8Avs5C9nEEDW3bYs4Sh5EYJvfBkJ3MH/emxBjziQqhWo6L/maJHdwWgQ1eKiiJu4WUNAqjJfaKFbcWI7HvJEiP7m2+MdxbUsR79/IIBCCPEjNUiri2xC7Vkg=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6736.eurprd04.prod.outlook.com (20.179.235.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 31 Jul 2019 23:26:41 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 23:26:41 +0000
From:   Leo Li <leoyang.li@nxp.com>
To:     Ashish Kumar <ashish.kumar@nxp.com>, Rob Herring <robh@kernel.org>,
        Han Xu <han.xu@nxp.com>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: RE: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Topic: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Index: AQHVJo/VeuuMDsBciEWXxGwYBY/pIqbC1w+AgB62iOCABBMh4A==
Date:   Wed, 31 Jul 2019 23:26:41 +0000
Message-ID: <VE1PR04MB66874A887C5BE6209A4AE90F8FDF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200837.GA7806@bogus>
 <VI1PR04MB4015B154965BA4BEF402890B95DD0@VI1PR04MB4015.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB4015B154965BA4BEF402890B95DD0@VI1PR04MB4015.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6eb202cb-f733-4ead-e703-08d7160e8b47
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:VE1PR04MB6736;
x-ms-traffictypediagnostic: VE1PR04MB6736:
x-microsoft-antispam-prvs: <VE1PR04MB67361D663F33D721BD49B3838FDF0@VE1PR04MB6736.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(13464003)(189003)(199004)(256004)(14454004)(76176011)(6506007)(53546011)(446003)(11346002)(486006)(476003)(229853002)(7736002)(55016002)(6436002)(305945005)(5660300002)(53936002)(102836004)(86362001)(186003)(26005)(74316002)(71200400001)(71190400001)(478600001)(8936002)(52536014)(81166006)(81156014)(68736007)(8676002)(9686003)(6636002)(6246003)(4326008)(25786009)(7696005)(66446008)(64756008)(66556008)(66476007)(66946007)(3846002)(2906002)(76116006)(6116002)(54906003)(110136005)(316002)(66066001)(99286004)(33656002);DIR:OUT;SFP:1101;SCL:1;SRVR:VE1PR04MB6736;H:VE1PR04MB6687.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: v0Bxft7FBV40nPVaMqGzhpmHjJ78BS9mtMePxmSd7SVijLNSQKYc2H4xjiNMFvAH+LtH/lebcfI1Fhar+5oXJ5ssVFP52ypUpB2h0CXkRCnDrGpWJdnRKQ8C5coKdWD4wBx+2Gv2eevdh9oef2vgtCi/4yNNBp9Du86eInSpgztokdj9uv7UJ3CNpZIjXIGDj1xmStY3XaRIDDDosckBnBmCbrZKF+xPbJdrntt+sROckby2nI0ZF9x7e839kIcHtAtiwCPd8REn5P8puwmeYNo9WOiTllZRU3KG2y9+3aqb3zj9qKidcallWCI/BOOl65O/1M/tWjNvrMQx1lIMEQnubU52ilXD+q+hVWErmzP3iRZxDv/1gLdDBl0Qdwvut2D3RuQitEb7KFqz9ikq0Bv1GmK52uWoq17QzqU8z0Q=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eb202cb-f733-4ead-e703-08d7160e8b47
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 23:26:41.6563
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leoyang.li@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6736
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Ashish Kumar
> Sent: Monday, July 29, 2019 4:11 AM
> To: Rob Herring <robh@kernel.org>; Leo Li <leoyang.li@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; broonie@kernel.org=
;
> linux-arm-kernel@lists.infradead.org; linux-mtd@lists.infradead.org;
> Kuldeep Singh <kuldeep.singh@nxp.com>
> Subject: RE: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add=
 ls2080a
> compatibility string to bindings
>=20
>=20
>=20
> > -----Original Message-----
> > From: Rob Herring <robh@kernel.org>
> > Sent: Wednesday, July 10, 2019 1:39 AM
> > To: Ashish Kumar <ashish.kumar@nxp.com>
> > Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org;
> > broonie@kernel.org; linux-arm-kernel@lists.infradead.org;
> > linux-mtd@lists.infradead.org; Ashish Kumar <ashish.kumar@nxp.com>;
> > Kuldeep Singh <kuldeep.singh@nxp.com>; Ashish Kumar
> > <ashish.kumar@nxp.com>
> > Subject: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
> > ls2080a compatibility string to bindings
> >
> > Caution: EXT Email
> >
> > On Wed, 19 Jun 2019 16:41:53 +0530, Ashish Kumar wrote:
> > > There are 2 version of QSPI-IP, according to which controller
> > > registers sets can be big endian or little endian.There are some
> > > other minor changes like RX fifo depth etc.
> > >
> > > The big endian version uses driver compatible "fsl,ls1021a-qspi" and
> > > little endian version uses driver compatible "fsl,ls2080a-qspi"
> > >
> > > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > > ---
> > > v3:
> > > Rebase to top
> > > v2:
> > > Convert to patch series and rebasing done on top of tree
> > >
> > >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
>=20
> Hi Leo,
>=20
> I think Rob, is waiting for you ack.

Binding patches usually go through subsystem tree.  So I think this actuall=
y need ack from qspi maintainer Han Xu and be picked up by SPI maintainer.

Regards,
Leo
