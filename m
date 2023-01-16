Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B048966B8F0
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 09:20:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232236AbjAPIUQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 03:20:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232218AbjAPIUO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 03:20:14 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 915CAB75C
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 00:20:13 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id kt14so7316305ejc.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 00:20:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W47XCqUq29pG35u8bmwJfj/Ljo+Qlwh90gzyScOELNw=;
        b=QtMULdJadMVBgWK45jLxUFPH4lgExRQcw/37HvvWPL/7oeFZyA5SN56DlbZNMsSDZK
         Yr524XUSEHbYsluTijbrNVIax2Wg/GfY0zPu12v6H6ni0QN+1D/I87m+dkpFmKK3kHxn
         wJnubGS8NGiRaNU4iW/aLyxX+z9hdRCUm4aXbrL6gFJG0PwGbos97hVTz6VfM7GtEHMU
         2pic+h79h+7TuxtQcTv93lnVApdRWw2N5Y+rw34FJ64BYurrzhBav/zQgEi4cBHkcoW6
         lDgGVEavg+Yed9td+GA0+ITQdMnSEl7AejyyLMG3cX9x29KjXbNFeEnttfwDw3zzUh7V
         /qlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W47XCqUq29pG35u8bmwJfj/Ljo+Qlwh90gzyScOELNw=;
        b=AZmc1BD8z+8FOkGPc08fIAhAeMRD5CT4oUJkbmezUB/JhWD/l9AivIKnmH4Tr9WjJc
         OpJ5vRzzsy8EIkDoALXSCYiUEsi85iylF6cbzlicq526zw8Qj07t63gE8YUYdiZ62Z9S
         UUrOAKhGm4aYWSqcGN2DQHgtz7NE1k7cQ9ZmYaXEVquJPf6b97kVebtBwhh7Edxmsg4m
         NfaAk2ppmdV+zDwekqqsK4PSLejiTRqxaJQ1HRIRaw5DhBXTLayZHwcwRXBr2CyXDEZN
         1EUNgtH880UKBEbEqlnItUrdVriEKB/w8uOjVf360yZ+Rzm9IgUw5St6ZhTjPb7NgO6B
         K97A==
X-Gm-Message-State: AFqh2kqAVYL+OtmVhYSGPkRjtgDhtsMFX75433UEeOW1zIHNXQdRyeMC
        ln4bRUb+KbgqYtaQjc6yaSvHBQ==
X-Google-Smtp-Source: AMrXdXvQu7tLgvLySRzNjopkK7C9Ux4w9bGcAn/r1gMTd8LqkUFnS7Mo2wDx4sHjttbGv0pWCrdOkQ==
X-Received: by 2002:a17:906:a0cc:b0:870:8e31:7e33 with SMTP id bh12-20020a170906a0cc00b008708e317e33mr2783454ejb.15.1673857212135;
        Mon, 16 Jan 2023 00:20:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x14-20020a056402414e00b0045b4b67156fsm11170697eda.45.2023.01.16.00.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jan 2023 00:20:11 -0800 (PST)
Message-ID: <392f6e9d-b7c2-37df-2067-f7d967a20f10@linaro.org>
Date:   Mon, 16 Jan 2023 09:20:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2] ARM: dts: imx6qdl: support child mfd cells for the
 reset controller
Content-Language: en-US
To:     Bastian Krause <bst@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20230113-syscon-child-mfd-v1-0-0dd31b7de373@pengutronix.de>
 <20230113-syscon-child-mfd-v1-2-0dd31b7de373@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230113-syscon-child-mfd-v1-2-0dd31b7de373@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2023 18:32, Bastian Krause wrote:
> The actual syscon-reboot-mode child node can be added by a board
> device-tree or fixed up by the bootloader. For the child node to be
> probed, the compatible needs to include simple-mfd. The binding now
> specifies this, so have the SoC dtsi adhere to it.
> 
> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  arch/arm/boot/dts/imx6qdl.dtsi | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
> index ff1e0173b39be..b16be39458aa6 100644
> --- a/arch/arm/boot/dts/imx6qdl.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl.dtsi
> @@ -865,7 +865,8 @@ epit2: epit@20d4000 { /* EPIT2 */
>  			};
>  
>  			src: reset-controller@20d8000 {
> -				compatible = "fsl,imx6q-src", "fsl,imx51-src";
> +				compatible = "fsl,imx6q-src", "fsl,imx51-src",
> +					     "syscon", "simple-mfd";

You need children here. Otherwise simple-mfd does not make sense. If you
expect something else to add children (I don't understand why, usually
reboot capability is fixed per SoC and only sometimes extended with some
other means), then this "else" will also change compatible.

Best regards,
Krzysztof

