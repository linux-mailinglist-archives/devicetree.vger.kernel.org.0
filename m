Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 971A228D472
	for <lists+devicetree@lfdr.de>; Tue, 13 Oct 2020 21:26:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727999AbgJMT0J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Oct 2020 15:26:09 -0400
Received: from mail-eopbgr70052.outbound.protection.outlook.com ([40.107.7.52]:32002
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725919AbgJMT0I (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 13 Oct 2020 15:26:08 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kiMrcC0vxubqpV+Fk9L5eHUwJICkaUsmVzWfGMxd0Bx6fVSluJF0RA704yOnEPHSMUa4HthYoWzIMydPuE/kcApb4coGlYeOH8pEKf0oPStN0PYIqDkRn6v7Hdz/yq/Ka9NglO3aiqYJBxgllkmx5YmzxMVCBgu9Hkmb9ncJjV1hCoin1JFNLWFGUNzSNgP+3oIyyVUmyMKXxXldD5U6pqBWicg3AhFVptNcsPxr+pG2bMowc2BN4/GvLxoT7mN7P0SC9Yz8++FS/EIeOL4OLt7xAfdo65HreLn4M5C5tZ5CM/1L+QJB5OiTcvvWjvNEmrzEf7bvVFA3rZ/vXwmOjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ceRP5Ocp7Y7X94mwm0LMthE/jO8dkO9TOpmyVM1BaCg=;
 b=HqGnEe4wHl8sYdP0oPL5ImWWsra0JcIZAZ/Bolf2OMUJFGT4ZkMLzxLNuhlVmEHFgiwtSBXLasSy0S3S7k/Gwr0ridVNbd47BNmLVc1AfrQfq1oXHdQu9T0zY8Cdbso/YWgZcEQEVqpDES0txt/dWzu2C1kxOIfHcY4Hq0Y3LEwjRN4GbDsTgwNSrherb/Jez2BswJlPJ7xxjrrbCSIp0Yr9k7ZSh8eUTh9sn0LRp3sgRx/dPAGn3hS5LP0S5EmRqaHI99wamQI7LAe8FjX3x2BGKi5YajBtzQrchibmOCqtdZQJqazTUpYBy9R35UAH0OkbXxuFA2WsFfEtBPoA2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ceRP5Ocp7Y7X94mwm0LMthE/jO8dkO9TOpmyVM1BaCg=;
 b=AcYq1Zzhljn66Txv9XbIYuNGKU/7W00Hs9MBdliXjG9l/P9lGy6DmnHmlr0mg2EiJNLVulFBdOcqJajD5rvS/HEyFSvcAIOWiF9PevO14Aulvnm5Rxl9/AwKdThhWu/QnQz8KBsgfxPpPF6EL6SFYzG2/jZ+fcMPI3rRetqqbXs=
Received: from VI1PR0402MB3871.eurprd04.prod.outlook.com
 (2603:10a6:803:16::14) by VI1PR04MB4030.eurprd04.prod.outlook.com
 (2603:10a6:803:49::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.26; Tue, 13 Oct
 2020 19:26:03 +0000
Received: from VI1PR0402MB3871.eurprd04.prod.outlook.com
 ([fe80::607d:cbc4:9191:b324]) by VI1PR0402MB3871.eurprd04.prod.outlook.com
 ([fe80::607d:cbc4:9191:b324%5]) with mapi id 15.20.3455.030; Tue, 13 Oct 2020
 19:26:03 +0000
From:   Ioana Ciornei <ioana.ciornei@nxp.com>
To:     Rob Herring <robh@kernel.org>
CC:     Leo Li <leoyang.li@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 01/11] dt-bindings: net: add the DPAA2 MAC DTS
 definition
Thread-Topic: [PATCH v3 01/11] dt-bindings: net: add the DPAA2 MAC DTS
 definition
Thread-Index: AQHWnOoCtr3hTSux8kW/8mxzWP3LvamVkH8AgAANWQCAADMDgIAAIrAA
Date:   Tue, 13 Oct 2020 19:26:03 +0000
Message-ID: <20201013192602.4cjdvyeoxrk5lxcs@skbuf>
References: <20201007203936.23953-1-ioana.ciornei@nxp.com>
 <20201007203936.23953-2-ioana.ciornei@nxp.com>
 <20201013133132.GA3381736@bogus> <20201013141918.vulibck3yf2ghlj4@skbuf>
 <CAL_JsqL8jJYqeXzxxJTfkMPj23OvRkX1o2Z+kKdR2teY+O-_gQ@mail.gmail.com>
In-Reply-To: <CAL_JsqL8jJYqeXzxxJTfkMPj23OvRkX1o2Z+kKdR2teY+O-_gQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [188.26.174.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6ec9e7ad-aa9d-41fa-8242-08d86fadd30c
x-ms-traffictypediagnostic: VI1PR04MB4030:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4030FADDE2E05F5486A75B79E0040@VI1PR04MB4030.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oue4nhUcMWucr/uV36ecAuU+eE0zAVcE5VuZ0FDCJlU6r2IqRl31nxgZjyFC34tSh7/5oQy3/9cPxFYZB+4nIEH/bavcb4FOMQLxDclDUPtvobNEXR2VFiClfG9liVx3L+c0GZwU8/LsrOTpL3ZWIuiC7kcV7wLI78Y8jP90SXhG3H06YPueKDaFQrQPw63anTqGtDqlzmOSbvUfIl8ISnIxsTYmKd/VnDgublfutXWgYMz3gfgi2RDoO6MqoQpgkbujgr9IDbvQ5/sa+Tn7wpfRWNxWpOhDXAkfVMUfxLvxweHpWUTPSxYBlWUhWd3+4h2Qa9m9FWTtHFPYtILJI03nf0GtXPG0pPX/6pPTBuKUkiDbJ8doKwnfmjXt3Sr97L5N78K9BlURZLPncKggNw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0402MB3871.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(7916004)(4636009)(346002)(366004)(39860400002)(136003)(376002)(396003)(91956017)(966005)(33716001)(64756008)(66556008)(66946007)(83380400001)(26005)(66476007)(66446008)(76116006)(316002)(186003)(6916009)(9686003)(6512007)(53546011)(5660300002)(1076003)(6506007)(8936002)(478600001)(86362001)(6486002)(54906003)(4326008)(2906002)(44832011)(71200400001)(83080400001)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: GKSoWXkXqExU/3KXNEo+TJ2TenFR1wNFDf64oG6TbdSPMVSNotwK7NBR7BuBWY6FbxRKyzu5tO/w2Y/1vY7fAb7GBeGoqHhu+KDYWTcSV2c9M3Hg/kTm92kgXpwbpt6+bhp0Nui8yOQkC4ovzolrdnrk7xhzaKC7FFAtaGxfHaDdFBCpd9n/UBOO4//lmkT5YxDSYmiWJXzp5qj75I07qenBBAs0Js+ABaP6Q0k+mKJN4RxtjJfMMfSGu9jLsRAntMQOQpO/wwY/4NgeVcDU7EUIFI/cGaFyy72pnM6As5JHg04DKoz5HBlQoVmTZ8yTjKUXlEGElKCj3G5ZR4zSB+yu/FNuEun9ToggEFCib/1ay/jsXO5KXQpbrRuFGSBKDVVbx6Ekyj2V+Ah3mDbVib5m+vkiTT5gEFBnt+HSjk17jEddpSP8OyxQFstd1a8MIEwMvsG6+sY2zUQhvJqEixNUrFKzDSOMPSP7rKG/yncHbcFkuD1yC78IFLp59lE7AlMM/arNENxceaAGUvpl5TKS/vf0JqrqWas9jR1qAnM3aoe+0IEGOmLB5hCVG/dSFd0HlHHRfxcLopn9zagapzQfWWhWDn4Z/zbwC4s1/ntLMPhF2YEzp0KzUL7anamrRR9pQLMofZO8lIm89Ai5lA==
Content-Type: text/plain; charset="us-ascii"
Content-ID: <90B9D69D00676248ABF1C9B31AD04625@eurprd04.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0402MB3871.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ec9e7ad-aa9d-41fa-8242-08d86fadd30c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 19:26:03.2393
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YVdXcERBJIRWFlAzmgkLZTU0QO+OgwkBDyxQAXGcRLGAkpJum9EVd+N5MgMpUZAz9c1ZxLMS/J0zYpZtQRiD+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4030
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 13, 2020 at 12:21:53PM -0500, Rob Herring wrote:
> On Tue, Oct 13, 2020 at 9:19 AM Ioana Ciornei <ioana.ciornei@nxp.com> wro=
te:
> >
> > On Tue, Oct 13, 2020 at 08:31:32AM -0500, Rob Herring wrote:
> > > On Wed, 07 Oct 2020 23:39:26 +0300, Ioana Ciornei wrote:
> > > > Add a documentation entry for the DTS bindings needed and supported=
 by
> > > > the dpaa2-mac driver.
> > > >
> > > > Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> > > > ---
> > > > Changes in v2:
> > > >  - new patch
> > > > Changes in v3:
> > > >  - renamed dpmac@x into ethernet@x
> > > >  - renamed the new documentation file to use the same name as the
> > > >    compatible
> > > >  - marked additionalProperties as false
> > > >  - added a reference to ethernet-controller.yaml
> > > >
> > > >  .../bindings/net/fsl,qoriq-mc-dpmac.yaml      | 60 +++++++++++++++=
++++
> > > >  1 file changed, 60 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/net/fsl,qoriq=
-mc-dpmac.yaml
> > > >
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Thanks for the review.
> >
> > Is this going in 5.10 by any chance or should I resend these after
> > the merge window with the reviewed-by tags?
>=20
> I just noticed you didn't Cc netdev as I would expect this to go via
> the networking tree. So yes, resend after the merge window.
>=20

David said to an earlier version of this patch set that he would not
want to pick this up through net-next since it's a sizable change and
this should go through the devicetree trees.
https://lore.kernel.org/netdev/20201002.161318.726844448692603677.davem@dav=
emloft.net/

This is why I didn't cc again the netdev.

Ioana=
