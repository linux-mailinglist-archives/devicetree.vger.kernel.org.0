Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F60C616469
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 15:06:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbiKBOGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 10:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231230AbiKBOGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 10:06:15 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF51ADFDD
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 07:06:09 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id a27so8040546qtw.10
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 07:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u8I8YjQ9OqUc6+GXG53gLGhk3YKl1A1Hqfq8bNeyg7s=;
        b=c5vP3TPcjZjzxw9dKO2SqHTHPqZ1AzM4z3wXUVVp6W8bdlRd39ueWbqZlywB79jxxE
         1gXqDBQFaeYvMGKVCV4ToXBizObJHA375ezQQo2yyj6pA24jIyUDIO54t2EFvYzjc+0/
         ytlJqAGvbPgxRkFBZD4z4dG4ShSlDe+mhV3HdFajV7o/qnEiW+pN6v12B75h67zNIGTd
         zeMlN3HU3YNw2MRNpeOa8nUGFiqhCmfmmDze5nzLcpNPMAYgJnG9vbmsBaZ9lZxXAv69
         OUBi8LJZhG0u2qpP529z4wWjTY3Z+37iq1zH8kPfuqgIfCzmGxNQbTWbWPmGbfJTw05X
         xM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u8I8YjQ9OqUc6+GXG53gLGhk3YKl1A1Hqfq8bNeyg7s=;
        b=DVIu+8xgAIXQRZUPQrqz/22WB4ZFa6gtZduIvUCFHd444T2/AitXDtzPhSTCAXBShV
         o6trELtcK4KmU3G/QDfIvA0jeJVZbjoS3gzgc8iKuBbxugZK1jM5M7b5aW6I4VqY/zaV
         htqvVUmbp3LIspVuzfh8/vnoWEHCkqlzQo3J2cvyPxtqrZoqfManAVUiC7zdtfxL+D8u
         enu160gPJSD35dkIIufF4NvSPEmt5pAr8UawZLja3dntO5FmkUfkoLgebApvwDmZvCG8
         5cbm87HUIjjv/WYOXgah9N/nGZQGNDSp9AyodRaeD2a4f6n0s+EH9Cpp+T/7DwfLqhOx
         8hOw==
X-Gm-Message-State: ACrzQf3LdYgzwRHSpn8GEzJQxIigi9xCfwSWQuHtgYt8xQDkaiJ5WSLD
        yY+qAu0aa39YynC0pr5L8gXBGQ==
X-Google-Smtp-Source: AMsMyM4biLkm76K7n7SPP0fluVyArsIz/1B7B+io23fFXwfhoBFDs/OenMBXMdxJAIpIkYaxQIDEdg==
X-Received: by 2002:a05:622a:40ce:b0:3a5:42f9:dea1 with SMTP id ch14-20020a05622a40ce00b003a542f9dea1mr3714746qtb.311.1667397969007;
        Wed, 02 Nov 2022 07:06:09 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id q25-20020a37f719000000b006fa16fe93bbsm8299113qkj.15.2022.11.02.07.06.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 07:06:08 -0700 (PDT)
Message-ID: <04ce7d6d-8f78-8cea-0efb-59c5db001713@linaro.org>
Date:   Wed, 2 Nov 2022 10:06:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 0/5] Add PWM for MStar SoCs
Content-Language: en-US
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-pwm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220907131241.31941-1-romain.perier@gmail.com>
 <CABgxDoKeJrVK2NxJXd=MicdBWUyusf1aGbgKvyrOyB7m0xbPaQ@mail.gmail.com>
 <fdeeeb4e-c66c-5c18-41f0-41a9f27ad8e3@linaro.org>
 <CABgxDo+2OXLy7-xEetQ4zzaPQbB4tbQ=WtdcU494Uo5xWpPkVg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABgxDo+2OXLy7-xEetQ4zzaPQbB4tbQ=WtdcU494Uo5xWpPkVg@mail.gmail.com>
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

On 29/10/2022 03:48, Romain Perier wrote:
> Hi
> 
> This is what I already do and what I do for every patch series, usually ^^
> And I send To: the maintainers and everyone else in Cc: , as the process or
> other maintainers suggest.
> 
> The command was run on 6.0 for the first v1 I think .
> 
> I have forgot something ?

You forgot to Cc at least me. I did not check other missing entries.

Best regards,
Krzysztof

