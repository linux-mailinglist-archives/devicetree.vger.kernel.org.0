Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDCAC58B725
	for <lists+devicetree@lfdr.de>; Sat,  6 Aug 2022 18:58:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230503AbiHFQ5n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Aug 2022 12:57:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233619AbiHFQ5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Aug 2022 12:57:37 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEFACDEDB
        for <devicetree@vger.kernel.org>; Sat,  6 Aug 2022 09:57:36 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id p14-20020a17090a74ce00b001f4d04492faso5558373pjl.4
        for <devicetree@vger.kernel.org>; Sat, 06 Aug 2022 09:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=76ebmEoyDutcoJLzBfpfA59MP7HNjYrE2nVwUzNVXx4=;
        b=dLTnclgE2wjc9+126UJx527e+Rj1dMy977LR1kRHsSFyHOh8aA+4AHQsok93SqbJsF
         +F/hptCFhvu1WVoblciEw3CUPpmbeW3if3nErWilI5/P9i5ZnSkXoQBheNyRXVgRqsav
         NPo7Fkv2Yx66Ie2QRIOSt3c0hU1+1g3VNRiAo6hKY3mpfGQ2e+PsIxaMbrLtqXB9thkz
         9WQK983L4Shddk7fPlIstdmbsiz0EIL693o06oHu05Z/V+Nt4oCJvYGO0n3kfRO0LNxM
         JUCuznj8JdxUivBIU5Ec4xprF1O0PYgNgeG307pQaT1QRMd9s6IfzG+yU9ymK8m8HHLR
         un3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=76ebmEoyDutcoJLzBfpfA59MP7HNjYrE2nVwUzNVXx4=;
        b=0HsDXKoq77KIrwFF8a5NAL7fXME+BJRzthUOfhXVmuQ71QS6foq72FDMuxB46LsJPB
         9vjqm0LXxaXnLLIFoGYpG30Z0Qbd99R7qUbn5WawyTj78sNa6kO+B30syTIo6LKRlhG5
         JP4slBf+hDMEXwEeG467I8hWOuqoifWlLAD3zONZqoGP3TN3imnLH2uilweg3u+EmsRl
         HdNJlEQ7blL3vw6H/OHLNFBbDuYIwRRryJh0ehki8RAiUjgcDlHaMtludwLXu/OLJIxf
         g/wP6g6c6bMfTLF/CQXrUV+MdL/73s8n+gUub6cRG2Suvaxi5i0UPPLqTbyDHqjcc4ho
         wAGQ==
X-Gm-Message-State: ACgBeo1X/bvDwX0oSDIUgyH8TfL+T3U/CU7DtIaIYvQ8ByShyt5g02kx
        DBkAFCKxoasJzk5Wmy6IhaS1
X-Google-Smtp-Source: AA6agR5MQgs18YRo0UvkMo8BfJN8+desS3CZdbeVc9TyGXbQAWk/9/Y4xUMrmsgaBQlc/YL2zE1E3w==
X-Received: by 2002:a17:903:1d2:b0:16f:1664:dd3b with SMTP id e18-20020a17090301d200b0016f1664dd3bmr12042923plh.60.1659805056384;
        Sat, 06 Aug 2022 09:57:36 -0700 (PDT)
Received: from thinkpad ([117.202.188.20])
        by smtp.gmail.com with ESMTPSA id o7-20020a656147000000b0041cd2417c66sm3334682pgv.18.2022.08.06.09.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Aug 2022 09:57:36 -0700 (PDT)
Date:   Sat, 6 Aug 2022 22:27:30 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/7] arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s:
 disable touchscreen pull-up
Message-ID: <20220806165730.GQ14384@thinkpad>
References: <20220805092317.4985-1-johan+linaro@kernel.org>
 <20220805092317.4985-5-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220805092317.4985-5-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 05, 2022 at 11:23:14AM +0200, Johan Hovold wrote:
> The (optional) touchscreen interrupt line has an external pull-up so
> disable the internal one as is done for the keyboard and touchpad.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index 562b4458e039..85efce641a4e 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -363,7 +363,7 @@ ts0_default: ts0-default-state {
>  		int-n {
>  			pins = "gpio175";
>  			function = "gpio";
> -			bias-pull-up;
> +			bias-disable;
>  		};
>  
>  		reset-n {
> -- 
> 2.35.1
> 

-- 
மணிவண்ணன் சதாசிவம்
