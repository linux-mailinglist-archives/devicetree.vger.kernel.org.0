Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6E51608E95
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 18:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbiJVQik (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Oct 2022 12:38:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbiJVQii (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Oct 2022 12:38:38 -0400
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 080551C905A
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:38:38 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id c187-20020a4a4fc4000000b004808e2f7affso855482oob.13
        for <devicetree@vger.kernel.org>; Sat, 22 Oct 2022 09:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=09dbn703reA4FCdhJjPzfu9sNeDX/0oS18Pqv+rPa0w=;
        b=upLrr8MtWn1K4A18M2nSQc6qJHAz97rbXyAxel0+KJetCPPyqMUZ5qEKqddgdFhDtJ
         UmBuISjXjVWoybefbtD82JqmgaTi9dROiKXIwg5bkyqBDlyosUvK2eeiAxeVwIHePGlD
         1IVzlUcoINGe8vRdRkaG7v27NgFgM8BD7g0QK3SZ03PUtZBSKb9l2VbUdSeHyrxvxnPQ
         01tcUQC0yS1wR98MX9kt/KRm1tw99PEkKE4QuH0OTdOK4+LmgCGv0IOZGlzyTwsmo0Da
         BNQ7S5TsNOyg8oEyrXzEVQ8cAx7YAfGyavZ/yahyG54wzfEhrpbeGmKaYjLmSsqjEzp/
         Nzag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=09dbn703reA4FCdhJjPzfu9sNeDX/0oS18Pqv+rPa0w=;
        b=HzmMLc34K9Dz5GWlXMCykh+/CFk5YxK8xO9rdsV8hs09DQ/o23RCfXbLp9Si3WWxEe
         wOoUmRyFWRunGVKWLWrwDi93CcQ7Shr2FeEHP6DZq7DqTGfU2Vw8SbRriO9BXEzsHgdm
         y7mGV5YBVdx5JCYIfLF1Deo4SQ8JnjY5M6aKr8uAOUJkITif4He51SBhGhLwlDp+isJ1
         qKu+14N9RUzcFr9mQtXbzY5XqxdwJE9+8YPuK5kp+Pccw+6+qKjAK8EfFOvM4QoEP/Vz
         uW/LXih68G7wJ8vLzWVFBcWPazASu0sck7PAWfzXQfaglbaZCoVtKOGlDmKgPToeyoqH
         PkvA==
X-Gm-Message-State: ACrzQf0NU5dar3ec/HpGv9V2EuJYwvf70hAazwtoKTZbJbj4KCAyJiXh
        4zrPGBOKmeY8WFnPMDwqfB/W/g==
X-Google-Smtp-Source: AMsMyM4CrlinlMC3BiAcQkMfneJkSC/EWBL2SxP1mHGHVTR0/oyQ/QmNi7CVRjlifL1HcHg+JqbKvQ==
X-Received: by 2002:a4a:4847:0:b0:443:347d:6617 with SMTP id p68-20020a4a4847000000b00443347d6617mr11403064ooa.94.1666456717312;
        Sat, 22 Oct 2022 09:38:37 -0700 (PDT)
Received: from [10.203.8.70] ([205.153.95.177])
        by smtp.gmail.com with ESMTPSA id o206-20020acabed7000000b00344a22e71a9sm2287712oif.9.2022.10.22.09.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Oct 2022 09:38:36 -0700 (PDT)
Message-ID: <de1a7fd5-e701-8741-b327-ad47d6b00f26@linaro.org>
Date:   Sat, 22 Oct 2022 12:38:34 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: realtek,rt5682s: Add
 #sound-dai-cells
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Mark Brown <broonie@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Derek Fang <derek.fang@realtek.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221021190908.1502026-1-nfraprado@collabora.com>
 <20221021190908.1502026-2-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021190908.1502026-2-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 15:09, Nícolas F. R. A. Prado wrote:
> The rt5682s codec can be pointed to through a sound-dai property to be
> used as part of a machine sound driver. dtc expects #sound-dai-cells to
> be defined in the codec's node in those cases, so add it in the
> dt-binding and set it to 0.

Drop the entire last sentence, it's not really relevant to the problem.
What if we name compiler not dtc, but ctd? It's redundant and actually
forces reader to read unrelated stuff, instead of focusing on the root
problem - this is a DAI provider.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

