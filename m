Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49F91586BFF
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 15:29:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231726AbiHAN3b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 09:29:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231634AbiHAN33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 09:29:29 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F04C3CBC0
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 06:29:25 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id t2so10451948ply.2
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 06:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=piHbK3UTbLD9iX3PR06IXvcLd5J15k6XNiAP53ZMJ4M=;
        b=uarbxJk2fAKWggvb+nqWwyIdVHYdxMvhC3w+walHGbRvIXqB/KHaPOb1ekLfW5unTw
         FleMMIiUYW4Ox6mnoQvMRDLVgqJbyNjh8uZTkuxJcVY2OuIC5YAueJRbPnCEnEA/WHwF
         Cppgpm4qkdJ34arKkjA5Bo7fozZ+Jt4lh/SZ9TMlxqF+zWANlRQXfFf1bGQedPoRSWTz
         x752vYb4PVKFaK+yZy0ofrS8Y4fkLsFcQicGYgL7PF9bW7MwJoNQA56yQ6NsvOuF54xd
         VjWEGBSYVTgMI7ga5Tp7HPy8FPwnZK3M8UZUsdF6CQiE2Yf1lH8SCys76qUtTPc1rUOp
         IDfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=piHbK3UTbLD9iX3PR06IXvcLd5J15k6XNiAP53ZMJ4M=;
        b=Q9Up2MAS+xreMNI6rgkilUHbiv+sni99Lv3eKY1oB0pf2grhWReD8DjxzGwB0nLAzp
         pjbdrCD+CHUb8/TYTqJOshbn/SVsZCL75Sv25HpIaYQSmjzwOa2rlLwLbFIxpN8rOo09
         9xEbulBS2+qeodLH9vqG3/jvj4SMvUACm3+cjLqLVc9RX0d3jbuJBnHa6shlmOpNxJyV
         9vwL7CMm3zsfiC2uUfz0nXsx0TQtY8Nyon/DjRyFoPTD4/ymaJf9FkEVvXrJdA/DENqV
         eN3gOafUdAn1PJ+k29x9ptV1uGR6grTItbMSPUCEoUMm1LM7qu2B6hKXF4K6ZrsAkA2j
         W3Pw==
X-Gm-Message-State: ACgBeo2lkEYE6sHWy01fUuAQtWyaFsALW3m0g+Aoyl7kipDKrOPvfebH
        I98g+GKJZ1ipZ2ZSbc1F4b1e
X-Google-Smtp-Source: AA6agR6f2gG1JYF96xw37fgWxbCpANQ6x8CkczTqANqhYTnastBsdlFNyUsPc3C5KODvwf6fE5Bb3A==
X-Received: by 2002:a17:90b:3a90:b0:1f2:edfe:db4 with SMTP id om16-20020a17090b3a9000b001f2edfe0db4mr19430937pjb.105.1659360564404;
        Mon, 01 Aug 2022 06:29:24 -0700 (PDT)
Received: from thinkpad ([117.217.185.73])
        by smtp.gmail.com with ESMTPSA id l190-20020a6225c7000000b0052d98fbf8f3sm1647563pfl.56.2022.08.01.06.29.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 06:29:24 -0700 (PDT)
Date:   Mon, 1 Aug 2022 18:59:12 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc:     Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Frank Li <Frank.Li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH RESEND v4 07/15] PCI: tegra194: Drop manual DW PCIe
 controller version setup
Message-ID: <20220801132912.GG93763@thinkpad>
References: <20220624143947.8991-1-Sergey.Semin@baikalelectronics.ru>
 <20220624143947.8991-8-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220624143947.8991-8-Sergey.Semin@baikalelectronics.ru>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 24, 2022 at 05:39:39PM +0300, Serge Semin wrote:
> Since the DW PCIe common code now supports the IP-core version
> auto-detection there is no point in manually setting the version up for the
> controllers newer than v4.70a. Seeing Tegra 194 PCIe Host and EP
> controllers are based on the DW PCIe v4.90a IP-core we can freely drop the
> dw_pcie.version field initialization.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> 
> ---
> 
> Folks, I don't have Tegra 194 PCIe hw instance to test it out. Could you
> please make sure this patch doesn't brake anything?
> 
> Changelog v3:
> - This is a new patch create as a result of the discussion:
>   https://lore.kernel.org/linux-pci/20220503214638.1895-6-Sergey.Semin@baikalelectronics.ru/
> ---
>  drivers/pci/controller/dwc/pcie-tegra194.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index f24b30b7454f..e497e6de8d15 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -1979,7 +1979,6 @@ static int tegra194_pcie_probe(struct platform_device *pdev)
>  	pci->ops = &tegra_dw_pcie_ops;
>  	pci->n_fts[0] = N_FTS_VAL;
>  	pci->n_fts[1] = FTS_VAL;
> -	pci->version = DW_PCIE_VER_490A;
>  
>  	pp = &pci->pp;
>  	pp->num_vectors = MAX_MSI_IRQS;
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
