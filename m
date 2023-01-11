Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC681665923
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 11:38:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234095AbjAKKiZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 05:38:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233489AbjAKKiM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 05:38:12 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F346710DD
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 02:38:10 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m3so10790188wmq.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 02:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jL8bdyRPY1NcExtbiegzjvNk1MnzQ71tWSU8fsf/VCg=;
        b=TMZ2c4LfuAn0iG1uB0odaHKYEIjH1TrkA59vsulAFrdwZlEPgcUg8WgUwJ+/r6EAEE
         7W0UNZ9UsGzLFRl/YFFmdaua4sub9Hv/UV1qcIpjUn4Y+7O04y+jM5Lg1RO8VCxLwLOn
         nD2XMr/LHL4TdMSbi4LME8nu7G3EqyxAgZEJx0hY/dsQ66QXsX6SkV19O10vslB5tK/a
         RLNwfjFfjYeeKj/rFOuln6dbYjkNWlBEXcDuCwEhK4dQbmCmYyoi6Hfm6YYfqWCKekSt
         JMEH/hRxCRgE0SXiN4q56yrGczFGzJ54dqF5uyb087kLZvjghmL2k8+rDxES8UWLTRF+
         V5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jL8bdyRPY1NcExtbiegzjvNk1MnzQ71tWSU8fsf/VCg=;
        b=5U+uElTtq4OcOiUN3GPrwJLyMYDnP6WHI/qrgtNgbQeXRiDVQ0WsEFudrmwR267jP5
         HQEB84GDu+fJdaVsOEFV1vbg21xObQ7xhWC6sE4LjarY7rI0gBStm6yfRwmXaWbBw1b7
         N+kwpyfG3s1JgG2Ih7oZY4l0g9eXrjiykdVkiKEKygpOFdw76P1cktEjfwoNCCaTTtbi
         haTEQV+ch1A6y/AsoMaHW6qPXWh5yqEzXgP07H0ZD465vuNmsEdqbg9WV2t/iokX/z69
         MnGLyZHy/c6JPsO9AKBBF/8ywm54yhP649k92tHqQPQglbU1niHvvijqT5UR3rpIc6lB
         XKMA==
X-Gm-Message-State: AFqh2kr/i6kIr9rWvh6+tmNQzSJNL6ZAqOeyJKsi6s6vj6DndU+OXAlu
        v2716KvOGQXfLv40h9aNJW5zyQ==
X-Google-Smtp-Source: AMrXdXtMBZkDg5eU72KkLHfQX3lI/6XIjTLZFPJqac2B2TGmn77JlJmeUvXko1SMKMq8Pu25TunGIA==
X-Received: by 2002:a05:600c:ac8:b0:3d7:7cea:b410 with SMTP id c8-20020a05600c0ac800b003d77ceab410mr51917041wmr.33.1673433489574;
        Wed, 11 Jan 2023 02:38:09 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p9-20020a05600c358900b003cffd3c3d6csm19644020wmq.12.2023.01.11.02.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 02:38:09 -0800 (PST)
Message-ID: <98d2af06-8ef3-bb6b-1f29-4e33c1c748d6@linaro.org>
Date:   Wed, 11 Jan 2023 11:38:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ARM: dts: Fix User button on stm32mp135f-dk
Content-Language: en-US
To:     Amelie Delaunay <amelie.delaunay@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Fabien Dessenne <fabien.dessenne@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230111100725.463136-1-amelie.delaunay@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230111100725.463136-1-amelie.delaunay@foss.st.com>
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

On 11/01/2023 11:07, Amelie Delaunay wrote:
> This patch fixes the following dtbs_check warning on stm32mp135f-dk:
> arch/arm/boot/dts/stm32mp135f-dk.dtb: gpio-keys: 'user-pa13' does not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
> From schema: Documentation/devicetree/bindings/input/gpio-keys.yaml
> 
> It renames user-pa13 node into button-user so that it matches gpio-keys
> bindings.
> 
> Fixes: 57012d79fefd ("ARM: dts: stm32: add UserPA13 button on stm32mp135f-dk")
> 

No blank lines between the tags, but I would drop the Fixes anyway. This
is not a bug, but convention and coding style.

> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
>  arch/arm/boot/dts/stm32mp135f-dk.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/stm32mp135f-dk.dts b/arch/arm/boot/dts/stm32mp135f-dk.dts
> index 9ff5a3eaf55b..931877d6ddb9 100644
> --- a/arch/arm/boot/dts/stm32mp135f-dk.dts
> +++ b/arch/arm/boot/dts/stm32mp135f-dk.dts
> @@ -40,7 +40,7 @@ optee@dd000000 {
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> -		user-pa13 {
> +		button-user {

Best regards,
Krzysztof

