Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF95A62BBED
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:28:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232714AbiKPL2S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:28:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239365AbiKPL1N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:27:13 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC0E549B5B
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:17:55 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id u2so21392270ljl.3
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HNTQm918GnzrVFvHaG2cCX0HljXizRwtvL1RYr9iO4o=;
        b=jP/Joglg3jT+bC9iKaZOesQ16dI3pfrJrjdjpwitrzJhWlMSHCXDcNMyJ/dyiiue9N
         u3/e/OGXJpKGo3rSk13PzWA6RhicMVpEv9T1rt5RncZcd2zuGoM8C1exKlqwBDNWcho8
         4reOruQZpTVCSoh/O3Bo1GSS2VMkyQZma5UmPR4ct1UjRw8mmCj9I9xohc2ngGtcGlsF
         T30BBHqWQY7UcB9RdZpf/6aMf1LYM4jlRFlHttdZsarD2Va0CLYpbOM4N39mKrGLsy4P
         qey1/qcF5WlF6wRQACZjJ85Sy+urPCPkMFhhYjyMWoJb5fCgrj/cbnkPyXSvx1oLmx5j
         Pw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HNTQm918GnzrVFvHaG2cCX0HljXizRwtvL1RYr9iO4o=;
        b=0Px0loqwayUw/f4n15JK0PW1slEk1wuZuT0FtghHNcnYtyKWjvGTQhfhAY53FLxuEd
         jON9f+pcecCwx4lqkyxf0wRY1Xe5/2XNIG9Mtgakqqdar25qpaD3+RxFnh0kr6vpwhFa
         T+mQOj4tgZ0VRgrKND403j3IFC4m/vnYrwYLhqa4+FC7V3kcZ0jOQF/QCUOqymJFrc/J
         wTd+J9TyyrjGwBhbyLpAV6Yy0zO0eCKp8Dz/pYOTMLRotwveWXfb/qvE4NzrRh+28MAu
         cltl6lM0V6JrOiIk4VSNnWDXV4/re/gBBmzUNFKRnxf3x0BucSFJK1LQXvG41f+Xhj5D
         uDhQ==
X-Gm-Message-State: ANoB5plxI9Lqd4Nf6bcamo9356jmfofQmhVtQxt3UQCO/HWmVyDGYqp2
        rHrwdq9JSqrA6jVCCFX5VW914g==
X-Google-Smtp-Source: AA0mqf4OeDMDDKMmNxiPmB+hOjZtrn0d0m8kifVb6QElvA/0XKadCTFgrZzAQ7sy+8Gb8IFKWMdzcA==
X-Received: by 2002:a2e:7219:0:b0:277:5e9d:508a with SMTP id n25-20020a2e7219000000b002775e9d508amr8051775ljc.191.1668597473995;
        Wed, 16 Nov 2022 03:17:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b41-20020a0565120ba900b004aa255e2e66sm2536474lfv.241.2022.11.16.03.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:17:53 -0800 (PST)
Message-ID: <2ca3260e-f3f6-cd69-96c7-e971fa757968@linaro.org>
Date:   Wed, 16 Nov 2022 12:17:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 5/7] dt-bindings: pinctrl: qcom,pmic-gpio: document
 pmr735d
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Lee Jones <lee@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20221114-narmstrong-sm8550-upstream-spmi-v1-0-6338a2b4b241@linaro.org>
 <20221114-narmstrong-sm8550-upstream-spmi-v1-5-6338a2b4b241@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221114-narmstrong-sm8550-upstream-spmi-v1-5-6338a2b4b241@linaro.org>
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

On 16/11/2022 11:11, Neil Armstrong wrote:
> Document compatible, pin count & pin names for pmr735d.
> 

Squash with previous.

Best regards,
Krzysztof

