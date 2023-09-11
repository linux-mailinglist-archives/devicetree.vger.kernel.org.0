Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B451D79B6A8
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 02:05:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbjIKUwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:52:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242609AbjIKP4L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 11:56:11 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C0E12A
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:56:07 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4013454fa93so52736005e9.0
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694447766; x=1695052566; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GP/eP8jDYXQ289unHUdgYKQAZk5IRHf3RfjCHo6X25s=;
        b=YzwCXRsJD5Rwuq1JPnDGZwR64nWwmSJFBrPdvuuXI0UPr/0Diz9XclA2zIVrT8hpl9
         vIfmN26zlT+pqF5SDQRYt88BzjW40RqqkJ9SLj8vlJu0tzBO63WsLCyS4PuwiWBYEsv8
         L4l9O5SUq447wDLkLQfJJNiFDt5UKh0U6pN/iHPCULWf36+TXR+GiqG3xbPS5orUZF6w
         KwiMlIhD+c5GAk1jRI7IMm/1bx/Kqz5KEC4g1nEROxfvj6SzKWt+KaUdnEDihwPk7lJ8
         wyWAnBkgVcAK2wRE6M9oEjB5fc9fX/oJGsI96+2vQzPlVEPGNlwUyXtD0w7NldRK6jFu
         pOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694447766; x=1695052566;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GP/eP8jDYXQ289unHUdgYKQAZk5IRHf3RfjCHo6X25s=;
        b=QEY2xr4tYk1aEj1Mn+MZifdTUfptLZNyCLKiFfu8r4sjVTg7tJoqxvkyrgFdlkZdxq
         2FFrXO3kz9LWTKreLQrGPEPdCKBuRp9XYlhB4eJArtTiE2Y6WHfGWdAfT2PUxkQX6fLW
         KgPneBDY8e8vFQUsi9j8QiC82CpwObPr4WADca/l9YozDHPPMhdKpQYdXW+lJ7ZkrHlj
         z9AqfXNlgY8D3+Tnj+E/vn3CvdTPURwclJP7jpHRhf5KhqDmGEzIuqu5UppDZiQwVD4A
         Ev77d+S8WX1EhpRhH6Bxw73iI43vOb817ClPb3cHcpLMxVEKIL2WmN+2WUqdUnXKeP86
         CF4w==
X-Gm-Message-State: AOJu0YxVEKTORLQVeUYfaf+rkfcrLlchhkc8NF57QaJN9peEeTTDsBtJ
        e11NbHrdwQWcN+KzK95xi7ZotQ==
X-Google-Smtp-Source: AGHT+IEkFcMfdK3cHPbfayqFmuBT7sJyfrGNzvvJusP8Zhs4Fgi4D1oLDfLEtlFjqtfNeGMrgNcMtQ==
X-Received: by 2002:a05:600c:24c:b0:3fe:dcd0:2e32 with SMTP id 12-20020a05600c024c00b003fedcd02e32mr8331633wmj.19.1694447765769;
        Mon, 11 Sep 2023 08:56:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c25-20020a05600c0ad900b003fee567235bsm13713079wmr.1.2023.09.11.08.56.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 08:56:04 -0700 (PDT)
Message-ID: <eedc9787-06b7-bac5-a1f5-ba07d23f4ac7@linaro.org>
Date:   Mon, 11 Sep 2023 17:56:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 5/5] arm64: dts: meson: u200: add onboard devices
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Christian Hewitt <christianshewitt@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
References: <20230911154541.471484-1-jbrunet@baylibre.com>
 <20230911154541.471484-6-jbrunet@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230911154541.471484-6-jbrunet@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2023 17:45, Jerome Brunet wrote:
> Add missing audio devices found on the u200 PCB. This includes
> * Lineout connected to the internal DAC
> * SPDIF input connected to a coaxial socket
> * TDM input decoders allowing output loopback
> * TDM A and B output encoders and interfaces
> 
> TDM A and B link format is set by the related external codec.
> Internal audio DAC can hook to any TDM output.
> 
> This change does not include support necessary the optional the speaker and
> PDM Mic headers
> 
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  .../boot/dts/amlogic/meson-g12a-u200.dts      | 228 +++++++++++++++++-
>  1 file changed, 218 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
> index da66e2e1dffb..9abe37b5b227 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/gpio/meson-g12a-gpio.h>
>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> +#include <dt-bindings/sound/meson-g12a-toacodec.h>
>  
>  / {
>  	compatible = "amlogic,u200", "amlogic,g12a";
> @@ -19,6 +20,22 @@ aliases {
>  		ethernet0 = &ethmac;
>  	};
>  
> +	dioo2133: audio-amplifier-0 {
> +		#sound-dai-cells = <0>;
> +		compatible = "simple-audio-amplifier";

compatible is by convention first property. Do you have different style
in Amlogic/Meson?

> +		status = "okay";

status is by default.


Best regards,
Krzysztof

