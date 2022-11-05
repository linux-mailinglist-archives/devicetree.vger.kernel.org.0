Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 457DA61DD54
	for <lists+devicetree@lfdr.de>; Sat,  5 Nov 2022 19:44:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbiKESoN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Nov 2022 14:44:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229797AbiKESoM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Nov 2022 14:44:12 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5BA2140EE
        for <devicetree@vger.kernel.org>; Sat,  5 Nov 2022 11:44:09 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id l8so10676352ljh.13
        for <devicetree@vger.kernel.org>; Sat, 05 Nov 2022 11:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZqM95oaPnJH5MWhlRXsh/pWYkhJUcy6fi/S/KLDeWUY=;
        b=i8fgFmifmE2Phhsq1JPfWQNpmrQX0+ooyicsgoxgtQAmqDeRap3MBc7AoGm0MJ7M3M
         Har1YTulusg/2t3IN/iBpL3sK3EsnGVE/pGFJlCjTe1xrZb46hVwZKzfz65FOmc1Uz8R
         rmwsRRKwlnbGBfN4dYB1qptl5Yfu1PNVZV9rOH4zQFXNYqjRBCMOwVBHgUW+Vrfxawt6
         wGf/Q0BoF2U23YLWy0YQVKf3Q2oRqK1PrEldxJ1zHXSS6wPpoq7WK/wC/qjetG32yN47
         Q1lq/MB7nBpivCwjpjVYSsbjan0knjOuKIqeZZPKM6PNmY0W2Voove26aW731rivYfKm
         nmKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZqM95oaPnJH5MWhlRXsh/pWYkhJUcy6fi/S/KLDeWUY=;
        b=nj+lCMJrbBxjakI+yUxp/tQ3woTa7kMfmqCqeZS2jtyv6feehM84NhOgjPgO8SEU0m
         ZjV4XSYSR3qVQcE018i07tby18j4cx04YzYj0emJpkYxo24+AE3Wd4/qStaj1v5tk2j0
         mEydRxwOnde0hLoQXUW7ShLiBQLVy/ujDOm8yc1gBHMRe15rkjYDShXXdf037tS5EWPt
         A4ei9BZwapsIgcpY43URTezoOyNkvpGCIJP5sTgpCaFaM2PA0RKJBhmY6KvnGkrjqJN+
         2InEBmaSeUhj+RnBFhEISsD83J/dfYjKz/P7r7vh0K0zpna2p4QPbc5O3mTeoI8dMph1
         XLxA==
X-Gm-Message-State: ACrzQf1P+/KfR76o5GgmXqObWzHo1sut3WCCScQv+e5n5AB4g7hTp5/V
        9/c4sSBc/pOoGYXaJHt5TCShzA==
X-Google-Smtp-Source: AMsMyM7OO4zYB/vcy8i1R2jRRjgDN+xMBxQNR3RbzhMCOaS4aSSPJtSTQhnXBAgmsT65yZmr79W0Ng==
X-Received: by 2002:a2e:91c4:0:b0:277:e53:151a with SMTP id u4-20020a2e91c4000000b002770e53151amr15950844ljg.81.1667673848114;
        Sat, 05 Nov 2022 11:44:08 -0700 (PDT)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25e75000000b004991437990esm386360lfr.11.2022.11.05.11.44.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Nov 2022 11:44:07 -0700 (PDT)
Message-ID: <35b095a0-6bda-32c2-99e2-6815a852f9f0@linaro.org>
Date:   Sat, 5 Nov 2022 19:44:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: document Delta AHE-50DC BMC
To:     Zev Weiss <zev@bewilderbeest.net>,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, soc@kernel.org
Cc:     Andrew Jeffery <andrew@aj.id.au>, Arnd Bergmann <arnd@arndb.de>,
        Joel Stanley <joel@jms.id.au>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
References: <20221105013321.2719-1-zev@bewilderbeest.net>
 <20221105013321.2719-2-zev@bewilderbeest.net>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221105013321.2719-2-zev@bewilderbeest.net>
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

On 05/11/2022 21:33, Zev Weiss wrote:
> Document Delta AHE-50DC BMC board compatible.
> 
> Signed-off-by: Zev Weiss <zev@bewilderbeest.net>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

