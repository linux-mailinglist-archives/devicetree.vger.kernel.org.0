Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32303536369
	for <lists+devicetree@lfdr.de>; Fri, 27 May 2022 15:45:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351374AbiE0Npg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 May 2022 09:45:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238218AbiE0Npf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 May 2022 09:45:35 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 196B549251
        for <devicetree@vger.kernel.org>; Fri, 27 May 2022 06:45:34 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id y24so2667531wmq.5
        for <devicetree@vger.kernel.org>; Fri, 27 May 2022 06:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=jBX6sPP/edoe4coCPmiUBmbs1kcK2bMRWX97xjgtvx8=;
        b=JWLI8KLcxTNF3ggaTQHWvElnpoMg5ySLRYT9qMnjpJ26mb4XV1XZnrtGP6RdIb63oU
         vVdTAiv6SK9RQ7WGAxamRpwlEDXpQv2X6QNcMsKFNrXb6zdxCIiw6HLV7DD4JV1NqL8R
         xwau3E89cavQkVogB64htJPJdOo//B6QRNen8YVJ+p2ldlm+MUov87XMIJsBZfMS2Epu
         1m2Ds2dbBDUbrajs7hUy1hkqjNSYWFRaLX4KS0vsnUy0EqF62XGRK4v6cmlsvcWt+sQB
         4K5HeuAIW/7e2qjNvc/27xOiqY5E1lmLiUeMsi13xzYP2MG5nF1lpVEvjORm6JdgGPjp
         j3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=jBX6sPP/edoe4coCPmiUBmbs1kcK2bMRWX97xjgtvx8=;
        b=5lfq0XpVTAsEiYa87rHlCe1BOqdh/AOfaZLIS1feAhrOpPgp4FoxiEmMByBSjQRN5A
         c4A0QBx7yFwqOhNJiEJ5R4/5xQMpxrhJDPG6Qf9B2DyvcdV4g7XZoINiTymNg1kuJs7t
         lsYD/6a3BkxUJXDjRZRq0lTsqj6qVAGJJhRmBHc9rdJyMtjLzA3hD7nUGVKNjDGSt6wL
         mu1FY2oaPsE92p5l1n8ifINVx+YNmUOQtzkOXUI3GuInjKi9QQhkEbFm9yPGgG1tASaD
         2+G34KXGb5mBmDXw7dfS/8xi9YauwVJpvo8pp6MUfeUkyjp3oTncUsa8BDHH/WwwW6sq
         PWrw==
X-Gm-Message-State: AOAM533gO6H8RREVjKSHHlceKTOKuMbfhWoQ5dW3BtPBd+cKGCkUHC1j
        IxEeEcWlh+KeuZVpJlWMvkJlNg==
X-Google-Smtp-Source: ABdhPJzPdKyv3HnK5pKB3f32K0HPpugENpmEnYc8YylJwZqpuwS9yD2Zu4cpYiY8OxyWx4YH6xFk4Q==
X-Received: by 2002:a05:600c:154d:b0:394:8d64:9166 with SMTP id f13-20020a05600c154d00b003948d649166mr7123702wmg.102.1653659132457;
        Fri, 27 May 2022 06:45:32 -0700 (PDT)
Received: from ?IPV6:2001:861:44c0:66c0:f081:5ded:fc86:365d? ([2001:861:44c0:66c0:f081:5ded:fc86:365d])
        by smtp.gmail.com with ESMTPSA id e7-20020adfa447000000b0020e5d2a9d0bsm2107939wra.54.2022.05.27.06.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 May 2022 06:45:32 -0700 (PDT)
Message-ID: <a6b1fd65-d6c4-e3dc-d237-9cb2e72bbecf@baylibre.com>
Date:   Fri, 27 May 2022 15:45:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH] arm64: dts: meson: add reset controller for Meson-S4 SoC
Content-Language: en-US
To:     Zelong Dong <zelong.dong@amlogic.com>, devicetree@vger.kernel.org,
        p.zabel@pengutronix.de, robh+dt@kernel.org, khilman@baylibre.com,
        martin.blumenstingl@googlemail.com
Cc:     linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jbrunet@baylibre.com
References: <20220526130158.36651-1-zelong.dong@amlogic.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <20220526130158.36651-1-zelong.dong@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/05/2022 15:01, Zelong Dong wrote:
> Add the reset controller device of Meson-S4 SoC family
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> ---
>   arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> index 480afa2cc61f..c750bc60786f 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
> @@ -94,6 +94,12 @@ uart_B: serial@7a000 {
>   				clocks = <&xtal>, <&xtal>, <&xtal>;
>   				clock-names = "xtal", "pclk", "baud";
>   			};
> +
> +			reset: reset-controller@2000 {
> +				compatible = "amlogic,meson-s4-reset";
> +				reg = <0x0 0x2000 0x0 0x98>;
> +				#reset-cells = <1>;
> +			};
>   		};
>   	};
>   };

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
