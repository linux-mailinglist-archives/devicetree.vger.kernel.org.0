Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97DD9512DF5
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 10:14:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233461AbiD1IQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 04:16:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239746AbiD1IQO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 04:16:14 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C8AC7C17D
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 01:13:00 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id l7so8007673ejn.2
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 01:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=D4oCxzRFXlzFb4EquDzVhE4rkJditmYiFd7ltTpGoyY=;
        b=tvfiaHMagceqKr7/DpjX41Hyv5lTrjlzfCaggv3jsnwxdIr8mK7xT48mgDGVBkLdeb
         OzZK3YaJmwX+uLSgALT+ZMsOwJmlHpDOmAPPgnqPCQYuHjmTG93dQhWYt/N6RpqoaF1p
         4gkTgrCrcnmLtt278WwioqUYPZ0ZgVmM/TkHAnNu+T+ubnghjkniIOxgBEWPV6O4rlPw
         pWqfBA3lUgMwonr8KvgfAucsMiDGQ0mlOZnnCY5S18ItmEU/aWJV8JWd89i0V9TfTo+L
         7/SdKNZnBE1p5Aciy155bg+ETEUJzvNSSveubimeqjShgxPjKAgM8GRRXJt76K+ZO8Tc
         KBDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=D4oCxzRFXlzFb4EquDzVhE4rkJditmYiFd7ltTpGoyY=;
        b=cqev4dBxN8BjRZ6cbdapj0WD1+JHg+V4CKRxi0+CZCS8Y7mWP/Cf0paOBSXj0RnaXe
         rWTELwJ7i1cLVrTtWUQxh1z/OH5JfURe5RlA1A3/OdR6PswXqLJXU5PKsGT84smcL3X+
         LjENi2wmKgASi0FMvf00K32GNaiZANFJ7YE0o/gx8zXUA4uztA8lPLBlbTxjowiy4BlM
         +0BO9/BgEsq+Kz1IoL/hoTAo5KGx4II4f9pDikrj9OLG4I3JH6PhtqOE3DSQUaTRAP1c
         zA37v5xhbLnJwpdVpB2ISuBnNi1n1ZgTHwk7g92wiaL5EJn6nYfvg7e81aSR+gXwCTJx
         YxnQ==
X-Gm-Message-State: AOAM531sxG6dklXMWvtKKmaRLuHXZPyFMoWHmpg4Cy/E1segCb4JPuGV
        XZExtUNno8MswQWAEOPyLb8WMQ==
X-Google-Smtp-Source: ABdhPJzK06wInFNLQk053v3hrpwhhJMdYOSTWClNddC6Y9MOu/hDlBgc4sOn+tCpnBrLUecCVkbeuw==
X-Received: by 2002:a17:906:9c82:b0:6e1:1d6c:914c with SMTP id fj2-20020a1709069c8200b006e11d6c914cmr29611725ejc.769.1651133578760;
        Thu, 28 Apr 2022 01:12:58 -0700 (PDT)
Received: from [192.168.0.161] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id dm11-20020a170907948b00b006cf488e72e3sm8052832ejc.25.2022.04.28.01.12.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 01:12:58 -0700 (PDT)
Message-ID: <e945cc6f-fd1b-5ba5-fab9-33672994d54b@linaro.org>
Date:   Thu, 28 Apr 2022 10:12:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 3/4] dt-bindings: mmc: Add Broadcom optional sdio_freq
 clock
Content-Language: en-US
To:     Kamal Dasu <kdasu.kdev@gmail.com>, ulf.hansson@linaro.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, alcooperx@gmail.com
Cc:     f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
        adrian.hunter@intel.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220427180853.35970-1-kdasu.kdev@gmail.com>
 <20220427180853.35970-4-kdasu.kdev@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427180853.35970-4-kdasu.kdev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 20:08, Kamal Dasu wrote:

Thank you for your patch. There is something to discuss/improve.

>  
>    clocks:
> -    maxItems: 1
> -    description:
> -      handle to core clock for the sdhci controller.
> +    minItems: 1
> +    items:
> +      - description: handle to core clock for the sdhci controller
> +      - description: improved 150Mhz clock for sdhci controller (Optional clock)
>  
>    clock-names:
> +    minItems: 1
>      items:
>        - const: sw_sdio
> +      - const: sdio_freq # Optional clock
>  
>    sdhci,auto-cmd12:
>      type: boolean
>      description: Specifies that controller should use auto CMD12
>  
> +allOf:
> +  - $ref: mmc-controller.yaml#
> +  - if:
> +      properties:
> +        clock-names:
> +          contains:
> +            const: sdio_freq
> +
> +  - then:

This won't work. Please test your bindings.


Best regards,
Krzysztof
