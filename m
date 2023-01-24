Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73E42679F62
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 18:01:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233657AbjAXRBB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 12:01:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234138AbjAXRA7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 12:00:59 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D55E440BDB
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 09:00:56 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id e19-20020a05600c439300b003db1cac0c1fso11801475wmn.5
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 09:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KYTp9wjTwOZySD0OvGmE1iLm2O/7yZJduMC+N1x2FCY=;
        b=eaqvvd69zK2ecFFhKaHa0hBhlmBsau9NxvlOkYp9nryXUVwd8Nb5/YD1OzKF6F4fpJ
         /G/FC371WyTNSG3UhmnNm2LThp2Voezu+LuGimxmsZ/R+0zzXRLv83rdsAR2pgQd3UD9
         OYjwfz3wVGLolA+fXgKVnJO3LQ/syHQkaSYZK2TsQOt6y541qy+Tew9kGi8YLddMkFvl
         sUyD+bOi4A/Ex4WCPA5Jv1reMIWPNC8XWP3wT9a4VhMOcGdhisTYXPtVhlZMCgpPs/p5
         opGYNUQx30XID8h1IRmg9s/LchR9oexJBIYrsZ4D7A8s+5hbN8r70n252ZGGNkYs1Sou
         aOwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KYTp9wjTwOZySD0OvGmE1iLm2O/7yZJduMC+N1x2FCY=;
        b=kmMO5VaxamzLHwYvPMuXIDnW3DI1Tq4LOjlcKMl7UK9PPLroxLiGD4olKwQ6uNPoYl
         9YKCEbp6rTMpnmXX+KGB/dKZRr85cmRnjkeHmBIS5NY6v8bcHYs5eBonI8g97z+S1cM3
         7bCrjXz+A2sA+nrdCwwzdA7gOfZF9usivyOqWzZ+0k0dwwAsvnqQrMMDAidczeWaQjwT
         /TeRxX+145RZhNpCZRrC8XkW14G2MWjZpDl6gjpuHaAlo7Kk2p6jQ96omoqR2XnbrLUJ
         7YfXxp2EaYk7+p+0exDvpNnicg5hGl7/8NvCqkYhhmdHNuU19TQ6MoutNzC4ukqjOpoB
         MSCQ==
X-Gm-Message-State: AFqh2kpliI/IYzN5wVeNyF9O7a6k4fzghblLNhspO+1T5Re3Bc4tHyS0
        LgYs3R0vGn9IwDvauukTJJIgKA==
X-Google-Smtp-Source: AMrXdXvbg0cTmgdM7xa2jo5BUEeu6T2vbRUbh/HDpEbqki1ssEGG6woU2xRjY3TSMJ7GGHM9r/T+qQ==
X-Received: by 2002:a05:600c:33a8:b0:3d9:ed3b:5b3e with SMTP id o40-20020a05600c33a800b003d9ed3b5b3emr27371743wmp.19.1674579654878;
        Tue, 24 Jan 2023 09:00:54 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u32-20020a05600c4d2000b003dafb0c8dfbsm2951125wmp.14.2023.01.24.09.00.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 09:00:54 -0800 (PST)
Message-ID: <fd8d6f46-9d4a-c74d-6af4-0abbc0c54526@linaro.org>
Date:   Tue, 24 Jan 2023 18:00:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 5/5 v7] input: pwm-beeper: handle module unloading
 properly
Content-Language: en-US
To:     Manuel Traut <manuel.traut@mt.com>, linux-kernel@vger.kernel.org
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org
References: <Y9AK71Q7X4d+1E4f@mt.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y9AK71Q7X4d+1E4f@mt.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/01/2023 17:44, Manuel Traut wrote:
> 'input: pwm-beeper: add feature to set volume via sysfs' adds device
> attributes without removing them on error or if the module is unloaded.
> 
> This change removes the device attributes on module unloading or if

Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> registering on the input subsystem fails.
> 
> If the module will be unloaded and loaded again it fails:
> [ 1007.918180] sysfs: cannot create duplicate filename '/devices/platform/buzzer/volume'
> 
> Signed-off-by: Manuel Traut <manuel.traut@mt.com>
> ---
>  drivers/input/misc/pwm-beeper.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/input/misc/pwm-beeper.c b/drivers/input/misc/pwm-beeper.c
> index fe543c4151d6..8ef2937e8f21 100644
> --- a/drivers/input/misc/pwm-beeper.c
> +++ b/drivers/input/misc/pwm-beeper.c
> @@ -300,6 +300,7 @@ static int pwm_beeper_probe(struct platform_device *pdev)
>  
>  	error = input_register_device(beeper->input);
>  	if (error) {
> +		sysfs_remove_group(&pdev->dev.kobj, &pwm_beeper_attribute_group);
>  		dev_err(dev, "Failed to register input device: %d\n", error);
>  		return error;
>  	}
> @@ -309,6 +310,17 @@ static int pwm_beeper_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int pwm_beeper_remove(struct platform_device *pdev)
> +{
> +	struct pwm_beeper *beeper;
> +
> +    beeper = platform_get_drvdata(pdev);

Wrong indentation.

Please run scripts/checkpatch.pl and fix reported warnings.


> +	input_unregister_device(beeper->input);

Best regards,
Krzysztof

