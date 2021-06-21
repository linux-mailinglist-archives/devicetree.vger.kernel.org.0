Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3143C3AF515
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 20:29:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231390AbhFUSbd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 14:31:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231241AbhFUSbd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 14:31:33 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 835BFC061756
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 11:29:18 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id f2so20716414wri.11
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 11:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0h7qTLw7iVbT8QbSsm0zBOuy3gLWBPfMMVwH84B0A6E=;
        b=caiwhYlEUQbVaBms76Ua1Mcy5TQCvcHwN38R360aXilH1yWBuoBB8JY8yyujL7w+hg
         VOImO6JkzqlIgksrbB3BQMozaFUGQt9EYsVrMPVnIRtlfx8aVEA/SwmskHMol70MZ76E
         oKCuZzxhLaJR8vlkVWhkQsFJC2gsxDNuBeGZsVDobXcjHtuqKJQrUsehVro3YvlgMo4H
         WlW9QIF3GPIyHpV4+IpxTRU/wUX0SCKEKGdahd9sEGndFurOZztjbZQIhcUW9b8HUJZq
         0+fdRjvNgsMi//qVrnjuhIiW11BZulbBkDiim3gaUL4TXoZzA1rU5PUMMtOzEzz7uHTP
         0fuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0h7qTLw7iVbT8QbSsm0zBOuy3gLWBPfMMVwH84B0A6E=;
        b=VDtyyePV/oZVdfz3Ti+UJ9evuwghMoYZn+QmRSKUCIetFM9hhcOQPbsrrl4AnjhPgo
         ZCse1xqNX/WuQ+HwSsKd4UCKMZ0du2aPyA9iV62E6tHCSQqGjnKHO/MXfbIRsF910mJZ
         azFuCP7eWqzsmj0znEHSXH97RE+PuMgrGc1F/c/gRGnhNTPN1yyHCtYQs1U1dQ/QGkwo
         DIzBnfmaNDxtLDhYkfKK6KHywJlunAIX8Jp5uE/Q19/lCwcaoFrwJZb9ydqq7PAFYNlK
         1eOCh5EzNVczJ3NH5XsJ3aZq2CU5f+Oa9dWETuTGXkpss+rb5+xRydII9lsNYfn7Sbhf
         HvGg==
X-Gm-Message-State: AOAM533m14JoLgRAqrr3HP6lDfJkiX2cvr2+7c3Y3Yhkhq+dd/1XDSpx
        wkJ3RY2Yz/MdilNAVg3bC0DZcA==
X-Google-Smtp-Source: ABdhPJwPxfVG4w0Lz2q4SXNxbZfRCeQ5g1BryLvFq3XRveWZT/82P4U5rh+6QPi4nV7uOkjbCWj7eA==
X-Received: by 2002:a05:6000:50d:: with SMTP id a13mr29289561wrf.130.1624300156936;
        Mon, 21 Jun 2021 11:29:16 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5ebd:8bd9:d549:4211? ([2a01:e34:ed2f:f020:5ebd:8bd9:d549:4211])
        by smtp.googlemail.com with ESMTPSA id k2sm18235911wrw.93.2021.06.21.11.29.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:29:16 -0700 (PDT)
Subject: Re: [PATCH] Fix mt7622.dtsi thermal cpu
To:     ericwouds@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210619121927.32699-1-ericwouds@gmail.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <e30a2d01-a200-80cb-88d9-6aea62dd49f1@linaro.org>
Date:   Mon, 21 Jun 2021 20:29:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210619121927.32699-1-ericwouds@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/06/2021 14:19, ericwouds@gmail.com wrote:
> From: Eric Woudstra <ericwouds@gmail.com>
> 
> Cpu-thermal is set to use all frequencies already at 47 degrees. 
> Using the CPU at 50 for a minute, the CPU has reached 48 degrees, is 
> throttled back to lowest setting, making the mt7622 terrribly slow. 
> Even at this low speed, the CPU does not cool down lower then 47 so
> the CPU is stuck at lowest possible frequency until it shut down and
> stays off for 15 minutes.
> 
> cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>                  <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> 
> This should not be set al every cooling map. It should only be set at
> the highest cooling map. Same as in the example:
> 
> https://www.kernel.org/doc/Documentation/devicetree/bindings/
> thermal/thermal.txt  line 272
> 
> But then without the fan and added a third map.
> 
> Now temperature will be regulated at 87 degrees celcius. At temperatures
> lower then 87, all frequencies can be used.

47°C is really a too low temperature and this performance drop is normal.

I would not remove the passive mitigation but try by increasing the CPU
temp to 70°C and by changing the active trip point to 80°C. If it works
fine, try 75°C and 85°C.

To test, the thermal killer is dhrystone (one thread per cpu).

With a 75°C passive trip point, the step wise thermal governor, I think
the mitigation will happen smoothly providing better performances, and
probably the fan won't fire.

> Also see the post:
> 
> http://forum.banana-pi.org/t/bpi-r64-only-10-cpu-speed-at-already-48-
> degrees-celcius-speed-not-increasing-anymore/12262
> 
> Signed-off-by: Eric Woudstra <ericwouds@gmail.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt7622.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7622.dtsi b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
> index 890a942ec..b779c7aa6 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7622.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7622.dtsi
> @@ -170,14 +170,14 @@ cpu-crit {
>  			cooling-maps {
>  				map0 {
>  					trip = <&cpu_passive>;
> -					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +					cooling-device = <&cpu0 0 0>,
> +							 <&cpu1 0 0>;
>  				};
>  
>  				map1 {
>  					trip = <&cpu_active>;
> -					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> -							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +					cooling-device = <&cpu0 0 0>,
> +							 <&cpu1 0 0>;
>  				};
>  
>  				map2 {
> 


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
