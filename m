Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AEA2C6165B5
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 16:04:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230124AbiKBPEY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 11:04:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230493AbiKBPEQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 11:04:16 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 823732B261
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 08:03:57 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id s20so5476081qkg.5
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 08:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zy78pOro/kNGaH6GiKHB1Btqlcj1EjPqbvOYH931OQc=;
        b=Elh+yNpir9fVQH/ZqSBfiGNl24FRuTTs6B2iJO5xtICf02Lftb/tBUCWPDcIlAezKv
         prMSGtaIbjTka4ojowDRQbWUxRqD4OaS0AU7jxtT9KNSWtZYhBDNjCuv6vsC3GuWiDJo
         Sfo0iPKlqgZlzwBeSZNrex4iwr8AusiEpqU5SRJMCbQvSAYP1u3JYiT2mXngOA4sa0Gj
         B985w7XSBFH5sAbNNv9V3qQfWkExTY9svD15unM0ZybnpHS+feMl3caGbQpvAJc36VIV
         YESW61ElTlpJr5Civdksv2QCQt5rnBQ64YBHQVOypRK/5ENzfMvqNfLhAsGFqy7ieGR8
         E2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zy78pOro/kNGaH6GiKHB1Btqlcj1EjPqbvOYH931OQc=;
        b=Gh+lX7yrwKujm5eXwmUPm4U1XB/6AhIgYJFg76crMrhwyZTHGf5GljLuMdRJeBfgzn
         L54oA+orZfGKIdxezPB8QqqaLCELR4PXl5tz+4xzaqj41LW3UmG/TNlYcOUTit4A3EE1
         QgV5GDhyZroTezrma2yZ+VG4CL9YnD+YYtpsvT3nXH7xicH/yneVxka+3t+XYd2a0obM
         XtoCKtXZ3MwkRU1Ss5yPiUTgEturABS0EoqJrhRG0rcrlDNvxOgpVqSvOw5EVHHRllmu
         s7MKjefNyXlnV/ZCDTtu+NA1vVS2kA0uDBEEay7JPrJOqV0VnydI7woY+JeWxKKoLIJ6
         Cgbw==
X-Gm-Message-State: ACrzQf1+/oVi/UfQlJIhsoowMuuhjjbmBpd+aVTydhZCpv27oY4tc7rD
        mDOkp8r92Th/E7/jbRWce5Sg+C84ofl2ig==
X-Google-Smtp-Source: AMsMyM5nABmPNo1XLYdsPzLxGDL/SItBhtuUNMUriLzYSJvmRMWrahFZimJxCAyJWz6ozdsyYVpVEw==
X-Received: by 2002:a05:620a:29cd:b0:6d2:c5d6:6fe0 with SMTP id s13-20020a05620a29cd00b006d2c5d66fe0mr18452610qkp.148.1667401412454;
        Wed, 02 Nov 2022 08:03:32 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id fb24-20020a05622a481800b003a51d65b8basm5786562qtb.36.2022.11.02.08.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 08:03:31 -0700 (PDT)
Message-ID: <54e6c11b-d7f6-bb72-8604-652993b2d132@linaro.org>
Date:   Wed, 2 Nov 2022 11:03:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 1/4] dt-bindings: pwm: Add Apple PWM controller
Content-Language: en-US
To:     Sasha Finkelstein <fnkl.kernel@gmail.com>,
        thierry.reding@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     marcan@marcan.st, sven@svenpeter.dev, alyssa@rosenzweig.io,
        asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221102141513.49289-1-fnkl.kernel@gmail.com>
 <20221102141513.49289-2-fnkl.kernel@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102141513.49289-2-fnkl.kernel@gmail.com>
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

On 02/11/2022 10:15, Sasha Finkelstein wrote:
> Apple SoCs such as the M1 contain a PWM controller used
> among other things to control the keyboard backlight.
> 
> Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

