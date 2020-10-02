Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0FA32814DA
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 16:19:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388014AbgJBOTH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 10:19:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBOTH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 10:19:07 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60261C0613E2
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 07:19:07 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id t23so785246pji.0
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 07:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=YkeJLZ30OG+ddCOfzjIHizuo4xiQrhttkNgf55q+gfk=;
        b=x9Qr9HRwlRoKVHpKrcuf20VcTjdawxhaFyiJAnqCn2BxJMsGvat/Y9N0st+GaEfH4Q
         ahsQMHcOmY+YcTZDtDPgXR8H5vGKsg5+azt57xpmJHEJE0nsgrcn6U0eJw8UIPhfYdBw
         oS75j9WEpr/SWNbK+yZKu6VLn5J2tygkdKhn965unwaw3bHNOZNrUNwt4ac4m3eHIRAn
         S9JKpoNm6NObLMV17ByWg/4UY2ENJNLgjxb/Myh/6CKq8XFLMexxvwnDOHeaXtTJy0OC
         FCnfVvc98Upt0DfhKffrD/SnjlQP7Fmxa/xmHTGWxSIhbJGxy029JAUk6lSWYKorlshE
         +Sjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=YkeJLZ30OG+ddCOfzjIHizuo4xiQrhttkNgf55q+gfk=;
        b=NjA08SMYIvOHIRrhATei1BensUpUunhBPvh31BRceG/bRaFOAYUeNhc/WQYWn/uXQ6
         +SrcdU8+QNKnkkibmEc3XgHZUwriOctk8kx+JPbxqUBOhZm/GCuBgrKowu4KAXvNS1N7
         eln7aLFhER8XnatBw11n6nK32HIyNEQjzAGJCXXEjDbBZf1Je5AdinEuw75AktyFD57J
         DxuYLiHjxZkFHbcFfY6z35H4IxvvhhYpi6s5ufHXyjPE9ECR+2Z48mPNBwrDPnLCpoH+
         GtvWxKB89Kmrrfmx7gFwrjo1p37bRAfqAVocc+9K2KS4Hg8CAV5Z85M0yf9EWEYYUW8y
         3M+A==
X-Gm-Message-State: AOAM531uhjA/L54kmH7U6ql8s6VHD8aswl7yvlJHRKRsoGJmoaPRHMK7
        xkXMf9fTVlY0tpCPzNq+tTNU
X-Google-Smtp-Source: ABdhPJz7bqL/PXQ+zEWNuEE9A+kghAvnIRPU/7X4rUyPtuywrxRci6KXMKwtRwtoGzzgEK/VH31mpQ==
X-Received: by 2002:a17:90b:3013:: with SMTP id hg19mr3004311pjb.90.1601648346773;
        Fri, 02 Oct 2020 07:19:06 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:648b:81b4:b1f8:3dc1:c168:1411])
        by smtp.gmail.com with ESMTPSA id t1sm1860125pja.9.2020.10.02.07.18.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 02 Oct 2020 07:19:06 -0700 (PDT)
Date:   Fri, 2 Oct 2020 19:48:53 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Baruch Siach <baruch@tkos.co.il>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Anders Berg <anders.berg@lsi.com>
Subject: Re: [PATCH] dt-bindings: arm: Add missing root node constraint for
 board/SoC bindings
Message-ID: <20201002141853.GA7178@Mani-XPS-13-9360>
References: <20201001200943.1193870-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201001200943.1193870-1-robh@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 01, 2020 at 03:09:43PM -0500, Rob Herring wrote:
> Board/SoC top-level compatible bindings should be constrained to the root
> node. Add the missing constraints that the node name must be "/".
> 
> Cc: "Andreas Färber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Baruch Siach <baruch@tkos.co.il>
> Cc: Linus Walleij <linusw@kernel.org>
> Cc: Imre Kaloz <kaloz@openwrt.org>
> Cc: Krzysztof Halasa <khalasa@piap.pl>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: Dinh Nguyen <dinguyen@kernel.org>
> Cc: Anders Berg <anders.berg@lsi.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/actions.yaml      | 2 ++

For actions,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

