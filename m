Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3193567FE54
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 11:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231586AbjA2Km3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 05:42:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232986AbjA2Km1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 05:42:27 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C60A621A0C
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 02:42:15 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so8186776wmb.2
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 02:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S6fgZaidnmOzAxIot8CP0CZ/usS4S4J5pvHsddp3AIY=;
        b=EKRk4V+cB88oilcf1APsf+Gj+pEHPhjBh3BRKGviP6PXwcfNTswxz3U5Qx4Y4SCArv
         rr1mimtMD1zM8MylTdxjxwAXhPCfVLt42BEuuOz5rO1smRDTs5kd/k9Rktq5DX2mdoPh
         YQuena2LjwOplSZwvwlJdsXFguqbYmqPjgynk9d1KlRsE+qDQ1Vb+oa/lFSoL4WcL4Ms
         vRlQUzQCtuN2rP3rad4GTpfT5jVHWbyv2/eGii4WEFjSReGMKCGdrn9Nt4lynrnCdAYZ
         fvIzXLiYXbdKNGWSOf5i0WJjL1E8jyFB3V5cdoO/MoVv2NtF+H4wJ8MjdRbPhwvG/J1e
         sEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S6fgZaidnmOzAxIot8CP0CZ/usS4S4J5pvHsddp3AIY=;
        b=zKfNYW6mlxSXoPaH4/PekBZ9fjM3GZTyRiDLDNhmusmG3t5al/7rULRqIOsgpbyWn5
         aKsNN7FGI8Ileulny3DcNasrprQPSBCq5wVmJ2kxHtWfjc2uM64jDMVVMWp0OxVwepPj
         8HJb/lQkzCPW5hFu+CaxJ40V72UYv9FkF2VniqGnula1XfzkrBvCB2hshQ4N9TwL+ppo
         Op+cj87X6bkFwcIaa0ro7xER0nNUeASxmFVS+uLlrOvQe/K0fcUr5/qpiQexQBFRxAOa
         18T/nqhHI2TA+rN4QOcbMyDcZOddqn2YpaH7ct3XUg01V513lVKJA82mDjANVmIvIrJI
         3wNA==
X-Gm-Message-State: AFqh2kr2ZVrxQ/gSDz0sKx7EH8bCxAyLHhwwuno5KdEmEvIPRCz81RmQ
        DuM4cJ7BMnPINII7rKzgd2QjZg==
X-Google-Smtp-Source: AMrXdXuJAeUmq/NL3Ul152ezSPl6sq7g1KMIqcpniJS/aMkqqxmw7NbDfd082baVSIBNih7198bUyQ==
X-Received: by 2002:a05:600c:1508:b0:3d3:5166:2da4 with SMTP id b8-20020a05600c150800b003d351662da4mr45837677wmg.8.1674988935328;
        Sun, 29 Jan 2023 02:42:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id x13-20020adfdccd000000b002bbddb89c71sm8817333wrm.67.2023.01.29.02.42.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 02:42:14 -0800 (PST)
Message-ID: <29841f64-360b-1426-e1fd-dd4c64ee5455@linaro.org>
Date:   Sun, 29 Jan 2023 11:42:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 5/9] ARM: dts: exynos: move exynos-bus nodes out of soc in
 Exynos4412
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
 <20230125094513.155063-5-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230125094513.155063-5-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/01/2023 10:45, Krzysztof Kozlowski wrote:
> The soc node is supposed to have only device nodes with MMIO addresses,
> as reported by dtc W=1:
> 
>   exynos4412.dtsi:407.20-413.5:
>     Warning (simple_bus_reg): /soc/bus-acp: missing or empty reg/ranges property
> 
> and dtbs_check:
> 
>   exynos4412-i9300.dtb: soc: bus-acp:
>     {'compatible': ['samsung,exynos-bus'], 'clocks': [[7, 456]], 'clock-names': ['bus'], 'operating-points-v2': [[132]], 'status': ['okay'], 'devfreq': [[117]]} should not be valid under {'type': 'object'}
> 
> Move the bus nodes and their OPP tables out of SoC to fix this.
> Re-order them alphabetically while moving and put some of the OPP tables
> in device nodes (if they are not shared).
> 

Applied.

Best regards,
Krzysztof

