Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2552742570F
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 17:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241903AbhJGPwz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 11:52:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241765AbhJGPwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 11:52:55 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63AC4C061570
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 08:51:01 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id g62-20020a9d2dc4000000b0054752cfbc59so8103358otb.1
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 08:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=L11lLBT9TBwzBqz4SAuL8n75DIPYPGwgcKMPhOsJZgk=;
        b=OnRLuyfAlafC36pMoWrj2tQRIS5IYUNV8GRvrtj4WxwsRj70bi1oTiEb27RxF2BBLQ
         NqjAAR0evPS3j4QDSfc7Cj8kbVEqzUrGOjNZAA4pPnNmyao5UW2COU4rZYjqxNjGFIK7
         5ZI+dfJXVUZbVuwjF/OJeHD9TrTZEoemE5BgLNdgVMyjjhl9IdL2Yf6ZPBzI1HIPzEX4
         NiCIGeyaT7Wbs/Bd8SqNyubQFp9QCBjcTa32+mEgbF0AMXmLB+8e0NjfLICeUqUfPqp5
         O93cYPjN3A87Tgz+0hWLW9SohAQbjAm9BS9iY+Rq68QcK4AvJ/7hqJfI8FpgxkID8bOd
         2+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=L11lLBT9TBwzBqz4SAuL8n75DIPYPGwgcKMPhOsJZgk=;
        b=g9loFcV4AZXoTHbQsIRLCoN7T1wIFP3dm4ZA6i5EdioJSz33H0erLbDO6T1v4Go/83
         x6Zr2KDbudpg8wYcifRFeZ2JfsxzgXfJEPTjAxqsm9t8mHBrp2ul7Vk6KVxwMjXYPcaS
         YmrDzG+P0j68ML3jAlaz7YTSGmZSD7/Jw4ndLl4xtaR5LMtWLUXce443uHQEYrAf6cg0
         r6zgGUJu/duliQMmK3aPcuhK6X1SBTdnoZI/Opbc1sfSzhgIX3Ymk4zHRyMyyA9phBvg
         oWqscJerx0reZc6NPiFmKrSxB4u02LGOMkDemgaly9u+6TO4vlZZ/QDiBto/cWfVZ3v2
         3Cxw==
X-Gm-Message-State: AOAM533C8wMVWMahA+xduP3iwPnmoj1VF9uSdlcKw08lnmyUjFZsLwBu
        a2hGyxSGZUaO9uok3kN7EBZOJw==
X-Google-Smtp-Source: ABdhPJx2U1z29bjEFi3dM3JcCLN26FSV/ODRDygrsxx2nAOwodBN0QbwUU07aalJxIcvoFKT/AQwWw==
X-Received: by 2002:a05:6830:1514:: with SMTP id k20mr4124291otp.44.1633621860711;
        Thu, 07 Oct 2021 08:51:00 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id 14sm4676969oiy.53.2021.10.07.08.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Oct 2021 08:51:00 -0700 (PDT)
Date:   Thu, 7 Oct 2021 08:52:40 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     David Heidelberg <david@ixit.cz>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: arm: qcom, add missing devices
Message-ID: <YV8XyG+j9D1PQK2V@ripper>
References: <20211007144811.14008-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211007144811.14008-1-david@ixit.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 07 Oct 07:48 PDT 2021, David Heidelberg wrote:

> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> v2
>  - lge never existed, use correct lg vendor-prefix
>    in -next, v1 patch must be reverted first before applying
>    other lge -> lg conversions are comming in different series
> 

Can you provide this as a fix on top of linux-next instead, so that we
don't need to revert (or worse rebase) the tree as it is right now?

Thanks,
Bjorn

>  Documentation/devicetree/bindings/arm/qcom.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 73c3ce877ba8..b0b4f9d72935 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -101,6 +101,9 @@ properties:
>  
>        - items:
>            - enum:
> +              - asus,nexus7-flo
> +              - lg,nexus4-mako
> +              - sony,xperia-yuga
>                - qcom,apq8064-cm-qs600
>                - qcom,apq8064-ifc6410
>            - const: qcom,apq8064
> @@ -136,6 +139,7 @@ properties:
>            - enum:
>                - fairphone,fp2
>                - lge,hammerhead
> +              - samsung,klte
>                - sony,xperia-amami
>                - sony,xperia-castor
>                - sony,xperia-honami
> -- 
> 2.33.0
> 
