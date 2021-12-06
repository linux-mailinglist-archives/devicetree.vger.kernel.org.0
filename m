Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C0EE46A075
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 17:03:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1388570AbhLFQEs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 11:04:48 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:60640
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1443900AbhLFQBe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 11:01:34 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 719F73F1F7
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 15:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638806278;
        bh=BhN4ifxBUsJI9qZ3FcE/IXOcfSCgIkMLzy49wodH/wA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=tgRc/hHBcrAJs2YtjmU+sljWAqPgBr+uFK5bFg5T2AnjKcYifnTwmpnYM3NGUffNu
         VS925xJnGpl06FQUkM63JbCa3bQhfojeoSyvvwy+W2h9x0PHwvjW7vHV2W2aCgdAZl
         9XldJVbmAYX+H0nzLuPH9zGuygvJrZKvYj/byLMJN8+qa+taplIdapgnCNEHac0niX
         +9waJ+XILqmA7rgTOhXI41YwoE/NBOG6Hq1zl2LSJ3DjaibWl3vzlJTjiJaUgw35zf
         Cvl4bQeXx5MUsZYJ6JYhfvpCHUPNT2tgN/1rlLqm6pS1XzC9zvyk0OHd+Tnz0PIWxp
         hk76fd8TmnlzQ==
Received: by mail-lf1-f71.google.com with SMTP id bq6-20020a056512150600b0041bf41f5437so1543130lfb.17
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 07:57:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BhN4ifxBUsJI9qZ3FcE/IXOcfSCgIkMLzy49wodH/wA=;
        b=jH7XHtRJF3IIEEhVw/74vl9cc2ZuruboDpWFpLsvAKf3o2DgrRWVxa8J8wERSzg28/
         2wQnmGJoN7vsMOcdYAeUkES/B7qTipXgKT5qF9TUgjbFkzW3cv+upw08YXMpirUPpAZY
         w2KR0tq01E8qFcORGfPQSwI0bkVe4kerxWV9BpIKeazdwBAhKAlP7Sm5zcRD0QWjsNdU
         4W5yJHfTzmLhCOyS/tKtg/NpeVTblWoaTz4JHuKdVLNMhpnbBjRsi3XDjIym/ac7wDdd
         ytYCWhQjbVk/qG1ZK5cZ1L6MAon3EQ7kkQztBNKtmXqFNYmIgnBDALmOSLFj5aIfb875
         c9ow==
X-Gm-Message-State: AOAM530gAzuDxwdOM4gZvaviQfxn/s4T+NRO9d0tcsAtCvJUHsMg4/eS
        FVtWtKfCfdF/Xy8vOM5VDlEseY+R9C/Dif1vPSPRvfSaFQ6P7BJqcY1+3JuJ6Cajkz8SYY9NXLy
        c8/SENy93rnK5P11FLjp3p/TIAdLGyPdS8evfMYg=
X-Received: by 2002:a05:651c:b2b:: with SMTP id b43mr36931754ljr.0.1638806277355;
        Mon, 06 Dec 2021 07:57:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzH+hzUOsCI/yxqjbH+bZAdiDq4On8TbnUp4k9rM+c7N+Dch9XW7RpvzOT8Vd68FuvCIz4Igw==
X-Received: by 2002:a05:651c:b2b:: with SMTP id b43mr36931618ljr.0.1638806275678;
        Mon, 06 Dec 2021 07:57:55 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d11sm1382148lfq.303.2021.12.06.07.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 07:57:55 -0800 (PST)
Message-ID: <4d83b7d5-43cc-4af9-6fb4-ec5b5b6712b7@canonical.com>
Date:   Mon, 6 Dec 2021 16:57:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH] dt-bindings: regulator: maxim,max8973: Document
 interrupts property
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20211206153432.226963-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211206153432.226963-1-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/12/2021 16:34, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> One of the examples in the bindings has an interrupts property and the
> Linux kernel driver has support for requesting an interrupt as well. It
> looks like the absence from the bindings was just an oversight. Add the
> property to make sure the examples can be validated.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  Documentation/devicetree/bindings/regulator/maxim,max8973.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml b/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
> index 54522827265b..35c53e27f78c 100644
> --- a/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
> +++ b/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
> @@ -86,6 +86,9 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  interrupts:
> +    maxItems: 1
> +

The subject prefix should be "regulator: dt-bindings: ...".

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
