Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DAFC731603
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 13:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240620AbjFOLDJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 07:03:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230267AbjFOLDF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 07:03:05 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5B5E294E
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 04:03:03 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b203891b2cso25278251fa.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 04:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1686826982; x=1689418982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8/bt1dAWppMoxhJfVjqrwV2ZjuTN1PkZV9nbDOgWa78=;
        b=IkmzE2t46xCrw5S4s+6FeD5g42TQfM7SZYrTWut3B0okjDqFQYoRW7+vWoMH90Joyp
         JJsBwAmr10F5I1NesW+D/S+10PdJRijAewLdpLkeK3kiuWAYyg+URInhJTtoqen1MN8t
         uJHk2SjBiym5AtVbsyc/f6OnGPvwmhCEFi+V8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686826982; x=1689418982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8/bt1dAWppMoxhJfVjqrwV2ZjuTN1PkZV9nbDOgWa78=;
        b=hSD2J7ahIstpdzigW2COkInoeEnYxF9nBSkgQnpjY+dsp+EYjH8G+yVAwzZH1NB5oA
         OGygS+8VoIHEBevn5BwK7ZVteTIKaEzYBeJlTSoKIBt6QSMC56iQnrkeOH0wZsaNzxSY
         pIf8D3Zmkuss/bVRjgOWvXkdi2NBd2ss2tQFQhZs2teWedawvG7OPHageBMwQKpoGWR4
         QypUdIjpEwI8ZOTa4BB+e9JRBrwz9dB5G1T1agBZy2uvq7B6VOA0P1p88sj5l2OIiCdY
         QCphk88b/DomQyqayXpH+lniuk5TUi/ghm1AEdY7O7Jve6P78CUlLdk4ZobmAt0vWTaU
         eRmQ==
X-Gm-Message-State: AC+VfDz10Z/fRDaE9GCSsZTe/PwJ3UJwxP4SMrXAZd1Q1M3D8/OXH/S/
        CLrJlTgNRLvInoEeaI10dhoyug==
X-Google-Smtp-Source: ACHHUZ5vqGU+cjdTQVd653JJ4tvfSKEV01KP0mJwq6VplcyPdzf22pxzo98dgSMhssRcQLgHAtCP2Q==
X-Received: by 2002:a2e:a0ce:0:b0:2b0:2d23:79b with SMTP id f14-20020a2ea0ce000000b002b02d23079bmr8570078ljm.3.1686826981872;
        Thu, 15 Jun 2023 04:03:01 -0700 (PDT)
Received: from [172.16.11.116] ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id c9-20020a05651c014900b002b4496a1737sm72455ljd.46.2023.06.15.04.03.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 04:03:01 -0700 (PDT)
Message-ID: <a1807670-5f6d-eea0-34c3-942303544eab@rasmusvillemoes.dk>
Date:   Thu, 15 Jun 2023 13:03:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 0/8] rtc: isl12022: battery backup voltage and clock
 support
Content-Language: en-US, da
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230613130011.305589-1-linux@rasmusvillemoes.dk>
 <e78d3ea1-9acb-1d4f-1b9a-0bab75613189@linaro.org>
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
In-Reply-To: <e78d3ea1-9acb-1d4f-1b9a-0bab75613189@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2023 21.06, Krzysztof Kozlowski wrote:
> On 13/06/2023 15:00, Rasmus Villemoes wrote:
>> The current handling of the low-battery bits in the status register is
>> wrong. The first six patches fix that and implement proper support for
>> RTC_VL_READ.
>>
>> The last two patches allow describing the isl12022 as a clock
>> provider, for now just as a fixed 32kHz clock. They are also
>> tangentially related to the backup battery, in that when the isl12022
>> is not used as a clock source, one can save some power consumption in
>> battery mode by setting the FOx bits to 0.
>>
>> v2 changes:
> 
> Do not attach (thread) your patchsets to some other threads (unrelated
> or older versions). This buries them deep in the mailbox and might
> interfere with applying entire sets.
> 

Arrgh, I really didn't mean to do that with v3, but I reused the 'git
send-email' from my shell history and overlooked that I had that
--in-reply-to :(

Sorry folks!

Rasmus

