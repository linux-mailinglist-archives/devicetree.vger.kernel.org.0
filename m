Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2213D565C44
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 18:38:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234787AbiGDQiQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 12:38:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234408AbiGDQiP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 12:38:15 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B2E3BF53
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 09:38:14 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id y141so9373311pfb.7
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 09:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=AjJKQminJnYU4sOMi1i5IyPBC7LXYI56Ny4cFg5/KdQ=;
        b=TXLeuw2myKh5xSku0vwwa6jDkgK4h3bUC8L0dWhVsAforqVrjtCGvpH4QQGMNkRWfI
         xNHvAiWcsaLNwlCNWoV4kwsaoBrx+dXbkl7paCinGL8prqnoufFkhrsjB3ygLZ9sJEvH
         JkFrAW5iBBJlXCEp8Zn80XbO0+sHuJ8YJr3FiUbxlh/cohFv0HCeaVnR2svVBuXJz5cE
         L5HosR0jVSIKVh9fr7yEaK2H08Bn0PN0fXm6WAGaQWUL0l8A4a3b1QODV1K/gnQzkpRF
         ZkZb3NsOCtwedAtk+V0oJmIabEEFfzdm4zMFf0bRPlQ2cnP7iGxzTkjTd8wMWz9mgSPY
         uwMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=AjJKQminJnYU4sOMi1i5IyPBC7LXYI56Ny4cFg5/KdQ=;
        b=swndWtcmVFB7UL4QLt16yDd7sGDQrmfAdaWcNuasa3GXem7JW5G/x2ATQNd11ggxFk
         b9eROdA9JWT0oq10xrAayy4lz/kF42fXlt0rV+BX4qN/ixsx7RGRA1Wp5LGa5CLiVbNA
         OUCg/er4fdlhnn1lbpbp62hLl3/BhlSXaG2gl7IZqox1/DbdvOhNZ2bv78+YSgcR6eAA
         NMjIKb6D3Cf1FxgME45YnkqLurlhouUMATjvCB6b4jzTIdEtaGMFQ3SquDjWpUNnubf3
         VQvBjFTD5YpU6QbhjeeW+xP/X6av2SNJNqpviNk7j+fN6lnIhhVUS68qncffZICUmaFa
         fErQ==
X-Gm-Message-State: AJIora8Ki1VL4/0+/ukJ4nZsqRfaQS3qwP7NMnermt+vr4Gwn4w6xjxx
        OQe7SKjJgNG6bifhKCWaIPL5
X-Google-Smtp-Source: AGRyM1vHXCL7Xu4fc6mm6Wje8u6H0brBp37N+BOFyjOvOHWvbKShGDQRHk+r54fJVex5LsLch0bQcA==
X-Received: by 2002:a63:bf4d:0:b0:40c:4060:f6d with SMTP id i13-20020a63bf4d000000b0040c40600f6dmr26314509pgo.254.1656952693752;
        Mon, 04 Jul 2022 09:38:13 -0700 (PDT)
Received: from thinkpad ([220.158.158.244])
        by smtp.gmail.com with ESMTPSA id e11-20020a6558cb000000b00408b89e4282sm20669923pgu.47.2022.07.04.09.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jul 2022 09:38:13 -0700 (PDT)
Date:   Mon, 4 Jul 2022 22:08:06 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v16 1/6] PCI: dwc: Correct msi_irq condition in
 dw_pcie_free_msi()
Message-ID: <20220704163806.GE6560@thinkpad>
References: <20220704152746.807550-1-dmitry.baryshkov@linaro.org>
 <20220704152746.807550-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220704152746.807550-2-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 04, 2022 at 06:27:41PM +0300, Dmitry Baryshkov wrote:
> The subdrivers pass -ESOMETHING if they do not want the core to touch
> MSI IRQ. dw_pcie_host_init() also checks if (msi_irq > 0) rather than
> just if (msi_irq). So let's make dw_pcie_free_msi() also check that
> msi_irq is greater than zero.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 1e3972c487b5..4418879fbf43 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -257,7 +257,7 @@ int dw_pcie_allocate_domains(struct pcie_port *pp)
>  
>  static void dw_pcie_free_msi(struct pcie_port *pp)
>  {
> -	if (pp->msi_irq)
> +	if (pp->msi_irq > 0)
>  		irq_set_chained_handler_and_data(pp->msi_irq, NULL, NULL);
>  
>  	irq_domain_remove(pp->msi_domain);
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
