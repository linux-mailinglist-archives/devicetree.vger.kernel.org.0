Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A84395070B1
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 16:36:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353420AbiDSOiS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 10:38:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353415AbiDSOhh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 10:37:37 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35A261146
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:34:54 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id c64so21508326edf.11
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=hYhWpkA0GOl3mzzjcNkkxBFtmx6tG2/CLP4HzjXsxi0=;
        b=gDYmERjvy8NgZ4/EJ2aP6RqYgTmUNylM5SgiVH/2eNAi8INO2ld3IEptSWM9PAWAk+
         Bx26xGaHvAUml6pJJueSotMR2y17ZQWYPv2o8zfreJmGqxfdcZg0tJOhJAbcLYRjHwlq
         +sjEWMhRgFtvwsUMN46ss5URCREuQkrYLw331Lu+Ma8/Rga5h6r4pMZGNiSR3W8K464Q
         DV09vqOGXHhoZrWCPRivl2kCGixrGwQGk8Ehr8eSrxBPiz6NDdfFPOpOvMTq9GEvu6f4
         LLGOA9z62W13/R6Kr368SuDhKoU9Vt/a/Ahf8+SfUMeJcSzDNUA51YuawokAJsllTXlC
         cQog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hYhWpkA0GOl3mzzjcNkkxBFtmx6tG2/CLP4HzjXsxi0=;
        b=DpXGeTaTlvpk8pFl0GDnzhTIY7bcTDFIBs2FDcsVtZlnZbfUYts/8QfQJTB+EI14Ea
         CdeuVrMZpAnlZ0QUdV3pOyKJOL4YrvcwflkvTJD8LCAMlTuS3qWWdBXFZPzKYnxkl1EJ
         ezsPaHOoFqht8RwANWliZpSFEKXDEGWHICEeVHVlPqnl6sFIjtmjovAZg6MB9KP/Q7lh
         aYYtHGri1YqGnZtmi2uCTNk2shqwR/pyYtar5YhJ9atLkOFfifvHv66BELBKqrvvKNtF
         xAYS92rKTT1R7aetuYvmhKQEgcY/KjahL0ugyVCjfVejgxQYaIh0OJql8yiglNT7otcc
         btZg==
X-Gm-Message-State: AOAM533wvZguyb0+7pyMNk8rjDjkRJYwzt/HY5AfqOduz7m9Y/cHorsU
        54D0iM/lPR3EYnUP0UtnS9p/axa7yRnp2Q==
X-Google-Smtp-Source: ABdhPJwMtbhOhCW5Bk7zHhutByyPSIKIwImCItxB2gjTzWPQrENBnkq6YnlbZzC4034cf1T3PHE+ig==
X-Received: by 2002:a50:ba8a:0:b0:423:bdf5:41d6 with SMTP id x10-20020a50ba8a000000b00423bdf541d6mr16366082ede.204.1650378892871;
        Tue, 19 Apr 2022 07:34:52 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id mp8-20020a1709071b0800b006efc915e1ccsm1513203ejc.118.2022.04.19.07.34.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 07:34:52 -0700 (PDT)
Message-ID: <83037bd9-d4f0-7116-0b7f-26f64170a5ad@linaro.org>
Date:   Tue, 19 Apr 2022 16:34:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: align operating-points table
 name with dtschema
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org
References: <20210820081616.83674-1-krzysztof.kozlowski@canonical.com>
 <165036314214.180327.9860190048104061653.b4-ty@linaro.org>
 <448093df-288f-3c49-270e-5d830a986b27@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <448093df-288f-3c49-270e-5d830a986b27@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 16:31, Matthias Brugger wrote:
> On 19/04/2022 12:12, Krzysztof Kozlowski wrote:
>> On Fri, 20 Aug 2021 10:16:15 +0200, Krzysztof Kozlowski wrote:
>>> Align the name of operating-points node to dtschema to fix warnings like:
>>>
>>>    arch/arm64/boot/dts/mediatek/mt8173-elm.dt.yaml:
>>>      opp_table0: $nodename:0: 'opp_table0' does not match '^opp-table(-[a-z0-9]+)?$'
>>>
>>>
>>
>> Applied, thanks!
> 
> Could you please provide a stable branch for this patches? So that I can pull 
> that into my branch. This will help to reduce merge conflicts later on.

Then maybe better take them directly? These patches were waiting on
lists for long time, I resent them and pinged. I took them only because
there seems to be little interest but we want to fix all dtbs_check
warnings.

There are three for Mediatek:

https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=for-v5.19/arm-dts64-cleanups

Best regards,
Krzysztof
