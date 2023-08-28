Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A25178B056
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 14:32:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232550AbjH1Mb2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 08:31:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232633AbjH1Ma4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 08:30:56 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F165188
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 05:30:40 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-523100882f2so4169251a12.2
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 05:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693225835; x=1693830635;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mo967Rgiw4nyHlVYxonQZRRFO6y9+PWWVMXpzUNgKwc=;
        b=tvbyefGWknb6USqi5c727TPcM+Amz7JtPi59qvuFRyDXDdvnzQ1np+nmOy7XBfoIXW
         mxBT4KKLFRZViC1YBw0cMnRwUkPZncI+7x2xDp3b9JT3dQs+KNbUXT3gEMq0csvQxV2W
         UWAObV+hZ+2cE30TVMKPeCnI3nZo53hlgtKN5emAeGIFmFzdjrqFG6RFzD3k9sFbMOUC
         HPcM/pLyvCrsCVIQFhzRIOEBRiERwyvpyFGvku7SYsXhWLLCcBLpffJf2h1pZpS3EZzF
         s11jR3/3G9sbjg/ZjsDVHuu2GGIe9V/Ed9mkeUptLSJefhkTdLQDP1baQI+DD4ECeq8E
         6qWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693225835; x=1693830635;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mo967Rgiw4nyHlVYxonQZRRFO6y9+PWWVMXpzUNgKwc=;
        b=HhInkYot7uwSSNZHRvrd7mXyvJ3liFzr/wSLlgL7PfRT48sOpXTGBLNvzGIOcEhgsZ
         hq1GOsKgtBLvfldOxSrQB3MKUUm97Gg7RnmDZYh4Kr5nw+SvufZ7DOkc3x+m1CPOjh9n
         DLsa39iiM1vIyBNSP2aLuTTe7s9jiYmHWBm51NuylyqFcZ9clWYg4gkbfY7e/ELZFdEE
         vlqsIf65mtznmug4ZJ2HB1tpSuJDGzMyXlaJOEjGEe5ukICF/NxpW3A49DLX4y3h0djU
         nHaxnqds1gAiVQzVhHH/5URWrQrWxyYfARVZIuWbel8q1Ns9RKPBM5DNmib9ynNsnwWG
         +w5A==
X-Gm-Message-State: AOJu0YybCKMSwNr2PL9jo8gfGKJ60SY7el90HAmeOdGafcQ5Fs4HNRwG
        VNYFXkluzbLnQ9pKv1qkOm7e2Q==
X-Google-Smtp-Source: AGHT+IF6HtqOEyYERQUDp2ejE0SrCV+ncA7gavu19vIftq1RoQdBSjjFs83WO0ZIHBsjzH/lpo6+iw==
X-Received: by 2002:a17:907:78d6:b0:9a1:cbe5:7586 with SMTP id kv22-20020a17090778d600b009a1cbe57586mr10982714ejc.35.1693225835459;
        Mon, 28 Aug 2023 05:30:35 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id 17-20020a170906059100b0098e2969ed44sm4532161ejn.45.2023.08.28.05.30.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 05:30:34 -0700 (PDT)
Message-ID: <6aae4d40-e922-4e63-02a4-e56385af6069@linaro.org>
Date:   Mon, 28 Aug 2023 14:30:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v6 1/2] dt-binding: pinctrl: Add NPCM8XX pinctrl and GPIO
 documentation
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>
Cc:     linus.walleij@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        avifishman70@gmail.com, tali.perry1@gmail.com, joel@jms.id.au,
        venture@google.com, yuenn@google.com, benjaminfair@google.com,
        j.neuschaefer@gmx.net, openbmc@lists.ozlabs.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
References: <20230827203612.173562-1-tmaimon77@gmail.com>
 <20230827203612.173562-2-tmaimon77@gmail.com>
 <eccc6a7a-b30f-8c77-77cb-5deef47a1954@linaro.org>
 <CAP6Zq1jj0WDbtL1zhr=tVyh2GPRy6-=oHjVURmJzNRm3n0HBNg@mail.gmail.com>
 <c984d558-11b5-d5ea-9819-7641129de584@linaro.org>
 <5c0d985a-0492-778c-46b9-80899e52134c@linaro.org>
 <CAP6Zq1iX4Rqob0SM-F2SuRYa3QxE4KC8wPzTNQVpTN8JBUPFkA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1iX4Rqob0SM-F2SuRYa3QxE4KC8wPzTNQVpTN8JBUPFkA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 13:43, Tomer Maimon wrote:
>>
>>> Which leds to second
>>> question - how pinctrl could have @0? It's already taken by SoC! So your
>>> DTS here - unit address and ranges - are clearly wrong.
>>>
>>>
>>>> BTW, I have run both dt_binding_check and W=1 dtbs_check, and didn't
>>>> see an issue related to the pinctrl: pinctrl@f0800260, do I need to
>>>> add another flag to see the issue?
>>>
>>> Did you read my message last time? I said - it's about DTS, not the binding.
> yes, understood doesn't the dtbs_check check the DTS?

Yes, it does, and the first error is being reported (just like several
others for your DTS...). The second about gpio node, I think is not.

Best regards,
Krzysztof

