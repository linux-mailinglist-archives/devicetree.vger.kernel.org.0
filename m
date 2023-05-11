Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5FE76FF14F
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 14:14:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238103AbjEKMOD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 08:14:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238032AbjEKMNs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 08:13:48 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF4DCE707
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 05:12:54 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so78642917a12.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 05:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683807173; x=1686399173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tB8VwLerz7SQw/zMMp6ik+O7rtVUE8N1DQUQCASDLmM=;
        b=snYELACVimlh2Z/HUh4yflU/2Gf9A9sjbYv5S5JIbholZdiw0dOGYXJOwgJXzDBcal
         yAGaKcIv03oUnjf99Wb6ebLjQSk6wPrNNOwnEWaTdb3krJwsbhTYPyGrN8EApV+M8D8r
         YFl5+A5E2t5gpNQpfKrt7w62nhstc0z9MHZbLspFcl3WYt9K9ZSOFtKXabXE+PcIsCbg
         G3ZXE0HSxHpdQMKHjKBXdOuRRQupEOK+DJ0yJD/5u1jkC3HOU9Z9Y/I52FdabQ96IIxb
         O8xpbVTyjRHdlJGj/u3/G+zo0KHOn3tbBx6PlgGKo8pWLgqvG20ULXlv13I0VboUrBf1
         bHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683807173; x=1686399173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tB8VwLerz7SQw/zMMp6ik+O7rtVUE8N1DQUQCASDLmM=;
        b=NctrMg+YIVyea8JTP2fUCkrXLRpOmIUYnIZQuq95BUXyiwk5ZPGV2JPctFleJRRYxk
         dBvDssqYrTEMWDdyAO9+njCFHmkYpwjfGf02faT66+Gw+yURo4qN8btTqyhhwdfTWMpF
         SAqwC+1teHPPyYRTz+VtNevXtzBfUQqqzP35bmskoDxe7vOfJQcBS2Z8Hv60M8R2qjmP
         ewGe+WyHdi98Q2qX+WWX18c0knv9b4NJzuj3UGHyyTtET80VUdFLoaEQmWbcPthBJnDD
         nibajB6Jw6vWaN8C/9YDKYTij79GjrY7HMHDAjtVUJKhrVVv1Dcv+jQNUzSMTWXzS3Xz
         xa3g==
X-Gm-Message-State: AC+VfDx6phT5eoYeSOjXXBsnB8qGNmqAK8k2wHM/NvaZwKVre1zpfQy7
        OUa5f4lb5gd169CkJ2alXYO0iw==
X-Google-Smtp-Source: ACHHUZ4NS2y0CeYoogwslnMOKRmgsQcyzFSELONZnzzfuyuyLWW4CXsatA6FiK8z55eQmOlrvRtkug==
X-Received: by 2002:a17:906:db04:b0:960:175a:3af7 with SMTP id xj4-20020a170906db0400b00960175a3af7mr16997058ejb.19.1683807173243;
        Thu, 11 May 2023 05:12:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:41e7:1b68:d38e:1348? ([2a02:810d:15c0:828:41e7:1b68:d38e:1348])
        by smtp.gmail.com with ESMTPSA id x4-20020a1709060a4400b0095ed3befbedsm3926806ejf.54.2023.05.11.05.12.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 05:12:52 -0700 (PDT)
Message-ID: <91a7f9d5-afdc-f109-03d0-3a5d0eb03cde@linaro.org>
Date:   Thu, 11 May 2023 14:12:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4] ASoC: dt-bindings: nau8825: Convert to dtschema
To:     David Lin <CTLIN0@nuvoton.com>, broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, YHCHuang@nuvoton.com,
        KCHSU0@nuvoton.com, WTLI@nuvoton.com, SJLIN0@nuvoton.com,
        ctlin0.linux@gmail.com
References: <20230511113607.595184-1-CTLIN0@nuvoton.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230511113607.595184-1-CTLIN0@nuvoton.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/05/2023 13:36, David Lin wrote:
> Convert the NAU8825 audio CODEC bindings to DT schema.
> 
> Signed-off-by: David Lin <CTLIN0@nuvoton.com>
> 
> Changes:

Usually we put the changes under ---.

> V3 -> V4:
>   - remove the description from interrupts, clocks and clock-names properites
>   - add sound-dai-cells property and update the dts example
> 
> V2 -> V3:
>   - refine node name from "nau8825" to "codec" for generic purpose
> 
> V1 -> V2:
>   - add interrupts properties
>   - add maximum to nuvoton,jack-insert-debounce and nuvoton,jack-eject-debounce properites
>   - add a enum item for nuvoton,short-key-debounce properites
>   - add default value for most properites
>   - add maxItems to clocks properites and mclk entries to clock-names properites
>   - refine wrong indentation from clocks and clock-names
>   - refine dts example for interrupts and clocks
>   - remove headset label from dts example
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

