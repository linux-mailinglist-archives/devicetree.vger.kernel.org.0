Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A7D950EBAD
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 00:21:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235660AbiDYWYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 18:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343536AbiDYVbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 17:31:48 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8442D25291
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 14:28:42 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id w1so28535947lfa.4
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 14:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=n8UX5CkRGFto6VJEt0xwsce/6A7+y4fIetYiGMx5MI0=;
        b=kbil55KIY63vXXyzD+crVCdXgSJIJILckhY2cAwc1NLLUTbbOf08VWr1Xoxch80YHZ
         7sZHcEhjdr8U2ajs2nMKk3Hh5x3B6W9PEjpY7JMTeW3wO6DqaQtIeQ5jHQlOx3eFVqX8
         Po1ONAI6sgNUfridbNV6JkEBD0Kj1fzWOqPOErdr1wOXLs6Zq2XWW+ii5JTEVkzqE8oO
         xPPdWsOt7P621+mzdwTk+loDG4y4/4cfDoHHtu/yy39JsDEC0NqbhI5CTL0/v+1KG5df
         3LcTaETBbo0JFkDn3Cm0FcSB6f6mJo3FozJp40ZfeCUwSK/xRmeaWUtkOcf65jC1JXNU
         CLpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n8UX5CkRGFto6VJEt0xwsce/6A7+y4fIetYiGMx5MI0=;
        b=fq8tQ/hE1fPDRvTeyINEUj23WWCB7kx+g0mkClEsIUi+s/gGYVMkK847uWJOIaVgki
         HbhbYPcXh9kwa3NtNxgahKjZqP2QXX8uaEQ5fDgjGwh5G8lXkiv9ekfl9k4Nkfx44bSv
         X6BkJHBHaPVHHedk9E+MXnl+wRvC0guNX1d3C8VnEah2irGaU/SH4w5QqAPFFLCyUiE8
         Zaeiuun3mnbunaZmxhKDB0hXG6EmzUklw7uin0vO416Z3ZMQjQX/ocPacSqYcU54G4Rs
         m3tCIWJMuT36he/2eV4gbXK1oonYZYWhTXD3zx9lEG+L+BzGmiM8xxUnNbgm6rbSaCvz
         91yg==
X-Gm-Message-State: AOAM531rOPIH0wwYs7TjoE/f0pqJCcSxUwOuvHRKqYS6BrvsagWlyWFC
        h3B3xKa6YXzcrXNqyvL4txYlgw==
X-Google-Smtp-Source: ABdhPJyzKnWLWDQgzbw4YS3hN2bwKNwH6KFZ1upIowARKlJrOinv2UjH+hhNSN3yUG2IaMGisH7olA==
X-Received: by 2002:a05:6512:3f26:b0:46b:92c0:54da with SMTP id y38-20020a0565123f2600b0046b92c054damr15366855lfa.369.1650922120816;
        Mon, 25 Apr 2022 14:28:40 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q14-20020a19f20e000000b0046f78ef7202sm1532496lfh.231.2022.04.25.14.28.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 14:28:40 -0700 (PDT)
Message-ID: <06831174-6c69-6d7f-55da-d7b0b6d67efe@linaro.org>
Date:   Tue, 26 Apr 2022 00:28:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v2 2/5] PCI: dwc: Teach dwc core to parse additional MSI
 interrupts
Content-Language: en-GB
To:     Bjorn Helgaas <helgaas@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20220425015037.GA1611231@bhelgaas>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220425015037.GA1611231@bhelgaas>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 04:50, Bjorn Helgaas wrote:
> On Sat, Apr 23, 2022 at 04:39:36PM +0300, Dmitry Baryshkov wrote:
>> DWC driver parses a single "msi" interrupt which gets fired when the EP
>> sends an MSI interrupt, however for some devices (Qualcomm) devies MSI
>> vectors are handled in groups of 32 vectors. Add support for parsing
>> "split" MSI interrupts.
> 
> devies?  Maybe spurious?

Devices, of course :D

> 
>> In addition to the "msi" interrupt, the code will lookup the "msi2",
>> "msi3", etc. IRQs and use them for the MSI group interrupts. For
>> backwards compatibility with existing DTS files, the code will not error
>> out if any of these interrupts is missing. Instead it will limit itself
>> to the amount of MSI group IRQs declared in the DT file.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   .../pci/controller/dwc/pcie-designware-host.c | 23 +++++++++++++++++++
>>   drivers/pci/controller/dwc/pcie-designware.h  |  1 +
>>   2 files changed, 24 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
>> index 5d90009a0f73..ce7071095006 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
>> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
>> @@ -382,6 +382,29 @@ int dw_pcie_host_init(struct pcie_port *pp)
>>   				pp->msi_irq[0] = irq;
>>   			}
>>   
>> +			if (pp->has_split_msi_irq) {
>> +				char irq_name[] = "msiXXX";
>> +				int irq;
>> +
>> +				for (ctrl = 1; ctrl < num_ctrls; ctrl++) {
>> +					if (pp->msi_irq[ctrl])
>> +						continue;
>> +
>> +					snprintf(irq_name, sizeof(irq_name), "msi%d", ctrl + 1);
>> +					irq = platform_get_irq_byname_optional(pdev, irq_name);
>> +					if (irq == -ENXIO) {
>> +						num_ctrls = ctrl;
>> +						pp->num_vectors = num_ctrls * MAX_MSI_IRQS_PER_CTRL;
>> +						dev_warn(dev, "Limiting amount of MSI irqs to %d\n", pp->num_vectors);
>> +						break;
>> +					}
>> +					if (irq < 0)
>> +						return irq;
>> +
>> +					pp->msi_irq[ctrl] = irq;
>> +				}
>> +			}
> 
> This is getting pretty deeply nested, which means it's impractical to
> fit in 80 columns like the rest of the file, which means it's ripe for
> refactoring to reduce the indentation.
> 
> s/amount of/number of/
> s/MSI irqs/MSI IRQs/
> 
>>   			pp->msi_irq_chip = &dw_pci_msi_bottom_irq_chip;
>>   
>>   			ret = dw_pcie_allocate_domains(pp);
>> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
>> index 9c1a38b0a6b3..3aa840a5b19c 100644
>> --- a/drivers/pci/controller/dwc/pcie-designware.h
>> +++ b/drivers/pci/controller/dwc/pcie-designware.h
>> @@ -179,6 +179,7 @@ struct dw_pcie_host_ops {
>>   
>>   struct pcie_port {
>>   	bool			has_msi_ctrl:1;
>> +	bool			has_split_msi_irq:1;
>>   	u64			cfg0_base;
>>   	void __iomem		*va_cfg0_base;
>>   	u32			cfg0_size;
>> -- 
>> 2.35.1
>>


-- 
With best wishes
Dmitry
