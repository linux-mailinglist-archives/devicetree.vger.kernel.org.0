Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A64F6CBCBF
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231978AbjC1Ko7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbjC1Ko6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:44:58 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36E46128
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:44:57 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id b20so47798768edd.1
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680000295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O3Nwzai/k+t3Bul1ZLhEZGrjjWzVfoUwvHmHLjUTkxA=;
        b=PkDhtt59JduMICfvcc86YjyVfuyxjuEmbr/2N9n+/bmJd7FbM4X73NFWCKtEKv5mmI
         QvKzla9utcval07ZW5WHjv8fCpddLfbEqBKK3aO6lvTD0fn78c1odj0ij5cUnfhMcseE
         gje40mGTziiDZ20jEzoU+YUo82qQ6r5+WSmSco72Wcu/vLfBGRbpzETVCj/5xK/xmNZi
         L/qkNW+YQDWta+dGGbRmmDcFQjqJvq6qmApkE+VGsqPrW3wXGfJRXa/g5GLArGsc7SlE
         NLTHYPWb1BmG4kI5LsvF/0wYMQ5yPjZxIY6IjhkQp6uUVXJdicRB92qL6MEEgm0mxqhF
         IOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680000295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O3Nwzai/k+t3Bul1ZLhEZGrjjWzVfoUwvHmHLjUTkxA=;
        b=rOywFguVxojA0QI/kK6+r4L3oVK3IV5jFbtPj/rH5gWnmMCi3jmI9in+ICpzZl1xkj
         2sTuOVqK03UpHRwkl+SA/7gA73qUVGIDbTaFisjW+1LFafNuAP9rPrG6k1MhxBJaMZy1
         BahCxwUMBO9ZNTGjBu3eHpGfGTvRSyEf/fz+mfinbOMOy0DOx+45rGcRKmUS6tzslgDH
         d5TJ4uoL7FLia39c2Nrg3r/6OjP1JZz5K46sWMiQoqim5XTmMtBlDasl9RH0FCabiBSe
         4QENwpN97jRCZ4hLq9XPj8h/3Casm3qEC5HbNcYdH3Xg44fnMCMT2ruIGlBRP4HPTwwd
         Q5Pw==
X-Gm-Message-State: AAQBX9ct5/9O3qUKZ/7Y50DFMpqMBiDl8A8xFyqBZWd04bDrwPCLl0fE
        HI8LsCBPXpeeESTqf5X6JbgcOw==
X-Google-Smtp-Source: AKy350ZiRVpB+l55R6+jIJtxAvh9aWVefXU7IEU13jrFin0zF8M8n7+gPJaEED5hSZeW2QNN+srzeg==
X-Received: by 2002:a17:906:3988:b0:8b0:f277:5cde with SMTP id h8-20020a170906398800b008b0f2775cdemr15490744eje.32.1680000295707;
        Tue, 28 Mar 2023 03:44:55 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id be8-20020a1709070a4800b0093f822321fesm4085544ejc.137.2023.03.28.03.44.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 03:44:55 -0700 (PDT)
Message-ID: <7554941f-0b90-5cef-48e4-eda12ef92674@linaro.org>
Date:   Tue, 28 Mar 2023 12:44:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v5] ASoC: dt-bindings: ak4458: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, broonie@kernel.org,
        daniel.baluta@nxp.com, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, shengjiu.wang@nxp.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230328091831.55690-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328091831.55690-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 11:18, Saalim Quadri wrote:
> Convert the AK4458 audio DAC bindings to DT schema.
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>
> ---
> Changes:
> V1 -> V2: Use the correct way for dsd-path property
>           Drop ak4458 label form example
> V2 -> V3: ak4458 is the only one that does not support dsd-path, so we
>           do not require to define an array
> V3 -> V4: Add back dsd-path property description
> V4 -> V5: Fix yaml format as per example-schema

Although I did not ask to send a new version, but if you did it, then
you must include my tag. Standard boiler plate below:

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

