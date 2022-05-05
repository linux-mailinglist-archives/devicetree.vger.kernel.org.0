Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9DD551BC63
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 11:45:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240358AbiEEJtS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 05:49:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245181AbiEEJtR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 05:49:17 -0400
X-Greylist: delayed 493 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 05 May 2022 02:45:37 PDT
Received: from extserv.mm-sol.com (ns.mm-sol.com [37.157.136.199])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5407E9FFE
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 02:45:34 -0700 (PDT)
Received: from [192.168.1.17] (hst-208-205.medicom.bg [84.238.208.205])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (Client did not present a certificate)
        (Authenticated sender: svarbanov@mm-sol.com)
        by extserv.mm-sol.com (Postfix) with ESMTPSA id D6D74D2AC;
        Thu,  5 May 2022 12:37:18 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mm-sol.com; s=201706;
        t=1651743439; bh=ctf6YGQiT338dLkbd6KPaHUQix/iMCjR+IHG51+mthw=;
        h=Date:Subject:To:Cc:From:From;
        b=GRzW46ynLtX4Vc/Hwx21Qr9q7kv2AGRmn0pMfp/ZssZlvuLMP5FDqmKUm1soT6nvZ
         pW6AjI/M4tSiCE+7Bn839yOsn4aL+cru1gS8xmupd9QazJYwG3EGRXMqNrq2TBaxvj
         R2jn8iN6B0i09R4dhvIruYo/07lO5odYwSXUCB0ouYmq7TNfPgsE958oHlvI1air5j
         DSB40rwkRanenjVIQEzz91gdDA43vN1zIBN8nRxl68BhLe+Z+t0lVhZ38pLF7DBht/
         n3pvkLeo9jTxdb7VZZlSXbCeqTZJyfUID7hzTrp81kFfeRkE9gJOHk/mze2NURtAjS
         keD7xur1ptVJg==
Message-ID: <404693dd-c201-ffab-ab3c-b2ba84f8fc4c@mm-sol.com>
Date:   Thu, 5 May 2022 12:37:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 4/7] PCI: dwc: Export several functions useful for MSI
 implentations
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20220505091231.1308963-1-dmitry.baryshkov@linaro.org>
 <20220505091231.1308963-5-dmitry.baryshkov@linaro.org>
From:   Stanimir Varbanov <svarbanov@mm-sol.com>
In-Reply-To: <20220505091231.1308963-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

Just conding style issues below.

On 5/5/22 12:12, Dmitry Baryshkov wrote:
> Supporting multiple MSI interrupts on Qualcomm hardware would benefit
> from having these functions being exported rather than static. Note that
> both designware and qcom driver can not be built as modules, so no need
> to use EXPORT_SYMBOL here.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../pci/controller/dwc/pcie-designware-host.c | 62 ++++++++++++-------
>  drivers/pci/controller/dwc/pcie-designware.h  | 11 ++++
>  2 files changed, 49 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 92dcaeabe2bf..c3b8ab278a00 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -255,7 +255,39 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
>  	return 0;
>  }
>  
> -static void dw_pcie_free_msi(struct pcie_port *pp)
> +int dw_pcie_allocate_msi(struct pcie_port *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	int ret;
> +
> +	ret = dw_pcie_allocate_domains(pp);
> +	if (ret)
> +		return ret;
> +
> +	if (pp->msi_irq > 0)
> +		irq_set_chained_handler_and_data(pp->msi_irq,
> +				dw_chained_msi_isr,
> +				pp);

Could you please align 2nd and 3rd function arguments to the open brace
here and on all other places ...

> +
> +	ret = dma_set_mask(pci->dev, DMA_BIT_MASK(32));
> +	if (ret)
> +		dev_warn(pci->dev, "Failed to set DMA mask to 32-bit. Devices with only 32-bit MSI support may not work properly\n");
> +
> +	pp->msi_data = dma_map_single_attrs(pci->dev, &pp->msi_msg,
> +			sizeof(pp->msi_msg),
> +			DMA_FROM_DEVICE,
> +			DMA_ATTR_SKIP_CPU_SYNC);

ditto

> +	ret = dma_mapping_error(pci->dev, pp->msi_data);
> +	if (ret) {
> +		dev_err(pci->dev, "Failed to map MSI data\n");
> +		pp->msi_data = 0;
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +void dw_pcie_free_msi(struct pcie_port *pp)
>  {
>  	if (pp->msi_irq > 0)
>  		irq_set_chained_handler_and_data(pp->msi_irq, NULL, NULL);
> @@ -357,6 +389,9 @@ int dw_pcie_host_init(struct pcie_port *pp)
>  			return -EINVAL;
>  		}
>  
> +		/* this can be overridden by msi_host_init() if necessary */
> +		pp->msi_irq_chip = &dw_pci_msi_bottom_irq_chip;
> +
>  		if (pp->ops->msi_host_init) {
>  			ret = pp->ops->msi_host_init(pp);
>  			if (ret < 0)
> @@ -377,30 +412,9 @@ int dw_pcie_host_init(struct pcie_port *pp)
>  				}
>  			}
>  
> -			pp->msi_irq_chip = &dw_pci_msi_bottom_irq_chip;
> -
> -			ret = dw_pcie_allocate_domains(pp);
> -			if (ret)
> +			ret = dw_pcie_allocate_msi(pp);
> +			if (ret < 0)
>  				return ret;
> -
> -			if (pp->msi_irq > 0)
> -				irq_set_chained_handler_and_data(pp->msi_irq,
> -							    dw_chained_msi_isr,
> -							    pp);
> -
> -			ret = dma_set_mask(pci->dev, DMA_BIT_MASK(32));
> -			if (ret)
> -				dev_warn(pci->dev, "Failed to set DMA mask to 32-bit. Devices with only 32-bit MSI support may not work properly\n");
> -
> -			pp->msi_data = dma_map_single_attrs(pci->dev, &pp->msi_msg,
> -						      sizeof(pp->msi_msg),
> -						      DMA_FROM_DEVICE,
> -						      DMA_ATTR_SKIP_CPU_SYNC);
> -			if (dma_mapping_error(pci->dev, pp->msi_data)) {
> -				dev_err(pci->dev, "Failed to map MSI data\n");
> -				pp->msi_data = 0;
> -				goto err_free_msi;
> -			}
>  		}
>  	}
>  
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index e1c48b71e0d2..f72447f15dc5 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -374,6 +374,8 @@ void dw_pcie_host_deinit(struct pcie_port *pp);
>  int dw_pcie_allocate_domains(struct pcie_port *pp);
>  void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus, unsigned int devfn,
>  				       int where);
> +int dw_pcie_allocate_msi(struct pcie_port *pp);
> +void dw_pcie_free_msi(struct pcie_port *pp);
>  #else
>  static inline irqreturn_t dw_handle_msi_irq(struct pcie_port *pp)
>  {
> @@ -403,6 +405,15 @@ static inline void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus,
>  {
>  	return NULL;
>  }
> +
> +static int dw_pcie_allocate_msi(struct pcie_port *pp)
> +{
> +	return -EINVAL;
> +}
> +
> +static void dw_pcie_free_msi(struct pcie_port *pp)
> +{
> +}
>  #endif
>  
>  #ifdef CONFIG_PCIE_DW_EP

-- 
regards,
Stan
