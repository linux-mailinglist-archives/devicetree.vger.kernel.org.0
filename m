Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C38497D610
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 09:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725804AbfHAHJf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 03:09:35 -0400
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]:56494
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725790AbfHAHJe (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Aug 2019 03:09:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mFr7J0M4s62LOSTzO87ZL9r5c7J58fV6l6hvBBoavOWuvr0qF7ncyx8X9lDq5S+TGCcd3Xr13DiYFNBnwDVbnScAD8WBGVUxcGHuMUSY9FqbEJxgftlgR18zX8D01UzzZp82PyWMbG35M1KpZvS7gYW1yEhXWISsc5v5033yQ+vdyH9YInxAeVmpOZehcNTCVEHFHYEzERdf1zPfR6CghTtI6Mc8ymTiq6AWnj+YoVjG8leid8hOe6TdUjohY1GgZxuntCTDnPdh7B6JGGJk/8k/0Q1Jt2JzZ57CCOZNA9wIbPwPUVcz5Z+hVclDusuFHhimauuqD4RJY8VTwzrQ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SWVZU7T3Wb7P2/p0kxoNv3XFm26GApA8EqiU2ONEuZY=;
 b=jkJV2OIgTYS4pkZ7SEmZvDv35dVRp15y3gPs9UwhQwcYpZaMakqW8Sllp8SlOXtttXKlfBaYpu39WSVjIXvRR5T7W8c/b8bMZ7qxi8520HtE2FKJC6Gq6K5R+8Mm/GO4etHJk2BL+BwJ4ZykNqBhw0W3sZ+iYQ+6OYMm7d6NeXy61UsfrPhApjXMEMM1aeicmUEMDkE4MRNwpNk8kL0Gf/22RROhYRq0uTOwT/nJixvzv8/aSn7TXc/IiPB16RY89KWpFpESvg+RvraNOsITaKirjg/8qq+khJgp2xV3YV6eywJrc56fXp7vPSqvDp375wcsa6umgp/6U/eJ2WszMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SWVZU7T3Wb7P2/p0kxoNv3XFm26GApA8EqiU2ONEuZY=;
 b=CtfGlqff+YWNoXKfmuGAaLBvqb3MfVFhnvhc8fbHeMEf4qEiQRi6SZJ0hrOW/bdPpntvuxXRM0dMsr5IqGFw5V1QVBGqbgmY6GIMEv7+DbXzXIJCt40mMy8uEDSdKS61PAzpi+P3irkhB0m3MRVFWefKaoggxZtaeXpSvhvw7eA=
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com (10.171.182.24) by
 VI1PR04MB5663.eurprd04.prod.outlook.com (20.178.126.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.15; Thu, 1 Aug 2019 07:09:31 +0000
Received: from VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339]) by VI1PR04MB4015.eurprd04.prod.outlook.com
 ([fe80::9c4f:262d:db31:e339%4]) with mapi id 15.20.2136.010; Thu, 1 Aug 2019
 07:09:31 +0000
From:   Ashish Kumar <ashish.kumar@nxp.com>
To:     Rob Herring <robh@kernel.org>, Han Xu <han.xu@nxp.com>,
        "broonie@kernel.org" <broonie@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Leo Li <leoyang.li@nxp.com>
Subject: RE: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Topic: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add
 ls2080a compatibility string to bindings
Thread-Index: AQHVJo/VeuuMDsBciEWXxGwYBY/pIqbC1w+AgB62iOCABBMh4IAAgiyQ
Date:   Thu, 1 Aug 2019 07:09:30 +0000
Message-ID: <VI1PR04MB40154034B5C29D80321E998295DE0@VI1PR04MB4015.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-2-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200837.GA7806@bogus>
 <VI1PR04MB4015B154965BA4BEF402890B95DD0@VI1PR04MB4015.eurprd04.prod.outlook.com>
 <VE1PR04MB66874A887C5BE6209A4AE90F8FDF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB66874A887C5BE6209A4AE90F8FDF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ashish.kumar@nxp.com; 
