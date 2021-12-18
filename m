Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2665D479B86
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 16:09:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233466AbhLRPJL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 10:09:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233465AbhLRPJK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 10:09:10 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 512A1C061574
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 07:09:10 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id s1so4479294wra.6
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 07:09:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=4Jx0r8u8GwSVNZZUQkIGbMqgfeOF8CFRv/AVFU4Cz6Q=;
        b=LgF86P71CsNKaxbYYlfp4fDQgcPN1o8/rxFOXydIH8BZQ6GI+KfTJB2tJ6baAnF6yv
         jUIoOI8t1/FlOVDrS50KyecuHQF9LjNoEt5n7XCnctJgZAIvlLMy1yJBJ2/azBvwg/Da
         FnoZMsnhKNYFvrBLkKV6XvFO3zIZtL+4psnS3mHMLBlJ6T1RSreAV5O787SAU8mFgT3k
         +ifiKpKunsClSndxfTqJhf1FhC3Makx30Gm9Cq8J29f6oGoamZ2mxwQeOr2W9KPIF8aC
         jfAU+wtrUi+VCIwUqJk9ONkmBjGlY4mozz9rFqX6p1xMbYnJBxfmgck5rIJgV2kMB1ab
         vV2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=4Jx0r8u8GwSVNZZUQkIGbMqgfeOF8CFRv/AVFU4Cz6Q=;
        b=F7Xo1KJu9zKBbA4rwSbN9+kYPJzMBUzCyl0OtpKohYQy8BlA4F24aXNnSIX/hTJkug
         3iZEmgtUbWLhrKxM5+PRxa6+k9v583lHS5u2TSfVgw3FsqGm86fSitCXHHbx6SPnCg9B
         J65otJIXWnl96B8pbBPBr61rdYIqLsJfBQSkyVp0AG2Xc/S3WvJgucUjZ6fwUUmqj6lK
         v54tgr7SzQjT4BxNV3bq8RRFIGjsm7wTJKzr0HOqGZOpdM/9GHwSsgryH7r6OYVioKQ4
         ok/kZ0xsG4PL/yIsg2gJ2A01MbgJ8ER65Kg+GXOfD75t/5AhLHD7ys3qbfYe07NNEoRN
         KJgg==
X-Gm-Message-State: AOAM530vBQNhbFmfBp1xqL/3oBsxBZPH4lWMlyhMgYaPOJ0Q5fZtifWm
        prUlIsK0XAAFxdLtahVC01oVtLA/CJjOcjPZ
X-Google-Smtp-Source: ABdhPJyHNPKxPcjCWCy6WIP+tPA29bOw4V1wdCTCIArytZ74LqRyhzJKZ8cGqnz8hYeFB6Kqs1t1vQ==
X-Received: by 2002:a5d:6289:: with SMTP id k9mr6283676wru.501.1639840147739;
        Sat, 18 Dec 2021 07:09:07 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id p1sm1554275wma.42.2021.12.18.07.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Dec 2021 07:09:07 -0800 (PST)
References: <20211218142632.15293-1-alexander.stein@mailbox.org>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson-g12b-odroid-n2: move assigned-clocks
Date:   Sat, 18 Dec 2021 16:03:16 +0100
In-reply-to: <20211218142632.15293-1-alexander.stein@mailbox.org>
Message-ID: <1j4k769ch7.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat 18 Dec 2021 at 15:26, Alexander Stein <alexander.stein@mailbox.org> wrote:

> dtschema expects a 'clocks' property if 'assigned-clocks' is used, but
> 'sound' node does not.
> So move the MPLL[0-2] clock settings &clkc_audio which actually use them.

No, this does not make sense.
The sound card needs the clocks set in such way - nothing else
The clock controller work just as well regarless of the clock rate

Having a clock property or not does not change that

> This fixes the dtschema warning:
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dt.yaml: sound: 'clocks' is a dependency of 'assigned-clocks'
>

Then the schema needs fixing IMO

> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dtsi    | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> index 9c05c83453f5..85257507206c 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
> @@ -252,14 +252,6 @@ sound {
>  				"U19 INR", "ACODEC LORP",
>  				"Lineout", "U19 OUTL",
>  				"Lineout", "U19 OUTR";
> -
> -		assigned-clocks = <&clkc CLKID_MPLL2>,
> -				  <&clkc CLKID_MPLL0>,
> -				  <&clkc CLKID_MPLL1>;
> -		assigned-clock-parents = <0>, <0>, <0>;
> -		assigned-clock-rates = <294912000>,
> -				       <270950400>,
> -				       <393216000>;
>  		status = "okay";
>  
>  		dai-link-0 {
> @@ -365,6 +357,13 @@ &cecb_AO {
>  };
>  
>  &clkc_audio {
> +	assigned-clocks = <&clkc CLKID_MPLL2>,
> +				<&clkc CLKID_MPLL0>,
> +				<&clkc CLKID_MPLL1>;
> +	assigned-clock-parents = <0>, <0>, <0>;
> +	assigned-clock-rates = <294912000>,
> +					<270950400>,
> +					<393216000>;
>  	status = "okay";
>  };