>  Documentation/devicetree/bindings/arm/altera.yaml       | 2 ++
>  Documentation/devicetree/bindings/arm/axxia.yaml        | 2 ++
>  Documentation/devicetree/bindings/arm/bitmain.yaml      | 2 ++
>  Documentation/devicetree/bindings/arm/digicolor.yaml    | 2 ++
>  Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 2 ++
>  Documentation/devicetree/bindings/arm/qcom.yaml         | 2 ++
>  Documentation/devicetree/bindings/arm/rda.yaml          | 2 ++
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml  | 2 ++
>  Documentation/devicetree/bindings/arm/tegra.yaml        | 2 ++
>  10 files changed, 20 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/actions.yaml b/Documentation/devicetree/bindings/arm/actions.yaml
> index ace3fdaa8396..14023f0a8552 100644
> --- a/Documentation/devicetree/bindings/arm/actions.yaml
> +++ b/Documentation/devicetree/bindings/arm/actions.yaml
> @@ -11,6 +11,8 @@ maintainers:
>    - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      oneOf:
>        # The Actions Semi S500 is a quad-core ARM Cortex-A9 SoC.
> diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> index b388c5aa7984..0bc5020b7539 100644
> --- a/Documentation/devicetree/bindings/arm/altera.yaml
> +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> @@ -10,6 +10,8 @@ maintainers:
>    - Dinh Nguyen <dinguyen@kernel.org>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      items:
>        - enum:
> diff --git a/Documentation/devicetree/bindings/arm/axxia.yaml b/Documentation/devicetree/bindings/arm/axxia.yaml
> index 98780a569f22..3ea5f2fdcd96 100644
> --- a/Documentation/devicetree/bindings/arm/axxia.yaml
> +++ b/Documentation/devicetree/bindings/arm/axxia.yaml
> @@ -10,6 +10,8 @@ maintainers:
>    - Anders Berg <anders.berg@lsi.com>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      description: LSI AXM5516 Validation board (Amarillo)
>      items:
> diff --git a/Documentation/devicetree/bindings/arm/bitmain.yaml b/Documentation/devicetree/bindings/arm/bitmain.yaml
> index 5cd5b36cff2d..5880083ab8d0 100644
> --- a/Documentation/devicetree/bindings/arm/bitmain.yaml
> +++ b/Documentation/devicetree/bindings/arm/bitmain.yaml
> @@ -10,6 +10,8 @@ maintainers:
>    - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      items:
>        - enum:
> diff --git a/Documentation/devicetree/bindings/arm/digicolor.yaml b/Documentation/devicetree/bindings/arm/digicolor.yaml
> index d9c80b827e9b..849e20518339 100644
> --- a/Documentation/devicetree/bindings/arm/digicolor.yaml
> +++ b/Documentation/devicetree/bindings/arm/digicolor.yaml
> @@ -10,6 +10,8 @@ maintainers:
>    - Baruch Siach <baruch@tkos.co.il>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      const: cnxt,cx92755
>  
> diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> index f4f7451e5e8a..f18302efb90e 100644
> --- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> +++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> @@ -10,6 +10,8 @@ maintainers:
>    - Linus Walleij <linus.walleij@linaro.org>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      oneOf:
>        - items:
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 6031aee0f5a8..ae6284be9fef 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -73,6 +73,8 @@ description: |
>    foundry 2.
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      oneOf:
>        - items:
> diff --git a/Documentation/devicetree/bindings/arm/rda.yaml b/Documentation/devicetree/bindings/arm/rda.yaml
> index 51cec2b63b04..9672aa0c760d 100644
> --- a/Documentation/devicetree/bindings/arm/rda.yaml
> +++ b/Documentation/devicetree/bindings/arm/rda.yaml
> @@ -10,6 +10,8 @@ maintainers:
>    - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      items:
>        - enum:
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 790e6dd48e34..696a0101ebcc 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -10,6 +10,8 @@ maintainers:
>    - Alexandre Torgue <alexandre.torgue@st.com>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      oneOf:
>        - items:
> diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
> index e0b3debaee9e..b4d53290c5f0 100644
> --- a/Documentation/devicetree/bindings/arm/tegra.yaml
> +++ b/Documentation/devicetree/bindings/arm/tegra.yaml
> @@ -11,6 +11,8 @@ maintainers:
>    - Jonathan Hunter <jonathanh@nvidia.com>
>  
>  properties:
> +  $nodename:
> +    const: "/"
>    compatible:
>      oneOf:
>        - items:
> -- 
> 2.25.1
> 
