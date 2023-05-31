Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D72471879B
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 18:38:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229514AbjEaQiF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 12:38:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbjEaQiE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 12:38:04 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 888F31BF
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:37:25 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5147aee9d7cso8423794a12.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 09:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685551034; x=1688143034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mI/Z+AOJe77MYRVNtpeDPQoy64/AS/Rw3B+qEnWzB1Y=;
        b=tm9VH58Fsh0081cO5HE+79bYqZjkTUWv79a2vWGXoegxO8DrJbKVlnuxLWDoxfypuh
         oTKGRg5ZtSXbXXlaojuYUVgECR+vnD2ctKD5pANvclxwj25d6kBMMYSqGvbh9JPbpO6d
         GkhFPEAgDUYJTLA7rzBozYRy+WQtzjGf42Bdl6ZkklKIXvMzB2s8KR+u5+TUV+5N11G0
         ipYSq5becnGZKB8j87m9vJkylL2YFTvKTEvIAJqClFaOV7ApRjf49qQYLcByLrePiTcQ
         5qtvnznk+RCk0eh4O5M5l/k6P8dp3Yjek0gBb5euznBZsZb5+nEq94F3g7bnGR+xcD/p
         uWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685551034; x=1688143034;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mI/Z+AOJe77MYRVNtpeDPQoy64/AS/Rw3B+qEnWzB1Y=;
        b=W+yA5nzdzp2sfojuI1x09ipe5fO07+hQAiQ7yfp7wJSbOi5m/sc+9TVejECZxY82L+
         SZjYTBK5EXsLb8ebRc34GyXAOJ9wEi3s9M00Qkdol/dDK2yu6G3vosXzLMIoHI+6Aw6r
         uWxPuKn4gbjiTeU8tL39nq8tT/Uez2aEiTPGcrmFAbWcR5OHVmR3CJrsbYjfcz24/Dc2
         F2jyfb5dCqE4b/kAMyKQY1egRc6GAxokkrhfOCR6SO5Eyxe6BcdETeUbF+FYDNVhtHbo
         fALOqQ1p4QRxOVhysFJuP86034/8Pkolj2/XFyNHG6H7JaeaNquOzymevYrKvT/gbGEh
         ZcEw==
X-Gm-Message-State: AC+VfDyQgY58zJSVDshottyqNpvgAY/CnB88WNsNAwzlO5NdEnTOKcDg
        T+KNXReMDdeiD+jn83XYwRKwHQ==
X-Google-Smtp-Source: ACHHUZ6mk17104IpQqaV9WJrLhDKZ8/xdRyYGkqpmnwxdPbatNtB1dyYzFae4LvTWskaYKjzTZ1eJQ==
X-Received: by 2002:a17:907:6d29:b0:96f:5747:a0de with SMTP id sa41-20020a1709076d2900b0096f5747a0demr5836897ejc.6.1685551033920;
        Wed, 31 May 2023 09:37:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id e18-20020a170906249200b0096f503ae4b0sm9265816ejb.26.2023.05.31.09.37.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 09:37:13 -0700 (PDT)
Message-ID: <edde585c-40df-4e5e-fee0-8b8c38eff2d9@linaro.org>
Date:   Wed, 31 May 2023 18:37:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v1 1/3] dt-bindings: gpio: Add gpio-delay binding document
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20230406093344.917259-1-alexander.stein@ew.tq-group.com>
 <20230406093344.917259-2-alexander.stein@ew.tq-group.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230406093344.917259-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 11:33, Alexander Stein wrote:
> This adds bindings for a GPIO enable/disable delay driver.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

