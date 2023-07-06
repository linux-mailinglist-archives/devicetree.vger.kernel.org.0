Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 034B4749E31
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 15:53:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232517AbjGFNxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 09:53:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232356AbjGFNxA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 09:53:00 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA621BC9
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 06:52:58 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51d9695ec29so1026600a12.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 06:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688651577; x=1691243577;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G2aY8/ODKYxuQww964KApt9B1s+b1RjRKlIHq5b6P14=;
        b=HlHWNvKe9S1hXdtUq9sG570m+8DSKhWaWFFMQd6ngbrKx4Ztc9H+g/6ghVL48s15Ub
         9rOnDTD3Wg+Rdj/xf+Av/0+ejOm1LbM7WBlFrsijfzhMehEFi9WXtot5n6Misdf+fEwX
         rmtC2PO+toZppZGrmmSmbm2jVwPHNfQHoRyPTeQF9++EypPolKDIerENc/X/F+DLN8ZQ
         rLfs6c0jYCjM/acKmjCs5J2BxMix16KEKIoKWwrIqUzQHtMEV4csqffLL4UAYLx6IN8I
         qczoiSReoINavIIOWq39VlhYEQQg5L3mMl7iUZuFklaTgEsSW788j7PUxNQfr0Mnt3ty
         SukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688651577; x=1691243577;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G2aY8/ODKYxuQww964KApt9B1s+b1RjRKlIHq5b6P14=;
        b=RmtyBRrO/kK5O/jEbX1k0W2Bi9OOtxVt245ukJ0AdGE+pTFJDOFh6foMTycJjo+umr
         QY5jqkcJgTmNmMp6tAveQCdar9dASeD02rNDZ3HVUXrngFBeGEY5bVJiujgnLMi0NAwQ
         oczUjd+hMCvHl5haL4fb+HXGKEbujfvoIq9DYjDb5Skh3dlwcXVLotjkm6Mq57JElMkj
         Ig3qzNIolnhvfbyaMi1fQj6JtJN1BR+S9rOx0Jw0FjCKlzdCwZE2tp1U6i0WFUmx7K+6
         ju8pgCG4o+lpeA+dHvoZBmAMxhWIrSqp3J0aL+rDVJGp9+xPunlT+hB/rsbIqpoja4yq
         uB7g==
X-Gm-Message-State: ABy/qLa/l4Zql1UeX5+wKmuFm37C4dAbKt7ieQAecYkG970f9qo/VEDa
        kdssSBAhz80P3OZklDduKsVTrw==
X-Google-Smtp-Source: APBJJlEf9BuSgjYlpRlywafdr9RzQJ+ILglympsMXKXs0nAv/M0nxoUo88BprqsG2MIjPGkCgg5jXw==
X-Received: by 2002:a05:6402:8d0:b0:51e:f23:5555 with SMTP id d16-20020a05640208d000b0051e0f235555mr1601647edz.33.1688651577464;
        Thu, 06 Jul 2023 06:52:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l14-20020a056402344e00b0051e22660835sm814279edc.46.2023.07.06.06.52.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jul 2023 06:52:57 -0700 (PDT)
Message-ID: <40834eb6-2e94-d2e3-e442-d91b757be928@linaro.org>
Date:   Thu, 6 Jul 2023 15:52:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 1/3] dt-bindings: clock: fsl,imx8-acm: Add audio clock
 mux support
Content-Language: en-US
To:     Shengjiu Wang <shengjiu.wang@nxp.com>, abelvesa@kernel.org,
        peng.fan@nxp.com, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        shengjiu.wang@gmail.com
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1688607078-4183-1-git-send-email-shengjiu.wang@nxp.com>
 <1688607078-4183-2-git-send-email-shengjiu.wang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1688607078-4183-2-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2023 03:31, Shengjiu Wang wrote:
> Add the clock dt-binding file for audio clock mux. which
> is the IP for i.MX8QM, i.MX8QXP, i.MX8DXL.
> 
> The Audio clock mux is binded with all the audio IP and audio clocks
> in the subsystem, so need to list the power domain of related clocks
> and IPs. Each clock and IP has a power domain, so there are so many
> power domains.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you do not know the process, here is a short
explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tools like b4 can help
here. However, there's no need to repost patches *only* to add the tags.
The upstream maintainer will do that for acks received on the version
they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

Best regards,
Krzysztof

