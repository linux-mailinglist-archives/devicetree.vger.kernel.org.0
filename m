Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4466E57169A
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 12:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbiGLKIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 06:08:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231571AbiGLKI2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 06:08:28 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9F4FAB6A5
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:08:26 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id r9so5095551lfp.10
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 03:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9tmI5itLo+az2NBT8yzH/XgEsrNR0rdSvtFYImf7rvM=;
        b=jGL3yWUVHDyLo2mditJsLo9eZwQRwOlRMs1BOzwXgQgMl9VZKiWusZB3OL6+6pe1T3
         1/kprO7Bg7O0JkhTVP7syWIF3fjkfFipAOfKIwsyREqj+gEs++uY4I0EC3riNWSg7M6+
         wJpFMibQKKtpc2ChIZY33TAZyZekuEStAadNkqP0WmUB9+8kFaHVZnWgkhH3deTvqAnL
         +LgiC3Fo2/ThdhQrS7xXtyUVhEFsjxNqdx0oAfDe+QL/gmUNMtTrINMQ6jSep5gtwNNx
         S39Kw2Dp3bBW9Q8PGyofZ4rtXUpXOWvys+Ylgd6faJUOluLru5+mTt8DhZD9NlgbdtTj
         bvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9tmI5itLo+az2NBT8yzH/XgEsrNR0rdSvtFYImf7rvM=;
        b=OlZLJ+m6D5ZFY2HuOaCh3+RM5+Nr2+U3G1NtsOSYoNCoglF7osMhUz7f5gUHwI42wA
         xNJD7QMS/xqpJgsFeDFOKgQ0EjsOuxlC/8TIWBWIwSd9ytV9R0bwvFQ2auBXGMybzX70
         FKqOt6zsI8BhMOGeQbUVwNTkHoBYqlDMPT1mjG0sScp2twQXO/gHv6yQkgrrvzxJ7yUi
         YG3zd5hAam+lFSKuDGIpfnzYASCPmOwwg2cXWjUqSqE/UlUaMjvEyZ0FtwIsMPPCwlnA
         mYYkg1PyTK0WMWSfXbjj3g3QzbFMLLkOjzn5K7QJSslRXqJMudbjUyZsZ2rRmvlJFWCh
         TDOA==
X-Gm-Message-State: AJIora/AeqIyc7anXwggFhbxNPt/ynntEQQf9e/gTrbZhHQSoWbHETBQ
        KtPMkxnYav9LyYIUHy3xAN/VPw==
X-Google-Smtp-Source: AGRyM1v7YtW6PNha688Ly/qRMtHWf8J90QekegU41aq4ftRdp8UQi3tEPZqQDVm+oefoOtinVjYqVg==
X-Received: by 2002:a05:6512:33d2:b0:489:ce1a:fb2a with SMTP id d18-20020a05651233d200b00489ce1afb2amr11046939lfg.558.1657620505091;
        Tue, 12 Jul 2022 03:08:25 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id u2-20020a2e9f02000000b0025a67779931sm2339204ljk.57.2022.07.12.03.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 03:08:24 -0700 (PDT)
Message-ID: <fdef31b4-9c27-ddda-f1e5-ee881812aa4e@linaro.org>
Date:   Tue, 12 Jul 2022 12:08:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 3/7] pwm: dwc: add of/platform support
Content-Language: en-US
To:     Ben Dooks <ben.dooks@sifive.com>, linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>,
        William Salmon <william.salmon@sifive.com>,
        Adnan Chowdhury <adnan.chowdhury@sifive.com>
References: <20220712100113.569042-1-ben.dooks@sifive.com>
 <20220712100113.569042-4-ben.dooks@sifive.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712100113.569042-4-ben.dooks@sifive.com>
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

On 12/07/2022 12:01, Ben Dooks wrote:
> The dwc pwm controller can be used in non-PCI systems, so allow
> either platform or OF based probing.
> 
> Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
> ---
>  .../devicetree/bindings/pwm/pwm-synposys.yaml | 40 ++++++++++++++

Bindings must be a separate patch. Preferably first in the series. Use
proper subject prefix matching the subsystem.

Best regards,
Krzysztof
