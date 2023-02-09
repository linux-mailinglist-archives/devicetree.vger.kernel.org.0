Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F92C690288
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 09:54:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjBIIyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 03:54:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbjBIIyn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 03:54:43 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9156753E5D
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 00:54:42 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id ba1so1019263wrb.5
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 00:54:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZaBU5MlTw0ghUyG7F0EMhIOGNhTAX80itYRC0FVJJNc=;
        b=hzGAcmJlJQDKvZLmxRpcdwbNiESP5nTRXuyNgJOnRPys1WNaOo/I2MVVd3JOTJ8LQZ
         Cv6qqiA30QIOn4QuCPbNLE3ycdKZ8MOSfj/lSb4Tu4fKUG0sJ7UfdDKW7o/8Xpa78YNZ
         P2XFT6Ozz129jxT0swHSHR7kchNQSWC0aJ0GVwz9GJaGiGQ6irZMtLiZorltuOUHXj0a
         Lz9NEtLWGVmz3kYDsilRG/uh6TVkfPeYTHr45DDzcoAtVjaFumGVYAmgP4TlHVLtsP4p
         ZeXlJyaOJzg6wWishOEBakggDlXdaTl717C2XKSo5DvDImoiL8z6Xo7eruxU/i9waefC
         vBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZaBU5MlTw0ghUyG7F0EMhIOGNhTAX80itYRC0FVJJNc=;
        b=eO+tt2GdwGOxBRJWzaApnoPA31b7kV4TQheapowLhwcLAOayHRTgEtqaiQY/FTyGal
         bhRfGk3iQ1U1hpuusAVZx91H0PpVX2kiZpb9sTGUcD3IBEFOj8zTOJhDXA0e8Uc7wSa5
         GS37xIlfXfrH4QBSnl1cmk7cJ4eMSBe11bFPa9ELZ9gNzsFAY7SIJwgfEdh/zeMWaude
         +jE+iJNbOlGBPbnZTf5ta4BqB1AyKbtkIzQfGL6IwAbPTnahw7kMg74JjcJH4+s949ci
         LPCQEEn1N0HKRlhyXQm4+RgU98bXly2DR4y8Abvo+26tWEAgtOyX0FklPluln9pR5w+f
         x6Qg==
X-Gm-Message-State: AO0yUKXRqTbTKUhCbFzzDA4m5OKlzTkLXJLnsTkgBREzDs7zhJsqpgZH
        /nfAzGwA/aX0oO8JrkCXzhUctg==
X-Google-Smtp-Source: AK7set+XBnSQvSY4Ttsb7H2i3i83JcSSqIeNcy7/TiZRMBGW+P9zFWR7XxEk9Q3F/uknlW7ysVJETA==
X-Received: by 2002:a5d:6b85:0:b0:2c3:f8f0:aae0 with SMTP id n5-20020a5d6b85000000b002c3f8f0aae0mr8013487wrx.22.1675932881200;
        Thu, 09 Feb 2023 00:54:41 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q12-20020adffecc000000b002c3ea9655easm679719wrs.108.2023.02.09.00.54.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 00:54:40 -0800 (PST)
Message-ID: <da3e7391-ee89-3089-8501-91e9411161a7@linaro.org>
Date:   Thu, 9 Feb 2023 09:54:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3] ASoC: SMA1303: Remove the sysclk setting in devicetree
Content-Language: en-US
To:     Kiseok Jo <kiseok.jo@irondevice.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230209084903.13000-2-kiseok.jo@irondevice.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230209084903.13000-2-kiseok.jo@irondevice.com>
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

On 09/02/2023 09:49, Kiseok Jo wrote:
> In SMA1303, this device does not support MCLK.
> So it need to remove sysclk setting in devicetree.
> v2: Modify the sysclk setting - using devm_clk_get for mclk.
> 
> Signed-off-by: Kiseok Jo <kiseok.jo@irondevice.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Where? Where did you get this tag?

Best regards,
Krzysztof

