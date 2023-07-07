Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDA6174AC42
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 09:49:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232442AbjGGHts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 03:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232327AbjGGHtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 03:49:47 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD36E1BF8
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 00:49:46 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3fbc0981755so17218945e9.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 00:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688716185; x=1691308185;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9EnDHhrFdq4WRPA6nencTKPgQFqADeWH5m8/o3xI9B8=;
        b=g1YuWBRKHLFT0FuLHKbxERzH7W5s4CbuSJ3luIHO7njz/BcL7v6U8EMEAou5wcL5XU
         jdC024WagmvLbTQU7S4FFroIzyhT0XYsAsqySsoRm/tP0HZeMKaNm5vagX8fNtCX5w7d
         +TTVnENjnND/pMl8I2rZFHIepEkmC3xVhpjM59FIZhsbzOdOrrRg9HkIsRObyIIEztC+
         xskJ89cqaVli1Vps42QIQRwflilzYnTGlyjv9OaN1RXkNkFu0GNCJI4COY6iUNz9InL4
         3HoL+j9VD+pVmS0Z17nCjCK904gxrTPnDYKAJgErrXymk8e8G8f6HrOAOpw6XB2zn+C6
         FlUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688716185; x=1691308185;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9EnDHhrFdq4WRPA6nencTKPgQFqADeWH5m8/o3xI9B8=;
        b=CtkEe9gnxb6bUYC/0+utm2a9PyelH2Ngld25LsLJkzGwyEUAaE3qCUBlJcoIcHm02f
         bb9B4mbUhNtMt9Mf1KKFWwFuMMu7HEAQAlHzhnQvzHLX6ZV1cDTd+cU2xITdvdpdreK4
         VHiN6B1MVx0lWssR9dpyWAIbhPJ+mPGwfXGb1CLA7OSuw6KvY0L0ElCQ3Id3BclwSpQx
         uWMWWRX24pB8fpYsHFX+6jnmznjew5NiNyD0O64YjNZMpTPezWRmGKHuBFo5/IeGpFnx
         KrkGBlfhnb64MyN4zhG2MVwAbPgRPRCFMR3Cebb/JPJH4Ui11zNzHww6j6IN0tHWZM2q
         nZRw==
X-Gm-Message-State: ABy/qLZg32STisscWqItWHtcOUvRAifo/XitO6qYnMzZ8AqYQWLdHX0h
        qR0t9YzYvtEgj3rZc5r0lB7yQg7KCoN+p2NGo1KlBwCt
X-Google-Smtp-Source: APBJJlGYScvW1lAKhc3c3YrVDD6Uj/RBfcMAhiRqaaXOv3mivFVVkG2S890dmxWftnhVg5f1N40JFQ==
X-Received: by 2002:adf:e2c6:0:b0:313:fa44:a410 with SMTP id d6-20020adfe2c6000000b00313fa44a410mr3787177wrj.52.1688716185182;
        Fri, 07 Jul 2023 00:49:45 -0700 (PDT)
Received: from [192.168.27.65] (home.beaume.starnux.net. [82.66.176.246])
        by smtp.gmail.com with ESMTPSA id g3-20020a5d5543000000b0030e5bd253aasm3739416wrw.39.2023.07.07.00.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jul 2023 00:49:44 -0700 (PDT)
Message-ID: <bbf39525-5afb-2185-e768-f78de0ed63e4@linaro.org>
Date:   Fri, 7 Jul 2023 09:49:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 1/4] soc: amlogic: use name instead of index as
 criterion
Content-Language: en-US
To:     Xianwei Zhao <xianwei.zhao@amlogic.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>
References: <20230707003710.2667989-1-xianwei.zhao@amlogic.com>
 <20230707003710.2667989-2-xianwei.zhao@amlogic.com>
Organization: Linaro Developer Services
In-Reply-To: <20230707003710.2667989-2-xianwei.zhao@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2023 02:37, Xianwei Zhao wrote:
> The  variate 'index' could be equal to zero in some SoCs. Such as C3 SoC,
> PWRC_C3_NNA_ID be defined zero. Use 'name' instead of 'index' as criterion.
> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> V1 -> V2: add a new patch for change.
> ---
>   drivers/soc/amlogic/meson-secure-pwrc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/amlogic/meson-secure-pwrc.c b/drivers/soc/amlogic/meson-secure-pwrc.c
> index 25b4b71df9b8..c11d65a3e3d9 100644
> --- a/drivers/soc/amlogic/meson-secure-pwrc.c
> +++ b/drivers/soc/amlogic/meson-secure-pwrc.c
> @@ -179,7 +179,7 @@ static int meson_secure_pwrc_probe(struct platform_device *pdev)
>   	for (i = 0 ; i < match->count ; ++i) {
>   		struct meson_secure_pwrc_domain *dom = &pwrc->domains[i];
>   
> -		if (!match->domains[i].index)
> +		if (!match->domains[i].name)
>   			continue;
>   
>   		dom->pwrc = pwrc;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
