Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CBBB529D16
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 10:58:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243926AbiEQI6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 04:58:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240348AbiEQI6m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 04:58:42 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6766948E74
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 01:58:40 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id dk23so33339392ejb.8
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 01:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gcBgbzUrhXlgJMEhbaDgDyZ5SGdnIcnHwbk4ovmn5fc=;
        b=jFTcQLaC9oA7CuCmHEyFM95elDnHd7ZcLwOgBlht+XO/EXFsMuPHTkMF+L7fuWAKJ/
         H8y9t7gKNsc8vkbGE1VMECeKt2tf+wmil6MoPb5gq6Lg3gc5mJJJQeWjbFMTMHFUS+AN
         PWtC6duCb4g6zq8PhxiAyhEeJEhubi4RM1QOhlzQKb4AJJ45r7kMFTfHac9sMtxw9C2a
         ykz7sIXhS1GkjnhBJLm8TYz7P7AZtUaDMiQepiaLsFA+tqpB0b6YSXfhDRVsDRE7I/Tf
         zKOcaHFMXJw6P/BqUg2eWt9++/VCl6bQoYmuVBYyja6jE4UAy3DtQHzgs8D40q3WAlD+
         mKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gcBgbzUrhXlgJMEhbaDgDyZ5SGdnIcnHwbk4ovmn5fc=;
        b=1CTwVl1rvtLGWVOHm8oszaqvfeFEM5KeR2wpPgFO0od+8ANJgMJ8CTIWpJJjsTe78C
         v1IJk4uCR5jbKXovNVNus1g6KZ/uMCFxnz9dEYdEYRJbjxdY6IG+QWKq8Eb27B1MYqaN
         /A3k+q43YGVkQY3bzeXdzO8ZoLssQWSAAOdtSZ1nRosypabQyheIwp9kmEZxeqZJrO6P
         dZ0cwkGCsbmHJ5hn8dmTwkmNcBHlkKOSz3oqy0dtnwkFollCllNq083WPdVk7wFCyaF/
         6okmdgCKHd4WdIPSkq9gFmix43d2ROXeadxMNr9o/mewVCK719jy3+gnV8qSODHdQQbl
         i0Xw==
X-Gm-Message-State: AOAM531Uh4OqxYZojfLhbT+3kQ44gQa4dvzFNCIYiZ+1O0/h0fbMvXPw
        H8Jg5WCiwHbmCq/04DpS+9ImeA==
X-Google-Smtp-Source: ABdhPJzB5IJDtWaSHVhu2zZn9yNB8WW2lrbec0RhASTT4vDP4tCIYa22/maKHFHqtIzJJhw/f7ACAg==
X-Received: by 2002:a17:906:6a29:b0:6f4:3389:9094 with SMTP id qw41-20020a1709066a2900b006f433899094mr19523366ejc.323.1652777919039;
        Tue, 17 May 2022 01:58:39 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id hg23-20020a1709072cd700b006f3ef214decsm788722ejc.82.2022.05.17.01.58.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 01:58:38 -0700 (PDT)
Message-ID: <330d9a4b-063b-6a26-9cae-1143c88c5876@linaro.org>
Date:   Tue, 17 May 2022 10:58:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/2] dt-bindings: mmc: Add Broadcom optional sdio_freq
 clock
Content-Language: en-US
To:     Kamal Dasu <kdasu.kdev@gmail.com>, ulf.hansson@linaro.org,
        robh+dt@kernel.org, alcooperx@gmail.com
Cc:     f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
        adrian.hunter@intel.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220513201907.36470-1-kdasu.kdev@gmail.com>
 <20220513201907.36470-2-kdasu.kdev@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220513201907.36470-2-kdasu.kdev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2022 22:19, Kamal Dasu wrote:
> The 72116B0 has improved SDIO controllers that allow the max clock
> rate to be increased from a max of 100MHz to a max of 150MHz.
> Optional "sdio_freq" clock is used to drive the bus clock if present
> optional property "max-frequency" specifies a base clock frequency
> in Hz that overrides the base clock frequency in the CAPS registers.
> 
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
