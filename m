Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C43B6380863
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 13:22:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230239AbhENLXo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 07:23:44 -0400
Received: from mail.kernel.org ([198.145.29.99]:56326 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230213AbhENLXo (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 May 2021 07:23:44 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B792613DE;
        Fri, 14 May 2021 11:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1620991353;
        bh=fdI4/WvFxLdOxw3z0CJfS4djdEHMKXDEj+klVKAPPdM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=SfyuVtLk6E8Z65FAVs45sn4bhQlv74lXiwqfQ10FIfAcIv1uWX2qGOKNlzuX37A0V
         y8y/OzI4Z9TSvvbflhG9P0FK016w73qiejkBEIFf48S3YnGTV4owY+RRD7xrnU1cM0
         fNXXSXqd/1ZXPUFmBQ28HjUaEFSzAPRUVqOtFrAY=
Date:   Fri, 14 May 2021 13:22:30 +0200
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-phy@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-staging@lists.linux.dev, NeilBrown <neil@brown.name>,
        Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some
 improvements
Message-ID: <YJ5ddkGytGI+kAt9@kroah.com>
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
 <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
 <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 14, 2021 at 01:19:18PM +0200, Sergio Paracuellos wrote:
> On Fri, May 14, 2021 at 12:46 PM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 08-05-21, 09:09, Sergio Paracuellos wrote:
> > > Hi all,
> > >
> > > This series contains some improvements in the pci phy driver
> > > for MT7621 SoCs.
> > >
> > > MT7621 SoC clock driver has already mainlined in
> > > 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> > >
> > > Because of this we can update schema documentation and device tree
> > > to add related clock entries and avoid custom architecture code
> > > in favour of using the clock kernel framework to retrieve clock
> > > frequency needed to properly configure the PCIe related Phys.
> > >
> > > After this changes there is no problem to properly enable this
> > > driver for COMPILE_TEST.
> > >
> > > Configuration has also modified from 'tristate' to 'bool' depending
> > > on PCI_MT7621 which seems to have more sense.
> >
> > Applied 2-6, thanks
> 
> Thanks, Vinod.
> 
> Greg, can you take patch 1 through your tree?

Sure, can you resend it?

thanks,

greg k-h
