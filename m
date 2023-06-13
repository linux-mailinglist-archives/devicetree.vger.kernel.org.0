Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A277A72EAA7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 20:16:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232056AbjFMSQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 14:16:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234604AbjFMSQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 14:16:16 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C0D19A8
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 11:16:14 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f60a27c4a2so6939876e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 11:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686680173; x=1689272173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RExD8+91P6U+5rHInV16VQl5RJqONTO5hY2xAVQHkcM=;
        b=B7zoejH1aTV6t6RLA1WkW3O3sS4UWMsFW6OBMmYBn5TI1EDQ6UcSZYIHRqYAHrcXdC
         HUSAgZzAK8jjmeOzrClJKmPfjMeYHyiIuo0wvmdwHFjFf0i30xsGLrtSC2Cc8gdIgVDh
         Mw/8zf7E/qyjn1sw5D7XL5D1JDJfPIJZ1r7GvQ6k7SUipXym8tjGWjMQYauLtygVFJWb
         bn3tTI+O8HnOUwR4GKhJLtRXxa6kqhYP9hBWeClwtj69TJED9x0HOj6Ls6MWxxcbu/sJ
         FX4BuajXj59vTGdL/Ot0Rc35MhwtDu1+8GVu9znTRi2Stm1L7YjfRRfOZTlUy3kqaMmi
         a/uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686680173; x=1689272173;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RExD8+91P6U+5rHInV16VQl5RJqONTO5hY2xAVQHkcM=;
        b=dwx53Ke+utSBVqRkTlLuyaOOY82jxsEzK0Bub3FhqEdXjFkFX1Bs+qEz/XxLYAFLX3
         bh2ZOh8tEygrza3hASlMHrkf+xx26lkJjq0XFWN8hXmOp2rm2kCNq/K9SwW7W/TRHY8w
         Yr08YiO+t5FmE5RXJWwxLiEPECjlDb4p5px/HHpyyWIdonBXSCruqSD1Zs2iMFbEiG9T
         IKPvVAAIXN3lJLOh+YYQxK6QQgv2MJFVKLKMM6a0LfBQoR1xF55JVZ0twv/rq4+N3n+1
         bCSwHJPd0lCQscPPMLjGSpwmZRCq0BioQhgTHi4oNptHMFJOBFGxdIxbEvVmnEtVWN52
         pYoA==
X-Gm-Message-State: AC+VfDxNjVAWhFgIuves8M7nooByVg6j5PnoNUbZVZKbpUeMPn+E1kap
        b+bf3OybOAHw+3HLZ2x0bCFAPg==
X-Google-Smtp-Source: ACHHUZ5jE/U/wadlBZgWp/uzGDMh8I9QMhrcbqXIBtJElOie++dO6qgl7sczpPR4ZQXuLHtPMtviUw==
X-Received: by 2002:a05:6512:521:b0:4f4:c6ab:f11b with SMTP id o1-20020a056512052100b004f4c6abf11bmr7395753lfc.39.1686680172989;
        Tue, 13 Jun 2023 11:16:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id d19-20020aa7c1d3000000b005187931b777sm1045918edp.20.2023.06.13.11.16.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 11:16:12 -0700 (PDT)
Message-ID: <6987376c-5a71-c79d-0a2a-b4eb86b09625@linaro.org>
Date:   Tue, 13 Jun 2023 20:16:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 1/2] dt-bindings: iio: adc: add max14001
To:     Kim Seer Paller <kimseer.paller@analog.com>
Cc:     jic23@kernel.org, lars@metafoo.de, lgirdwood@gmail.com,
        broonie@kernel.org, Michael.Hennerich@analog.com,
        andy.shevchenko@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        robh@kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230613093346.60781-1-kimseer.paller@analog.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230613093346.60781-1-kimseer.paller@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2023 11:33, Kim Seer Paller wrote:
> The MAX14001 is a configurable, isolated 10-bit ADC for multi-range
> binary inputs.
> 
> Signed-off-by: Kim Seer Paller <kimseer.paller@analog.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/all/168663709022.652608.11756645774505315189.robh@kernel.org/

Nothing to report nor to close here. Drop the tags.

> ---
> V3 -> V5: Added spaces between prefixes in subject. Fixed MAINTAINERS reference.
> 



Best regards,
Krzysztof

