Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 560BD3EB9B9
	for <lists+devicetree@lfdr.de>; Fri, 13 Aug 2021 18:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241447AbhHMQDw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 12:03:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241293AbhHMQDw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 12:03:52 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F1E2C0617AF
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 09:03:25 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id l10-20020a05600c4f0a00b002e6be174c29so3070158wmq.0
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 09:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=x0xWLTk86tzzRjkpfY1Nei5soG6C/jHVAXTF3VFx8as=;
        b=oid8lx5rMiXxBC7FhshiK5zRVwBoupwa7etIGRHYqQP5Ghxv3EasyGjtRUp/q5Z46g
         dPi4hgDi6lfE5M69WkGUYoB4UpHQjdbW7/b5w+LQt9p0RZAURATPXapoGxPpFNZGjzQ2
         Va9LQd+pJxCIAWHKes5nlRutYkbGgOx43p5fIFbu9CspxwKZ0CrPNYFzCNlRiL+FJ93W
         TklrGcoUss7pCNoyZU9yjb2EHpT0pnIOHwJ3YWr6JRwQpdEjkHA7IduQ3ogIp5ZS3EEF
         TY52xmFQkxtmdRAbmlYH2KZXBZWX0m8UvuZV3/wRxjMEJMwUP5V9hqpzXnySsIbfOhVF
         3TFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=x0xWLTk86tzzRjkpfY1Nei5soG6C/jHVAXTF3VFx8as=;
        b=EYWvzxnDTcAE9lKg2QEADi9A4fzyTrtxwtfkkltB9tHuOeVA+QBTXy2O5+EjMR3MQS
         p/xWguFUsAfZ3GM5DAfyPsbJcKS1HaWaIHsXAkO6uBzG3T+gaYLXA99dKPodUFua6Cb3
         zuXOVeAqC8lIhH5sEIur6XjnNcJRhhPPy44bvZZ7uAQl+NUmbkcJJCSfnHTgyUHDfk9w
         Qvn40zYjKibrpmWJjuiwTA4lx5QVVOqu2aeRvxCMGRLrkXoPuGT1/eTdjmh1/tMQRZ1u
         gcIeVHnnHa5nQjLt3E3lZgOGwbvk5hOdm+stYxeSV9XHy75lX3x5o0UBg8VaUJooAJFW
         uhVw==
X-Gm-Message-State: AOAM532ecaSRdSlfOMBD6UdltntYYmaweEid8yf1cHpCtTL4ng095Bqs
        0185be8cx2hYY0J3wpKLQrR+1LC2nkxvt3O5
X-Google-Smtp-Source: ABdhPJxcIJRrl7o4ZN0CYfus5qLWkxvFiJ5ZwqVc8qhAmA8Ox/ETKV+ybqsxewm9Za6B47x1WERQbA==
X-Received: by 2002:a05:600c:2290:: with SMTP id 16mr3333448wmf.26.1628870603592;
        Fri, 13 Aug 2021 09:03:23 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5df3:d0eb:3945:640d? ([2a01:e34:ed2f:f020:5df3:d0eb:3945:640d])
        by smtp.googlemail.com with ESMTPSA id i9sm2470529wre.36.2021.08.13.09.03.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Aug 2021 09:03:23 -0700 (PDT)
Subject: Re: [PATCH v4 4/9] clocksource/drivers/pistachio: Make it selectable
 for MIPS
To:     Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, mturquette@baylibre.com,
        linus.walleij@linaro.org, vkoul@kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
 <20210723022543.4095-5-jiaxun.yang@flygoat.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9db45153-d4d6-aab9-8cf8-12fdb76be249@linaro.org>
Date:   Fri, 13 Aug 2021 18:03:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210723022543.4095-5-jiaxun.yang@flygoat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/07/2021 04:25, Jiaxun Yang wrote:
> So it will be avilable for generic MIPS kernel.
> 
> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
> ---
>  drivers/clocksource/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 39aa21d01e05..58ad7af8c673 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -234,8 +234,9 @@ config CLKSRC_LPC32XX
>  	  Support for the LPC32XX clocksource.
>  
>  config CLKSRC_PISTACHIO
> -	bool "Clocksource for Pistachio SoC" if COMPILE_TEST
> +	bool "Clocksource for Pistachio SoC"
>  	depends on HAS_IOMEM
> +	depends on MIPS || COMPILE_TEST

The dependency on the platform is only required if the COMPILE_TEST
fails on other platforms.

The selection is done from arch/mips/Kconfig directly otherwise.

>  	select TIMER_OF
>  	help
>  	  Enables the clocksource for the Pistachio SoC.
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
