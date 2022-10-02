Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E84F75F21DD
	for <lists+devicetree@lfdr.de>; Sun,  2 Oct 2022 10:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229607AbiJBIIZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 04:08:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiJBIIY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 04:08:24 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A330C39BB1
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 01:08:22 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id j16so12687838lfg.1
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 01:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=O3qGf0Qhm8BJZuYtDeuLoDoOuwVahGZ598SBGYRTnMY=;
        b=Xg8w105m1rnL+ruXK42WqhCPvp9EDE2N5PW346GAg1e64pEab7F45DAA1rbvB/irlv
         ++ZcsrKysLtMdSqR5oCulmiin3h6ziA4ueN4MfXgUeJ69XRHqyZGQPjpwjmr5dliPhgx
         44C30RKhlYzuFxDa/AG0DDhv6v5/eU1k1T+JFFYmeVpUDCYpzDnLJnbWs8fmJsOMcaZj
         mQkd06zK2g+M+QONAGHWpwjj793wcF4UNV9BWS9JlShlIE/gdagRZRf4kOwhF/aYlL3C
         lmjzaFtcyExcqHE0tMGJez+4XFm7eAAKkpq3jZciv3Xj6zQZLGx9AkqfZfKpxvB2vsDa
         ewBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=O3qGf0Qhm8BJZuYtDeuLoDoOuwVahGZ598SBGYRTnMY=;
        b=IIzUdXQ62AM+HJQteSpg5znv+HRxDg+72HWrwAc/LPRXGhxHiFztzVuuKc4zi4ZzXY
         ul4/T9HHEg42dt1Ib7bBL5UP3raJZOnRyGskuTFbJC3ZCFjGjlx6ju9kI7NxF20Po4l9
         mtIQf3Qy0tVWa7yEhBLYrcfRLAyudTK4pNy6H5rkMSNsC7ArWpx5iSnHqQ+FNJxcTTT8
         AkH/PeIOEdntFzJLhABbysBcd/FTGxHx5pCokDnapEBGioB1uG072ETqyGnsiwVXu/u0
         pVBvNfDr3brRLRxQ3Ss5mqKYVYBTS88WmirlP2ImjShWWuPKd6y+jNsTQ1EEytpdRGBn
         knQQ==
X-Gm-Message-State: ACrzQf1QY0fhv4q8uSz+a6LTdz1R2wldzMQchmo/0A3oj1gXI7sqK5lg
        0HjYGP3Br9Gsn9+RWkf74JvNLw==
X-Google-Smtp-Source: AMsMyM76sHuJFoOrGeSwIUeBoMg3REG8ihVa0O3oL2n75PD0oSahxr5nDq+t38k/wfilvQ95ptGBeA==
X-Received: by 2002:a05:6512:15a0:b0:49b:1eba:89d4 with SMTP id bp32-20020a05651215a000b0049b1eba89d4mr5226436lfb.188.1664698101072;
        Sun, 02 Oct 2022 01:08:21 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bd6-20020a05651c168600b0026bf04aafb5sm588339ljb.6.2022.10.02.01.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Oct 2022 01:08:20 -0700 (PDT)
Message-ID: <990c66cc-8cb3-a0bc-f4ee-0908f34f3c38@linaro.org>
Date:   Sun, 2 Oct 2022 10:08:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/2] ASoC: wm8961: add support for devicetree
Content-Language: en-US
To:     Doug Brown <doug@schmorgal.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221001200039.21049-1-doug@schmorgal.com>
 <20221001200039.21049-3-doug@schmorgal.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221001200039.21049-3-doug@schmorgal.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2022 22:00, Doug Brown wrote:
> This adds support for devicetree to the WM8961 driver so it can be used

Do not use "This commit/patch adds ...".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

Just "Add support for ..."


> with modern DT-based kernels.
> 
> Signed-off-by: Doug Brown <doug@schmorgal.com>
> ---
>  sound/soc/codecs/Kconfig  | 2 +-
>  sound/soc/codecs/wm8961.c | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> index e3b90c425faf..2b5787ee8d31 100644
> --- a/sound/soc/codecs/Kconfig
> +++ b/sound/soc/codecs/Kconfig
> @@ -1929,7 +1929,7 @@ config SND_SOC_WM8960
>  	depends on I2C
>  
>  config SND_SOC_WM8961
> -	tristate
> +	tristate "Wolfson Microelectronics WM8961 CODEC"

This is independent change. Please split to separate commit.

>  	depends on I2C
>  
>  config SND_SOC_WM8962
> diff --git a/sound/soc/codecs/wm8961.c b/sound/soc/codecs/wm8961.c
> index 7dc6aaf65576..539096184eda 100644
> --- a/sound/soc/codecs/wm8961.c
> +++ b/sound/soc/codecs/wm8961.c
> @@ -971,6 +971,12 @@ static const struct i2c_device_id wm8961_i2c_id[] = {
>  };
>  MODULE_DEVICE_TABLE(i2c, wm8961_i2c_id);
>  
> +static const struct of_device_id wm8961_of_match[] = {
> +	{ .compatible = "wlf,wm8961", },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, wm8961_of_match);

Compile-test with W=1 and without CONFIG_OF. Is there a warning here?

Best regards,
Krzysztof

