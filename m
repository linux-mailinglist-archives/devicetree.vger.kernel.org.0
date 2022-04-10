Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB1174FAE2F
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 16:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239822AbiDJOTi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 10:19:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239809AbiDJOTg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 10:19:36 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685B34A3D3
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 07:17:26 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id bh17so25952534ejb.8
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 07:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jDP8OQWCZ1cApEjs6Ir/qYFwpOISQGD4DToqFNLbWwI=;
        b=r9qjBUHUfWFDMYVuB0F1ZaXh7z7nJWY76ywnBJ+g/GEAle6Em6Sh509MmX5YpxZSgA
         crcsjUHlrrIp+0JRp8C9JXhjyk0P8JZZXI9Q69rh4OHyGFbU8uMZfbfIz7ykgRdS0gfF
         8NM3619gDS/DD8Qcav3ELp8GE/2dCYU/dc51Esyfq5xlGVIsZW0Z/p53tSQdCAuVBo+S
         UPONE2lE2cMfAedkRYdZe64ubOwN2oyz6UvKC9ji5v9TmK+rq4gRHtWra0e8I8r6dtDl
         CFcrUuLUztVpC9BLywqI37rT13PYG49SngXL7RZbbj4crjd+FQzOMvw4DE1KjFpkDH5q
         O1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jDP8OQWCZ1cApEjs6Ir/qYFwpOISQGD4DToqFNLbWwI=;
        b=B8xG0ie0NNU2dJ1voYCg1OipNLO7FwpJgdnXYpLCOADt29QqoIYd7hw7vJzrelbJvL
         uCwSFL0Img5YVw5JbH5lWLBUTviFnWsJteI5kIiWRewohwY1LgWt+/8liq5d8U56KCJx
         YUdtpRNxREMAGlNiR8PSVjY2EEby90Ybxm7KsncCGuy3qKC64UJ6ajnhrvAPj3ol3yss
         YxRskGjlrf43NLCbHnzPfufxpeq814c9Vr849OUkYE7wnGjoksCEDQGe2+dDF2/N5vkr
         KpOQa+ZgqwevSIjuxFgRtIvD1xl3BJvg8Lfdm/6cZHjH1cxX5isGNd/c5yV6ffcF9/6g
         nD9g==
X-Gm-Message-State: AOAM530q4vfOXSNgiVlaK3FebFt4MKiwWYQZRUe26XitWUwZRPlIf+K5
        H+CNIKcPwqKPHVfkQpm0XjjShA==
X-Google-Smtp-Source: ABdhPJy7Y9rR1HtBTTpbaKcxUf6/EytDbPTH2s40DrF85ncNaJGiu4dq4FKFOQoIl6Ao2wclofDrMw==
X-Received: by 2002:a17:906:3101:b0:6d6:5b64:906f with SMTP id 1-20020a170906310100b006d65b64906fmr26840864ejx.513.1649600244930;
        Sun, 10 Apr 2022 07:17:24 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id e9-20020a17090618e900b006e8669f3941sm2283276ejf.209.2022.04.10.07.17.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Apr 2022 07:17:24 -0700 (PDT)
Message-ID: <17c8f015-df02-1dcf-07c2-f57a1dfd3aa0@linaro.org>
Date:   Sun, 10 Apr 2022 16:17:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: wkup-m3-ipc: Add vtt toggle gpio pin
 property
Content-Language: en-US
To:     Drew Fustini <dfustini@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>,
        Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220409211215.2529387-1-dfustini@baylibre.com>
 <20220409211215.2529387-2-dfustini@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220409211215.2529387-2-dfustini@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/04/2022 23:12, Drew Fustini wrote:
> Document Wakeup M3 IPC property that indicates a GPIO pin is connected
> to the enable pin on DDR VTT regulator and can be toggled during low
> power mode transitions.
> 
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> [dfustini: converted to YAML, removed unnecessary "ti,needs-vtt-toggle"]
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  .../devicetree/bindings/soc/ti/wkup-m3-ipc.yaml     | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
