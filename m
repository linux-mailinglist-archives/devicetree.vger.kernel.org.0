Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92A73166430
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2020 18:19:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728111AbgBTRTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Feb 2020 12:19:11 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:43554 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727868AbgBTRTL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Feb 2020 12:19:11 -0500
Received: by mail-wr1-f68.google.com with SMTP id r11so5482851wrq.10
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2020 09:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=boCKpekBoONnu2x2vJLKUmcg4VOjDu6Z9N8Skkewyns=;
        b=Q13xE83+LcPqrhNEh6NHQ1au8Z2/JdUbzmH/YLYPtNTl7+yBHFo+N44wCR6BcWL64h
         qDDU/nED0VcmMpdOrIIWijZATAFcEesI6K53ZBUyGnTA257zjvpBTObdSBEoIVMFW084
         w3bofiy4YocKcnWyPfO/IjtVY5KJO7gD9ldqZDn/YKapVyXablODffPaZnXim8QAXyod
         JEiGZse4W9m+DuLYCD94g+KYCWiSlC4xLHlwyceulK0sYwmKqDrsQW36S072RVSWko4w
         +A4VFlEdGAzmsR+9xGGvJZM1NjF2F0Rgqp5FcIiEW/YL8oE4/eBhgmdeSIBZ0UBUOOVW
         +3hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=boCKpekBoONnu2x2vJLKUmcg4VOjDu6Z9N8Skkewyns=;
        b=V9QomZqIMdAceuOMo8XMHNYPBAW45h/YTwNHcLfc7UPmRsq0i/RV+KP+g1i/z5iXhf
         Ih9uvJugreuCUOGebSGsjEh5v0OxP4+qeeTi1wDERe/qG52DdKbVWeFxZ6jbYyVkvW9F
         YcRz3Eoor77HirmhZEioTHYDQPGw9+kOctlWWm8AtGDWtFjqRi1Vy1mJQGV1hAiuKeBP
         sSpuxJxf5hNKvl9VAJJEVbWFZPrxjCUN1BEJGPxlO9TosiIP3uJG8LPXy6CBZsMwY9RO
         0QmNy6A+6SIVbUYz+j4xVjwN59xjLloU14GUFBXdEK7M+sc4kUJZTzVlajkmAbqex1DM
         x1Rg==
X-Gm-Message-State: APjAAAUkGCwaT5DtRSBAldBxTrkvWT6ZWYtlJHPSs+UtzTAE7SwCtICo
        fdN2UFwYHyrHrp+H3ncuobyd9w==
X-Google-Smtp-Source: APXvYqwHG2Hc/+mR7YXbYt7FoyW6wjBkMtpEc3eYy6RMHqggBSxh2ZgyVipp8ipV9eepl//YQQFw3g==
X-Received: by 2002:adf:dfce:: with SMTP id q14mr44306523wrn.324.1582219149052;
        Thu, 20 Feb 2020 09:19:09 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
        by smtp.gmail.com with ESMTPSA id q1sm264777wrw.5.2020.02.20.09.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 09:19:08 -0800 (PST)
Date:   Thu, 20 Feb 2020 17:19:06 +0000
From:   Andrew Murray <amurray@thegoodpenguin.co.uk>
To:     Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Cc:     linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhelgaas@google.com, robh+dt@kernel.org, andrew.murray@arm.com,
        arnd@arndb.de, mark.rutland@arm.com, l.subrahmanya@mobiveil.co.in,
        shawnguo@kernel.org, m.karthikeyan@mobiveil.co.in,
        leoyang.li@nxp.com, lorenzo.pieralisi@arm.com,
        catalin.marinas@arm.com, will.deacon@arm.com, Mingkai.Hu@nxp.com,
        Minghuan.Lian@nxp.com, Xiaowei.Bao@nxp.com
Subject: Re: [PATCHv10 02/13] PCI: mobiveil: Move the host initialization
 into a function
Message-ID: <20200220171906.GE19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-3-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-3-Zhiqiang.Hou@nxp.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 13, 2020 at 12:06:33PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Move the host initialization related operations into a new
> routine such that it can be reused by other incoming platform's
> PCIe host driver, in which the Mobiveil GPEX is integrated.
> 
> Change the subject and change log slightly.
> Change the function mobiveil_pcie_host_probe to static.
> Add back the comments that was lost in v9.

Are these three lines above supposed to be in the history below the
--- ?

Perhaps Lorenzo can change that when he applies it.

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> V10:
>  - Refined the subject and change log.
>  - Changed the mobiveil_pcie_host_probe() to a static function.
>  - Added back the lost comments.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 39 +++++++++++++++-----------
>  1 file changed, 23 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index d4de560cd711..01df04ea5b48 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -873,27 +873,15 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  	return 0;
>  }
>  
> -static int mobiveil_pcie_probe(struct platform_device *pdev)
> +static int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  {
> -	struct mobiveil_pcie *pcie;
> +	struct mobiveil_root_port *rp = &pcie->rp;
> +	struct pci_host_bridge *bridge = rp->bridge;
> +	struct device *dev = &pcie->pdev->dev;
>  	struct pci_bus *bus;
>  	struct pci_bus *child;
> -	struct pci_host_bridge *bridge;
> -	struct device *dev = &pdev->dev;
> -	struct mobiveil_root_port *rp;
>  	int ret;
>  
> -	/* allocate the PCIe port */
> -	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
> -	if (!bridge)
> -		return -ENOMEM;
> -
> -	pcie = pci_host_bridge_priv(bridge);
> -	rp = &pcie->rp;
> -	rp->bridge = bridge;
> -
> -	pcie->pdev = pdev;
> -
>  	ret = mobiveil_pcie_parse_dt(pcie);
>  	if (ret) {
>  		dev_err(dev, "Parsing DT failed, ret: %x\n", ret);
> @@ -956,6 +944,25 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int mobiveil_pcie_probe(struct platform_device *pdev)
> +{
> +	struct mobiveil_pcie *pcie;
> +	struct pci_host_bridge *bridge;
> +	struct device *dev = &pdev->dev;
> +
> +	/* allocate the PCIe port */
> +	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
> +	if (!bridge)
> +		return -ENOMEM;
> +
> +	pcie = pci_host_bridge_priv(bridge);
> +	pcie->rp.bridge = bridge;
> +
> +	pcie->pdev = pdev;
> +
> +	return mobiveil_pcie_host_probe(pcie);
> +}
> +
>  static const struct of_device_id mobiveil_pcie_of_match[] = {
>  	{.compatible = "mbvl,gpex40-pcie",},
>  	{},
> -- 
> 2.17.1
> 
