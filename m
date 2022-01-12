Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E68648BFF5
	for <lists+devicetree@lfdr.de>; Wed, 12 Jan 2022 09:33:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238178AbiALIdp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jan 2022 03:33:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238074AbiALIdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jan 2022 03:33:44 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C246C06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 00:33:44 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id r28so2790980wrc.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 00:33:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L9IwQQiFv4F/PhynVJYSv5Kyc4QAGDJohE6u03AkZCY=;
        b=ykU5ZOUHvLq9H1hXJszUCoCrw8lfvWNcahYrIkAKp6JFkivyVZxKNdH9eQ85FGazOy
         gpwM1M4vXuWc4igtNKWSSb1oRtLO8Yvr1lTqcBJNGH31SvVM9ADxNx3SNLDoGxw07WK9
         dODBae7RBmpAE8JakS15tZUXb/Re85JA3MkQTZ2fAC6LS5sTuH1eoqYX8ka99EW4X6PR
         9KqQpTmxxw9t95YlEbE+WR4a57enObcr/Ssyi1LCrYg48AAodx1ec6IuRD5abA48hkrx
         MoVhc/o9XpGyrRGzW6LflkufCw+oOm/nBGghLbtmnVWdzVTZ/AZ/BdWzCt6+prPsfg9N
         cqIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=L9IwQQiFv4F/PhynVJYSv5Kyc4QAGDJohE6u03AkZCY=;
        b=p4jpo6ii3NYWIyKsUi8ucp9RL/LOOTrbb0k0FG+D38GzSWtqwjluUgplUNeU/LgbgQ
         0QimbFO6qu7lrr4Kxp88ZdYTgYyJX/tg2gYRjC15sO3EKDdr8YHuYUp3gebaDUxGIcg3
         k8aBzyPEQA07WRhDIfIogJIXF4hgxIyUBgvdsBp0BySruR/1y6zsPasiOiDJCewtGDLA
         HrvZsGvgRqYYdE/dA97OuqnoxICr4JCOY8Y2YJOF9bQdiisaYJljf9lNkIAvJqHSe7SI
         yINB+WgbMND2gnGWLKKNLOIrdQHxIn7POn2DRHwDgWr7D7gcbZXi0wy2Rf+EvYF9p/8p
         2cuA==
X-Gm-Message-State: AOAM5321F0JY+xuYQODELdFnJZBOXOf7MCvjx7dFa3ffyMg50wr907uh
        daGXZ7SxwYwRu/2AK3mw7mZcdg==
X-Google-Smtp-Source: ABdhPJyLeEQevgBuRP9or53vy/ZSxJEEVj0xCH5CX4telS7LvKnJ9CXi9LMJI9Y/jfyPrt/P/UuRqQ==
X-Received: by 2002:adf:d4cd:: with SMTP id w13mr7005412wrk.506.1641976423144;
        Wed, 12 Jan 2022 00:33:43 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:381b:6e50:a892:5269? ([2001:861:44c0:66c0:381b:6e50:a892:5269])
        by smtp.gmail.com with ESMTPSA id l6sm3662645wmq.22.2022.01.12.00.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jan 2022 00:33:42 -0800 (PST)
Subject: Re: [PATCH 3/3] arm64: dts: meson-g12-common: add uart_ao_b pins
 muxing
To:     Gary Bisson <gary.bisson@boundarydevices.com>,
        linux-amlogic@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220103154616.308376-1-gary.bisson@boundarydevices.com>
 <20220103154616.308376-4-gary.bisson@boundarydevices.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <fe58c139-f127-d102-a6a6-b8c2151aac20@baylibre.com>
Date:   Wed, 12 Jan 2022 09:33:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220103154616.308376-4-gary.bisson@boundarydevices.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 03/01/2022 16:46, Gary Bisson wrote:
> - RX/TX signals can be mapped on 2 different pairs of pins so supporting
>   both options
> - RTS/CTS signals however only have 1 option available
> 
> Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
> ---
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> index af1357c48bee..3a7773ffbd08 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
> @@ -1952,6 +1952,33 @@ mux {
>  						};
>  					};
>  
> +					uart_ao_b_1_pins: uart-ao-b-1 {
> +						mux {
> +							groups = "uart_ao_b_tx_2",
> +								 "uart_ao_b_rx_3";
> +							function = "uart_ao_b";
> +							bias-disable;
> +						};
> +					};
> +
> +					uart_ao_b_2_pins: uart-ao-b-2 {
> +						mux {
> +							groups = "uart_ao_b_tx_8",
> +								 "uart_ao_b_rx_9";
> +							function = "uart_ao_b";
> +							bias-disable;
> +						};
> +					};

I'm not fan of these nodes namings.

Perhaps :
- uart-ao-b-2-3
- uart-ao-b-8-9

so the actual pins numbers used are more clear ?

> +
> +					uart_ao_b_cts_rts_pins: uart-ao-b-cts-rts {
> +						mux {
> +							groups = "uart_ao_b_cts",
> +								 "uart_ao_b_rts";
> +							function = "uart_ao_b";
> +							bias-disable;
> +						};
> +					};
> +
>  					pwm_a_e_pins: pwm-a-e {
>  						mux {
>  							groups = "pwm_a_e";
> 

