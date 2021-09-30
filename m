Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5360441D2C7
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 07:42:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348087AbhI3Foe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 01:44:34 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:56358
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348059AbhI3Fod (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Sep 2021 01:44:33 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 47F2F40279
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 05:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632980565;
        bh=1mKwPojwZVljLwBZplr11EQoeIBGXn/S/x5FHURshGs=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=iW/uhLksi0sdoYjLXnPBqVFKhVmoJW8n8afXhQu/A0ofK1K/fM4cuT5zzpBBP+bdT
         C13bJ8wSvQP9ZByl9W6OViGtbyQoPDo89JtIB6IvTGYpJt21kWmm7CYgzfkmXxkWwg
         bIqEd/guY7lJynAdsyg+GtPqSTlbzHoY/BjOCDKKvNioA9mRdieRhpQu9+TwXxyTkk
         1DhNusLpjVvukz+7VFd3AV186z3lluWCPOjOtTnAyxarMhH0NOR7HumTUlev6PLgpz
         Mztxhbz0Td4afJqVlwSgoB0XdhuJBMzvdO0YIGO9eLWiwpljHVdgS1JBoSGCzeqOD/
         oTyxkxAuITZIQ==
Received: by mail-lf1-f71.google.com with SMTP id i40-20020a0565123e2800b003f53da59009so4511993lfv.16
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 22:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1mKwPojwZVljLwBZplr11EQoeIBGXn/S/x5FHURshGs=;
        b=ijsTMsalwqJ+LVIItTD8Ze0qGgb6AKM5eZ1PAMrWWCOZOLZB26jWcVGcy7hZ6lMTVk
         7F7eCHtUo+J+7X7O3Tao+65zaO4qU0H/3wMM8c049kUKbTkxzJcwi1qAw84FuV0Ijw5G
         5Wv7m+K4eI9nsTxj47MZ+0kImsVWPPQVZWZWlOlS3cGAoM6ZejhcOLxSu5ZMmHsCaBE2
         XtTV9RMSjgb/pQC75fuxnZ0IgXpwvBWwRClnjSqs2PKEVRuMvB0IlJGT1G0N00xDf4gO
         l455xoRyJTCx5O4rKa27Xo5ldxQZ0SAON2Ytd8yO+dYVH/6GefgRL51hYNS/ag3aTA7V
         CF7g==
X-Gm-Message-State: AOAM530o0l/fZ7RlImgaBspZvS/zSoc5vTWyaSvWyqHSLdSw2XJKp+Lx
        r4Xizttru22u3kbMeCiMVf459/HUfR1YzLyKaJ1RW1s4tZq9pHYaMsBUEUtQnvMwqX1Y6MGBMwP
        gxFp9DMkoeP3Ms6Q2GZgUjDFqdsu9Cp69tPswJ8w=
X-Received: by 2002:ac2:5606:: with SMTP id v6mr3779637lfd.520.1632980564476;
        Wed, 29 Sep 2021 22:42:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyfzHOQe412riavI/Qmxs0LY7rgPu/GGpo/1fLrCa042n08AZ+YLqvCU8IZK13tu6wUDRAysw==
X-Received: by 2002:ac2:5606:: with SMTP id v6mr3779623lfd.520.1632980564295;
        Wed, 29 Sep 2021 22:42:44 -0700 (PDT)
Received: from [192.168.0.197] ([193.178.187.25])
        by smtp.gmail.com with ESMTPSA id q6sm43696lfg.188.2021.09.29.22.42.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Sep 2021 22:42:43 -0700 (PDT)
Subject: Re: [PATCH] dt-bindings: add vendor prefix for asix
To:     David Heidelberg <david@ixit.cz>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210929192619.111098-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <d3b20df8-1953-9a8d-e59c-fda3656d3790@canonical.com>
Date:   Thu, 30 Sep 2021 07:42:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210929192619.111098-1-david@ixit.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2021 21:26, David Heidelberg wrote:
> Add vendor prefix for ASIX Electronics Corp.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Already on the list since some months (unfortunately still not merged):
https://lore.kernel.org/linux-samsung-soc/20210929140854.28535-2-l.stelmach@samsung.com/T/#u

Best regards,
Krzysztof
