Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7D11783FB2
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 13:38:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235440AbjHVLi6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 07:38:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235299AbjHVLiY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 07:38:24 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1793DCF0
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 04:38:03 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-52a06f5f556so2771535a12.2
        for <devicetree@vger.kernel.org>; Tue, 22 Aug 2023 04:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692704230; x=1693309030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nkch/068kMWwIYFxyZsmasX0WQkyorqEkgNaZvsD+8E=;
        b=ApjmbeYipooMlkkWyNLhdVKHKs84tRv42nSxKF0jwx2ySGRFYPNsApHUa0n7F4sSJt
         90SETjc+3+7OS5FWYzK9u3vSxd0tV22pbLpcMnw8ZpRke1aGToec4aMebqWvHxzDBIzw
         9BCGRrrKdWDnk1FG70yIBuLsCPJoSMkZhuCvAU1Egpk7/dvfpqSvARkBJcbSHaKT9V2D
         lXbnN/i/WG3hfNieZj0mJ3rZQyeXsrr2Uz+4TmwU4plQAXV3xMtTrSpwM9NI3+nMPz38
         gTwYkyzkDfxyw7Rk2GhLy2bIeils/AZV6iE1cCymsFQEQAQitc7zPtbdgmzovIQlVR6w
         9gkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692704230; x=1693309030;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nkch/068kMWwIYFxyZsmasX0WQkyorqEkgNaZvsD+8E=;
        b=IMhxvcxsTq5heMIZFw39dwBopY3tTNx8qgZn/rUbiD4KCO/u2gyLbHqOeqPf6KOxNf
         Y/bYrh1lSb4YAvFTwiuxe+PLjtx67WuaaEfcL/zlRtZZWMToEgO6oduORzMVoiME+2Ld
         U1T1cZ7D1apk1CcpOicitjJwN80NQ/pHLGt/teE9qLVuR9ncYYWRkISUWgtT7V2CJt85
         6InFp5KhAWFT8iFWoqabfeCM5RV2gie6GSDWiWUA1Pn4hSxsKWRZJrGdIptscks65YkZ
         ikEKlqNZadYBPTBiqtOWpABNIE97X4KFFGt0/uCmSfF0u025+8OdyaZVCpyXjpLhgK44
         1VZg==
X-Gm-Message-State: AOJu0Yy5S75wcWbYN8Pe7GbJjZ3tWxo76usE4VJUOq9YYTzvulNByW7f
        xuQcuS0ZCozvef5FklVfJCPF5Q==
X-Google-Smtp-Source: AGHT+IGc59j7SDUT+6xNuKmpTXLUHTWIVhQ5cy4lo3b126Qqi7HqOXUViq0g/A14hO7vQUveoB0WNw==
X-Received: by 2002:a50:ed18:0:b0:523:2e30:aaea with SMTP id j24-20020a50ed18000000b005232e30aaeamr6825469eds.33.1692704230112;
        Tue, 22 Aug 2023 04:37:10 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id c14-20020aa7d60e000000b0052333e5237esm7412662edr.88.2023.08.22.04.37.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 04:37:09 -0700 (PDT)
Message-ID: <96285b1a-a083-15d6-dbba-dff67d48aa3a@linaro.org>
Date:   Tue, 22 Aug 2023 13:37:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 2/2] media: dt-bindings: media: remove nokia,n900-ir as
 pwm-ir-tx is compatible
To:     Sean Young <sean@mess.org>
Cc:     linux-media@vger.kernel.org, Sicelo <absicsz@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
        =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali.rohar@gmail.com>,
        Pavel Machek <pavel@ucw.cz>,
        Timo Kokkonen <timo.t.kokkonen@iki.fi>,
        Tony Lindgren <tony@atomide.com>
References: <20230822091245.209539-1-sean@mess.org>
 <20230822091245.209539-3-sean@mess.org>
 <590a7e74-5af1-1aa3-366b-4fef039e5f66@linaro.org>
 <ZOSGT6COxF4C4WWV@gofer.mess.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZOSGT6COxF4C4WWV@gofer.mess.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2023 11:56, Sean Young wrote:
>> Performing review on untested code might be a waste
>> of time, thus I will skip this patch entirely till you follow the
>> process allowing the patch to be tested.
>>
>> Please kindly resend and include all necessary To/Cc entries.
> 
> Please kindly tell me how follow your thiefdom's rules. What tree do
> you want me to run scripts/get_maintainers.pl on? What is the DT list
> that I missed out?

That was my mistake, and I responded correcting myself 20 minutes before
you sent this question.

> 
>> 2. Test your bindings before sending. Especially if you decide to
>> opt-out from automatic testing :/
> 
> I ran:
> 
> 	make dt_binding_check
> 
> And it ran successfully. Anything else?

This should be enough, but I doubt that it was successful.

Best regards,
Krzysztof

