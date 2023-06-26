Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B648E73E387
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 17:37:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231268AbjFZPhq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 11:37:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231267AbjFZPhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 11:37:45 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB08310E6
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:37:39 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so4618381e87.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 08:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687793858; x=1690385858;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fKkRNwsx7OGC3htuJ6t0WseieN66ntYIb/oJ43FaioA=;
        b=ZEN2E34gix3aICYfeshAMb+/jjQoPlHL1kcE+BnBdWbhW8yG1Hc7rBJ7WOpX8yeNpf
         29u20Me+Mn9NKpGGTav87InA/JqZTZGCAH+efEmdB/FctQs/KwY9OGoD8uPVW3WlaEeA
         0FRyVSikgjIJK2yN318Q2ARbt55FsjaBhMGJEJIeRG/LKLWeN+MdwVRUmKl1Zt1lJNg+
         hTE2joZ9gHZr+bW63O4fWxMpSYiRqz+nkWyxDGc8ALWVnWK0qU7DljlonGMT7iHd+Sst
         +RJckniERxbN4R0G6I8b1z/0gildcKdDUqQxXuY6ZhMNhI1zhTZJTkMuoX7gHtnDsS4+
         gcMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687793858; x=1690385858;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fKkRNwsx7OGC3htuJ6t0WseieN66ntYIb/oJ43FaioA=;
        b=Ze/rVMZ7dD/3t4m0SBaPr+WKFUGg1LazOdLwlP/aG73AkiA3vmgla+hz0gH95NzA0n
         c66vrLCv8+CW8rLsF+9iMLRkuA5x25hcXFboSJBIkYlmHHEX5UiskSPFmYj5I6A8LxoQ
         jdrABFnSJPrMEu/tOFA37va68gEC3DVLouZYukRQXM7betgnLjn/Z/ysF4nuLgCC42Ui
         3JbYxPPeLIY0QQChy2opfjQ//Gbzw+YtwHlnkbpAWj6XjdPGd75iL1LBuj/wf92b4SH8
         aef8bxspszQT6rWr+knw1tvzmLW9rgxXSSdcuCe9c6xdgyRKZHscKXRrwcozyrgZwbIj
         qXIg==
X-Gm-Message-State: AC+VfDw3kqNNywKvSjXPo/VrdNlfJMKgJIbC34L3sL85oxVb+K5bp7/b
        fWn4UWilS5B1Nax1lxhMhYcbDg==
X-Google-Smtp-Source: ACHHUZ6jMYjdJZ1HoyYgAU6kz2QdE7jTIOjWgnOMeoRoMCekZ5ZDXQ2IpPk81NPGk7My2L/36+mmzg==
X-Received: by 2002:a05:6512:3290:b0:4f7:5f9e:fc59 with SMTP id p16-20020a056512329000b004f75f9efc59mr16963278lfe.39.1687793857818;
        Mon, 26 Jun 2023 08:37:37 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id z7-20020a05600c220700b003fa999cefc0sm2350762wml.36.2023.06.26.08.37.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 08:37:37 -0700 (PDT)
Message-ID: <2a0154ec-7949-f1b1-760f-3ba64d2cff3f@linaro.org>
Date:   Mon, 26 Jun 2023 17:37:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v1 5/5] riscv: dts: starfive: Add JH7110 PWM-DAC support
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
 <20230626110909.38718-6-hal.feng@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230626110909.38718-6-hal.feng@starfivetech.com>
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
> Add PWM-DAC support for StarFive JH7110 SoC.
> 
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  .../jh7110-starfive-visionfive-2.dtsi         | 50 +++++++++++++++++++
>  arch/riscv/boot/dts/starfive/jh7110.dtsi      | 13 +++++
>  2 files changed, 63 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 19b5954ee72d..5ca66a65e722 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -36,6 +36,34 @@ gpio-restart {
>  		gpios = <&sysgpio 35 GPIO_ACTIVE_HIGH>;
>  		priority = <224>;
>  	};
> +
> +	pwmdac_dit: pwmdac-dit {
> +		compatible = "starfive,jh7110-pwmdac-dit";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "StarFive-PWMDAC-Sound-Card";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		simple-audio-card,dai-link@0 {
> +			reg = <0>;
> +			format = "left_j";
> +			bitclock-master = <&sndcpu0>;
> +			frame-master = <&sndcpu0>;
> +			status = "okay";

Drop

> +
> +			sndcpu0: cpu {
> +				sound-dai = <&pwmdac>;
> +			};
> +
> +			codec {
> +				sound-dai = <&pwmdac_dit>;

You said it is a transmitter, not a codec...


Best regards,
Krzysztof

