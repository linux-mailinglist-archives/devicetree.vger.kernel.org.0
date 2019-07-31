Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A86297D1E2
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 01:28:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728774AbfGaX2z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 19:28:55 -0400
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]:27838
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725793AbfGaX2y (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 31 Jul 2019 19:28:54 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4u5TL1L/NAbKJkW+mwKaQnTnhR25Moo6KBX/cPqjrOr2EcO4F3RIJxl0U5jG2GKmdLt5vwmAi//g4fck5NTj4XF0qpy9yYDP+8qp8fmh+hY2w6JJ4xqtIwFTigggiHZhIg7bpGMRq05is5LZ3JyFHqKGVhPr9cbWhCcTnfNWOxz/6tZ4Q5nMXcTRZ9mYwRnTBZEE4dZSz9VbuHimPTW4D+Sj13smMbIM6q/bOiBCohL9R5MYY9DxcJv9dCaOjyb2/JChyLpXt2vDuRjQVtI1QgRzR00vxPZeSuHV3My0KvkrcftiS02bw8cG8U5auwhKpY/DngyoFRveRk1J+mMdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6ohJUkym84NfDDq+/PdrJTKvPG7zABfKOvK4usQaP4=;
 b=FFxIzI2kS0HpNlIlsyyOxIAikvbt7c+1pXLOrEVNio7vW/0DnmA7vF+vWe4wMSvSFToT27X9D9epD0QcIn7reMETcCgOv6HKqF8Gbx8s1qcU8uRlc9RLdaml5DU4jYmLcl5AJWT2ygUczoKLTs5UnQRyXWlCw7Hxv57xzcZvH3Mhf7v/ERkPDWyjQvqnnhOCrhJPA5zo3IAppBDCvEr12676DeEd3xnu1O8YZ4+yXtavcCVqRaW4IjZRsvftMZd3FAUdNg8lvAmLAbi6SxUTgyMILeux5KCXpjBVMivIt/Zo3IGRN0CiIaJzFrf5gYkh7JZgxFVK3DmqynAX5FH35A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6ohJUkym84NfDDq+/PdrJTKvPG7zABfKOvK4usQaP4=;
 b=jsBHm+9rHVWkvWuDGQ0bk/cCPQxwTEUpHZPKWn/xiuCfwLqo1hYlGRzjlqXgrtNhcJmMJupqRlyX6efBsF8CvkQIg03KgKYgZnSb1BJiJi8DpnJrwNSvxuBhFPzftM7XO8l8btO4vb/8k1phyWkLtYR+NLBLngSaOKu3WY+d2rk=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.235.152) by
 VE1PR04MB6736.eurprd04.prod.outlook.com (20.179.235.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 31 Jul 2019 23:28:51 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::3d61:6e52:a83c:7c59%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 23:28:51 +0000
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
Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Topic: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Thread-Index: AQHVJo/WR5aDyJa0DkeJCggmqW/DRqbC1yeAgB61yWCABBUxwA==
Date:   Wed, 31 Jul 2019 23:28:51 +0000
Message-ID: <VE1PR04MB66879C5045A813E7311534D68FDF0@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200857.GA8477@bogus>
 <VI1PR04MB4015206CD4AAA1E54C5978DA95DD0@VI1PR04MB4015.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB4015206CD4AAA1E54C5978DA95DD0@VI1PR04MB4015.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f271826-1235-4da0-6034-08d7160ed87b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:VE1PR04MB6736;
x-ms-traffictypediagnostic: VE1PR04MB6736:
x-microsoft-antispam-prvs: <VE1PR04MB67366A31C7AB050BA7F14ADD8FDF0@VE1PR04MB6736.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(396003)(136003)(366004)(346002)(39860400002)(13464003)(189003)(199004)(256004)(14454004)(76176011)(6506007)(53546011)(446003)(11346002)(486006)(476003)(229853002)(7736002)(55016002)(6436002)(305945005)(5660300002)(53936002)(102836004)(86362001)(186003)(26005)(74316002)(71200400001)(71190400001)(478600001)(8936002)(52536014)(81166006)(81156014)(68736007)(8676002)(9686003)(6636002)(6246003)(4326008)(25786009)(7696005)(66446008)(64756008)(66556008)(66476007)(66946007)(3846002)(2906002)(76116006)(6116002)(54906003)(110136005)(316002)(66066001)(99286004)(33656002);DIR:OUT;SFP:1101;SCL:1;SRVR:VE1PR04MB6736;H:VE1PR04MB6687.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ukhRpOyCwFonqWLpvEUPGEIrS1WRx26ANIG6L1T6slzLlRyCUkj0aV+lqN3uvqKL48tkGeI97y2rcIhX6u1OMR5qjq6ssqWFCuVIka+TesOvMBiuz/NHll8m+k48BBFYKZi82E2KnRAA/n4UH7IZgC+B+NBw3IBDawTlNLOaPO/30CIPfA4+SnpcPSwLAZZRkT5gGt4QACbxC4AUV3ngNgThnrBj0i+GjJPsCC1FxuZiWpQFzCrS6xZpjolZy9dX1s+xEuAp8CDnppWqzdujXn8LbbRVClbMaIMBCXEA0P6gctaEzlX4XNODDd8zIgpawFLiXf8irfYvkL/I9En60XkzhQ1TCAg8uWlY3hA4g9EXz1lZwZXe8PI25mnX98ESLZBkByyWTDj/JpicDmryoernfJDnyQ8ZvPx8/BXATB8=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f271826-1235-4da0-6034-08d7160ed87b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 23:28:51.1653
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
> Sent: Monday, July 29, 2019 4:09 AM
> To: Rob Herring <robh@kernel.org>; Leo Li <leoyang.li@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; broonie@kernel.org=
;
> linux-arm-kernel@lists.infradead.org; linux-mtd@lists.infradead.org;
> Kuldeep Singh <kuldeep.singh@nxp.com>
> Subject: RE: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
> bindings of ls1088a and ls1012a
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
> > Subject: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
> > bindings of ls1088a and ls1012a
> >
> > Caution: EXT Email
> >
> > On Wed, 19 Jun 2019 16:41:54 +0530, Ashish Kumar wrote:
> > > Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> > > Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> > > ---
> > > v3:
> > > Rebase to top
> > > v2:
> > > Convert to patch series and rebasing done on top of tree
> > >
> > >  Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
> > >  1 file changed, 2 insertions(+)
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
