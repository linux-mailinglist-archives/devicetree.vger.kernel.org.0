Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 449094CC242
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 17:06:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232123AbiCCQHg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 11:07:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230450AbiCCQHg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 11:07:36 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6740C198D02
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 08:06:50 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E94E23F043
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 16:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646323608;
        bh=xG1VegpeadOmn88+iE57xOfi/3/gVn1p4ncbNJPQ2/Y=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=sAdbiiW3iXjWdjm8WmpFvZ5m5jveez6nKrSxFcqqa3PYLWq1ilHG1/t/jg/a+vZRm
         4gV7PpSlBhoTBMyS5EXsXbUiUVHJzEOwiuFErb7rwBn3NAor2qWQeMpzSzkZUuzZml
         x0/el+XEXCRE3lx6ZXB3GjbHbgfxROcnKKM31Pqae5W6ePUQxJrxvoZVW0IzrBOAeV
         MDSRwzgnq/vgEVYzo04e9Lyl+YL/8bhlwAelboWpFyXSuY/JRBO9ssU0dRSkMcSHNT
         Gsw6dRQpqiNyxp87HSRb2/MWXOVQNBpDo6x2TzQsP2xfcRABNWli8ygUzsoEF8sKQu
         AQy1xqfMFpJPg==
Received: by mail-ed1-f72.google.com with SMTP id n11-20020a50cc4b000000b00415e939bf9eso930185edi.22
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 08:06:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xG1VegpeadOmn88+iE57xOfi/3/gVn1p4ncbNJPQ2/Y=;
        b=eBnbNY7qLnYUSW7rVYz6t8D+2xYDcnnGpMdWiTjuMbofRHzhNvPtQekeLCGpZZlRrn
         dLbKqJ8QcWCYOAH6yM8spKMQ+oNHczbWyYpE+YdgHb8873emMa66NA0xXiA6njJPRN/i
         a/bz6/e7036fAjocKJWU+5370Z2OSuJfDNpQajd1/2qP8NR1ySdRb0yBcxT+ct+1JTed
         SkdHJlvTUWEZVVmhwtCX4/+tmOLcNgMuw/twqRlaQXVER1kSCnR3C53OtGFehfuAgirk
         Jg+Uhc/9OvemLT6ZntR6E642tOpOWJ7bFdOHHALe6zHIiNV8L8i/SKws4+kLfc1g/vyf
         nJlQ==
X-Gm-Message-State: AOAM532p2LDk22NmUn7Hl/HV7OvUtUwo5c8OfJPq+RjXc2tAK50DN4QW
        yLZ9MsaMfLbLewzQ4E+zhpvSFbpzRecCYaK3IYpep5ov7bRD+NPm1PqUCafMo9pfuoH0OkylfCw
        wc7mqdDAEW3MIN7AK4sMIv5iSz6VqrKnkwkXbpaY=
X-Received: by 2002:a05:6402:2709:b0:413:1871:3bc7 with SMTP id y9-20020a056402270900b0041318713bc7mr35222860edd.71.1646323607949;
        Thu, 03 Mar 2022 08:06:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy0ypSpE+JBXZxF1rAG3goiPCgi8sTmtd8ySS6JDdwWuc1APd+jzk60hvABThhhUKmBtUFdpg==
X-Received: by 2002:a05:6402:2709:b0:413:1871:3bc7 with SMTP id y9-20020a056402270900b0041318713bc7mr35222838edd.71.1646323607691;
        Thu, 03 Mar 2022 08:06:47 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id p3-20020a1709060e8300b006d0e8ada804sm825929ejf.127.2022.03.03.08.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 08:06:47 -0800 (PST)
Message-ID: <db306916-c748-c983-d535-a4ce67d36cbb@canonical.com>
Date:   Thu, 3 Mar 2022 17:06:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: display/msm: add missing brace in
 dpu-qcm2290.yaml
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>
References: <20220301233037.2257996-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220301233037.2257996-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/03/2022 00:30, Dmitry Baryshkov wrote:
> Add missing brace in dpu-qcm2290.yaml. While we are at it, also fix
> indentation for another brace, so it matches the corresponding line.
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Cc: Loic Poulain <loic.poulain@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
> index 8766b13f0c46..b1b4652077db 100644
> --- a/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dpu-qcm2290.yaml
> @@ -209,6 +209,7 @@ examples:
>                                          remote-endpoint = <&dsi0_in>;
>                                  };
>                          };
> -                 };
> +                };

I see this was applied, but indentation is still wrong. It is not
aligned with opening block.

The indentation should be converted to DT schema convention, so 2 or 4
tabs. I propose 4.

Best regards,
Krzysztof
