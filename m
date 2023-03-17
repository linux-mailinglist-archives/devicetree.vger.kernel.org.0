Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4F966BE3A3
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 09:33:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231614AbjCQIde (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 04:33:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231544AbjCQIdK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 04:33:10 -0400
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B8EDDFB55
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:31:56 -0700 (PDT)
Received: by mail-ed1-f54.google.com with SMTP id y4so17368294edo.2
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679041561;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HMtLSDM2IpcbrZYXetfebgedF+TZqbOtztzNmGwB5dg=;
        b=xNllU9x8j042ml+H77bhJMLbAZm/wDqztms6ARNM/UBOwP/3sBmjX4gAploxexEUve
         +bFJEiXaRBZfSo7ac37NHA6XU1MGfIpk4ctudTT40enYtG9VmyVnCjTmuDAYRGbi+Qxx
         488pWaIR39lMNK5g08vChO81pZVys635EQyxFcIs8rTTVAevI5qPxHVU9vV7kHjI4Fdc
         fB0ddsE65sIxlUFutxo94A2dGNg1kTvJX/t5odR5i+2mnW9GEN8FoHKbaX/BtlHRv1kH
         q81Bqe4ZHhDkMonv1DFAAeDkvcfjzc0vaT85Tx9mSXvpgObwoP0R8skRwAOxW5RRWcMU
         kxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679041561;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HMtLSDM2IpcbrZYXetfebgedF+TZqbOtztzNmGwB5dg=;
        b=aGtOXY/nmNca3QD3aIH4ya1z1+yka3k9lOnyiC48pUE8DKTJh6LIbENyKgzjrvH3CR
         Ojm0U+BGtel3QAxTdZBTKQlG70dgFIZE/a+s9gaPKGu9JJGSg+TcS2RQngqIY3kF40dU
         5dcnabfZrLnvhZKaVjg/dTjN0BRqyrJx0+ugvnKWr03ETVHqYdE07P3Ke0pEJ3oEp9Mc
         PB/gUJlYp0JGCePGtESf8N/mUE5hQKxCLEumz3Su35W3/r60EJTUG7c74lb4KHNZM4hJ
         m1vy1L7rdrw0C5mJiMIALXxlicgQ0r2zeLIAaudWZBbbLzt7MvBDJYlnI9A9/K7xR4PJ
         xdHw==
X-Gm-Message-State: AO0yUKWmdSuB0NkoRi2hRklRlJSm8E1p34diHdYamJhs/xMjmV5lq8Lb
        1ilhFNZwDEjN0XM30d9Qzbutsg==
X-Google-Smtp-Source: AK7set9U+jKH5QZ3dnCfo6p1cM7zkAUSBIUFa3e0ySbP7S+RFF8CHkYY/up8+gxdnycP2TQP8pxpyw==
X-Received: by 2002:a17:906:9f0a:b0:8b1:7fa:6588 with SMTP id fy10-20020a1709069f0a00b008b107fa6588mr14042511ejc.12.1679041561663;
        Fri, 17 Mar 2023 01:26:01 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id h24-20020a1709062dd800b008db605598b9sm689819eji.67.2023.03.17.01.26.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 01:26:01 -0700 (PDT)
Message-ID: <68f6c2f3-298d-156d-b336-b5ae957358bc@linaro.org>
Date:   Fri, 17 Mar 2023 09:26:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/3 V5] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-bluetooth@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com,
        johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230315173657.28692-1-macroalpha82@gmail.com>
 <20230315173657.28692-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315173657.28692-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 18:36, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add compatible string for RTL8821CS for existing Realtek Bluetooth
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 24 ++++++++++++-------
>  1 file changed, 15 insertions(+), 9 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

