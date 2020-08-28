Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88371255F74
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 19:09:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727013AbgH1RJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 13:09:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726654AbgH1RJ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 13:09:27 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99EA7C061264
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 10:09:27 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id ds1so32382pjb.1
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 10:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=65xmM0ARtzrl/aHALPqYAsCT8kwa65sqep2JSOJpwDA=;
        b=Umb6iwifI57WvHzCxJQ2eCDm0VRnSxqMB52WGxcB8iVMk6eRW3edH8TIjwl2i1iBHN
         BtV3m6jHaEe0YAdV6xNwY39iXRsXiKokIu1fD1frIVF6e6Sbo9cBB43a6sfJILeX9qe9
         0ht5QdY39SRreXyGBWKRyp6LXvOv7Ryf2luhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=65xmM0ARtzrl/aHALPqYAsCT8kwa65sqep2JSOJpwDA=;
        b=BssvNFJvaClLdjhq5Sz58cyWuulA6JCplJ6OyzrxxSQmyTUAbRhehwsNDSewwT14XJ
         5Ulxuw9KgWYRXwkiml5k7Qkh90meK4xWUsUstgPBqDR5evgLzeWuMRjom9oInBaxXIE1
         e0jFruydNwRBRLKXRtbMBFUlI781kYvkz1gs5XrbQs3mn7ig+6By5tL4sAfKqwxSvGIJ
         47mavtaPzNe0S9uLRwHr2urgNJem+p8E923FrrAQCyqNQuzVKlOrN+qZUCseJwjPAKwb
         qY9xwIw0ttCNecvXRaSfamv7XvN3WW/S6hwt5jhacufK8rZ7Y0b6IXQC21UTONKo8Q7t
         uAaQ==
X-Gm-Message-State: AOAM531D1FAFEXBkkK2nS9MNAAwZRgNG0o13yjxDXcVkg5j4Af0WA5WA
        5ggyLoH4cIqRlpkT3pkh7xfvfg==
X-Google-Smtp-Source: ABdhPJz8I7pvmiMLpDuz2AyiW8AgsyAJYC83GwZzexgQ1H0I8EZtwpX5Nho4nzTRB2F/pD5QRzyyIQ==
X-Received: by 2002:a17:902:b943:: with SMTP id h3mr2161412pls.286.1598634567006;
        Fri, 28 Aug 2020 10:09:27 -0700 (PDT)
Received: from [10.136.8.253] ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id k13sm34698pjm.20.2020.08.28.10.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 10:09:26 -0700 (PDT)
Subject: Re: [PATCH 09/10] ARM: dts: NSP: Fix SP805 clock-names
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Viresh Kumar <vireshk@kernel.org>,
        linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com
References: <20200828130602.42203-1-andre.przywara@arm.com>
 <20200828130602.42203-10-andre.przywara@arm.com>
From:   Ray Jui <ray.jui@broadcom.com>
Message-ID: <f0d6d964-ba8b-bcb4-6382-3df4de08a9cf@broadcom.com>
Date:   Fri, 28 Aug 2020 10:09:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200828130602.42203-10-andre.przywara@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8/28/2020 6:06 AM, Andre Przywara wrote:
> The SP805 binding sets the name for the actual watchdog clock to
> "wdog_clk" (with an underscore).
> 
> Change the name in the DTs for the Broadcom NSP platform to match that.
> The Linux and U-Boot driver use the *first* clock for this purpose
> anyway, so it does not break anything.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/bcm-nsp.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
> index 1333ef8be0a2..351908b4a39c 100644
> --- a/arch/arm/boot/dts/bcm-nsp.dtsi
> +++ b/arch/arm/boot/dts/bcm-nsp.dtsi
> @@ -438,7 +438,7 @@
>  			reg = <0x39000 0x1000>;
>  			interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&iprocslow>, <&iprocslow>;
> -			clock-names = "wdogclk", "apb_pclk";
> +			clock-names = "wdog_clk", "apb_pclk";
>  		};
>  
>  		lcpll0: lcpll0@3f100 {
> 

Reviewed-by: Ray Jui <ray.jui@broadcom.com>
