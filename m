Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEC5320F69D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2020 16:01:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388758AbgF3OAK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jun 2020 10:00:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388748AbgF3OAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jun 2020 10:00:08 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7350C03E97A
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2020 07:00:07 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id l2so18221206wmf.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2020 07:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+Oh4ApefyTnqgl3zRri2ZSE2mhpbCR1hfUifrIURqpY=;
        b=DjbUwWSe0bUOM79CA2NMctk+cF1xo4+d4SgV4E081WpLOL71nEMW/qhGD4qvMVdkxD
         dFQW7QgDRN86ePS6S0HIQoSyEwa2ndIcxq/ZG47135c7UHKCGmbVdpt+hQMoogfEDJgZ
         jmAwWa3o0MUkXn4uggszhTCs1cLF1JiH3rtDSZI8cgk7HLi/5EFBJz8Jbwmv27Y6KREZ
         G++sPZQaGCqQbhngv033h+GyA/J4Bck5x7iVJ+kyz8W8oQ6AfP+kHArvuv57Fg7tOXXw
         NyI0XKPo20bCaXkQGlyd4GGel83m4H+oRbCoOyckk8eZYcZ073bm58KmfMskU0tLIN2v
         7V0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+Oh4ApefyTnqgl3zRri2ZSE2mhpbCR1hfUifrIURqpY=;
        b=UWZHQ+C4i+c+iyC1+HvEQCt1GusAE3GED9lXKIBKK9XAnXzrLO4l/4uU+8T5RWvSnx
         sWgbn2oMh5cjuBZ0xXLzBMm6CogpFPK0LE6Dm6CZ0mNAPNaoNtdUii8XLCDjHd7IHe7I
         ZuMn/O0o4Z/227nrFSEW0CpkUBnX61m+/Vcz3XL6VRzGfRLQAbX0OCEyKO+SL4Gt5jgg
         BcHSDWcoJjyMz+fi1+0nZ+wnfvQu3mtFQP0PenYrTGoaiqe3Cso7l1Qj7JxTRQD9e6sG
         9TPsqbfNYdlyP8ICo9Eh5CT9ePCSwgjrTcyI/3zasaZVIBWYCgv3H/lV6scteUqb2pJx
         FaOg==
X-Gm-Message-State: AOAM531XKpZuY0r+paZmSusAi9AU3F//NOByrAIqS8BCDv17TaK0CZLm
        SsxEmm178C1g/V2aXs8bhec5Ow==
X-Google-Smtp-Source: ABdhPJwbLE+kcjKkrLT/25qlwcFppdADS5iumyeK5/Qqd5eAaD0ht8ENlqsto/03COPQKARN64Thnw==
X-Received: by 2002:a7b:c099:: with SMTP id r25mr22949202wmh.159.1593525606573;
        Tue, 30 Jun 2020 07:00:06 -0700 (PDT)
Received: from dell ([2.27.35.144])
        by smtp.gmail.com with ESMTPSA id o9sm3931023wrs.1.2020.06.30.07.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 07:00:05 -0700 (PDT)
Date:   Tue, 30 Jun 2020 15:00:04 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, benjamin.gaignard@st.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: st,stmfx: Remove extra
 additionalProperties
Message-ID: <20200630140004.GM1179328@dell>
References: <20200630114443.26414-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200630114443.26414-1-festevam@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 Jun 2020, Fabio Estevam wrote:

> The following build error is seen with 'make dt_binding_check':
> 
>   CHKDT   Documentation/devicetree/bindings/mfd/st,stmfx.yaml
> /home/fabio/linux-next/Documentation/devicetree/bindings/mfd/st,stmfx.yaml: properties:pinctrl:patternProperties: {'enum': ['$ref', 'additionalItems', 'additionalProperties', 'allOf', 'anyOf', 'const', 'contains', 'default', 'dependencies', 'deprecated', 'description', 'else', 'enum', 'if', 'items', 'maxItems', 'maximum', 'minItems', 'minimum', 'multipleOf', 'not', 'oneOf', 'pattern', 'patternProperties', 'properties', 'propertyNames', 'required', 'then', 'unevaluatedProperties']} is not allowed for 'additionalProperties'
> 
> Remove the extra 'additionalProperties' to pass the build.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes since RFC:
> - Added Rob's Reviewed-by
> - Added lkml on Cc
> 
>  Documentation/devicetree/bindings/mfd/st,stmfx.yaml | 2 --
>  1 file changed, 2 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
