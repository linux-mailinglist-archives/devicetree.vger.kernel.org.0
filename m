Return-Path: <devicetree+bounces-316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2653E7A0F62
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 22:59:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CF001C20A3E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 20:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1F9126E0C;
	Thu, 14 Sep 2023 20:59:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7403933D3
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 20:59:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71EC1C433C7;
	Thu, 14 Sep 2023 20:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694725149;
	bh=6/HP6sGu1xuiBMAjZnt+rc8Ky+5EIIcGXSmu7qirZuo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=WRtd8k7+xFHw55G4nIHSe8w+l9gPgkZDWRlpb5G3zDUsMmSprXQUa3RRwi9FvB63/
	 4RChK2m6oTtJsIUlYfJCO5uIoMkEdp8CepPc4S6TDIukVQJnj5GFG0Jdb94GQU/vU5
	 jAaZZSXGDXsIMJj7mERi8Pd/9S/RmUaIpkWWzDe00alqzpbDXIzeMK2vPXLqJTMaOz
	 i5y1xezfBuUwfbwaErEaMXuwHUyQIyOZjulkJBeP5Ty3ecyEPvMfowR7eN8G8XwqbM
	 fymrSlKePJ2gdJsowS5nhTQ8UtdLt5xkvki7TsuUTeAUUDcFkU7TaiD80dLDFEikCY
	 qVDUg60a4bk6g==
Date: Thu, 14 Sep 2023 15:59:06 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Serge Semin <fancer.lancer@gmail.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
	lpieralisi@kernel.org, robh+dt@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com,
	kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v20 07/19] PCI: dwc: Add missing PCI_EXP_LNKCAP_MLW
 handling
Message-ID: <20230914205906.GA79508@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <notuqnugfnmu7ep7rvnerix7hvgqt5b4wdrirjjgggjsxfc7lz@pismsfnlenu4>

On Thu, Sep 14, 2023 at 11:48:39PM +0300, Serge Semin wrote:
> On Thu, Sep 14, 2023 at 11:00:58AM -0500, Bjorn Helgaas wrote:
> > On Fri, Aug 25, 2023 at 06:32:07PM +0900, Yoshihiro Shimoda wrote:
> > > Update dw_pcie_link_set_max_link_width() to set PCI_EXP_LNKCAP_MLW.
> > > In accordance with the DW PCIe RC/EP HW manuals [1,2,3,...] aside with
> > > the PORT_LINK_CTRL_OFF.LINK_CAPABLE and GEN2_CTRL_OFF.NUM_OF_LANES[8:0]
> > > field there is another one which needs to be updated. It's
> > > LINK_CAPABILITIES_REG.PCIE_CAP_MAX_LINK_WIDTH. If it isn't done at
> > > the very least the maximum link-width capability CSR won't expose
> > > the actual maximum capability.
> > > 
> > > [1] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
> > >     Version 4.60a, March 2015, p.1032
> > > [2] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
> > >     Version 4.70a, March 2016, p.1065
> > > [3] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
> > >     Version 4.90a, March 2016, p.1057
> > > ...
> > > [X] DesignWare Cores PCI Express Controller Databook - DWC PCIe Endpoint,
> > >       Version 5.40a, March 2019, p.1396
> > > [X+1] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
> > >       Version 5.40a, March 2019, p.1266
> 
> > Is there value in keeping all four of these Root Port citations?  I
> > assume that if you have the most recent one (X+1), it completely
> > obsoletes the older ones, so you should never have to look at the
> > older ones?
> 
> In general the procedure may differ from one device version to
> another. Though it doesn't concern DW PCIe IP-cores. So by citing all
> these manuals I implied that all DW PCIe controllers expect the same
> link-width initialization procedure. Keeping that in mind I guess the
> text could be indeed simplified by keeping only two citations (note
> [X] and [X+1] refer to the Root Port and End-point HW databooks of the
> same IP-core version) and noting in the text that the procedure is
> common for the older DW PCIe controllers too.
> 
> In anyway I wouldn't say that new IP-core databooks obsolete the
> old one since the driver supports all old and new controllers. So
> before introducing a generic procedure we need to make sure that it
> will work for all the known to be supported devices. From that
> perspective citing all the available databooks gets to make sense.

You mean that instead of merely *adding* new details about new
devices, v5.40a might OMIT details specific to older devices covered
by v4.60a?  That sounds like ... kind of an unhelpful way to manage
the spec, but if so, I see your point.

Bjorn

