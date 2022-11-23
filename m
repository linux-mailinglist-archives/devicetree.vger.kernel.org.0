Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D822463628A
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 15:58:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235641AbiKWO6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 09:58:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238269AbiKWO6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 09:58:15 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CDC2490BD
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 06:58:10 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id t10so21731996ljj.0
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 06:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CeBIT/60qjtKOuj2huqcVC2uNtdl3dz0w0xzg0s2YMc=;
        b=uZp42JulX1TxkgNIhtA4qWCD/v7lt7lhmIHz1gbmzLkJUHcsVGneWxOVQMk71kvZqP
         HrI8A7q6caeXTHDmGTU8flQ42ORQdqQxl5a+29LS7ruq6Ql3v4n/qFdlm/2YI0kwQG2N
         s2BaZDM0H9VA28Oss+FjjmxeVq6zahhKf5kS2OlLxfc1JRvTPPfbM1Q5Mh5HMjfevyPr
         jaAWrLzQ3z/VB6vy4AvkVzAqJ3wJeizwNyS72T/c28DCN5+VkZh2VEtgijTnoYfER/9D
         XKCB/qht43IPr9JQdWQYqH92C1Rfjz+5p+IlqOTPPfydAQVquaPJX/xBG+vn2jX8cv3e
         Pmhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CeBIT/60qjtKOuj2huqcVC2uNtdl3dz0w0xzg0s2YMc=;
        b=RXe9KuXkaDdSeoNmVEeo0+iS6w+dPwUHYOGpzfFiyX9XIDMJjd/r1jHL3pV+Y8pjP+
         5oHR50MLZz8j8ZhgK2vO7wH1+w4VzVRRF3kCzTHKtY6zvzpGca+KCTWhECFxULJU1+G2
         X2TnSXlHoAmDQUimW0dAEp2Ou8/FflsTVMAmPKJKW86MonS+vah/c6YnDtXhHIvKvjGO
         f5IOdZaIvw1JnkTrBtHaJAzer9Ta8sW6a/qFek2IJNXyEfKNMVZy9vXa+gNNeqlX2jMi
         XsIf6Ge1Ad3XFQNhtJAEswtaBiEhUqYlTRQhwJB0P64d1ZyeS6EBkG8ntQQXv+dMU3GU
         VD5Q==
X-Gm-Message-State: ANoB5pnSbX/QoaFWxL+NYCcAiWlg/fkDqrzApZaADjEcoOd+Un11z09c
        x3P/Bf06GcW4Cl5ZfoDfzcJxWQ==
X-Google-Smtp-Source: AA0mqf66GMEuJ2XHtP9pOgH7Ccfq/hf/rZ1OausVh0mWMbAyaQ7OhkqWTGMvCll9zYAGrp/jquaFcg==
X-Received: by 2002:a05:651c:509:b0:26f:b0c9:a3fb with SMTP id o9-20020a05651c050900b0026fb0c9a3fbmr4209527ljp.30.1669215488615;
        Wed, 23 Nov 2022 06:58:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n16-20020a195510000000b004aa255e2e66sm2941835lfe.241.2022.11.23.06.58.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 06:58:07 -0800 (PST)
Message-ID: <2495157e-c827-cbe4-2d88-1cd1f45d6d11@linaro.org>
Date:   Wed, 23 Nov 2022 15:58:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Add DT for
 sc7280-herobrine-zombie
Content-Language: en-US
To:     Matthias Kaehlcke <mka@chromium.org>,
        Owen Yang <ecs.taipeikernel@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>, Harvey <hunge@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20221123181043.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
 <20221123181043.2.Ie435b31225d2dc284a34ac8e52fb84fffb39488c@changeid>
 <Y34wtwSlqc0y4Msz@google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y34wtwSlqc0y4Msz@google.com>
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

On 23/11/2022 15:39, Matthias Kaehlcke wrote:
> On Wed, Nov 23, 2022 at 06:11:13PM +0800, Owen Yang wrote:
> 
>> Subject: [2/2] arm64: dts: qcom: sc7280: Add DT for sc7280-herobrine-zombie
> 
> Please in include a version number for versions >1. If my accounting is correct
> this is v3, so the next iteration should be v4.
> 
> You mentioned earlier that you are using patman. Add the following tag to
> one of the patches in the series to get the version included in the subject:
> 
> Series-version: 4

It is a bit surprise that this patch is a v4...  because I do not
remember v1 and v2... and v3. And no wonder since I was not CC-ed :/

It still surprised me how many people just cannot use
scripts/get_maintainers.pl. Everywhere, in each company. There is a tool
which they claim to use but they don't... or they base their patches on
one year old kernel which is another surprise...


Best regards,
Krzysztof

