Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0E35648E4D
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 12:02:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbiLJLCS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 06:02:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229846AbiLJLCI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 06:02:08 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07ACE1C439
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:02:05 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id j4so10979415lfk.0
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 03:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6bTQZJ5qEXOwGkELkieaUGAk7eqOZjN88QdCoaf1buM=;
        b=mVthSDKGO9Fp64BbysCFZZ8NHo7bkNmayJWB1ZQNafazjPDLin4oyHJdBzUo7TRncH
         p+vcbYCknJGSuGvUsim2mVI64xyo3qx07jeXIz9AH5TgB7jKwoALs+kA8AQLthJgEWhQ
         +TR4J7W/qWLgApi4cKOzRwiJY9UkID0Mkn5dJwD6Gxw7iNT9kGd5jbOGPuiwwxGk56Ek
         shiM41vE6hcXZEOCI4+ZBqWretC5K/1lofDJkXUtT0k5T28EQYxwKrH2aCeT0WI1Kz3y
         DvDgzklLbel0rLpk6RojNc1gQR4D6dT/ISQYlJ0kYAhzS4TYmFFhArz2uAlP61EaZ8jj
         GwTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6bTQZJ5qEXOwGkELkieaUGAk7eqOZjN88QdCoaf1buM=;
        b=Si7ku+14uLzebCTrom9df+uyLWib6dOEFApNvT4/eVGNthTuCIsIznfY57/mnM8cwn
         5g32OLfiVDr2Bd7t5fQzDXzTnVpsp38miG0n9E/IjOpudBFT/XO1gKg3vofiWtPzGYsG
         U1Z6qy0RO6xECBhsJ9qM+HSSjrfTzYRHsHdHSADnXLgt0y0qu3L5OolDAyYcJTHeTmTV
         lVv4NDRT7KGP8uBpDcGo+yWsS6LRYKuQJlYPPNrMA4apdBYQFQ5zcjsRbjP/MH0VTpvq
         2KyXoJdUJWYj4jCwGlD8YB+IJLm9+87qzaB1HhOnC2ki8CRpHGo/KICnLp9n+JLUbE/4
         Savg==
X-Gm-Message-State: ANoB5plL7WAOGo8UIy+3HE5AtDWTgSI8rB1mzezSWy/S1cihg8HYGY94
        HMOWv3HUkIaQhGKvq8N2ggzPMw==
X-Google-Smtp-Source: AA0mqf7AQrGsfQSJP95snYMsi5ihiDRduio3adT9wGO6RWhqO5O1QKE2e79DDmRrxDuEsRizInTNGw==
X-Received: by 2002:a05:6512:6d1:b0:4aa:c6ac:c356 with SMTP id u17-20020a05651206d100b004aac6acc356mr3343916lff.26.1670670125426;
        Sat, 10 Dec 2022 03:02:05 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id l11-20020ac24a8b000000b004a8b9c68735sm671534lfp.102.2022.12.10.03.02.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Dec 2022 03:02:04 -0800 (PST)
Message-ID: <3d5b29f3-8d8d-93a7-a485-5261e2d8891d@linaro.org>
Date:   Sat, 10 Dec 2022 12:02:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [RFC PATCH] arm64: dts: qcom: Use labels with generic node names
 for ADC channels
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221209215308.1781047-1-marijn.suijten@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221209215308.1781047-1-marijn.suijten@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/12/2022 22:53, Marijn Suijten wrote:
> As discussed in [1] the DT should use labels to describe ADC channels,
> with generic node names, since the IIO drivers now moved to the fwnode
> API where node names include the `@xx` address suffix.
> 
> Especially for the ADC5 driver that uses extend_name - which cannot be
> removed for compatibility reasons - this results in sysfs files with the
> @xx name that wasn't previously present, and leads to an unpleasant
> file-browsing experience.
> 
> Also remove all the unused channel labels in pm660.dtsi.
> 
> [1]: https://lore.kernel.org/linux-arm-msm/20221106193018.270106-1-marijn.suijten@somainline.org/T/#u
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>

The talk was in context of bindings, not about changing all existing
users thus affecting DTS. What's more, to me "skin-temp-thermistor" is
quite generic name, maybe "thermistor" would be more and reflects the
purpose of the node, so it was more or less fine.

Anyway I am against such changes without expressing it in the bindings.

Best regards,
Krzysztof

