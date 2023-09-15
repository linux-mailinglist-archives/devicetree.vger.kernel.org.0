Return-Path: <devicetree+bounces-669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8333E7A2952
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 23:24:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DC4F1C20A38
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 21:24:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4CCA1B294;
	Fri, 15 Sep 2023 21:23:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCEF11CAA
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 21:23:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12B66C433C9;
	Fri, 15 Sep 2023 21:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694813039;
	bh=0hUoXMdFFKubXMNik79gAOoVSFyPFYFdGIzN8FUcSH0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=C6pqzFqctu3QE6MFhfAZ1GPIkeqy7V6PyjOVMtJwZHP6oHIWJLimqzse9h2pRg7vU
	 vJIQ2f2oZz1Ofct7tELX5yUWu1bcndypIm3A3EMkOTbUu5uD1Wd1FWBB/P36QIHfe9
	 XjrZELQ1o+OVUMJCY5+35BXyjYwitr3PZ8yMh0FHOthgBzPkbeiBMNEgcvQe0epcEx
	 TQJcG+UiXefRllHVPyCanNx+eSGaaZ/at7HGS3CjEsSUUI28IwyWJE8XUah3ZvqPde
	 6hSuBMG6iko75l/WdCYBcX6nircVQuvVXtszzIi/zuPvNXIcxr+4TlGbl+3fg1EK/U
	 ChOkDoyxMVpJQ==
Date: Fri, 15 Sep 2023 16:23:56 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
	"gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"kw@linux.com" <kw@linux.com>,
	"manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"kishon@kernel.org" <kishon@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"marek.vasut+renesas@gmail.com" <marek.vasut+renesas@gmail.com>,
	"fancer.lancer@gmail.com" <fancer.lancer@gmail.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v20 04/19] PCI: designware-ep: Add INTx IRQs support
Message-ID: <20230915212356.GA122696@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TYBPR01MB534145152342F6E6808D98DCD8F7A@TYBPR01MB5341.jpnprd01.prod.outlook.com>

