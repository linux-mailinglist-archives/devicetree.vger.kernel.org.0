Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 938AA5B3B0C
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 16:48:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232237AbiIIOsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 10:48:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232234AbiIIOsI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 10:48:08 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A25C128944
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 07:48:07 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id f14so2118729lfg.5
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 07:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=1Xo/jW7kVhmeqMUm5EF08mo1H5Vri/2WuJWKrRFmb7g=;
        b=oSwLJRjzmYKuS+doOBb65HxYI1YvbLxdKYdXpEje79++9Rj1by9DOE3k1VsooF9TIi
         e1Zw/CBaIz4ppk1yg0D2DzrJ3BqUVC/s5M+XfT+sbBpSbVtUV8yvrTbr8zU8IsiuD/9Q
         imV9nLMCE6NvZqsMvABIpeSeQemrLi8gsmeRK6Oq0HqGj2QCBNh9leOg6HlWzbN3nOAo
         mZ1n8zgg03r08QMwFeNkL7VKyNXEMam8owJq7zQ8XDYklw7YPzkmEtyTFUjqBWZMQlIS
         zn/6hF9iLLJMo++8frY2amYwOd/Mqkna3KylzJt+ZJrEtZJ5hPrXaOBTFSTrRgMXBFTc
         NbCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=1Xo/jW7kVhmeqMUm5EF08mo1H5Vri/2WuJWKrRFmb7g=;
        b=5KfmkbhGuSVY8vz7xgmpBToaivxCqgf17CtQLxqv27SuDCNWhF+4v5jMoHdnR2Vr0A
         CLzqlG19C+8Th9AhJhyG0wlYExO3BxuOPjjdr7BVBWFRcTEj64pyh8B72mz3jokuSes3
         EEDoozdmtpj4nuOqdhvCo1lmE5ic856jC0pyuMSZ5rRXiNP6WB+gcKZD8F+PSyaXul/B
         RGa0Ja0vNTLtU59YX2qdxz7MXd9Lcs3jAmfGBhQvzwIHjIYt+eWFHM4qTu6cr42r2DrP
         smDp4bGGyOoJCWS0wXblq1qVIEkzu/WB+yrMWI3i52xvTWVobK5p8lZVW9mAeqVTt/OF
         0HUg==
X-Gm-Message-State: ACgBeo0xe9UOcnuj2RM1O5Zz5/cQQQWy3h0rW313PzqtNAXIEhmyGTTw
        iGWWK+Dwd3ypKdRAyGx422NZSg==
X-Google-Smtp-Source: AA6agR7hWKag4xt7p0pT/feHrJNaWeiDP8haudHJ81x1EwlDjlpYjrTrYeTknUWM4guN+yv0LjJEgw==
X-Received: by 2002:a05:6512:3ba3:b0:497:ad1e:e9ab with SMTP id g35-20020a0565123ba300b00497ad1ee9abmr3921833lfv.619.1662734885375;
        Fri, 09 Sep 2022 07:48:05 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g5-20020a2ea4a5000000b0026707e5a611sm111621ljm.20.2022.09.09.07.48.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 07:48:04 -0700 (PDT)
Message-ID: <ac0c63a1-9298-568f-d06f-ef7d77ca00ff@linaro.org>
Date:   Fri, 9 Sep 2022 16:48:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 01/10] ASoC: dt-bindings: cs42l42: Add 'cs42l83'
 compatible
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Povi=c5=a1er?= <povik+lin@cutebit.org>,
        James Schulman <james.schulman@cirrus.com>,
        David Rhodes <david.rhodes@cirrus.com>,
        Lucas Tanure <tanureal@opensource.cirrus.com>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     Charles Keepax <ckeepax@opensource.cirrus.com>,
        ChiYuan Huang <cy_huang@richtek.com>,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Matt Flax <flatmax@flatmax.com>,
        - <patches@opensource.cirrus.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        asahi@lists.linux.dev
References: <20220909135334.98220-1-povik+lin@cutebit.org>
 <20220909135334.98220-2-povik+lin@cutebit.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909135334.98220-2-povik+lin@cutebit.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 15:53, Martin Povišer wrote:
> CS42L83 is a publicly undocumented part found in Apple machines, similar
> (almost identical) to CS42L42. Share the binding schema of CS42L42 for it.
> 
> Signed-off-by: Martin Povišer <povik+lin@cutebit.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
