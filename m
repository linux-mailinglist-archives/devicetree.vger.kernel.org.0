Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2104167FE4E
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 11:42:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbjA2KmG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 05:42:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbjA2KmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 05:42:04 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8827B233DC
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 02:42:02 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so6329473wmq.0
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 02:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qu9zW2/pcaEz98l/exRBjyTn4lCXJa/N2NbVQqkOAs0=;
        b=Yie2IrLk4VUlOlToT1fVVBZYfikeER8gNpgPeAkT4yT2vg7juPBsECXpziV/K30RXf
         G0tK0hKV4kyb9NyXFy/4BdEr0/fqzKgOfguZPDz2AJ4PSOEaqjWnl8zoFk4XupLSnOTY
         6ikI0LX5N2SF1jlqex53K0UXXoJudfJJf4zvsVFuEXQRKU6muF+vzFqZMmEzzsxNfowm
         9zb9veMKsBzVta1R4CJr2H+oYfsk/93TpA9YPnQOjfGMjgHk9iSsvEmlSoJUTJe7Z7OJ
         5DHkBMdcoZzHG1NjXP6LNFT5JRiY2hdvfYdDhoQ0Cds0mqn94r3tkTGLxM4ahzFDuJwF
         4A6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qu9zW2/pcaEz98l/exRBjyTn4lCXJa/N2NbVQqkOAs0=;
        b=zgunn8R3ht/eSzKaGQZ70vmUlnwjUPzbPcWKTe+rweqBjUS6/BUmwlSUGe/JZZDMSE
         jpGZ0bsddqaI+6E2lrACfMnequYkSPHpd0A7BhvGklOWKD9P0HqJqOXPHEf6ZhAbv2lu
         1FdEzWV0zPKP9cio8VJ/ujfKo5vkiXqSqsSKLK9c1pcc0rEScqfeSCVRInqlhDKSNxje
         RG0LJldP8fFvl8m11LULmeJAsBDweACW5lk0+6Uf7qOFaRU3urGQ9H6ZYo2fxslx6dGt
         ezZGAUK5MQUuEa74vCQ0TWjmt5bS+kI5WiMe6OUKdxCNN0xFbqmtGjeqNuhbXe6BYhZ7
         wj7A==
X-Gm-Message-State: AO0yUKUubEA3+C2cnL8H/SK2pfh8+T0cygdoi25A3y2zbY0WKMZWW/yR
        uiXVKLOeXoGV0jF9rdYikzhcAg==
X-Google-Smtp-Source: AK7set/qswB8Rx+YqebPoBwWCnixpuhJo9pEd2rUApyZolTbgY24FcSrGlQkzfI0XTQOLG08uW0l6Q==
X-Received: by 2002:a05:600c:54e5:b0:3dc:4f2c:c856 with SMTP id jb5-20020a05600c54e500b003dc4f2cc856mr3793689wmb.32.1674988920896;
        Sun, 29 Jan 2023 02:42:00 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y21-20020a05600c17d500b003dc46242c4csm4430861wmo.10.2023.01.29.02.41.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 02:42:00 -0800 (PST)
Message-ID: <d4b53d69-2d09-438b-0419-6eef4ad6b254@linaro.org>
Date:   Sun, 29 Jan 2023 11:41:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 3/9] ARM: dts: exynos: move exynos-bus nodes out of soc in
 Exynos3250
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Kukjin Kim <kgene@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     replicant@osuosl.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        =?UTF-8?Q?Martin_J=c3=bccker?= <martin.juecker@gmail.com>,
        Henrik Grimler <henrik@grimler.se>,
        Chanwoo Choi <cw00.choi@samsung.com>
References: <20230125094513.155063-1-krzysztof.kozlowski@linaro.org>
 <20230125094513.155063-3-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230125094513.155063-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2023 10:45, Krzysztof Kozlowski wrote:
> The soc node is supposed to have only device nodes with MMIO addresses,
> as reported by dtc W=1:
> 
>   exynos3250.dtsi:775.20-781.5:
>     Warning (simple_bus_reg): /soc/bus-dmc: missing or empty reg/ranges property
> 
> and dtbs_check:
> 
>   exynos3250-artik5-eval.dtb: soc: bus-dmc:
>     {'compatible': ['samsung,exynos-bus'], 'clocks': [[67, 16]], 'clock-names': ['bus'], 'operating-points-v2': [[68]], 'status': ['disabled']} should not be valid under {'type': 'object'}
> 
> Move the bus nodes and their OPP tables out of SoC to fix this.
> Re-order them alphabetically while moving and put some of the OPP tables
> in device nodes (if they are not shared).
> 

Applied.

Best regards,
Krzysztof

