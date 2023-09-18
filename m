Return-Path: <devicetree+bounces-1053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0887A47A0
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:54:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 674532818A9
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B35E38FB4;
	Mon, 18 Sep 2023 10:54:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC0338F8D
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:54:42 +0000 (UTC)
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com [185.176.79.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B88EB115;
	Mon, 18 Sep 2023 03:54:13 -0700 (PDT)
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4Rq1ks3Z2Qz6J7Db;
	Mon, 18 Sep 2023 18:49:25 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 18 Sep
 2023 11:54:11 +0100
Date: Mon, 18 Sep 2023 11:54:10 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
CC: Herve Codina <herve.codina@bootlin.com>, Rob Herring <robh@kernel.org>,
	Lizhi Hou <lizhi.hou@amd.com>, Andrew Lunn <andrew@lunn.ch>,
	<linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <max.zhen@amd.com>, <sonal.santan@amd.com>,
	<stefano.stabellini@xilinx.com>
Subject: Re: [PATCH V13 0/5] Generate device tree node for pci devices
Message-ID: <20230918115410.00007421@Huawei.com>
In-Reply-To: <ZQf5huX2AMuf9kHC@smile.fi.intel.com>
References: <1692120000-46900-1-git-send-email-lizhi.hou@amd.com>
	<ZP96feVs2ev7098Y@smile.fi.intel.com>
	<CAL_JsqKfQJFrd8MOdjW55cYdEb8yyPyR+P3ran9+X3dCwUgdyA@mail.gmail.com>
	<ZQGaSr+G5qu/8nJZ@smile.fi.intel.com>
	<20230915193008.6d87b8a0@bootlin.com>
	<ZQf5huX2AMuf9kHC@smile.fi.intel.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100004.china.huawei.com (7.191.162.219) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 18 Sep 2023 10:17:26 +0300
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Fri, Sep 15, 2023 at 07:30:08PM +0200, Herve Codina wrote:
> > On Wed, 13 Sep 2023 14:17:30 +0300
> > Andy Shevchenko <andriy.shevchenko@intel.com> wrote: =20
> > > On Tue, Sep 12, 2023 at 02:12:04PM -0500, Rob Herring wrote: =20
> > > > On Mon, Sep 11, 2023 at 3:37=E2=80=AFPM Andy Shevchenko
> > > > <andriy.shevchenko@intel.com> wrote:   =20
> > > > > On Tue, Aug 15, 2023 at 10:19:55AM -0700, Lizhi Hou wrote:   =20
>=20
> ...
>=20
> > > > > Can you point out to the ACPI excerpt(s) of the description of an=
ything related
> > > > > to the device(s) in question?   =20
> > > >=20
> > > > I don't understand what you are asking for.   =20
> > >=20
> > > Through the email thread it was mentioned that this series was tested=
 on the
> > > ACPI enabled platform, Jonathan (IIRC) asked why do we need to have a=
 shadow
> > > DT for the something that ACPI already describes. That's why I'm tryi=
ng to
> > > understand if it's the case. and if so, how can we improve the approa=
ch. =20
> >=20
> > Patches from Frank Rowand series [1] are needed to create an of_root_no=
de if a DT
> > was not provided by the firmware, bootloader, etc that run the kernel.
> >=20
> > [1]: https://lore.kernel.org/lkml/20220624034327.2542112-1-frowand.list=
@gmail.com/
> >=20
> > Current Lizhi's series creates nodes from the PCI host node during the =
PCI
> > enumeration. It creates PCI-PCI bridge and PCI device nodes.
> >=20
> > I use these series on an ACPI system.
> >=20
> > I need one more missing component: the node related to the PCI host bri=
dge
> > This was the purpose of Clement's work. This work was not sent upstream=
 yet and I
> > am working on it in order to have a full tree from the of_root to the P=
CI device
> > ie:
> >  of_root                  <-- Frank Rowand series=20
> >    + of_host_pci_bridge   <-- Clement's work
> >        + pci_bridge       <-- Current Lizhi series
> >            + pci_bridge   <-- Current Lizhi series
> >             ...
> >              + pci_dev    <-- Current Lizhi series
> >=20
> > Hope that this status helped. =20
>=20
> Thanks for the explanation! I suppose it's better to have three series co=
mbined
> into one and being sent with a better cover letter to explain all this. A=
lso it
> might make sense (in my opinion) to Cc Jonathan (I did it here). Sorry, J=
onathan,
> if you are not wanting this.
>=20
I'm lurking anyway via linux-pci :)

Indeed very interested in this.  I'm carrying a local copy of Clement's ser=
ies but
more than happy if Herve gets that bit ready for upstream.

I think we are still some way from this all working for a non trivial PCI c=
ard
on an ACPI system though.  Maybe I'm wrong and the rest will turn out to be=
 easy!

Jonathan





