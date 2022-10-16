Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E16B600039
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 17:01:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbiJPPBr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 11:01:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229873AbiJPPBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 11:01:44 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A5132EC6
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:01:40 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id i9so6165463qvu.1
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Wm7NvqH1ePopXAneqvcSoIIU4C1K/1oJP6GjX0gQlU=;
        b=LJmf2E6dF8jcDbNwqXdPwRL3yPNVesLg6HeAX9cvOk8YIMAvTQTwBTPvu/o2M/yyHJ
         Cj1r5w0ha605YxEmDjThwmdspqYZ+9AvH8MyJJ02DFhWzuz/jk9hL7XsiKeXfkeoRKTR
         lsPX72YQmTBicaXl8j4wmwpE2rPHV1YRo7RwSwuc8BSSj/8LmWWjUPZLdPJFA+K6Hi+U
         ejp+2aL3aEXS0+CGVnqOXOrtw4u3m2a8I2UMGDU6QU6zNny0l8gqilsXmt2zHpVWgYm5
         B5tozI+hjGoTqbCkulMeH2KtRWBGyNtnc5DJGGKOcHiUCaoXgm0YDUC3+4qlOCR481eG
         ub2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Wm7NvqH1ePopXAneqvcSoIIU4C1K/1oJP6GjX0gQlU=;
        b=LmY5WZCtKGLNH6SivihV6PYpElSqpaM9fLINmyWq0kVBb4Xu/QdNKvoYB1GY4M4HPA
         8nsQwNSOSyNlTSlRy0otuMm6R+yTD5a531utvb3eH3wDbbOUCUGnxcJTYGigV+KOwhOf
         rId5DIGOKHcWYzU8yPmhA5+z5Y4GXVfR3Ms5xpK9nK6Onl4FIdsf0Wxig0eVl3kt7+JT
         ubKk2gK69CN9JDrkzYNAcmN43c0zAlo3RKIZIR/EKzthZBshdJBdFYW9ApBJv8BamrkX
         0MLcPMGCSqMMUXjyMqAte7FHDc4VLtoc8DJ3QahzPdwkUk4ykxUvMSR1ETteso22qwri
         RrdA==
X-Gm-Message-State: ACrzQf0VntilmHmp586jcZpaRNzbVnNKJhbv5pCH9aHyuYqGUlTl0CSU
        b1zS9atDPA25t6u2JwLBpS2big==
X-Google-Smtp-Source: AMsMyM4CN1gZt1ekjWKIkjRalQnK+kooXMchoouMVBXeZJ7PEf5KQYbsy21qnjEFPRsLixOF3sfWFQ==
X-Received: by 2002:a0c:9122:0:b0:4b1:80fc:c405 with SMTP id q31-20020a0c9122000000b004b180fcc405mr5381324qvq.120.1665932499824;
        Sun, 16 Oct 2022 08:01:39 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9b13:d679:7b5b:6921? ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id o16-20020a05620a2a1000b006e6a7c2a269sm7486671qkp.22.2022.10.16.08.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 08:01:38 -0700 (PDT)
Message-ID: <883386a7-49b7-3465-3d62-76547f10d423@linaro.org>
Date:   Sun, 16 Oct 2022 11:01:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 2/5] arm64: dts: qcom: sc7280: Fix cpufreq-epss compatible
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221016090035.565350-1-luca@z3ntu.xyz>
 <20221016090035.565350-2-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221016090035.565350-2-luca@z3ntu.xyz>
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

On 16/10/2022 05:00, Luca Weiss wrote:
> The bindings require a SoC-specific compatible to be used next to
> qcom,cpufreq-epss. Add it to make dtbs_check happy.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

