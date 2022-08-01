Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12175586B84
	for <lists+devicetree@lfdr.de>; Mon,  1 Aug 2022 15:02:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234902AbiHANCK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Aug 2022 09:02:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234862AbiHANCI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Aug 2022 09:02:08 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8923B2183E
        for <devicetree@vger.kernel.org>; Mon,  1 Aug 2022 06:02:07 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id 23so9617850pgc.8
        for <devicetree@vger.kernel.org>; Mon, 01 Aug 2022 06:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=EvOAW4yiouCDKKU3+SAhHIjwe4Iq+NIZHcYSBGK2BkA=;
        b=zer2RPT3O5Pvq9MFNfvqeNRzkAHAIQJOF5BY2yC+7XQOOGYT+6Fhdv0lQK8DHWJcWv
         q6kthAQB9cC2djVZG2Q8KiG8cxFjSxEE7ICdzAZwyo8J1IEiJHbwAsY0LgqfdMMaku9m
         KE8Ke0uijhNv3AOaIYkk1ciJk0a5igEkllh/pgUnbR4GFSwZsBinRaOkC6cDiSR3hdgG
         mscs3eGr6zyoP8riWH26ryU/7vmmcwr88vmKEYQrByXm2eM/mIwNMb49utW3vhHHaiXW
         w+yA2j6mtLfLy0dedkfeH+9OaecwvJXilvkhwSpfHpDE2mZUePZsR1Yi4ljFm1AJpp1l
         lVIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=EvOAW4yiouCDKKU3+SAhHIjwe4Iq+NIZHcYSBGK2BkA=;
        b=7YMhZXcCVtrHmbZ2dPx6tDMQBMzsAWD/OJym+Z6SwfydiIrrDw8U5mfyw6hZlgcHPn
         JUmhLB2z9zaeasFcYXBoqd1nW4bPf5CNydVdVY3ixqTffg1COtr2EyZUHxdAvTGn4YTJ
         74PfSwEKnoNf29uwej044YVLytdBA+D0R0GP/7V+K0CXBgmbl0k75mWaAzpgeIXcJ9Tl
         zPoyVtaYTUiqargt8ij/jUXbigN6UilA61p2+JbdXdduxJEluHraTgOXRgFO2RJ/ZTdo
         3wo5enkNZIn0E8nL9oC7xvuFaCd7cW4Oel5CqeqLIiBK0aujYaj1eqRj5YbhoITeEzA8
         rdkA==
X-Gm-Message-State: AJIora9mbKRptQWVeWsrueHwwWF3CdSBzB/fXqr1GrHbvmer96L7/7gb
        7b22+0ah9TgoU7FjkqvUiShe
X-Google-Smtp-Source: AGRyM1t2yBT05/URt/oW2WJKpKzxW6Y7uwcj9b/xWhJp7MeEmTYmW9r8cStM+EaKQx/cdPH9tw+Cow==
X-Received: by 2002:aa7:8d94:0:b0:52b:a70e:ae89 with SMTP id i20-20020aa78d94000000b0052ba70eae89mr16522697pfr.23.1659358926978;
        Mon, 01 Aug 2022 06:02:06 -0700 (PDT)
Received: from thinkpad ([117.217.185.73])
        by smtp.gmail.com with ESMTPSA id x17-20020aa79ad1000000b0052d90512a53sm1772687pfp.44.2022.08.01.06.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 06:02:06 -0700 (PDT)
Date:   Mon, 1 Aug 2022 18:31:56 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc:     Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Frank Li <Frank.Li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v4 02/15] PCI: dwc: Detect iATU settings after
 getting "addr_space" resource
Message-ID: <20220801130156.GB93763@thinkpad>
References: <20220624143947.8991-1-Sergey.Semin@baikalelectronics.ru>
 <20220624143947.8991-3-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220624143947.8991-3-Sergey.Semin@baikalelectronics.ru>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 24, 2022 at 05:39:34PM +0300, Serge Semin wrote:
> The iATU detection procedure was introduced in the commit 281f1f99cf3a
> ("PCI: dwc: Detect number of iATU windows"). A bit later the procedure
> execution was moved to Host/EP-specific methods in the framework of commit
> 8bcca2658558 ("PCI: dwc: Move iATU detection earlier"). The later
> modification wasn't done in the most optimal way since the "addr_space"
> CSR region resource doesn't depend on anything detected in the
> dw_pcie_iatu_detect() method. Thus the detection can be postponed to be
> executed after the resource request which can fail and make the detection
> pointless. It will be also helpful for the dw_pcie_ep_init() method
> readability since we are about to add the IP-core version and eDMA module
> (a bit later) detection procedures.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> Changelog v2:
> - This is a new patch added on v2 iteration of the series.
> ---
>  drivers/pci/controller/dwc/pcie-designware-ep.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
> index 15b8059544e3..1e35542d6f72 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
> @@ -704,8 +704,6 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  		}
>  	}
>  
> -	dw_pcie_iatu_detect(pci);
> -
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
>  	if (!res)
>  		return -EINVAL;
> @@ -713,6 +711,8 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	ep->phys_base = res->start;
>  	ep->addr_size = resource_size(res);
>  
> +	dw_pcie_iatu_detect(pci);
> +
>  	ep->ib_window_map = devm_kcalloc(dev,
>  					 BITS_TO_LONGS(pci->num_ib_windows),
>  					 sizeof(long),
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
