Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D920643910B
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 10:19:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbhJYIWU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 04:22:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbhJYIWT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 04:22:19 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26697C061745
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 01:19:53 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id m42so9841396wms.2
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 01:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nqdTAd2AAFjUR4/hpb+Hh1HQbpzrMWpG+y0bpTyBHe8=;
        b=0Cqi+hPbwmyD1uI7h/XlBWasSMJzIJA2qUTP7fF5bkIeGXmrTjAISUxahve+FUTKVZ
         0bD091S+Q6o/+ccNucB5aASYR0ZEuEzxumSKMlY6/5unRGz6eV4raUfWFhSGtZiVCEEp
         D9maoN0WKOYAimUURKBKokqbBjl1ZgftPT+WvvT+yfmbXX7RQM8Wnqr4EkoNvoraxK6u
         X9WG+jqPrpcSJrWqrrEs3dZcfOHjTuR97eM8XZg0EKQRu3AnIOD3Rudko6j28ZqiXUPr
         vDkLJWqrv62ECFjIoMtgFJW5H6+Q6LnGBN9hjK+DQRegNvqXl165s0/rqWIOT0dhrgGh
         qbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=nqdTAd2AAFjUR4/hpb+Hh1HQbpzrMWpG+y0bpTyBHe8=;
        b=Dt6CwwDwYWRSyD2h900PhnXg6iVno170VYqNFgPFFOLxR1oBlkCn0zz8COdEMvgbYY
         XNsYZU+12qB7bPX4eqvRdQPsLkXCqMVENAWjo1BSPc3Nt3XL48pquiMvIilzNTwbjCwR
         0+IzoKSdoWFUF0Kcum4rAUnun+gMLrMfyIIMi2mDCtM5Tu0G8yG+i6u9aiQ4cvkL6ayK
         M0TKWmCqXkwN2WH3SAhjW5IAs5FVvWf5zmRnDKn/ocRcfGxQY4/p7cMVeLZ+ffn1CS3s
         eq2TLQWG768l5/jRu0q+lbrWJzzn8dXH75FJprGSL9Vf2Au2gCkeQM4xiD6Wn8iquRx/
         8hkw==
X-Gm-Message-State: AOAM5315CIglt5hs7GHBZ84AinSbqwJkzdXAwfLXyOAajuh2YRNORLep
        XQ1NOE7Z/V7SvgvS1OMbfSSE7A==
X-Google-Smtp-Source: ABdhPJwNGa9asu7Z1567HMswCkhmdmuQt831fpZVjam/iHs5lXL5iOHzHOKOePjV5DjCEgETDXqGwg==
X-Received: by 2002:a1c:7208:: with SMTP id n8mr9906308wmc.130.1635149991460;
        Mon, 25 Oct 2021 01:19:51 -0700 (PDT)
Received: from [172.20.10.7] ([37.166.214.228])
        by smtp.gmail.com with ESMTPSA id o1sm6803044wru.91.2021.10.25.01.19.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 01:19:50 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64: dts: amlogic: meson-g12: Fix GPU operating
 point table node name
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
 <20211023214856.30097-3-alexander.stein@mailbox.org>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <fdacca3e-a35f-ac88-8a57-1fa5bb049e68@baylibre.com>
Date:   Mon, 25 Oct 2021 10:19:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211023214856.30097-3-alexander.stein@mailbox.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/10/2021 23:48, Alexander Stein wrote:
> Starting with commit 94274f20f6bf ("dt-bindings: opp: Convert to DT
> schema") the opp node name has a mandatory pattern. This change
> fixes the dtbs_check warning:
> gpu-opp-table: $nodename:0: 'gpu-opp-table' does not match
> '^opp-table(-[a-z0-9]+)?$'
> Put the 'gpu' part at the end to match the pattern.
> 
> Fixes: 916a0edc43f0 ("arm64: dts: amlogic: meson-g12: add the Mali OPP table and use DVFS")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Same as with patch 2/4 about the 'Fixes' tag: At the time when
> gpu-opp-table was added there was no schema present. So there was no bug at
> the time of writing. I'm ok either way.
> 
>  arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index ff987e7ccff2..517519e6e87f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -58,7 +58,7 @@ efuse: efuse {
>  		secure-monitor = <&sm>;
>  	};
>  
> -	gpu_opp_table: gpu-opp-table {
> +	gpu_opp_table: opp-table-gpu {
>  		compatible = "operating-points-v2";
>  
>  		opp-124999998 {
> 

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
