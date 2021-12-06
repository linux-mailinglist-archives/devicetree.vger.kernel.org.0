Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C1DC469167
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 09:27:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239183AbhLFIbF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 03:31:05 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:40208
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239168AbhLFIbF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 03:31:05 -0500
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 302BD3F1F7
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 08:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638779256;
        bh=bKEJIZAQjQgq4md0kg/pxei579CQyZfJWJdDIldzueQ=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=oblectKt7cLJcYNOeBpiFzPje9WAmLLU4iik0XMs8wRBX+rg7WKgsEeBa0nqtSFcC
         dLmqx0ebpmlLSn3S/Qaky7yZGJNrdrqcAQttQOKyb3JUJxpFikJiuDa8t+HEFpqId2
         fljUgIvxuP6jkydR40tYMMnFYbr08yN6qPZBxc5U0ALv9RVIn83+5xjnpSlIU8SwUK
         P47nGMJ+9Q5U3SrZeU2mD23nQSZoGBbTySU8Eth1tktAmLC10VE7FLawjj40Uwi1yU
         S3Y9wwT+UX4xYYYmhulx7dus86RkKIKfNJg31AMbLnpnR/m/jRm8yYHhA+nqGs1Ywf
         rrR/VUDXvZ1Pg==
Received: by mail-lf1-f72.google.com with SMTP id u20-20020a056512129400b0040373ffc60bso3521064lfs.15
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 00:27:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bKEJIZAQjQgq4md0kg/pxei579CQyZfJWJdDIldzueQ=;
        b=aN4WT05/zPl3oPzrwlngnraitd3EmrDiykhWdh/x2TdKWqRzgoDmFJ4cR13w+C71Bt
         xmBWsrUJXFbrokKEhT90Gt4eiQsMgZ/FZwsjqPfHczlF4QhEvK9fizot20uI62syAcC1
         0KY5mywNhvn+KJpFZDNrk+q9OY6HFwIL0oU+wRdGP3qXgMPA2md8XbxNaDpk2ZV9yDGa
         xgDkNmujyxqJEgqdPu0FbMNsw3U7opNP0fNIu8vo1cdxeQK/dSYkdz0Aa60No2vLcqEP
         EkRi5NWNUPm3Ao9OP/Z7xJ4V0gDZX9ZNaGNy67LFQJApeo/HGNOyAPQgIzKh9veaDobn
         x/Rg==
X-Gm-Message-State: AOAM530vmmSj+PgoxJm+tE5Ee+7wZZaUOChPH8FZW1YFz92YGsf+ocNs
        5zvO7jprwdZcNcyOFzCOGTZsn3jYiDdUORVgPK2MuVdQSfD1fqaeWf4QI6WmvuLwKrVlPXOoWIi
        ZZjZ1cn0a7c0OHC9QVZBx7HxeEBThFw7SbTLPEfE=
X-Received: by 2002:a19:4312:: with SMTP id q18mr34592507lfa.299.1638779255275;
        Mon, 06 Dec 2021 00:27:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzzjKn8LjK/5lmCMNpVPgrp0RN3Vobgp5kXibfWPy43zCCeGy55FntekQYEglNs6rllZXWBUw==
X-Received: by 2002:a19:4312:: with SMTP id q18mr34592489lfa.299.1638779255102;
        Mon, 06 Dec 2021 00:27:35 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id f22sm1287181lfa.171.2021.12.06.00.27.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 00:27:34 -0800 (PST)
Message-ID: <98414edc-18fa-c759-9c73-490078d8c93c@canonical.com>
Date:   Mon, 6 Dec 2021 09:27:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 RESEND 3/8] dt-bindings: i2c: exynos5: Add bus clock
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Wolfram Sang <wsa@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20211204215820.17378-1-semen.protsenko@linaro.org>
 <20211204215820.17378-4-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211204215820.17378-4-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/12/2021 22:58, Sam Protsenko wrote:
> In new Exynos SoCs (like Exynos850) where HSI2C is implemented as a
> part of USIv2 block, there are two clocks provided to HSI2C controller:
>   - PCLK: bus clock (APB), provides access to register interface
>   - IPCLK: operating IP-core clock; SCL is derived from this one
> 
> Both clocks have to be asserted for HSI2C to be functional in that case.
> 
> Modify bindings doc to allow specifying bus clock in addition to
> already described operating clock.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
> Changes in v2:
>   - Added 'clock-names' property to 'required:' in case of ExynosAutoV9
>   - Added example for two clocks case
> 
>  .../devicetree/bindings/i2c/i2c-exynos5.yaml  | 59 +++++++++++++++++--
>  1 file changed, 53 insertions(+), 6 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
