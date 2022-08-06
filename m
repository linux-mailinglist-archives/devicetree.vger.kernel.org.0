Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 089FE58B5C1
	for <lists+devicetree@lfdr.de>; Sat,  6 Aug 2022 15:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbiHFNs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Aug 2022 09:48:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230422AbiHFNsZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Aug 2022 09:48:25 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36B97E01D
        for <devicetree@vger.kernel.org>; Sat,  6 Aug 2022 06:48:22 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id bh13so4875048pgb.4
        for <devicetree@vger.kernel.org>; Sat, 06 Aug 2022 06:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=TvgStXa3vG7bi+uh32sGsPJgv8LsfCjRHZ5xxTji6lE=;
        b=ES3bR2McfzepqYPSSNZOJNByBNU66z7MPhvQimFx/YBeXozBQ6nqrnDlDbGbWmPwSk
         jF4AdnNySCbx+TDceM4oFR52qxYMPnSx7jmX/XQKO+sY0PuyxqAVZNmRGnyIU2wmdkx7
         hDVIJPE6RdXG2SN+O3oftHsK2uHvwrAkTXmGdD20/1QNRd9WyipNhksqSZ0YVj4sZvKc
         zfmAFbEB72Bj1nhfml0x1z0w5AI3814EtRv3vMPdgDfroYP1WYcjTt7rJ/WMwrUduNfQ
         p5X7GKIr3sWEGAxQkhqNKUBnhB8H8OoPuHLACJWTsPT6lYwUdt7LBWYI9DGGiZaMrI0a
         FOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=TvgStXa3vG7bi+uh32sGsPJgv8LsfCjRHZ5xxTji6lE=;
        b=hNkdXqJB3bjIKW67KmomYtGfiX1pG/sqo6hry3CG41e1uQp2gNt2V3iqocZZcfvwmE
         A7rPdumjre/hyPVLeZEtjVHczAUfIBy4z2Dn/q4RPjqVc1a5Ry2Dh0q3MdBwg3toHg+u
         oLZLlGMNnzqsTHG0E8dZqW/3rHv+z/mN1WUHNhxRhnxlxUD2RZtWT3kz/CHM5U3zfFq6
         keAkiaNPmwgFj+JIbdWzHN3roPnsuBC9T447iz9Qhm1C+KtNW/TM4xVJOkMhcxGibZs0
         lTuGwUJ//7iM88xUMXpAj+LW/MYTkOhrcPQJIDFmgZ5TnDmj5yQu1qHPKLbXFT3OcwM4
         Kd6g==
X-Gm-Message-State: ACgBeo1fzjkyStnOQOL9WG9mFXYQ5ZHv/t1AeBcVdVEMwqS5kExmFFO2
        bsl/MU1VwvhI7VjESW5N8jeJPn+TZin8
X-Google-Smtp-Source: AA6agR4fxjllwhUaGWVmBM/fFPtDlHG357VCe4ud9OsIE0eNpij3HDe+s37YBQUhgIivve2UUInYvQ==
X-Received: by 2002:a63:85c8:0:b0:41b:f27f:5a7e with SMTP id u191-20020a6385c8000000b0041bf27f5a7emr9588798pgd.590.1659793701451;
        Sat, 06 Aug 2022 06:48:21 -0700 (PDT)
Received: from thinkpad ([117.202.188.20])
        by smtp.gmail.com with ESMTPSA id k92-20020a17090a4ce500b001f506804af3sm3276667pjh.52.2022.08.06.06.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Aug 2022 06:48:21 -0700 (PDT)
Date:   Sat, 6 Aug 2022 19:18:10 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krishna Kurapati <quic_kriskura@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Andrew Halaney <ahalaney@redhat.com>
Subject: Re: [PATCH v2 1/9] usb: dwc3: fix PHY disable sequence
Message-ID: <20220806134810.GB14384@thinkpad>
References: <20220804151001.23612-1-johan+linaro@kernel.org>
 <20220804151001.23612-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220804151001.23612-2-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 04, 2022 at 05:09:53PM +0200, Johan Hovold wrote:
> Generic PHYs must be powered-off before they can be tore down.
> 
> Similarly, suspending legacy PHYs after having powered them off makes no
> sense.
> 
> Fix the dwc3_core_exit() (e.g. called during suspend) and open-coded
> dwc3_probe() error-path sequences that got this wrong.
> 
> Note that this makes dwc3_core_exit() match the dwc3_core_init() error
> path with respect to powering off the PHYs.
> 
> Fixes: 03c1fd622f72 ("usb: dwc3: core: add phy cleanup for probe error handling")
> Fixes: c499ff71ff2a ("usb: dwc3: core: re-factor init and exit paths")
> Cc: stable@vger.kernel.org      # 4.8
> Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  drivers/usb/dwc3/core.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index c5c238ab3083..16d1f328775f 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -833,15 +833,16 @@ static void dwc3_core_exit(struct dwc3 *dwc)
>  {
>  	dwc3_event_buffers_cleanup(dwc);
>  
> +	usb_phy_set_suspend(dwc->usb2_phy, 1);
> +	usb_phy_set_suspend(dwc->usb3_phy, 1);
> +	phy_power_off(dwc->usb2_generic_phy);
> +	phy_power_off(dwc->usb3_generic_phy);
> +
>  	usb_phy_shutdown(dwc->usb2_phy);
>  	usb_phy_shutdown(dwc->usb3_phy);
>  	phy_exit(dwc->usb2_generic_phy);
>  	phy_exit(dwc->usb3_generic_phy);
>  
> -	usb_phy_set_suspend(dwc->usb2_phy, 1);
> -	usb_phy_set_suspend(dwc->usb3_phy, 1);
> -	phy_power_off(dwc->usb2_generic_phy);
> -	phy_power_off(dwc->usb3_generic_phy);
>  	dwc3_clk_disable(dwc);
>  	reset_control_assert(dwc->reset);
>  }
> @@ -1879,16 +1880,16 @@ static int dwc3_probe(struct platform_device *pdev)
>  	dwc3_debugfs_exit(dwc);
>  	dwc3_event_buffers_cleanup(dwc);
>  
> -	usb_phy_shutdown(dwc->usb2_phy);
> -	usb_phy_shutdown(dwc->usb3_phy);
> -	phy_exit(dwc->usb2_generic_phy);
> -	phy_exit(dwc->usb3_generic_phy);
> -
>  	usb_phy_set_suspend(dwc->usb2_phy, 1);
>  	usb_phy_set_suspend(dwc->usb3_phy, 1);
>  	phy_power_off(dwc->usb2_generic_phy);
>  	phy_power_off(dwc->usb3_generic_phy);
>  
> +	usb_phy_shutdown(dwc->usb2_phy);
> +	usb_phy_shutdown(dwc->usb3_phy);
> +	phy_exit(dwc->usb2_generic_phy);
> +	phy_exit(dwc->usb3_generic_phy);
> +
>  	dwc3_ulpi_exit(dwc);
>  
>  err4:
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
