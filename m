Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D53BA653311
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 16:19:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234415AbiLUPT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 10:19:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234482AbiLUPTZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 10:19:25 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC5CB22BC9
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 07:19:23 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id b3so24019842lfv.2
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 07:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bQ73qbFm6UCJeP4jhQYp+B0qUa7NcAt4luT99qxjzU4=;
        b=ON2Cs2nWCEQZOh2t/kPzh3ik2xLc3N1COsahZWqVrV+AwFPwCRqx3BX+9sf+0/0QR/
         WCdAIekO4VUIMUB6alGZrIVYyI+dbeFP/NvO8d7OO2QD06KLTV/aASRcy7rjIGN9MVlV
         fHHoOk7gb+BuDUMAuksiGC6pdluV3jVBon91zQFqlszHz2yySpvcgUQ8gxD5+6LJWmyJ
         fw28RCkLGg0noefUHQ2hMvzb+5kr7MwKb6HZMFa47z1BbNYCxp9FfoUOIrqjksFi/h6P
         EVeR6iq4fLXSsaiUOw77bdo9zxYUeZkAz182mTDkdt013CMg3RiZ5CetCs0MZBFzjZT9
         Z6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bQ73qbFm6UCJeP4jhQYp+B0qUa7NcAt4luT99qxjzU4=;
        b=XknFWMJDqARDc3KYW/hdUVCmWMCZKbUSOGRm1rgTgsmWqpq2S0yDFFqZ2WYzOgwM7O
         7zx2i8/Z7SVmtuM+G/r2BulBnZFbiQvJ49imrD530E2vdTh4dB5dllas9O8Uo8MkajyJ
         SEoxV1Z2wvY/t36XoCG0/LP+kv8ReInmrc0PDw/W4QqbtxOa+212upSNyS4jGXKyVwG6
         0K650icE0q5mS0ohMOOSAimbYkdT4Ki6FS1DB5OHKgH7IU3pBFc0Y+KVHKfS94XhDU7F
         p7ZCa1TMyFDzzQJEjkpb6UrTJbphxfO3VT8zKiOOjKcL6C7haYJF1rzbFwMej2CqOV/f
         /slw==
X-Gm-Message-State: AFqh2kq9vvPxJhvkVVAjdwgfa3coL3HSV8UDmobvIT/z6ek4SC4Sjh1i
        UrWb0fhTrg3bNceLoFu7YapSmw==
X-Google-Smtp-Source: AMrXdXtU+/ZUhZbu0zYB+63eEHjnu+1g+kiav0QKX0Q+Q2WfCnothw2l04vC4i9t9nKzQC6777WWlQ==
X-Received: by 2002:a05:6512:340a:b0:4b5:8fee:1d71 with SMTP id i10-20020a056512340a00b004b58fee1d71mr626877lfr.64.1671635962255;
        Wed, 21 Dec 2022 07:19:22 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id e7-20020a05651236c700b004b5866f048csm1862025lfs.268.2022.12.21.07.19.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 07:19:21 -0800 (PST)
Message-ID: <bedc2750-100c-d3f7-cc11-0027d6b8e867@linaro.org>
Date:   Wed, 21 Dec 2022 16:19:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [RESEND] dt-bindings: leds: backlight: Add Kinetic KTZ8866
 backlight
Content-Language: en-US
To:     Jianhua Lu <lujianhua000@gmail.com>
Cc:     Lee Jones <lee@kernel.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20221221132428.702-1-lujianhua000@gmail.com>
 <4c37d74d-aaa2-242f-a25f-bf5f92d50756@linaro.org> <Y6MjDxxi8CunFLmM@Gentoo>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y6MjDxxi8CunFLmM@Gentoo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 16:15, Jianhua Lu wrote:
> On Wed, Dec 21, 2022 at 04:03:44PM +0100, Krzysztof Kozlowski wrote:
>> On 21/12/2022 14:24, Jianhua Lu wrote:
>>> Add Kinetic KTZ8866 backlight binding documentation.
>>>
>>> Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>
>>
>> Do not resend. You need to fix everything, test and send a new patchset
>> (entire) with the changelog.
> 
> Ok, I got it. I was just a bit confused about "Need to resend with proper
> thread".

But you did not thread it properly anyway.

Best regards,
Krzysztof

