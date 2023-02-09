Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 064A86902C6
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 10:03:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229863AbjBIJDW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 04:03:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbjBIJDU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 04:03:20 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 423FA7DB3
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 01:03:19 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id a2so1037364wrd.6
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 01:03:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KddnvB+SXjb84cC3PE1XW8IOwMIgrVI+rE/YkSmOZX0=;
        b=f8Bj8q1SFmwuKD2GFvYlhUixzeuCqp0yWlnDo13eYYidcOzljksBZyU1Sb6unC8ek7
         s/t4PNwFmfvEjoe0orcN+CJ+3spZjAk3RWEzkeMQmSnbg9qOWvY92NXOZnF56q6/327O
         MoDfIbzyAWo31LhJ5a0UEouIfTCDDpqPk5pFA1Anh3e2yonZ79fENVrpAPYPrMhxOY1+
         LLIxCkFqvxhpzHHnSQgvaVKtNy7zc/txqQlhGb3NkyU+ypDpd9EwiPvwgCHQE62bS8xG
         pY4XbkuQ8/Dws9GeGbRZVj/RDNDYO2jYb/XGh0EY7UVisUYSFXeyVRukwjLW7+XuitMu
         ScfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KddnvB+SXjb84cC3PE1XW8IOwMIgrVI+rE/YkSmOZX0=;
        b=r1ybY2Uvw8mxDuy367eUowB5qF2Zebuofgm1g7NezOwqGo/gkfeE6Q3irM8zAeoJ/y
         R8LSissI2MJCa901teTGIWAODqrNU9CkoXJr38nSwXqlIAXiX9k5chq3MVkdIG6Av/U8
         TVeVLaagjfoNJWZkpRuSRTuriNrtlmU2z9NHHtvz3LLXIupW+zxO2mt7ojpAPDKuR//q
         R0m7GvpcrqX939F6neEWM6I9FxUS8LpzyaoSOw2hcmC1820/6GHcA74p024SQYRE+NCb
         Vsd3nqHa24TVzDPr3SG0epI3I4vJbG+Vb9P02m4x9E6+9QpagJ4qHsXLF5dtgGp/NpyQ
         d+oQ==
X-Gm-Message-State: AO0yUKU34LlL1Tf5mCzmImkp94XwLpbqLYjwD0ZUSnrMrv/+tU2X7OMZ
        9jzOGkQeWJMDlVOIBAyyF/iG5w==
X-Google-Smtp-Source: AK7set/Wf+UTKLXXpE+qh5czFozFlsmwQv2QwSegX9rUL/3WcoNIm4M2PM/Yh78fR38M6Yu3h0XAVw==
X-Received: by 2002:a5d:6206:0:b0:2c3:e868:cf54 with SMTP id y6-20020a5d6206000000b002c3e868cf54mr12210476wru.13.1675933397888;
        Thu, 09 Feb 2023 01:03:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o26-20020a5d58da000000b002c3f1223059sm735417wrf.36.2023.02.09.01.03.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 01:03:17 -0800 (PST)
Message-ID: <e5bcad37-c7d3-9c3c-4947-d3f2f6d9fc60@linaro.org>
Date:   Thu, 9 Feb 2023 10:03:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3] ASoC: SMA1303: Remove the sysclk setting in devicetree
Content-Language: en-US
To:     Ki-Seok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20230209084903.13000-2-kiseok.jo@irondevice.com>
 <da3e7391-ee89-3089-8501-91e9411161a7@linaro.org>
 <SLXP216MB00777BF2377ECE2366F694228CD99@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <SLXP216MB00777BF2377ECE2366F694228CD99@SLXP216MB0077.KORP216.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 10:01, Ki-Seok Jo wrote:
> 
>>> In SMA1303, this device does not support MCLK.
>>> So it need to remove sysclk setting in devicetree.
>>> v2: Modify the sysclk setting - using devm_clk_get for mclk.
>>>
>>> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Where? Where did you get this tag?
>>
>> Best regards,
>> Krzysztof
> 
> I'm sorry, I don’t' know what you're talking about.
> What tag are you talking about?
> Sorry, could you please elaborate?

From where the tag "Reviewed-by: Krzysztof..." appear?

Best regards,
Krzysztof

