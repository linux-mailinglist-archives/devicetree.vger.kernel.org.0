Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D1B62C2A8A
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 15:58:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389325AbgKXO51 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 09:57:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389296AbgKXO51 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 09:57:27 -0500
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CCF8C061A4D
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 06:57:27 -0800 (PST)
Received: by mail-oi1-x243.google.com with SMTP id a130so15960892oif.7
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 06:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sXzXgvLp4s+46JRUtzzV0/6Df/FZIX/XlFhg2++CJ7g=;
        b=rvgO0ShYj3OMSlEin7VGkUn0IM+58ObeVh/TdWxzWTdOvl/seTdhKJCeGJb2aVxEOP
         4mveIzPpcPBk+2ATDUftjhUVhK0DZlvF6jiSLo5Q9pbO10swOdOH8pxUsooaQpuIjfm6
         w9PYIVZ70hsp6bcw23zxkMx2FRuv1cynkbn9co/6PvObOa4WVwO/ih8uP8svElI8NpWZ
         IwVQ83vdU8w8SdOR/nbTfYQWOMPQf1BghyrUxELA1ObvUtzZalIkV+9d0D5tazrekRxY
         u4eGRu3KesPfVPY+82kT9W/Jti1rsm4Xanmen3fBhkZdbvgSSFyD9E825RQroHApWEKy
         vxEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sXzXgvLp4s+46JRUtzzV0/6Df/FZIX/XlFhg2++CJ7g=;
        b=FVQ8fmM+rApd8qedMUCMoe+oGLnGmdGN1zCu2RAye0fVlTlicsODXfMCRZ5dUW4+AK
         Oz4BZosBEQjNQYBrUvWRrrmHT6zRdaoZOz9gxvJsYewvfh4wewEv3qXGdZCUctO2IsPO
         eBmoitUdeVQUkSEYsU+pI8ORUSv87PCjkpZYyxTjwPvFlGS9axE2rOdv/CryQyS3Ie/f
         utapnSWt6zD6TLmoqYr1HJ5TMralSAXYyAVsSkAdWIboQKAvOtC8rG+3O8Sg+uPCsHOj
         QJKVNgpq+AcH0nqfTjsrbUZNBTQBIIQ5Xh63tkWy/ckaakX1O9Q7q62dfaBghKNUbd6w
         zQug==
X-Gm-Message-State: AOAM532IozRkkwRDPx394WRiuMDX3UBcYHz1XQcP2vOKGL42gDGeIFb1
        1yYxglgmin5K8ARoFBcRZo8j4A==
X-Google-Smtp-Source: ABdhPJxa3NAVx1Cn2t+G3dKNxlpEbRiazZDjFN23ymWT/MGwtBTKGNQYqdxTJmVghDox3My4/lknJQ==
X-Received: by 2002:aca:c3c4:: with SMTP id t187mr2783806oif.148.1606229846311;
        Tue, 24 Nov 2020 06:57:26 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id k13sm2227901otl.72.2020.11.24.06.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 06:57:25 -0800 (PST)
Date:   Tue, 24 Nov 2020 08:57:23 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     agross@kernel.org, robh+dt@kernel.org, vkoul@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Document SDX55 Modem and
 boards
Message-ID: <20201124145723.GJ95182@builder.lan>
References: <20201124140011.134751-1-manivannan.sadhasivam@linaro.org>
 <20201124140011.134751-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201124140011.134751-2-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 24 Nov 08:00 CST 2020, Manivannan Sadhasivam wrote:

> From: Vinod Koul <vkoul@kernel.org>
> 
> Document the SDX55 Modem binding and also the boards using it.

It's not really the "SDX55 Modem", it's the "SDX55 platform". That way
things become less confusing when we actually add the modem on SDX55
later.

> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index ad25deba4d86..4362e8f0d495 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -39,6 +39,7 @@ description: |
>          sc7180
>          sdm630
>          sdm660
> +        sdx55

'x' > 'm', so this should go one line down.

Regards,
Bjorn

>          sdm845
>          sm8250
>  
> @@ -178,4 +179,9 @@ properties:
>                - qcom,sm8250-mtp
>            - const: qcom,sm8250
>  
> +      - items:
> +          - enum:
> +              - qcom,sdx55-mtp
> +          - const: qcom,sdx55
> +
>  ...
> -- 
> 2.25.1
> 
