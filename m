Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDB3F694741
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 14:42:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbjBMNm6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 08:42:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230280AbjBMNm5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 08:42:57 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9F5C8A7E
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 05:42:54 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id k8-20020a05600c1c8800b003dc57ea0dfeso11336142wms.0
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 05:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HIAcdxLyEuufdGFUueiPhmcNlqEoybL3rHoEBEogZTQ=;
        b=I977dKPvxx4jeIFkAqfT+daSuzz3oLijiiKDxk/UBuqMptkkuuz7kfFSKK0xutTiZf
         hiOJgF3fl+Y/MX+LaJpSNESksYt0OjEMUjms6zwKDR4numpdDnT99Anry48fRhci8kRM
         OAIfCL/A/zr4N1cuFynHmHxA8Ucx4xlLLUUx2ly8YENbsByh0/73w66IuKrOuvHSUwTC
         WzYwyNHv3VdQFnBGGq/KQQKooq0j5ySPyxOIcnLJsSDccU8Nkjc4e69VNtRA/fl7uQuo
         oV0G403oyLX2Z19lC2Wv8etO/RM2h8tz6srB3yhGv+nw+XC83bJHvATCKnJxMH9rKzal
         Nxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HIAcdxLyEuufdGFUueiPhmcNlqEoybL3rHoEBEogZTQ=;
        b=PN3gzCDe75RVp45nRHbZ9l/cYe6Day7koT3kV6TUSNsEdArwOnXz/QfEhLK1fIbPww
         ffcOD171j0H3ivKjdGLoNIMnXxietxOlkVdJbe0WsO5Ol6qzR6vkYlqYT8ah+QwVvcXa
         xc83MCljLgk/mtMvO6EOgALubFES2HPLxbNkUni0dOV1WT8tnuifcaceqw2vDfn2Af0X
         ozwDZEM3rbOYDZ71z39VyY+ypTNi7xb1mVMW1ERI9w++s1h6CTRwuI+pNbQ3dmCkStzS
         XxD/ChNw/2iXXbcTEjmV7Avf4vUEKKdCn4P/IUwUre0/Su5LtroZ/mzeC8f3ffDfmkhB
         lMJA==
X-Gm-Message-State: AO0yUKUowqfvBc2VYtR+AwZ6XCYW1uHc/pe9Dl+uOddEyfAM57VYY6Af
        oukfr0UZuz9wQyZ5T6bap+rpig==
X-Google-Smtp-Source: AK7set8NsXVdIhjMfNfcPihlMRblNz/HZ0919kMflG7DSie+KRZqHSFj/3VWOoPlwk5gzuuTaFWjXQ==
X-Received: by 2002:a05:600c:43c4:b0:3dd:1b76:347f with SMTP id f4-20020a05600c43c400b003dd1b76347fmr18942938wmn.18.1676295773464;
        Mon, 13 Feb 2023 05:42:53 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id be7-20020a05600c1e8700b003dff2b493c8sm18532819wmb.36.2023.02.13.05.42.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 05:42:53 -0800 (PST)
Message-ID: <6066657a-8e6d-77d2-7074-7ab1ad402b89@linaro.org>
Date:   Mon, 13 Feb 2023 14:42:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 2/5] dt-bindings: clock: ast2600: Add top-level I3C
 clock
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org, linux-clk@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <cover.1676294433.git.jk@codeconstruct.com.au>
 <cfa142894e3e3a2895ae1ef7dce9bc89c493b9f4.1676294433.git.jk@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cfa142894e3e3a2895ae1ef7dce9bc89c493b9f4.1676294433.git.jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 14:24, Jeremy Kerr wrote:
> The ast2600 hardware has a top-level clock for all i3c controller
> peripherals (then gated to each individual controller), so add a
> top-level i3c clock line to control this.
> 
> This is a partial cherry-pick and rework of ed44b8cdfdb and 1a35eb926d7
> from Aspeed's own tree, originally by Dylan Hung
> <dylan_hung@aspeedtech.com>.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