On Thu, Sep 14, 2023 at 07:56:21AM +0000, Yoshihiro Shimoda wrote:
> > From: Bjorn Helgaas, Sent: Thursday, September 14, 2023 8:31 AM
> > On Fri, Aug 25, 2023 at 06:32:04PM +0900, Yoshihiro Shimoda wrote:
> > > Add support for triggering INTx IRQs by using outbound iATU.
> > > Outbound iATU is utilized to send assert and de-assert INTA TLPs
> > > as simulated edge IRQ for INTA. (Other INT[BCD] are not asserted.)
> > > This INTx support is optional (if there is no memory for INTx,
> > > probe will not fail).
> > >
> > > The message is generated based on the payloadless Msg TLP with type
> > > 0x14, where 0x4 is the routing code implying the Terminate at
> > > Receiver message. The message code is specified as b1000xx for
> > > the INTx assertion and b1001xx for the INTx de-assertion.
> > >
> > > Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > > Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
> > > ---
> > >  .../pci/controller/dwc/pcie-designware-ep.c   | 70 +++++++++++++++++--
> > >  drivers/pci/controller/dwc/pcie-designware.h  |  2 +
> > >  2 files changed, 68 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
> > > index 747d5bc07222..91e3c4335031 100644
> > > --- a/drivers/pci/controller/dwc/pcie-designware-ep.c
> > > +++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
> > > @@ -6,9 +6,11 @@
> > >   * Author: Kishon Vijay Abraham I <kishon@ti.com>
> > >   */
> > >
> > > +#include <linux/delay.h>
> > >  #include <linux/of.h>
> > >  #include <linux/platform_device.h>
> > >
> > > +#include "../../pci.h"
> > >  #include "pcie-designware.h"
> > >  #include <linux/pci-epc.h>
> > >  #include <linux/pci-epf.h>
> > > @@ -484,14 +486,61 @@ static const struct pci_epc_ops epc_ops = {
> > >  	.get_features		= dw_pcie_ep_get_features,
> > >  };
> > >
> > > +static int dw_pcie_ep_send_msg(struct dw_pcie_ep *ep, u8 func_no, u8 code,
> > > +			       u8 routing)
> > > +{
> > > +	struct dw_pcie_ob_atu_cfg atu = { 0 };
> > > +	struct pci_epc *epc = ep->epc;
> > > +	int ret;
> > > +
> > > +	atu.func_no = func_no;
> > > +	atu.code = code;
> > > +	atu.routing = routing;
> > > +	atu.type = PCIE_ATU_TYPE_MSG;
> > > +	atu.cpu_addr = ep->intx_mem_phys;
> > > +	atu.size = epc->mem->window.page_size;
> > > +
> > > +	ret = dw_pcie_ep_outbound_atu(ep, &atu);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* A dummy-write ep->intx_mem is converted to a Msg TLP */
> > > +	writel(0, ep->intx_mem);
> > > +
> > > +	dw_pcie_ep_unmap_addr(epc, func_no, 0, ep->intx_mem_phys);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  int dw_pcie_ep_raise_legacy_irq(struct dw_pcie_ep *ep, u8 func_no)
> > >  {
> > >  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> > >  	struct device *dev = pci->dev;
> > > +	int ret;
> > >
> > > -	dev_err(dev, "EP cannot trigger legacy IRQs\n");
> > > +	if (!ep->intx_mem) {
> > > +		dev_err(dev, "legacy IRQs not supported\n");
> > > +		return -EOPNOTSUPP;
> > > +	}
> > >
> > > -	return -EINVAL;
> > > +	/*
> > > +	 * Even though the PCI bus specification implies the level-triggered
> > > +	 * INTx interrupts the kernel PCIe endpoint framework has a single
> > > +	 * PCI_EPC_IRQ_INTx flag defined for the legacy IRQs simulation. Thus
> > > +	 * this function sends the Deassert_INTx PCIe TLP after the Assert_INTx
> > > +	 * message with the 50 usec duration basically implementing the
> > > +	 * rising-edge triggering IRQ. Hopefully the interrupt controller will
> > > +	 * still be able to register the incoming IRQ event...
> > 
> > I'm not really convinced about this "assert INTA, wait 50us, deassert
> > INTA" thing.  All the INTx language in the spec is like this:
> > 
> >   ... the virtual INTx wire must be asserted whenever and *as long as*
> >   the following conditions are satisfied:
> > 
> >     - The Interrupt Disable bit in the Command register is set to 0b.
> > 
> >     - The <feature> Interrupt Enable bit in the <feature> Control
> >       Register is set to 1b.
> > 
> >     - The <feature> Status bit in the <feature> Status register is
> >       set.
> > 
> > E.g., sec PCIe r6.0, sec 5.5.6 (Link Activation), 6.1.6 (Native PME),
> > 6.2.4.1.2 (AER Interrupt Generation), 6.2.11.1 (DPC Interrupts),
> > 6.7.3.4 (Software Notification of Hot-Plug Events).
> > 
> > So it seems to me like the endpoint needs an "interrupt status" bit,
> > and the Deassert_INTx message would be sent when the host interrupt
> > handler clears that bit.
> 
> Thank you very much for your comments! About this topic, 
> Frank also has a similar opinion before [1]. So, I asked Kishon
> about this, but I didn't get any comment from Kishon at that time.
> Anyway, to handle INTx on PCIe endpoint framework properly,
> we need to modify the PCIe Endpoint framework, IIUC.
> 
> Should I modify the PCIe Endpoint framework at first?
> Or, can this patch be applied as-is? 
> I guess that such modification of the PCIe Endpoint framework
> need much time. So, if I should modify the framework at first,
> I would like to drop adding INTx support [2] from my patch series
> because supporting INTx on my PCIe controller is not mandatory.
> 
> [1]
> https://lore.kernel.org/linux-pci/TYBPR01MB5341EFAC471AEBB9100D6051D8719@TYBPR01MB5341.jpnprd01.prod.outlook.com/
> 
> [2]
> The following patches are not needed if INTx support should be dropped:
> 
> eb185e1e628a PCI: designware-ep: Add INTx IRQs support
> 5d0e51f85b23 PCI: dwc: Add outbound MSG TLPs support
> 4758bef61cc2 PCI: dwc: Change arguments of dw_pcie_prog_outbound_atu()
> 44938b13046b PCI: Add INTx Mechanism Messages macros

Since INTx support isn't mandatory at this time, I think we should
drop these patches for now.  If/when somebody definitely needs INTx
support, we can resurrect them, and then we'll have more clarity on
how it should work and we'll be better able to test it.

Bjorn

