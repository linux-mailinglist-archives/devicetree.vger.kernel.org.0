Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6EC52F2025
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2019 21:56:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730487AbfKFU4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Nov 2019 15:56:15 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:35869 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728817AbfKFU4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Nov 2019 15:56:14 -0500
Received: by mail-pf1-f195.google.com with SMTP id v19so19844442pfm.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2019 12:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZPKtVJ0HeVq9A2u62u0N35fYwWIPZc3YcQ49fUKjo34=;
        b=qcgoF8Pw8ajQN0r0/YA0B/GBPMJDU9rB7OMeSzx/+doN1UUPU+gZYkugbM6L6IKxMK
         gOyF4J52nenyG9fb1b0ohaAqaXKl1p7z+VkhAUV32UDvorVQAMgI0rvNqE5THiUbV6ak
         LNnZvUirh0CSgqIOowe27HE/B4e0aKNCNd1IHwwudwK2lD44dIWVmF3fgN2nA48Qeh0f
         BxNdfzeUrqFLYP0SruRcTDB9KcVwxyfxnoCesiHx1u/nWh1utrwZ9jX1UUaIFJAcsZr0
         hYb2r9bhcCrHx21GevIOyVYvkKE5q8Eanqv0f3abdzL/rfAWNva8NKO/7ZHpyMlsdDWp
         6oeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZPKtVJ0HeVq9A2u62u0N35fYwWIPZc3YcQ49fUKjo34=;
        b=DBW01t8t+VcQ7LEV0AZRa9LsQnqNjd4WJWSrVV8ZasUc8w/wOp25JPoH9QrdonhdjM
         N3ZVm3AZ91WVqpc9MmGaGN2RXXILFQWI1sECinvQBmMCraLAr08RM4KFCJalTZ4HFavo
         FhbtgAV/+UTskffhpscsGY4gUo8n/l6OPj5paE60Z24MhRBnMZbnoM3I+CcVZVfZhIxw
         ESDMLaL3GPDgKyYFX0zbV6Qal0aW7EnKkejGu2xDUpfN5jyrtvPXH20QG4j80mzvVkLd
         HcnuHTeO6ooWXTLGzR5n/GL7n7/zZ/Cxj1mEdzuj7df8p9beqtHqVAMquaNlmXS2qRK5
         YIiw==
X-Gm-Message-State: APjAAAUyh2xJPH2DEKPu/tiLDI/4uPXYyYiHzR7xfdAd07f5ZSpB9VbK
        2SbyWCE/HcM5LPYdmq0m7cfPSQ==
X-Google-Smtp-Source: APXvYqxrxtxc2N2ZiTl8LWPHZB7ZzGqBS2+4ZZz88KMpj7mjPWfn3zK2I8f0UzMGlHQIOP0r+baK9w==
X-Received: by 2002:a63:1f09:: with SMTP id f9mr5109536pgf.89.1573073773276;
        Wed, 06 Nov 2019 12:56:13 -0800 (PST)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 13sm27004520pgq.72.2019.11.06.12.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2019 12:56:12 -0800 (PST)
Date:   Wed, 6 Nov 2019 12:56:08 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] PCI: qcom: Add support for SDM845 PCIe controller
Message-ID: <20191106205608.GF36595@minitux>
References: <20191102002721.4091180-1-bjorn.andersson@linaro.org>
 <20191102002721.4091180-3-bjorn.andersson@linaro.org>
 <776ec4265217cc83e9e847ff3c80a52a86390b1b.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <776ec4265217cc83e9e847ff3c80a52a86390b1b.camel@pengutronix.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 04 Nov 01:41 PST 2019, Philipp Zabel wrote:

