Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36B84AF429
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2019 04:11:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726562AbfIKCLi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 22:11:38 -0400
Received: from mail.kernel.org ([198.145.29.99]:58308 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726510AbfIKCLi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 10 Sep 2019 22:11:38 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CCB02208E4;
        Wed, 11 Sep 2019 02:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1568167897;
        bh=wN3entfb3NTWY+gXs7eCj7SlJ951/P0907ehl1l0cQo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uMxX+qvcw3H6p8YdCZDxFK4zg90W6w9CFWEv3AsyB9FSy+jsttj76wYvNuwJtuGwu
         oFS75MP9I7x5JS9i2mY4mZU3gEb75kigykTqeEi65MjbccWghLolug1hiCgIn0MqgC
         yrkRth2KTAFup4lK2vlNzVpY2BE+hWDz7DLPLkW8=
Date:   Wed, 11 Sep 2019 10:11:29 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     =?iso-8859-1?Q?S=E9bastien?= Szymanski 
        <sebastien.szymanski@armadeus.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] ARM: dts: opos6ul/opos6uldev: rework device tree
 to support i.MX6ULL
Message-ID: <20190911021127.GB13923@dragon>
References: <20190724120623.2385-1-sebastien.szymanski@armadeus.com>
 <194bd606-e4bf-d8fd-ece2-cbec1f5e025f@armadeus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <194bd606-e4bf-d8fd-ece2-cbec1f5e025f@armadeus.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 03, 2019 at 09:38:11AM +0200, Sébastien Szymanski wrote:
> Hello,
> 
> On 7/24/19 2:06 PM, Sébastien Szymanski wrote:
> > Rework the device trees of the OPOS6UL and OPOS6ULDev boards to support
> > the OPOS6UL SoM with an i.MX6ULL SoC.  The device trees are now as
> > following:
> > 
> > - imx6ul-imx6ull-opos6ul.dtsi
> >   common for both i.MX6UL and i.MX6ULL OPOS6UL SoM.
> > - imx6ul-opos6ul.dtsi
> >   for i.MX6UL OPOS6UL SoM. It includes imx6ul.dtsi and
> >   imx6ul-imx6ull-opos6ul.dtsi.
> > - imx6ull-opos6ul.dtsi
> >   for i.MX6ULL OPOS6UL SoM. It includes imx6ull.dtsi and
> >   imx6ul-imx6ull-opos6ul.dtsi.
> > 
> > - imx6ul-imx6ull-opos6uldev.dtsi
> >   OPOS6ULDev base device tree.
> > - imx6ul-opos6uldev.dts
> >   OPOS6ULDev board with an i.MX6UL OPOS6UL SoM. It includes
> >   imx6ul-opos6ul.dtsi and imx6ul-imx6ull-opos6uldevdtsi.
> > - imx6ull-opos6uldev.dts
> >   OPOS6ULDev board with an i.MX6ULL OPOS6UL SoM. It includes
> >   imx6ull-opos6ul.dtsi and imx6ul-imx6ull-opos6uldevdtsi.
> > 
> > Signed-off-by: Sébastien Szymanski <sebastien.szymanski@armadeus.com>
> > ---
> > 
> > Changes for v2:
> > - explain the file hierarchy in the commit log
> > - use MIT license instead of X11
> > - Change compatible properties to "armadeus,imx6{ul,ull}-opos6ul" and
> >   "armadeus,imx6{ul,ull}-opos6uldev" to follow the bindings of the
> >   Armadeus boards already supported.
> 
> gentle ping...

I missed the patches.  Sorry about that.  Just applied both.

Shawn
