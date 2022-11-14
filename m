Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D44C6627852
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:59:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236650AbiKNI7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:59:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236652AbiKNI7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:59:16 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6B0E1D0D8
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:59:14 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id k19so12274226lji.2
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aEB4+pHuB87kKFxU9sS7xN56uZZ17ZCmfmqV3IDAJwA=;
        b=GUpuQJsqj7d9hVV6WvL0eu3Sa4Zu0WoScwnrjp+Sb/R6VBoodh7gnJrBG64mqhWy0Y
         eP/R02YYf4gIauUMYOHNGjGdV/CGjBX0c0sktWLGSc6gdfeOwq9NnCar3s6pRhG2z0On
         hthJ+8yzUj6OFqThEpdFhV29ZqRt0OpMe8EbEj7wrj06Oc3KiHUwGFoE/5+2G10MCBoM
         TffGZHc4dZ+ec4a+dEgAr8lFZCvCD48B99Hl24gzbVknKfCqXzpyi2MhXGM7Ovvk8i6p
         LKziMMc9thyTZw+EpvhonoG9JBrL4k8AL5ZAZph3gNWSh0Px69gU5yt00d3Qh3J86eLh
         mSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aEB4+pHuB87kKFxU9sS7xN56uZZ17ZCmfmqV3IDAJwA=;
        b=lpW7KCSIf6mmiatV4NlWpNC/PvjRYVKJ2Sjlsr+guqc6aMnFM7DAA/pa0aZLYIy4yF
         6O1ynISFDxeuTi9fMH8QHULnwkWkqiAFWTrNMBprFg4w9LyGTYhfN6y/qF1TT446rEu4
         AuPHfWbge1/LQgoXR7BqwCbV0QOwLeD46IhUdlDbyIL6dZ4sTWRelCzObl085+JMEBBj
         wG+uTfzjzw4N196x89vFdZg5/LKSgSQMFlryNRLxQmoQGw4T5sLxowae3Ynt1qQtfoWh
         sKdI5XKa+JIaZKzQ9KLoCGAGPGu8KBlrMoFFH/fsL4DbM/QPDudNWZqq7cCFpkutZhc3
         TNPw==
X-Gm-Message-State: ANoB5pnwfNmKkv6a9fuE2W9WUQjAz2hxeeD0bR6SKvonzFX8Vq2bDRwE
        czJ5wWRjY/fV2FCjGIfTf4utNg==
X-Google-Smtp-Source: AA0mqf68fg/tIqJjNfZ90yjoIk4FX4jbfttTDsgKec1B2mUTB3NymIkjIX4vOuJCTH9yfdOZ645fxA==
X-Received: by 2002:a05:651c:1029:b0:277:5c7e:b128 with SMTP id w9-20020a05651c102900b002775c7eb128mr4245801ljm.237.1668416353026;
        Mon, 14 Nov 2022 00:59:13 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c8-20020a056512324800b0049a5a59aa68sm1756324lfr.10.2022.11.14.00.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:59:12 -0800 (PST)
Message-ID: <9eb8e2d8-bda1-169a-5e26-5a3b127758c7@linaro.org>
Date:   Mon, 14 Nov 2022 09:59:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/6] dt-bindings: mmc: Convert sdhci-fujitsu to JSON
 schema
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jassi Brar <jaswinder.singh@linaro.org>,
        Ard Biesheuvel <ardb@kernel.org>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111081033.3813-1-hayashi.kunihiko@socionext.com>
 <20221111081033.3813-2-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221111081033.3813-2-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/11/2022 09:10, Kunihiko Hayashi wrote:
> Convert the Fujitsu SDHCI controller IP binding to DT schema format,
> and add resets property as optional to support reset control.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

