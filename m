Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 369EF6775F0
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 08:59:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbjAWH74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 02:59:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230023AbjAWH7z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 02:59:55 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C580811173
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:59:54 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id r2so9921129wrv.7
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 23:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=idh6sx0e6uhCWn+KZqgehd2YjOqvGaInaktIuCtUf8g=;
        b=FBpZJvmEGnJZFPoSIBqK/DYJlDR5moUn8slQOcxtrkP/vC5b+rnXSmbtRr31ZVdn24
         JswmMyGTnaHHizXVPBqcgBk4CG3jm8u0e99tRYrtEENZYxmLcy6FXBR7E6AaHeELHTBP
         /UPh4vw+F2z2TutxmhwgVWiQCRbwhXnCfVvZ2MTHFoi53n635ty/kjHraf6G9Zey4PjP
         4Fq4HfBprgZFrgragb8sLD1A+zGveT16frO8v/6aLzrlP/L4VrbZ0SnoAwgrUTCyBhAH
         xRBrns1l65dcKTn0E1voIhfTfGjxuqPYe7zhHm9ogi6UCaQCrkV06cAy2qH0ECXpc6LA
         i+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=idh6sx0e6uhCWn+KZqgehd2YjOqvGaInaktIuCtUf8g=;
        b=1m9VVyHb0BnXhTVFTKUjClGGTIkDbmsclFe0O0I3YztAJXbY6zOmrMGaI1rbuDa+yF
         muRbtoDTBZaHGvn+mKynrZMwxazRzlydys4GIgC/s0YAjYjIIl/3NPZGahJuuNgOppCV
         P5F+2/eN8Q5tPm+/Xvz/cmHFWPBlfnw7mc8EqvfGk8C2Ld8XQsdxHeqmEF1bP32B4F6/
         HcB4bPJs2MmjDVvf8tY/nfgODBkox9VQv7JuOhi70uDZd0x2CeIz44MX3joyupXG3I4H
         +Pr7g2JaEH8rgcSAC+nJtvI2b/WFLxSAhG8Wuxqst8uRGmGtGSJjjXsp8fj+Uk8mf07k
         pP9w==
X-Gm-Message-State: AFqh2kqMk4elZR70mQhz91J3MUxbFal2W9cugFvrTd2+RzW2zqX7Pu8C
        lqTlj/q4N49MTMwFCTpkeP1oQ+mqW/wHUJTB
X-Google-Smtp-Source: AMrXdXshHBUNpPz/O/C/jW49E6Tp4olY81SmdIrKo/A9hQmADBvyCAT+q72/fo0mFOkX4M59F+/8SQ==
X-Received: by 2002:adf:fa88:0:b0:2bd:feb5:fb7b with SMTP id h8-20020adffa88000000b002bdfeb5fb7bmr19009713wrr.33.1674460793384;
        Sun, 22 Jan 2023 23:59:53 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m17-20020a056000025100b002b8fe58d6desm4153357wrz.62.2023.01.22.23.59.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 23:59:53 -0800 (PST)
Message-ID: <110befb9-090e-54e4-b669-ec81a89580e0@linaro.org>
Date:   Mon, 23 Jan 2023 08:59:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/01/2023 08:16, Jagan Teki wrote:
> The compatible string "radxa,radxa-cm3" referring the product name
> as "Radxa Radxa CM3" but the actual product name is "Radxa CM3".
> 
> Fix the compatible strings.
> 
> Fixes: 24a28d3eb07d ("dt-bindings: arm: rockchip: Add Radxa Compute
> Module 3")
> Fixes: 7469ab529bca ("arm64: dts: rockchip: Add rk3566 based Radxa
> Compute Module 3")
> Fixes: 096ebfb74b19 ("arm64: dts: rockchip: Add Radxa Compute Module
> 3 IO board")
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Don't wrap the tags.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

