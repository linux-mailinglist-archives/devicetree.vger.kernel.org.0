Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D55ED48F766
	for <lists+devicetree@lfdr.de>; Sat, 15 Jan 2022 16:14:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbiAOPOn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 10:14:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232916AbiAOPOn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 10:14:43 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ADA6C06161C
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 07:14:43 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id v123so11574746wme.2
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 07:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=references:user-agent:from:to:cc:subject:date:in-reply-to
         :message-id:mime-version;
        bh=oQapXi5PzBJKM1NBMeogDPHhLlUsvU7UBCouDsr/qX8=;
        b=G7cEzfisDpAO7oFb8xC67I8Gq9+zwh8GiJ7Vjtqv2rhTMTFIgc+yBLlJUUrnXTwAPv
         42gCLrd/sk8pnu1OOsIw6g/zdZEStGXVKTu3bZfVehmvzIO+/T5tr+TaNvWOJ0hA2X/Z
         Oj9OXIRLHeB99zPmt7S12oR5FqYIqVVuo7s8zQyuTyIdK2n2Rc3Z4x6AOHMt6zTR3sDB
         b9yvkAyNcGdbyuC8dtUwF1nnWDhllCBFy3WO/pTqboNE8MjEpd8kZmOC9WvvUCa7amMF
         27RhAtjVNkxsub6IRyf8jRR17kLPBZnMC/v4leQOwljPnKdS4ba9Jiy20MI3TZEgGS0t
         f5Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:references:user-agent:from:to:cc:subject:date
         :in-reply-to:message-id:mime-version;
        bh=oQapXi5PzBJKM1NBMeogDPHhLlUsvU7UBCouDsr/qX8=;
        b=MBoVazugedax5sCyh8Riyxkm9hGecmrMmKvC5dKRnR9oqPup0Xoyb1x/YQhbirvtKy
         l5Ac8gqAAjyIUfw3VcI5iuBguBKKf9NIAe35lUdnecoD/J8Rxs2ar5cnPFE3aQkU2H/3
         BNm0d+3T4u03RVKgID2bTnAOhqRqTKvgnX/UtvbbHHpBs9cEsii4Rq9liOfHKvkNNk7g
         TueSnO2KrHKzC//NYZXDNZdy+/H4yrSV3inn4nCFvHGc0nanwDMKx5Cs/peU/TPD3aEi
         3efQYAHvuLlKQi6zzsApMgN3HMwRLYeAzfiXCKBHJDHknicJTWppjXvEHxAKXh/vq/H6
         boCA==
X-Gm-Message-State: AOAM532LbObyDRZs6RJDIMgbL1rQB8doTMd+8wzsx6vu3c4QU7qWxKbq
        cJldNanuw8cUfVlL9Y7DxaLPjWURSV9kZb+y
X-Google-Smtp-Source: ABdhPJxFc+TOdI3rmNguFA4s0R71joTvnMOnY/0pm/AtD6QgdjftDSnqTPsn8CVxGMaIAb5Ogx0gIA==
X-Received: by 2002:a05:6000:1545:: with SMTP id 5mr10639823wry.552.1642259681085;
        Sat, 15 Jan 2022 07:14:41 -0800 (PST)
Received: from localhost (82-65-169-74.subs.proxad.net. [82.65.169.74])
        by smtp.gmail.com with ESMTPSA id p2sm2148600wrs.36.2022.01.15.07.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jan 2022 07:14:40 -0800 (PST)
References: <20220115093557.30498-1-alexander.stein@mailbox.org>
User-agent: mu4e 1.6.10; emacs 27.1
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: meson-axg: add missing reset-names
 property
Date:   Sat, 15 Jan 2022 16:04:10 +0100
In-reply-to: <20220115093557.30498-1-alexander.stein@mailbox.org>
Message-ID: <1jilulav4u.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat 15 Jan 2022 at 10:35, Alexander Stein <alexander.stein@mailbox.org> wrote:

> Bindings amlogic,axg-fifo.txt mandates that reset-names is a required
> property. Add it.

Binginds *mandates* ?? the bindings you are adding mandates that, not the
previous doc, nor the driver.

Modifying drivers and DT to accomodate made-up bindings requirement is
disturbing.

The bindings should not require that because the driver does not, as it
stands. The driver requires the arb reset to be provided, not the name.
Please fix the bindings.

>
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> This is essentially a preparation for YAML conversion to fix the
> warnings.
>
>  arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> index 3f5254eeb47b..b14175e2f1d6 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
> @@ -1333,6 +1333,7 @@ toddr_a: audio-controller@100 {
>  				interrupts = <GIC_SPI 84 IRQ_TYPE_EDGE_RISING>;
>  				clocks = <&clkc_audio AUD_CLKID_TODDR_A>;
>  				resets = <&arb AXG_ARB_TODDR_A>;
> +				reset-names = "arb";
>  				amlogic,fifo-depth = <512>;
>  				status = "disabled";
>  			};
> @@ -1345,6 +1346,7 @@ toddr_b: audio-controller@140 {
>  				interrupts = <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>;
>  				clocks = <&clkc_audio AUD_CLKID_TODDR_B>;
>  				resets = <&arb AXG_ARB_TODDR_B>;
> +				reset-names = "arb";
>  				amlogic,fifo-depth = <256>;
>  				status = "disabled";
>  			};
> @@ -1357,6 +1359,7 @@ toddr_c: audio-controller@180 {
>  				interrupts = <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>;
>  				clocks = <&clkc_audio AUD_CLKID_TODDR_C>;
>  				resets = <&arb AXG_ARB_TODDR_C>;
> +				reset-names = "arb";
>  				amlogic,fifo-depth = <256>;
>  				status = "disabled";
>  			};
> @@ -1369,6 +1372,7 @@ frddr_a: audio-controller@1c0 {
>  				interrupts = <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>;
>  				clocks = <&clkc_audio AUD_CLKID_FRDDR_A>;
>  				resets = <&arb AXG_ARB_FRDDR_A>;
> +				reset-names = "arb";
>  				amlogic,fifo-depth = <512>;
>  				status = "disabled";
>  			};
> @@ -1381,6 +1385,7 @@ frddr_b: audio-controller@200 {
>  				interrupts = <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>;
>  				clocks = <&clkc_audio AUD_CLKID_FRDDR_B>;
>  				resets = <&arb AXG_ARB_FRDDR_B>;
> +				reset-names = "arb";
>  				amlogic,fifo-depth = <256>;
>  				status = "disabled";
>  			};
> @@ -1393,6 +1398,7 @@ frddr_c: audio-controller@240 {
>  				interrupts = <GIC_SPI 90 IRQ_TYPE_EDGE_RISING>;
>  				clocks = <&clkc_audio AUD_CLKID_FRDDR_C>;
>  				resets = <&arb AXG_ARB_FRDDR_C>;
> +				reset-names = "arb";
>  				amlogic,fifo-depth = <256>;
>  				status = "disabled";
>  			};

