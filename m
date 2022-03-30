Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 744514EBC86
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 10:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244177AbiC3ISd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 04:18:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244261AbiC3ISY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 04:18:24 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C073225E9
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:16:36 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id g22so12370986edz.2
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 01:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=c5MATGVQDJwQFK7qd2qyqbaNs3dS2C3cMFAz3zjfwgw=;
        b=GDhkESkYjCS1H8dz+HiRG2ZxsCt3sGDRO6gp3mAPmaQHoZECIBfG+FsOSjDgZZJOxP
         rU0Vd5Wz5E6XY54mxgWVD7wBi8NNEJazhBFE1re13XLYJ5BtINtle2wE46LOnCoUGZH+
         CO6XzyXkUr7h2oVqBf2Nr4Ob3BqzbUp/lO/mu9R0wjOq4aDnh8KQK6HzwvBi0HmCkcUW
         X5NjYNt8Ws4cTm4OJJVq69vCuilsxolEp/kHdYORuENJhv7Nejio1ltipph2OtL2VsvN
         uI6aZtKapBitpYiIjPjKvxXS9pegIV3YPRlYnINLqiLay8luVwW6WEsJqG9yetH7VZah
         /+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c5MATGVQDJwQFK7qd2qyqbaNs3dS2C3cMFAz3zjfwgw=;
        b=NZh7t5PEOB8PB4g4VfrxYiN4KZwv9s8QuFPt0VeM7BbL8tGvbMtw5XFmBUQhVNLMVV
         O+pWjeLRG+RNw+aVrVK0+jZEeE8FmP90e0/JHMo6Etc0Cfbhw00h+jVGLcUETLt4O9gO
         keqhntX45NST/MKruJkYnDK3v5P3Oq5I/XROn+E/DF082w3kYOEagXupFXmpuGWbpq2/
         cqGUPpLhFnqImgfzIa3fQfywaXyiewD8vujjsLts1uEEgEOTTGXty49DW421KNGiWcro
         cU8rfFJ+/C3Er5rZUbaf2iZNZO2TG1bXG7UZnrHWfIAA1Ow96li1qOxCjIb/fz0RuYLO
         VlTQ==
X-Gm-Message-State: AOAM533IaJC8OORYA06PAmbFxbzv3v1DZFJp9zNIKm3fiWYGOMaNTqK5
        XolPWIRTMc7XTThgqmS/ywWbsw==
X-Google-Smtp-Source: ABdhPJzBi8Rv2u5Cy9seMaIQ9cb+7ptzf4YpSV82te1jk8iqv0I2vrY0biYg3drXLedjzq/RpRzhRQ==
X-Received: by 2002:a05:6402:d0e:b0:418:f011:275e with SMTP id eb14-20020a0564020d0e00b00418f011275emr9218070edb.323.1648628195327;
        Wed, 30 Mar 2022 01:16:35 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id o2-20020a50d802000000b00410d7f0c52csm9554775edj.8.2022.03.30.01.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 01:16:34 -0700 (PDT)
Message-ID: <c8de5e44-6d8f-2865-1615-b3c61b90e6fc@linaro.org>
Date:   Wed, 30 Mar 2022 10:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: serial: uniphier: Use maxItems for a
 single clock
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1648617338-8600-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617338-8600-2-git-send-email-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648617338-8600-2-git-send-email-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 07:15, Kunihiko Hayashi wrote:
> 'maxItems' is preferred for a single entry, not 'minItems'.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/serial/socionext,uniphier-uart.yaml     | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
