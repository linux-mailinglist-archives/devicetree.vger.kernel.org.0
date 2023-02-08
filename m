Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 953A968E9A6
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 09:16:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbjBHIQa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 03:16:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjBHIQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 03:16:30 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD18366BA
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 00:16:28 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id ba1so11818938wrb.5
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 00:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RIHBZkbNrO62XMNrJJK8z4cLpR4TSFuzo5oIxTwhhE0=;
        b=XZ+YSr1O8bGdAtUUD06C/G0MN+cIjt6SMBMjZJtvGe5f1MFkb0fWa3gLTd3ygER3P3
         jW7svKKXmDDQlT8BNfhh54ouct0fORZPbyM2R61X/e36T8e6Hp0JrV8hjjt6fHEwPpwG
         INYLUcSiZWxI4BU6WcmdrXLN33UAcqRqmZGELZ06VhA5bhP/dcMfUGBU/r7JY6P8YW+j
         YT4rlWmKzc1JikFqd6m1Bl/GUPDrqyga4kZ1JI1F/ZMvwh6X4Zvm5gxNvaeAO2pNdLcm
         Rf7w1oVySK7B9OuC0IpKyg62/G8zPZf8DJuAIvUXCGVdxyksSVbc6sNBaaprG/JzcQAA
         Bmvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RIHBZkbNrO62XMNrJJK8z4cLpR4TSFuzo5oIxTwhhE0=;
        b=63ubAZlCtwRfChXvAuiCI81Zkbh/Z3hibrxoRbW4roY8XGNRNpxNpdAnZt+KzDKC5J
         g0Bw5qD6ymsJ4Hgf7ZW11aD5PA5zwI0R4B1m7MA1SohFOiPwreTq9sXJwOIl8cYs25yp
         MgR+t7xpP65lr63UhQvG8ijwoQtCi7EQOZKNz/scZlGpQ7EvoVfxwtPPs0ny7G4r4O/g
         nRYLWwiGVr1d6mRNOjRK/e58qDWdNuZskPBk99GkG9tH0PV8eNxZBTO6vn7BQyrE2f5n
         gWmNMgFXP2ZdlJVKcjJAIKbeIoxuQduSWSTA4KfDofiYyI+H8d+z2YmMjKdbyEve5zzJ
         6KwA==
X-Gm-Message-State: AO0yUKUEpsUVLefigWPfYKXXokNQi6fpZASwGre1gx51TtoSBhyM2rph
        Pkf4IbKeuuvSeHOHU1h0n5CSQA==
X-Google-Smtp-Source: AK7set+SVBDj4BO5fl38Hh82paJ/TAHcWytuuayTi6LTqfHjo8burdCkPBlLF/pMYrOvOORLEmOw3A==
X-Received: by 2002:adf:fa10:0:b0:2bf:ad43:8f08 with SMTP id m16-20020adffa10000000b002bfad438f08mr5956744wrr.14.1675844187560;
        Wed, 08 Feb 2023 00:16:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h10-20020a5d504a000000b002c3efca57e1sm5086542wrt.110.2023.02.08.00.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 00:16:27 -0800 (PST)
Message-ID: <a743cc0d-7a6d-d5e2-2c7b-53baaeb87ba0@linaro.org>
Date:   Wed, 8 Feb 2023 09:16:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: tidyup
 reg/reg-name
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>
Cc:     Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87r0v1t02h.wl-kuninori.morimoto.gx@renesas.com>
 <87pmalt01x.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87pmalt01x.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 02:31, Kuninori Morimoto wrote:
> 

All your commits still have this blank line before.

> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Tidyup reg/reg-name "maxItems".
> Pointed by Krzysztof, and corrected by Rob.

Drop the sentence, you should instead explain what is here to correct.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

