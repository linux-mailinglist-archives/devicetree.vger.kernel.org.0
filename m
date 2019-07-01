Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7B3DB25E7C
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 09:06:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728489AbfEVHGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 03:06:17 -0400
Received: from mail-eopbgr70089.outbound.protection.outlook.com ([40.107.7.89]:49118
        "EHLO EUR04-HE1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725796AbfEVHGR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 May 2019 03:06:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=js/rleFrTUm9e6nJA8yHzFp4ws0qmvJw8hibKrftfcQ=;
 b=fvp3undoFyYGbTDa4vqyEVyLv8YerIuEKsZ3P1u8JfuXI4b7LswwJcyn4ItSw505TL2rZQZec3+sFODbuF/Jgj4eOmGoV5JaX9cSP8PjledHlVDeUAhKxOS7d83CjIqLpUrp+7incQS1ZU5o6P/ZWuFE22JdwDmbf56WlQrDT+c=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3683.eurprd04.prod.outlook.com (52.133.38.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 07:06:13 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 07:06:13 +0000
From:   Kuldeep Singh <kuldeep.singh@nxp.com>
To:     Mark Brown <broonie@kernel.org>
CC:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: RE: [EXT] Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Thread-Topic: [EXT] Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Thread-Index: AQHVC9OtkL2+pIZt7Uy9/HRX7rIojaZ2Gf+AgACmmfA=
Date:   Wed, 22 May 2019 07:06:12 +0000
Message-ID: <AM0PR0402MB3556568F1033897FC4784D83E0000@AM0PR0402MB3556.eurprd04.prod.outlook.com>
References: <20190516104046.23830-1-kuldeep.singh@nxp.com>
 <20190516104046.23830-2-kuldeep.singh@nxp.com>
 <20190521210449.GB1580@sirena.org.uk>
In-Reply-To: <20190521210449.GB1580@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-originating-ip: [92.120.1.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b87ead17-ac02-4e73-9946-08d6de83f9e3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:AM0PR0402MB3683;
x-ms-traffictypediagnostic: AM0PR0402MB3683:
x-microsoft-antispam-prvs: <AM0PR0402MB36830664338AAD0186758A64E0000@AM0PR0402MB3683.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(366004)(189003)(199004)(13464003)(6116002)(14454004)(6246003)(3846002)(9686003)(33656002)(55016002)(4326008)(25786009)(4744005)(256004)(5660300002)(6916009)(76176011)(44832011)(66066001)(2906002)(7696005)(476003)(186003)(446003)(76116006)(486006)(73956011)(66556008)(66446008)(66946007)(6506007)(66476007)(64756008)(229853002)(99286004)(11346002)(102836004)(54906003)(53546011)(86362001)(7736002)(74316002)(68736007)(6436002)(26005)(8936002)(81166006)(81156014)(8676002)(52536014)(53936002)(305945005)(498600001)(71190400001)(71200400001);DIR:OUT;SFP:1101;SCL:1;SRVR:AM0PR0402MB3683;H:AM0PR0402MB3556.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HB0XwIPUA9vkRyYewaCwmJ1Yfpg5JMkAX8qW/Gb/dW2CY3u2L1dPYsvGzoQds/t326M1mplknNPKn/ISrhTrQnpzAwIoc3qQNpKUwT1p8S3dSEQsf3aHMnUr6vuDYmCKm9LnM7SI+P7gXbvmknT/mjfA+YaEXzTLN4Eg7WdzRdfLAPw+zRczmD11FGevuFnnptEyWzD0/hYzLIYjZ9//wqPhvYAde+tvOg5ujDXznpb0ZgVRVdlA0tA4lfXcV9wi0ZVqthvD7HXJk9NJyP/uK2YF2sGhnGbrhYka40IwN4GOgViaQJChQp/yUWgtSDL3lFpkFhBglDBR/oTVgJNbAz2CgTKPEC+i1xYWUwyLSeKc/iDP5Lwpqhu5KSGkI1WjK3Caw+b8T9ZhHzZMQ9hlhLHT7Odv6JFCH6jQDddoQQ4=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b87ead17-ac02-4e73-9946-08d6de83f9e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 07:06:13.2779
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3683
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

> -----Original Message-----
> From: Mark Brown [mailto:broonie@kernel.org]
> Sent: Wednesday, May 22, 2019 2:35 AM
> To: Kuldeep Singh <kuldeep.singh@nxp.com>
> Cc: devicetree@vger.kernel.org; bbrezillon@kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-mtd@lists.infradead.org; Ashish Kumar
> <ashish.kumar@nxp.com>
> Subject: [EXT] Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
> compatibility string
>=20
> On Thu, May 16, 2019 at 10:39:45AM +0000, Kuldeep Singh wrote:
> > There are 2 version of QSPI-IP, according to which it can be big
> > endian or little endian. There are some other minor changes as well.
> > The big endian version uses driver compatible fsl,ls1021a-qspi and
> > little endian version uses fsl,ls10280a-qspi
>=20
> This doesn't apply against current code, please check and resend.

I have sent v2 of patches by converting them to patch series.

Regards=20
Kuldeep Singh
