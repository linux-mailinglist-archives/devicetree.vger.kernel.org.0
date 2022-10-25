Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E84EF60CBC7
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 14:27:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231414AbiJYM1F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 08:27:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbiJYM06 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 08:26:58 -0400
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B84B11A97A
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:26:53 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id hh9so7316014qtb.13
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xCIU8CZjfuPZw7IS/sRiIMsineNAClLLYlq1Bt65gWI=;
        b=ty+JBmSBnsoFGQoN3FXgSzneooTBYtKYwlu9c6DqoYdZCjylA4+3SGvmOyGcw0EtW3
         PdTYmJOMFd9R8PDUnsmwKjyc2gdo6c1Y09qcZOU+4kAfOnozKWRuER+6ofzO5YkM73fc
         CEEO4JkJEgzv+WKgfBbgrG0p1HTo6II37FW5LspmNYqzy1x1DrVmnAB0a+dqxxabAhqa
         BC2wOJcaF5lUTxND52MSe/AEnVp6QmL0t7VHRnv08qVP0tViL+lPhsbta0FcTIetAZ5C
         ycvGDrTe9wW2CCxZrzqALE3qDr2btEXOWON7R0wjjOcktz3lknY0Z4ZHTat57cVMsPZC
         oxEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xCIU8CZjfuPZw7IS/sRiIMsineNAClLLYlq1Bt65gWI=;
        b=zJh2TnsZFBmKoyoNH4ChRX2pMifk96lqzMR6GHQuIcMU3NtI4RZAqgifQXP89eVAhO
         EC0SNAXV28zlFla3o9pw/IRmV1wdn2ZUSHqge+yPCpvr6xIkSCGKjBXsxpt4rUR1rIV5
         W6vqKxURhIC1s8zLzS2ohiHXvmrozEkszL6XM/NfbJnFN8v9rbNMsqglUmn6LR1P5ymT
         AeV1YJwV9kDkIvo3MhxOWtJyFpIVLVMVqxS8BC7RBGEgxnPN/NDehimYqgpYaI+Y57H+
         jAed5oqcKOE3rSAfh3jlgvqCewuEqTTO7MRlqXWhqVbBGxr/baomycn8Ia1ejSetalD1
         ljww==
X-Gm-Message-State: ACrzQf0zMA616w2Il3Sm38G/YXU/eeZAUO7E+nU1LcQcIAojPCCd9p2J
        VA29yRhCnC8dtmlVhsMdg4U3fw==
X-Google-Smtp-Source: AMsMyM616hRFDMD78cMDiRdvGGqoFXuOCYHofMIyqXoqO7EGsp72sOoMZz4ijuR6Nlf4tF3bGhCT8g==
X-Received: by 2002:a05:622a:310:b0:39c:dc1f:dba6 with SMTP id q16-20020a05622a031000b0039cdc1fdba6mr30526799qtw.121.1666700812319;
        Tue, 25 Oct 2022 05:26:52 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id 135-20020a37068d000000b006b5cc25535fsm1889640qkg.99.2022.10.25.05.26.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 05:26:51 -0700 (PDT)
Message-ID: <a344ef3c-edc7-99f7-4507-9c7378f38a87@linaro.org>
Date:   Tue, 25 Oct 2022 08:26:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 3/4] ASoC: dt-bindings: rt5682: Set sound-dai-cells to
 1
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Mark Brown <broonie@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024220015.1759428-1-nfraprado@collabora.com>
 <20221024220015.1759428-4-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024220015.1759428-4-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 18:00, Nícolas F. R. A. Prado wrote:
> Commit 0adccaf1eac9 ("ASoC: dt-bindings: rt5682: Add #sound-dai-cells")
> defined the sound-dai-cells property as 0. However, rt5682 has two DAIs,
> AIF1 and AIF2, and therefore should have sound-dai-cells set to 1. Fix
> it.
> 
> Fixes: 0adccaf1eac9 ("ASoC: dt-bindings: rt5682: Add #sound-dai-cells")
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

