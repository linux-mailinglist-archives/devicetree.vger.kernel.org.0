Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8824A5A5D57
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 09:51:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231271AbiH3Hu4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 03:50:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231261AbiH3Huy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 03:50:54 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF6A0A1D33
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 00:50:50 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id by6so10442468ljb.11
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 00:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=oH5kmp+ysFDsBHV2ODEqtTHwSfkV9xkoxi7nZZ2nWmQ=;
        b=pAV87ba/j5ZbFP1qrAxMn3jOO6dDrgbTn68BvcRwv7DNl7h0edpiK3zBsL6Ivi6mFf
         DMbAw1IfErKn6F/RKLsr5qjtr/6KO7UNJx/kkwYfmzTM1cxWDfTK8jhPouXH6LlPCi3s
         JsI3AIj4tNZ5uekuv55Ilyykff/n/3G45Ktn6x3xQZj+Iyr6BAPEeNiw60UYL3ErvrJY
         AtNFMguASX55mUa1B0ILz6mykx/mPaKB/+eWBu3X4dTy9vnI39OKXKUCYd5Q1iq5aW+U
         HsUwvum6Ksp/Cu9vcv7WZHlaFkwlbPbFd83y+bgjIHjMGrX5piqbBlx+UAgVKogi4Po8
         Jhcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=oH5kmp+ysFDsBHV2ODEqtTHwSfkV9xkoxi7nZZ2nWmQ=;
        b=x/qlewcLqaNnCUIx5NkvsMTP4AqBXsWlnTRz013GmOjP2XQWTvdvyiRwBJ1+3wDeD3
         2aHsyIT8mQFU33aUZJauTd8H8+Ao0RcWPw8giDOHRyl9hD7jijnZmK/kk9Vi9dkR8ZCC
         eOHEhImGyew82Bq7bPOCGwQ/KrAX+dv9vYvRajXh0iGVXdslWguhpK5fwJzom0NlPtPD
         QrBlXNBY4p149OJVX3SsglTlrFDDekzLamf1UquEXvSRsATVdr12OLYiidK8QcFmMa0K
         zqr/bPd7SfoKKtrO8bsLkb331CMM4XTHtSH/VBZEPFxomMWdO3Ne3Z93yb2+UWF4G8p5
         Vg+w==
X-Gm-Message-State: ACgBeo2Dtl2kaHfk5xqFAXyiag3Q3fuwmFHqr3vxJZ8L8xMB8YMxHjbY
        nYrPG0avunCWDy6+iSHDUzm1UkPMYq2Xg7N4D90=
X-Google-Smtp-Source: AA6agR60olXYiK/lJBP6ZD8ug0LsKB88BAFGOTZRVf02q1sGO5TZ27tdsgsAQHJLWkowsN+sObNrww==
X-Received: by 2002:a2e:b282:0:b0:25e:46b6:ff33 with SMTP id 2-20020a2eb282000000b0025e46b6ff33mr6492333ljx.503.1661845849106;
        Tue, 30 Aug 2022 00:50:49 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id o17-20020ac24e91000000b00492ef074fc1sm1524228lfr.183.2022.08.30.00.50.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 00:50:48 -0700 (PDT)
Message-ID: <9db9dcf8-6299-acec-c09e-603afde9a239@linaro.org>
Date:   Tue, 30 Aug 2022 10:50:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/5] dt-bindings: gpio: pca95xx: add entry for pcal6534
 and PI4IOE5V6534Q
Content-Language: en-US
To:     Martyn Welch <martyn.welch@collabora.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     kernel@collabora.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220829133923.1114555-1-martyn.welch@collabora.com>
 <20220829133923.1114555-2-martyn.welch@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220829133923.1114555-2-martyn.welch@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2022 16:39, Martyn Welch wrote:
> The NXP PCAL6534 is a 34-bit I2C I/O expander similar to the PCAL6524. The
> Diodes PI4IOE5V6534Q is a functionally identical chip provided by Diodes
> Inc.
> 
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>

Then diodes should be followed by fallback (and use only one compatible
to bind).

Best regards,
Krzysztof
