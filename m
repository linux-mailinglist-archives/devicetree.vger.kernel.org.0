Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 182513A3C2C
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 08:45:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhFKGr1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 02:47:27 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:37855 "EHLO
        mail-wr1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbhFKGr0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 02:47:26 -0400
Received: by mail-wr1-f42.google.com with SMTP id i94so4805481wri.4
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 23:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V8J2kKIIJJlnoKpbtxKXrz0z3Hf0aPtOx1h/2JVQKfc=;
        b=wIWadz0YAXxE4jt1Cq9N94gLHlr+IJo9KxploLqVh6GY+ZP26gDtPZLiJMyqz1aYeu
         wl514c/iCoj7/APxBwKqZEIMEkV/3hxogrleIZJ+ijA/eiTjDk+vG4gLBz4MbPmkrv2+
         IYiTxVQIpKZn0//ZXkX40wOIVLaNWF+PBBSgkHOh1iz07RuFf6KULqamJL80b7ngtS1G
         9XTDDzjWaTpU+wrBLbRmry/n3LhEjJNJrzmIMJh4LhNmneniPOyw9Rt5TpMnGjAl3j3q
         jwygHWV2EV49zidr/KUFYM+ciYBACURp2FgMXzy9Xx74wmLT5B2CtK2cnhKL3jA3qe9V
         DM2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=V8J2kKIIJJlnoKpbtxKXrz0z3Hf0aPtOx1h/2JVQKfc=;
        b=TzgjJsRAe3ZTS1jmRJqe1YLVaMsWVWgL0DCvcR+smGESw6fRG+8vZcpZgSByOvvbUF
         w9zWMZJN/XacnTCd8ci4BXBSNIJqMxI5zCA4Rh4wNS1QK2xfeL7QODZ8+mMDv7rrDE3f
         gKxEZbxfAjl38rlWJIK/rsGgJP9kuQ6bLEEY4uv7YPrhCkrTHxN/cpQg1pD3wFxGwz/G
         oUOcAEZl5MVyT3Hg59tPkzotBTKN7hNZOmwJH2h+FluzjMgvDzoVP5lJOzPsBkvPdwUp
         ghB2ZZgfvGNsPTzGWY5e2r8A1yPzJaIKPhnFhT5iCA3aeTVjI5iVWQ/0NjxiAiVY+UCH
         Rfsg==
X-Gm-Message-State: AOAM533C0dnnZfepKF4DEtpR0shMZLE4RjCo5WoUHx/oEhdFySGPYy5w
        AiYV1nolceWh4F7yxtuv0WfhKg==
X-Google-Smtp-Source: ABdhPJz1fQOM85JtTzpNkp/XZ79x6XkfY/t/ntDUPMR9DCwvEkAq9sNhdGEi57Jj+/zPb+vzYlgNyA==
X-Received: by 2002:a5d:6382:: with SMTP id p2mr2283590wru.338.1623393868296;
        Thu, 10 Jun 2021 23:44:28 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:bfd6:8f6:b84c:734f? ([2a01:e0a:90c:e290:bfd6:8f6:b84c:734f])
        by smtp.gmail.com with ESMTPSA id j131sm12193829wma.40.2021.06.10.23.44.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 23:44:27 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson: vim3: reduce cpu thermal fan trigger
 temperature
To:     xieqinick@gmail.com, robh+dt@kernel.org, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     nick@khadas.com, artem@khadas.com
References: <20210609012849.797576-1-xieqinick@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <11da3ae4-91d4-1e51-c652-e4ad518f13bd@baylibre.com>
Date:   Fri, 11 Jun 2021 08:44:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210609012849.797576-1-xieqinick@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Nick,

On 09/06/2021 03:28, xieqinick@gmail.com wrote:
> From: Nick Xie <nick@khadas.com>
> 
> Reduce the MCU FAN trigger temperature from
> 80 degree centigrade to 50 degree centigrade.

Can you add some more rationale to this change ?

> 
> Signed-off-by: Nick Xie <nick@khadas.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> index 66d67524b031..a9c34fee91f4 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
> @@ -256,7 +256,7 @@ &cecb_AO {
>  &cpu_thermal {
>  	trips {
>  		cpu_active: cpu-active {
> -			temperature = <80000>; /* millicelsius */
> +			temperature = <50000>; /* millicelsius */
>  			hysteresis = <2000>; /* millicelsius */
>  			type = "active";
>  		};
> 

With that:
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
