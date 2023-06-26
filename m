Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D89773E368
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 17:34:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjFZPeE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 11:34:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbjFZPeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 11:34:03 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D08111A4
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:34:01 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f8775126d3so4476150e87.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687793640; x=1690385640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ya1oHLhK49gH69AdTB5fxakgV4R1n474hp6YX3YudTQ=;
        b=FU977iSCGRyiI5lsFP8aGlOyB7y+B3rjbyHZvA5XqDSDOYFhQiuLWqlqxWu2HvLAKE
         ghINrrtM6m85L1qa1RI7MU7ym7CASmcJNM3F7EGQ+6APgNLr6g5BvGaXzOz3eU5MK5C7
         +j9DENN1SRhQw86lq0dGNToWRNsglX69G0pIk/NjjQrSV1pXtkUcn5+WpZtcpIN/gVCZ
         tNv/W8D5J+cjnoXYjV5am6ZCN5HqjVNQ2u80dzglRQcTPBj8FLFXkMjdz3a0jeXlXasj
         QqCbadPYTEGKETZzdVa2vWrUylxveetltTrnOENcNxeDbbyeAij0Bu1WwtTMXTlrHXik
         cubQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687793640; x=1690385640;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ya1oHLhK49gH69AdTB5fxakgV4R1n474hp6YX3YudTQ=;
        b=FRaJS4A0UnhAaSIsZH1BMocMwsoO4BwpFjDgtacQjqtYT3198B3UAu2m3AZllPrwF2
         xFtMb7uRbWJXTSyTerdF3m/LOGrWsW6NN0vlE/ZQSaj7XeCbVMWT1t6I12jFmDjTmppK
         shCREDtxG0u4RksZnEf6N84RnuI7CcYkw+OucElJGoaYn3FRU4MoVlFMY0gTBmjQosJh
         aLUyOck6neURN1Na7DGTOdcLnXkXXFMDLpTOMsDoGmr/a60STaoKmQphTq0uYwGt8xP5
         Z5CQwb7j6GEHz1Z75S0/8OQ7C3Eookfm0RpqMmZ8lzvQxYyI4BL0FcrMn8qT78EGr6ey
         rQ7w==
X-Gm-Message-State: AC+VfDxa5vErK5C4iPCPxe5VtczG6tKjIeoVPKzRVDxgpqYCOzhkI9cP
        oJwt/ssfkh7lJ1s/eSmmniHf6A==
X-Google-Smtp-Source: ACHHUZ4E0kOOnagiFcXwOV4l3ulb3LBPffWv8GdF6WdTtE8cphcbzNVQAT2Yl97D2BwtkrQNkCuX6A==
X-Received: by 2002:a19:7718:0:b0:4f8:6e6e:3f42 with SMTP id s24-20020a197718000000b004f86e6e3f42mr14189892lfc.14.1687793640007;
        Mon, 26 Jun 2023 08:34:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id z20-20020a7bc7d4000000b003f90067880esm10977810wmk.47.2023.06.26.08.33.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 08:33:59 -0700 (PDT)
Message-ID: <4c421206-39a2-d98e-f75d-f5d269e881ff@linaro.org>
Date:   Mon, 26 Jun 2023 17:33:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 2/5] ASoC: codecs: Add StarFive JH7110 dummy PWM-DAC
 transmitter driver
Content-Language: en-US
To:     Hal Feng <hal.feng@starfivetech.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor@kernel.org>,
        Walker Chen <walker.chen@starfivetech.com>,
        Xingyu Wu <xingyu.wu@starfivetech.com>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230626110909.38718-1-hal.feng@starfivetech.com>
 <20230626110909.38718-3-hal.feng@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230626110909.38718-3-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/06/2023 13:09, Hal Feng wrote:
> Add a dummy transmitter driver for StarFive JH7110 PWM-DAC module.
> StarFive JH7110 PWM-DAC controller uses this driver.
> 
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  sound/soc/codecs/Kconfig                     |  4 ++
>  sound/soc/codecs/Makefile                    |  2 +
>  sound/soc/codecs/jh7110_pwmdac_transmitter.c | 74 ++++++++++++++++++++
>  3 files changed, 80 insertions(+)
>  create mode 100644 sound/soc/codecs/jh7110_pwmdac_transmitter.c
> 

...

> +
> +static struct platform_driver pwmdac_dit_driver = {
> +	.probe		= pwmdac_dit_probe,
> +	.driver		= {
> +		.name	= DRV_NAME,
> +		.of_match_table = of_match_ptr(pwmdac_dit_dt_ids),
> +	},
> +};
> +
> +module_platform_driver(pwmdac_dit_driver);
> +
> +MODULE_DESCRIPTION("StarFive JH7110 dummy PWM-DAC transmitter driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:" DRV_NAME);

Drop. You don't need it. If you need it, it means you miss proper ID table.


Best regards,
Krzysztof

