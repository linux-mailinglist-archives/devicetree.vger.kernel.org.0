Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F84D64B7CB
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:51:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbiLMOvC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:51:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235488AbiLMOvB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:51:01 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C92D5F63
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:51:00 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id cf42so5315301lfb.1
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W4zGlTIxF8eRXkhkCg2YaJScVup/S4bW2SO8p4neKcE=;
        b=cT/EMob6VIZcjfFrqYuD6tsDXiRn+N2pcGpf3IxB1MAnqSJcHZMRfNw2rKrEryFP1x
         Zn6h6NWN8DcguC+kQgu2V2kMSx0OrBVUQkqHKdurqBEOdWB4wrUkOOmEhvLqSAu98kW4
         0gTyhruqI519FBXf+XP+f24cxwtol0Il3EyOUZPlaopRHZ7PylTXhSOaESF3DDK2fjyB
         hVIeZujT4RRAVnWLVnra0d31wgpvBrVcIeXtQAUMV2IhrYW7s96xhj8LxwnfnE6Ach5/
         4IMQQjhunWKXzJApJWHfQUR1qBcQfIhhuziDv955rJ+E9DYCvzKYuLzPqF4cmbuYAuYN
         B5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W4zGlTIxF8eRXkhkCg2YaJScVup/S4bW2SO8p4neKcE=;
        b=io4dtVu/KHsKO0m4JGCuKmlkcGeP21cBvi4pkQy49ubhf/InAHWyvrapguVkSOLdHh
         USOupS5+VqDuOu9d3TDdgglF/UbIB5KYUtqSxKT1xNQ4ce4QHT5bra15sIA0UTpu61Pw
         lH3iEE2yTwc00xOiPXHYrymcU8ykx9MTDVjJEEbttMMufQJ5U6T1pVz9FOaTabxY2J2Y
         FtAsGxsOFsFJo2tgNzH20aZnBMKWdMBTS+OHMzCfy0eMeVHX/mAU2moB5BNxp5pT5/DM
         3tRUUf1MbOzcAS9tbLGn4Rcuw1pLka/qBNBeMUMNXrHTaRyHTtqEmfBeNcKyb47OvTSy
         SZRg==
X-Gm-Message-State: ANoB5plT6Z64ZeiJ619WPDql2haAk2oMi5VOWL26TgNAVv0ABlmiPbuA
        Od6m5wfqN0yg/TEwY5lKGfkiSw==
X-Google-Smtp-Source: AA0mqf5jUoma4I4yiLI7tAkwOy031bpwWDLjdoIBVr1CtTHHRNMxXGGKxYp7Wp+lwshCjc+Jb1rSSQ==
X-Received: by 2002:a05:6512:12c3:b0:4b0:3210:88b7 with SMTP id p3-20020a05651212c300b004b0321088b7mr7602556lfg.58.1670943058853;
        Tue, 13 Dec 2022 06:50:58 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a21-20020a056512201500b004aa3d587c84sm393365lfb.200.2022.12.13.06.50.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:50:58 -0800 (PST)
Message-ID: <8368dada-16d4-225b-4c13-0d5d04214462@linaro.org>
Date:   Tue, 13 Dec 2022 15:50:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 02/17] dt-bindings: reset: Fix node descriptions in
 uniphier-reset example
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-3-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-3-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Prior to adding dt-bindings for SoC-dependent controllers, rename the
> reset nodes to the generic names in the example.
> 
> And drop redundant examples and a parent node of the reset as it is not
> directly necessary.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

