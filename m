Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB7D034EC1A
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 17:23:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232064AbhC3PXH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 11:23:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231812AbhC3PWy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 11:22:54 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF08C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 08:22:54 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id x7so16613872wrw.10
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 08:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w8V0w5GOQQHkISfgPJAfMdvO2kYy36iSMSCiKff1Avk=;
        b=UK1+56tkUkxiWzmRwystR96Cb2t9qheGXbUSyiN2dgeqKl5Hgl/wcbw7IfsGiBDN6a
         U/X2/vZNS1xLCZtaBdzuywfO6MS3gcIdI+NqD3jPhHlkc0ShXx/R6Bk3+Qi2tEZHXmMi
         pIyaaTYprHhpUG6PDxBTyGZn3RqSMEQ/uO5PCV2dgPMsToSNOiihQcQ33t25LjhK9gR9
         9CuqqUi6ddoINX/lxm6jpVa2CMUxoZkYKrh9zqh/fSd1qY/caYxdU/O/rg6p92bW5xe7
         quVMO5sraS/foEHHqu7cly5FmtbhWhQOA+XhrXcoxcE5laGESrX6+LDendnLlZ7twgLY
         pAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=w8V0w5GOQQHkISfgPJAfMdvO2kYy36iSMSCiKff1Avk=;
        b=BMyQpvt1I5LWV6dlKkPKyFUE0LxFFPnevlcbc9LrJT2WDC1d7E/1BO5uP96tJrO2Wm
         f3OR35PIZKPqOh8DoQNBQgMlQUGvkl6zQvEoKecl9fOH23XxJOy7+Pb65lXX7ipGsn5Y
         Fmm5/oCi7t/vI+NHspBCmNEKW2ERxAo8vEf1oHdP2FXgnvd7pmeEHx8AO5pLW2lukLrp
         Irg+e5ChEqCuwze7mvUdPBC0e3JdgB3Nj2dK5T42lhmG3qBQgLbrMQ/HHPlfCp413b1O
         Vhu4phmgsMrdVhTcUK+y0AWO28YcSrk0S43+6IgqEgOPrkKbORd6xF8+GfVa5vyn/wql
         wxnA==
X-Gm-Message-State: AOAM532YE6ZNzFkiv7R7OO1b9zWHoZYsJ9f7zfOEp9GHW3++AP4SrVoS
        wjz3QZjHND6YyamTlAnukUm/pg==
X-Google-Smtp-Source: ABdhPJxESZmSpSlE6klTTQAJEKlYJe9e6WfAFm2Og41KDME4F0sRQvY34G+x1BpznTP2tl29sfIHsg==
X-Received: by 2002:a5d:63d2:: with SMTP id c18mr34201127wrw.277.1617117772629;
        Tue, 30 Mar 2021 08:22:52 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:90c:e290:2d11:7929:c1dd:292? ([2a01:e0a:90c:e290:2d11:7929:c1dd:292])
        by smtp.gmail.com with ESMTPSA id r206sm4463718wma.46.2021.03.30.08.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 08:22:52 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: dts: meson: remove extra tab from ODROID
 N2/N2+ ext_mdio node
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210329161256.31171-1-christianshewitt@gmail.com>
 <20210329161256.31171-2-christianshewitt@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <257db59f-fca6-ece4-f8c9-a2f4e1d95c49@baylibre.com>
Date:   Tue, 30 Mar 2021 17:22:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210329161256.31171-2-christianshewitt@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2021 18:12, Christian Hewitt wrote:
> Remove an extra tab from the ext_mdio node in the ODROID N2/N2+ common
> dtsi file.
> 
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 58ce569b2ace..2f8d574c30c0 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -410,7 +410,7 @@
>  
>  &ext_mdio {
>  	external_phy: ethernet-phy@0 {
> -		/* Realtek RTL8211F (0x001cc916) */	
> +		/* Realtek RTL8211F (0x001cc916) */
>  		reg = <0>;
>  		max-speed = <1000>;
>  
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
