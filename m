Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B1EE68EB81
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 10:34:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230244AbjBHJem (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 04:34:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbjBHJe2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 04:34:28 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5423213D
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 01:34:05 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id az4-20020a05600c600400b003dff767a1f1so977071wmb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 01:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dB2bPp50WgZSDJ/Lsp3Za88vOItyDoAVOCUqcyCy+KA=;
        b=qr97IGN2pyQzY2tS48eqrFPTHsuBfvHCpaJtyNguRM/Sel5MdcdzI226ZmJGbGnZTK
         zoXUVNn9U6be4SoAHLpuz6jGfQZaPuccmftX1Pxh1mkGBkLHrq/XYkrzTcpLBuQ5uWUX
         c6J1lYFuvWIt2VVQJg/Fllj9bRitYkWmbgcfR4uu8ECDbJWZYFzfJg/ufRlYZhNSxr/F
         9jI6xFJFtojRuyuiU09VqGBobk5qIuaJvgVAIaCJ6NkyeGOUxgAogaViIDXc/bL6QDaX
         0/EIJmxX0z15cfsCVD/B57ryUSY9YsHsODP5EoZsx0KmY1eDpW2PJ69bzBvdWDdGE/3p
         E+jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dB2bPp50WgZSDJ/Lsp3Za88vOItyDoAVOCUqcyCy+KA=;
        b=WT9D+PqtlHn9a5lCrpaO4wQ3c+zPktgzrfMHvkPfA8UmJ8qDV/5/waYkGV/WZeGg1Z
         r/5hlY/0WRULIG7VkOfVULkgwZIXwnjhhbsQPqna5C4s4AwkirGTYchEg8Rysr6Hyl1U
         KtffXuNWCRmZvoN0rdOeIVHi9tzzWljYyHm/68m1z8GA9EDodQfv80sYA0BruNlrN8e2
         EaNr0X0E87P96ll1yTvQkuDVq1k35c97U12v0Pig+RBLO0G09R1X8oXpFyXCWkD2G10i
         laDp6I7i4XKPyTlz7+hH0CAgMjCVVEhZE8aVb3c/PHdmGUwx2AtsjWn1OHS8HcnGJG4z
         wmzA==
X-Gm-Message-State: AO0yUKU5gkRPJTPMPPyL8w03iBL5sk3oxJogHql59b5QVaZAytR7uWqD
        niTPeyHMrgLfDnWwcoG6z3c0YQ==
X-Google-Smtp-Source: AK7set8yfhlKW/XXdIic534Q5oN5SJL8PWHGQyewtvP85A4vzLE7Y4CcXt+WYFhwgvnw7GkY24z8AA==
X-Received: by 2002:a05:600c:3412:b0:3e0:481:c88f with SMTP id y18-20020a05600c341200b003e00481c88fmr7922009wmp.30.1675848842970;
        Wed, 08 Feb 2023 01:34:02 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ip21-20020a05600ca69500b003dc59081603sm1253932wmb.48.2023.02.08.01.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 01:34:02 -0800 (PST)
Message-ID: <481a2a2d-bf2e-b707-1a32-8199eeda78a3@linaro.org>
Date:   Wed, 8 Feb 2023 10:34:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 4/4] ASoC: dt-bindings: irondevice,sma1303: Rework
 binding and add missing properties
Content-Language: en-US
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230208092420.5037-5-kiseok.jo@irondevice.com>
 <20230208092420.5037-8-kiseok.jo@irondevice.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230208092420.5037-8-kiseok.jo@irondevice.com>
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

On 08/02/2023 10:24, Kiseok Jo wrote:
> Add the missing properties as compatible, reg, sound-dai-cells.
> And then check this file using 'make dt_binding_check'.
> 
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
> ---
>  .../bindings/sound/irondevice,sma1303.yaml    | 23 ++++++++++++++++---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

