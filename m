Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 243E52C74E8
	for <lists+devicetree@lfdr.de>; Sat, 28 Nov 2020 23:23:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388510AbgK1Vtj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Nov 2020 16:49:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732788AbgK1TDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Nov 2020 14:03:17 -0500
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EB03C094264
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:29:12 -0800 (PST)
Received: by mail-pf1-x441.google.com with SMTP id w202so6385776pff.10
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 23:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PNFbFA5RGzfZOj+MBiAXZSekQwevqv53Dq3RaeUKuto=;
        b=NWTqQMufLvI4eZFxM1vC2tffYMvnOJQF6SGj73jnc6k0oZCgkSas51hrL2wE2nvXVk
         +nTu2HoQ1QB8mB71Gj7BdmNnXJadESrIgWmGHpI73m9q9cFsRFRJL87+D5U1nndMnXye
         B7GrlYWdxERU1M1whEkxxtrLXPcKzxaplz1pTgr6/NB0d8rUfvedbrHyOIsRhsIqp0Sv
         CB180mCtLyX0o9boUhsuYOXkSf1sid+jw2a0Pl5krHMkZ/FlqVArZtq3NlJXaWsyJ3Nd
         CfGenel5ksl8D44rcPCYOn/izFRTCxBn+3l5ydVBh4GfdA0aW+WaadcrR6v+Dky0In2a
         ehGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PNFbFA5RGzfZOj+MBiAXZSekQwevqv53Dq3RaeUKuto=;
        b=E9F4bB48wGN2U7twGPynYXE8gpjJ4NJJl34ZZmZleaEqQWkmkK5ikDhpGxFHe7YsRK
         6WmuVnZJyPjgSSAXfNbAjuR61+zmndbIHorxuCe1opVvni5p3Yq//FtqAfkO8IgqWEyy
         mnqttVQ3dSc9Y+BSfx46O4GzCrnM56rXWd22+GgdXtocFi0QO6W9I40qjv+K6IBM8XIA
         6GJM1OOSgCgpZQTa9b9A7XpHkPoSHTazTSOSzxPlYzwW6kD9Tk0OKrK2cwELdcYU49lO
         Vn0omJG1jQIN2FkrpeVLzNLeoEoJ0yRRBSCEx1S54Hirode/yfz3ruGTseZaaYcsjgSr
         9DcA==
X-Gm-Message-State: AOAM531WzF/7iqfHLUYCVI1L5J7zMbNzvkt/35hM+NGy6uCTYAL5Xg6p
        6YKrnW8OoYZQ2EVEpOFwPEY1
X-Google-Smtp-Source: ABdhPJwsU9/nHpLX4mcKfP6FAuf9e9r7zGbuaF+oP1qRuDhyqZOqBmn1/nntCcQ4J8BLW4TRC/GVyg==
X-Received: by 2002:a17:90b:224a:: with SMTP id hk10mr14386423pjb.81.1606548551916;
        Fri, 27 Nov 2020 23:29:11 -0800 (PST)
Received: from thinkpad ([2409:4072:15:c612:48ab:f1cc:6b16:2820])
        by smtp.gmail.com with ESMTPSA id 12sm13431696pjn.19.2020.11.27.23.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 23:29:11 -0800 (PST)
Date:   Sat, 28 Nov 2020 12:59:02 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 04/18] dt-bindings: dma: owl: Add compatible string
 for Actions Semi S500 SoC
Message-ID: <20201128072902.GS3077@thinkpad>
References: <cover.1605823502.git.cristian.ciocaltea@gmail.com>
 <0e79dffdf105ded2bb336ab38dc39b4986667683.1605823502.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0e79dffdf105ded2bb336ab38dc39b4986667683.1605823502.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 20, 2020 at 01:55:58AM +0200, Cristian Ciocaltea wrote:
> Add a new compatible string corresponding to the DMA controller found
> in the S500 variant of the Actions Semi Owl SoCs family.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
>  Documentation/devicetree/bindings/dma/owl-dma.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/dma/owl-dma.yaml b/Documentation/devicetree/bindings/dma/owl-dma.yaml
> index 256d62af2c64..f085f0e42d2c 100644
> --- a/Documentation/devicetree/bindings/dma/owl-dma.yaml
> +++ b/Documentation/devicetree/bindings/dma/owl-dma.yaml
> @@ -8,8 +8,8 @@ title: Actions Semi Owl SoCs DMA controller
>  
>  description: |
>    The OWL DMA is a general-purpose direct memory access controller capable of
> -  supporting 10 and 12 independent DMA channels for S700 and S900 SoCs
> -  respectively.
> +  supporting 10 independent DMA channels for the Actions Semi S700 SoC and 12
> +  independent DMA channels for the S500 and S900 SoC variants.
>  
>  maintainers:
>    - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> @@ -22,6 +22,7 @@ properties:
>      enum:
>        - actions,s900-dma
>        - actions,s700-dma
> +      - actions,s500-dma
>  
>    reg:
>      maxItems: 1
> -- 
> 2.29.2
> 
