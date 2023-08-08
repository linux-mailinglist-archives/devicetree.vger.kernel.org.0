Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A3837748EA
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234131AbjHHTo7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233661AbjHHToj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:44:39 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30C3A16B3B
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:48:29 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-52222562f1eso8075789a12.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691513307; x=1692118107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rq9CGfMIPSDr9ZlL/JERcR7sYpgjvn+r29Kl2qTSWpE=;
        b=bUnozA7pGI8iSqio5TGC2IAw+hjDhhKZEL/DbW2qnhscqHNf0dSD7f4OvToboc37wi
         ObZ2yEuLquYqoAL9Kn8h/SXSb+i3n0Imc3DBeVKDzp+rUUfiXUIYoTztL5DrDukkwpjS
         O7Zd599+5zoxSODOmMn3M+QUtZakFWAs4fd0/fWdvQzPsp/w7S3CilvWnlTOmImexT5K
         KbuVzrvJJ93vvR7yVv6lPAsQs25pzg2Az9CiIej5KKdsu+fO7drP1wZjC99262Rr8I7t
         etF6TvlP36s+W1yBvAXR+on6jyMVaOYjvBPU8RwnYS67OqCJj4RzgZU5adR7u9lXzoyY
         IpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691513307; x=1692118107;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rq9CGfMIPSDr9ZlL/JERcR7sYpgjvn+r29Kl2qTSWpE=;
        b=WlpuuR24m+knLJX1W657afXrEkL5bpD8B3oOBulyAO2Pt57BE6eOU/HtlUlZsMqOdy
         Dgm3Lpnhpg77dKB6B11sQbQLE/O6juQUKRJCjr+5nxRykOnhxXAUaIndKR0ZJ8GME+Hd
         wuOPSiQE/mIgP/WHAMN+bwW1Ezzz0ph6rxFxe4HdOPHzZxnISsv2L0cyhsEhlwCtElbR
         Y4iwmic3DGlivLrOxkO9w7OxhVgn+R44i9Nf8gVWQ2BJTBWBDEtnf5fGAd/khyb1Iyf6
         FcZplf2JTYwMFjKzyVj3nTJDjSPunRdBqI6JktCJ5hJq6jW8VvnGna2ayQV/Kx13cU8M
         j07g==
X-Gm-Message-State: AOJu0Yy3ItTRd2cyXSy0pALKlHiCfnwoBTOlJp76uXmVhbhH+EVcm3kD
        luvwlYKUCFF7/3DwMUYg5QihAFWryWimJju7c+Q=
X-Google-Smtp-Source: AGHT+IHxzkAXBfNJDNcknbZH6tlIYjJNFyXEZDfCnRpxQMJVfuN4V6svYqKu4KC6ef0+KBpYIwyrmA==
X-Received: by 2002:a2e:9f4b:0:b0:2b9:3db7:322f with SMTP id v11-20020a2e9f4b000000b002b93db7322fmr8508153ljk.18.1691492178941;
        Tue, 08 Aug 2023 03:56:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id o12-20020a05600c378c00b003fd2e89620asm17797634wmr.40.2023.08.08.03.56.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 03:56:18 -0700 (PDT)
Message-ID: <d7cc1aec-17be-502d-47c1-3163a2766ee4@linaro.org>
Date:   Tue, 8 Aug 2023 12:56:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 11/11] dt-bindings: clock: samsung: remove define with
 number of clocks
Content-Language: en-US
To:     Conor Dooley <conor@kernel.org>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230808082738.122804-1-krzysztof.kozlowski@linaro.org>
 <20230808082738.122804-12-krzysztof.kozlowski@linaro.org>
 <20230808-scarcity-sprung-c0c2abc2971f@spud>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808-scarcity-sprung-c0c2abc2971f@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 12:53, Conor Dooley wrote:
> On Tue, Aug 08, 2023 at 10:27:38AM +0200, Krzysztof Kozlowski wrote:
>> Number of clocks supported by Linux drivers might vary - sometimes we
>> add new clocks, not exposed previously.  Therefore this number of clocks
>> should not be in the bindings, because otherwise we should not change
>> it.
> 
> This sentence reads super awkwardly, not by any means important to
> change, but I'd likely word it "Therefore these numbers of clocks should
> not be in the bindings, as that prevents changing them".

That's better, thanks.

> 
>> Remove it entirely from the bindings, once Linux drivers stopped
>> using them.
> 
> I figure there are no consumers in other projects then? If so,

Difficult to say, nothing known to me. Anyway these are not clock IDs,
so if anyone actually relied on number of clocks in the bindings, they
would have trouble in the first place.


> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>


Best regards,
Krzysztof

