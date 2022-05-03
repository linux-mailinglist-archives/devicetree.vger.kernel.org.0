Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47A51518184
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:43:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233783AbiECJpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 05:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233875AbiECJpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 05:45:46 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22FEB388C
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:41:52 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id k23so32385147ejd.3
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 02:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=b566PPGsjaHWkMbL7FSptu6pFhyMnCOUSbKGby8X3Q0=;
        b=Gkh9UXQVwF65yXWd0IuvhOJPE2joZBCrE654qMIDm7yDmntq/HBsiKJM6B1Dvk6yM/
         UxAlak39n8KEi8x+y9EDaAdz0pt6ygUE2PhIafxZikJGH0eJ4KmP+fGuFABxg81EG2uu
         VOu2fVuqy9LRgTJXSuA+3WD/EZxl1UTOOGU0nH8yhVB4jam+XQdnSncg+RIPoYoxS5MV
         YgzUvtGrKGzx7HuvL0Uuc26n+os8X/Tp7BWryHg5mYN7WHqDOyEWtH7GWlV9cfZOobHe
         4UZe5xOaVwe8Zngx24UUcyCBZrlSN55iVriTLbqs8Z8kooGqOOACp96tkFfGiZWJXMfS
         /RAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=b566PPGsjaHWkMbL7FSptu6pFhyMnCOUSbKGby8X3Q0=;
        b=Cl5UahrxnwtSUJKGELbCbEZuy+AEt1c07nQiECWwymMqwGsIG11dl7DwqRL2H7Afyg
         vKwE2y5cwX4MdQB2kvJtstqKYv2UvJHJYMqsP4NKgUxOt3YNtmFchvt6ZlIwLzZr0DmC
         hUW/3aiwfBS43Lh9eFrLymal/OVR5I9icNzgJ23ckRrU+ZzKoPedts4zskIayqYAh8jG
         1tPwlM4MzoJhJpWCLe3jiNb1EFTXZw+PffmlQ7HGjQx3jMo4dSDNmLUVWZ3kdz6jZOGj
         ty2it+sFD3D2YFdykDvxhE+mWlM9wkzIwSFDS12UA4S5uLGAc4aaX1leNYxQkENprqk+
         Y1kQ==
X-Gm-Message-State: AOAM531J/mV5rrG3QADPh2vzRP8Sy1ZVFsjk7YUoRs8vN40Ky3DXEY9N
        juhDqXQ0etZ2iMIxNXaJthZK/Q==
X-Google-Smtp-Source: ABdhPJyzst4s7hrEZNpwk9DA5qdrjy5euejkI2joEvaH1c2+lrpv/9TjwCRAJBGmhr2xJVxo0oIkRA==
X-Received: by 2002:a17:907:3c81:b0:6e6:cf3e:6e14 with SMTP id gl1-20020a1709073c8100b006e6cf3e6e14mr15088988ejc.181.1651570910698;
        Tue, 03 May 2022 02:41:50 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g7-20020aa7d1c7000000b0042617ba63b1sm7680835edp.59.2022.05.03.02.41.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 02:41:50 -0700 (PDT)
Message-ID: <bacc123d-bedc-0034-6591-3ef0caf270ae@linaro.org>
Date:   Tue, 3 May 2022 11:41:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] clk: hisilicon: add CRG driver Hi3521a SoC
Content-Language: en-US
To:     "Marty E. Plummer" <hanetzer@startmail.com>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220501051020.2432338-1-hanetzer@startmail.com>
 <20220501051020.2432338-2-hanetzer@startmail.com>
 <0b66148a-c65f-2acf-9751-ae931778ad45@linaro.org>
 <20220501113215.rh6he5344hssziy7@proprietary-killer>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220501113215.rh6he5344hssziy7@proprietary-killer>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2022 13:36, Marty E. Plummer wrote:
> On Sun, May 01, 2022 at 10:35:37AM +0200, Krzysztof Kozlowski wrote:
>> On 01/05/2022 07:10, Marty E. Plummer wrote:
>>> Add CRG driver for Hi3521A SoC. CRG (Clock and Reset Generator) module
>>> generates clock and reset signals used by other module blocks on SoC.
>>>
>>>
>> (...)
>>
>>> +		return;
>>> +
>>> +	hisi_clk_register_mux(hi3521a_sysctrl_mux_clks,
>>> +				ARRAY_SIZE(hi3521a_sysctrl_mux_clks),
>>> +				clk_data);
>>> +}
>>> +CLK_OF_DECLARE(hi3521a_sysctrl, "hisilicon,hi3521a-sysctrl", hi3521a_sysctrl_init);
>> Missing bindings.
>>
> Assume you mean the Documentation/dt/binding/... file? Will do. I
> probably should have prefixed it with RFC, as I'm mostly hoping to get
> the attention of the hisi people to see what's the deal with the mtd
> reads being borked.

Then just don't Cc devicetree folks and put in cover letter disclaimer
that this was intentionally omitted and will be later fixed.

It is a waste of time of reviewers to look/filter/organize such email,
if it is intentionally not for us.

Best regards,
Krzysztof