x-originating-ip: [92.120.0.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e85364f4-898f-4773-6686-08d7164f330f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:VI1PR04MB5663;
x-ms-traffictypediagnostic: VI1PR04MB5663:
x-microsoft-antispam-prvs: <VI1PR04MB5663C2CDC1FD24438F50716795DE0@VI1PR04MB5663.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(13464003)(189003)(199004)(305945005)(66946007)(53936002)(55016002)(66446008)(64756008)(66556008)(66476007)(4326008)(6436002)(8936002)(26005)(7736002)(316002)(7696005)(52536014)(6116002)(76116006)(81156014)(186003)(3846002)(5660300002)(9686003)(53546011)(256004)(86362001)(74316002)(8676002)(66066001)(81166006)(14454004)(6506007)(102836004)(476003)(44832011)(6246003)(76176011)(229853002)(68736007)(99286004)(110136005)(2501003)(25786009)(54906003)(2906002)(446003)(11346002)(33656002)(478600001)(71200400001)(71190400001)(486006);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB5663;H:VI1PR04MB4015.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AVYCJLqP+1xozhZudp5d4CHCNssQ/dnhA++YaFq4V99OFIxjRse8pNVU7cTq//VcbosquwkkOdwafuZPN0UqnjsR464ZHMReZtNEUaG6cl8XJ6UI9tCVHKwQeSZ/KHAaW6RPGZrfwr+usKtALnobUNSg96iMF4/OsDMcXrX8j1bXUbmydi9jDTHKv2S9MGCxxSib/xs7hRQAU0FBnBpFhuyPpACcVxt8GyzFbA3gVWrw9jMYjye1FzhMli9zFNKGPYrw03+jjpflLRGXe/WhlPH5QMy/0TNMt0LU76gyQjAnHVgZUwBCFVF6lh5XEFcemJMMqovbVD+Qhd0PWzbbfZTGjHGuyXXvTOQnfths0Ewa3NFOFMxsIfSL38yk+0pPloHV5kTsNN+YNkDQ0mUL7T60DupCQWaAEGS9PXku/+8=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e85364f4-898f-4773-6686-08d7164f330f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 07:09:30.9810
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ashish.kumar@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5663
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



> -----Original Message-----
> From: Leo Li
> Sent: Thursday, August 1, 2019 4:57 AM
> To: Ashish Kumar <ashish.kumar@nxp.com>; Rob Herring
> <robh@kernel.org>; Han Xu <han.xu@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; broonie@kernel.org=
;
> linux-arm-kernel@lists.infradead.org; linux-mtd@lists.infradead.org; Kuld=
eep
> Singh <kuldeep.singh@nxp.com>
> Subject: RE: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi: Add=
 ls2080a
> compatibility string to bindings
>=20
>=20
>=20
> > -----Original Message-----
> > From: Ashish Kumar
> > Sent: Monday, July 29, 2019 4:11 AM
> > To: Rob Herring <robh@kernel.org>; Leo Li <leoyang.li@nxp.com>
> > Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org;
> > broonie@kernel.org; linux-arm-kernel@lists.infradead.org;
> > linux-mtd@lists.infradead.org; Kuldeep Singh <kuldeep.singh@nxp.com>
> > Subject: RE: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi:
> > Add ls2080a compatibility string to bindings
> >
> >
> >
> > > -----Original Message-----
> > > From: Rob Herring <robh@kernel.org>
> > > Sent: Wednesday, July 10, 2019 1:39 AM
> > > To: Ashish Kumar <ashish.kumar@nxp.com>
> > > Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org;
> > > broonie@kernel.org; linux-arm-kernel@lists.infradead.org;
> > > linux-mtd@lists.infradead.org; Ashish Kumar <ashish.kumar@nxp.com>;
> > > Kuldeep Singh <kuldeep.singh@nxp.com>; Ashish Kumar
> > > <ashish.kumar@nxp.com>
> > > Subject: [EXT] Re: [Patch v3 1/2] dt-bindings: spi: spi-fsl-qspi:
> > > Add ls2080a compatibility string to bindings
> > >
> > > Caution: EXT Email
> > >
> > > On Wed, 19 Jun 2019 16:41:53 +0530, Ashish Kumar wrote:
> > > > There are 2 version of QSPI-IP, according to which controller
> > > > registers sets can be big endian or little endian.There are some
> > > > other minor changes like RX fifo depth etc.
> > > >
> > > > The big endian version uses driver compatible "fsl,ls1021a-qspi"
> > > > and little endian version uses driver compatible "fsl,ls2080a-qspi"
> > > >
> > > > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > > > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > > > ---
> > > > v3:
> > > > Rebase to top
> > > > v2:
> > > > Convert to patch series and rebasing done on top of tree
> > > >
> > > >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 3 +--
> > > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > > >
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Hi Leo,
> >
> > I think Rob, is waiting for you ack.
>=20
> Binding patches usually go through subsystem tree.  So I think this actua=
lly
> need ack from qspi maintainer Han Xu and be picked up by SPI maintainer.
Hello Han Xu,=20

Could you please ack this few of my dts patches are dependent on this, wait=
ing to be pushed from Shawn's tree.

Regards=20
Ashish
>=20
> Regards,
> Leo
