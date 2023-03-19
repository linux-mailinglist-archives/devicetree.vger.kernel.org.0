Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9D6B6C0141
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 13:03:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbjCSMDm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 08:03:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229605AbjCSMDl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 08:03:41 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 738EC1A648
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:03:40 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id ek18so36767025edb.6
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679227419;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yhrgLqVHIWiPbqJmrSmaTp9UU2l+mLh4EPW9mjl5x6I=;
        b=u6Yn3Gm+6EnAPFHGLOXHAGXxwbdMlwagloZGhDu/X1zQoXrzuKel4HwvCyMoaFdsPo
         BircaQC3ZUaHUHPi4JBMgBt42ovkGzRQZ73K97bKWVhldl6CSdk7gI7j85GpeTqtZv4w
         269I9yARRPz0g1e1oj8JjFLg1bJHgU7CNdnFDx4FxO9AILAPaR6TPCBdWLaewgkNPFfK
         lJtp+zYOncALw1zPSlROmvJBUPQ0m4GYB+LgMaQG2EtdNaM9808Gix9k0pDUD0rWqkdY
         jhL6JL4fFUIKZVcbesi3T9Jz9tXYPUP/j2JBqQOwdYv2f6nFVWjvQvq6LYPNSxr3KRBq
         Ea0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679227419;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhrgLqVHIWiPbqJmrSmaTp9UU2l+mLh4EPW9mjl5x6I=;
        b=JZikLx7UByjt2lkTnzP4yxFA/MKs0dHc+8fMaNn1Ub990XDdDqbcwJf+BXkbOgrzqV
         0iy9Fx0kyKufCFa5WyvysuvwFwER71G/yhjlkTWBc/7DmlYPP91WAZfp6SFO9qUe1S+T
         tjD9pn7Ccyb0j5izNw0W8nTA4lDpxwhRasA7L4L7VFEANXE7uWGQHKYLMhwi/+n+E+xW
         aFN5dMA9vL9rZuh48IDO0m2TezGzahv4ef2vhG6vUknhFEMu/JdQvXQY2WRHT1m1kNBo
         1qawQRvlE+QI5XKE2Jhq9JGlP3QthDZaK/T2SPABZFWhm6MONvb2LYOqLHTFiS0UH1MD
         bV9g==
X-Gm-Message-State: AO0yUKVkoPL0kCVzd5R3jezowalE2aA69wh+HBfGfeokGcXTZH/Ngf3M
        iC6qbJ3m4cj3j0WJLFC+x5YPrA==
X-Google-Smtp-Source: AK7set9AXI+VKLUtiFDjS8JOSRmE2KpUi0/SfeknkquVrdnmnftKA+CbWfDpvjHC0LRxomOsJ+0Uig==
X-Received: by 2002:a17:906:2a84:b0:931:b4d3:fc7f with SMTP id l4-20020a1709062a8400b00931b4d3fc7fmr5943856eje.30.1679227418958;
        Sun, 19 Mar 2023 05:03:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id q7-20020a170906b28700b00931c887372dsm3063577ejz.107.2023.03.19.05.03.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:03:38 -0700 (PDT)
Message-ID: <4f435c2f-810a-b13a-fa64-e8948b003ba4@linaro.org>
Date:   Sun, 19 Mar 2023 13:03:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: i2c: cadence: Fix `clock-names` property
 name
Content-Language: en-US
To:     Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org
References: <20230318134255.282359-1-lars@metafoo.de>
 <20230318134255.282359-2-lars@metafoo.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230318134255.282359-2-lars@metafoo.de>
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

On 18/03/2023 14:42, Lars-Peter Clausen wrote:
> The Cadence I2C controller device tree bindings documentation documents a
> `clock-name` property. There is no such property, the correct property name
> is `clock-names` with a `s`. The `s` was accidentally dropped during
> conversion from txt to yaml.
> 
> Fixes: aea37006e183 ("dt-bindings: i2c: cadence: Migrate i2c-cadence documentation to YAML")
> Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

