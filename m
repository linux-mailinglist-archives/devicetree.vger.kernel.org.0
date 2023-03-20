Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D53AB6C0AD4
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 07:45:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbjCTGpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 02:45:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbjCTGps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 02:45:48 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F015A10429
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 23:45:44 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id t5so5714538edd.7
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 23:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679294743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9h2k5rY9/MIISUMDsAkcB/9rQ6L/w1VBt7d6Cxx+iW0=;
        b=da/RYnL6yCuJmwK7+pgpg/j2haf6iPJdbDSbxywgWea852QazsHrQKzVvG8PPyX74d
         dXLmH6LW43Y7vkIk3zJlnsrJ0Vv4i0eLikJqXKuH37kB/DrTh1LNggxnXEUMTRS7K7CH
         A+36JLGHXG3JZDn7KNBR4QpPfBCUKPhZjHLCZqw2rOQTMkCzP/aBU+ULtsA9uxS1LIf8
         oU3qEllk7DZzca2bzOjxdHbWe229KkX+JntbipT+3juy9ZtANc82k8Jb7x4EDHjaBKV4
         MuXx6yX4TYzNHL9rzXUcmSaXUKCJqrCFxQzd2WdJWRyXNgIicOMl7JD0N5qsXy5IjEXR
         hvOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679294743;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9h2k5rY9/MIISUMDsAkcB/9rQ6L/w1VBt7d6Cxx+iW0=;
        b=oLAuj7VUXLGjQIW+nGf1h9eGk3ODXgt5WcnN05OAbAMrK6rim9XrZqZG0GWH0yzSGN
         C7OsHDpn3YfNF+lbgXw2dMMSlCaQ0X7+il5TLnOAKFQFzecC0SjqPA3Mx11bV/XQCA5a
         s1C3n6CR2weHDDonaCeukw4unN0+bGrBBTND4kChB3pt6sw+a1SCmLv9BeIa1bN3Kl4D
         JjiAJnoeBmzohdaOikvoecfebJeGnFl/3c6WpgSI3wuVaACeIyAejKDIar845WSJJuWd
         5LjdsY454gfxSCHT7HIAkIBI8bAEzbjAg8SsToudSgWhgCtD5Y677v7Rvl08Cf+DsiKo
         0meQ==
X-Gm-Message-State: AO0yUKUQ9aRVeJUC3dpTwbrRQXOK4IWtWeETgI7JkHVn7StG7f13W6ui
        NUxIc8JttK2JMjYZ+KHYT34Ms14AU/qL4BjjOO4=
X-Google-Smtp-Source: AK7set+XPIWCYqgVINSSGXmSDfSrVlKrh3g+MU+ZM9f1h70pqnhPfiexg4txBmRFvryLsDPw4lCM2A==
X-Received: by 2002:a17:906:3f94:b0:92d:2119:65cf with SMTP id b20-20020a1709063f9400b0092d211965cfmr7519704ejj.74.1679294743470;
        Sun, 19 Mar 2023 23:45:43 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:4428:8354:afb6:2992? ([2a02:810d:15c0:828:4428:8354:afb6:2992])
        by smtp.gmail.com with ESMTPSA id t7-20020a1709064f0700b008cda6560404sm3979403eju.193.2023.03.19.23.45.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 23:45:42 -0700 (PDT)
Message-ID: <57809541-87f4-e8cb-c069-71fbee463718@linaro.org>
Date:   Mon, 20 Mar 2023 07:45:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: Add MCP9600 thermocouple EMF
 converter
Content-Language: en-US
To:     Andrew Hepp <andrew.hepp@ahepp.dev>, devicetree@vger.kernel.org,
        linux-iio@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Cameron <jic23@kernel.org>
References: <20230319184728.49232-1-andrew.hepp@ahepp.dev>
 <20230319184728.49232-2-andrew.hepp@ahepp.dev>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230319184728.49232-2-andrew.hepp@ahepp.dev>
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

On 19/03/2023 19:47, Andrew Hepp wrote:
> Add support for the MCP9600 thermocouple EMF converter.
> 
> Datasheet: https://ww1.microchip.com/downloads/en/DeviceDoc/MCP960X-Data-Sheet-20005426.pdf
> Signed-off-by: Andrew Hepp <andrew.hepp@ahepp.dev>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes for v6:
> - none

Fix your subject - this is v6, not v1.

You still need to fix build failures for driver...

Best regards,
Krzysztof