> Hi Bjorn,
> 
> On Fri, 2019-11-01 at 17:27 -0700, Bjorn Andersson wrote:
> > The SDM845 has one Gen2 and one Gen3 controller, add support for these.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> > 
> > Changes since v1:
> > - Style changes requested by Stan
> > - Tested with second PCIe controller as well
> > 
> >  drivers/pci/controller/dwc/pcie-qcom.c | 152 +++++++++++++++++++++++++
> >  1 file changed, 152 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > index 7e581748ee9f..35f4980480bb 100644
> > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > @@ -54,6 +54,7 @@
> [...]
> > +static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
> > +{
> > +	struct qcom_pcie_resources_2_7_0 *res = &pcie->res.v2_7_0;
> > +	struct dw_pcie *pci = pcie->pci;
> > +	struct device *dev = pci->dev;
> > +	u32 val;
> > +	int ret;
> > +
> > +	ret = regulator_bulk_enable(ARRAY_SIZE(res->supplies), res->supplies);
> > +	if (ret < 0) {
> > +		dev_err(dev, "cannot enable regulators\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = clk_bulk_prepare_enable(ARRAY_SIZE(res->clks), res->clks);
> > +	if (ret < 0)
> > +		goto err_disable_regulators;
> > +
> > +	ret = reset_control_assert(res->pci_reset);
> > +	if (ret < 0) {
> > +		dev_err(dev, "cannot deassert pci reset\n");
> > +		goto err_disable_clocks;
> > +	}
> 
> If for any of the above fails, the reset line is left in its default
> state, presumably unasserted. Is there a reason to assert and keep it
> asserted if enabling the clocks fails below?
> 

No, I don't think there's any reason for doing this and looking at the
downstream driver, they don't even propagate this error.

> > +	msleep(20);

And I see now that downstream has this as 1ms, will update and retest
again.

> > +
> > +	ret = reset_control_deassert(res->pci_reset);
> > +	if (ret < 0) {
> > +		dev_err(dev, "cannot deassert pci reset\n");
> > +		goto err_assert_resets;
> 
> Nitpick: this seems superfluous since the reset line was just asserted
> 20 ms before. Maybe just:
> 
> 		goto err_disable_clocks;

Yes, this seems reasonable.

> 
> > +	}
> > +
> > +	ret = clk_prepare_enable(res->pipe_clk);
> > +	if (ret) {
> > +		dev_err(dev, "cannot prepare/enable pipe clock\n");
> > +		goto err_assert_resets;
> > +	}
> > +
> > +	/* configure PCIe to RC mode */
> > +	writel(DEVICE_TYPE_RC, pcie->parf + PCIE20_PARF_DEVICE_TYPE);
> > +
> > +	/* enable PCIe clocks and resets */
> > +	val = readl(pcie->parf + PCIE20_PARF_PHY_CTRL);
> > +	val &= ~BIT(0);
> > +	writel(val, pcie->parf + PCIE20_PARF_PHY_CTRL);
> > +
> > +	/* change DBI base address */
> > +	writel(0, pcie->parf + PCIE20_PARF_DBI_BASE_ADDR);
> > +
> > +	/* MAC PHY_POWERDOWN MUX DISABLE  */
> > +	val = readl(pcie->parf + PCIE20_PARF_SYS_CTRL);
> > +	val &= ~BIT(29);
> > +	writel(val, pcie->parf + PCIE20_PARF_SYS_CTRL);
> > +
> > +	val = readl(pcie->parf + PCIE20_PARF_MHI_CLOCK_RESET_CTRL);
> > +	val |= BIT(4);
> > +	writel(val, pcie->parf + PCIE20_PARF_MHI_CLOCK_RESET_CTRL);
> > +
> > +	if (IS_ENABLED(CONFIG_PCI_MSI)) {
> > +		val = readl(pcie->parf + PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT);
> > +		val |= BIT(31);
> > +		writel(val, pcie->parf + PCIE20_PARF_AXI_MSTR_WR_ADDR_HALT);
> > +	}
> > +
> > +	return 0;
> > +err_assert_resets:
> > +	reset_control_assert(res->pci_reset);
> 
> So maybe this can just be removed. The reset isn't asserted in deinit
> either.
> 

Sounds good.

Thanks for your review, Philipp!

Regards,
Bjorn
