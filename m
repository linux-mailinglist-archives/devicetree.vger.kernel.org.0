Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C5DB76918C
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:22:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232280AbjGaJWN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:22:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232222AbjGaJVx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:21:53 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED941BEB
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:19:48 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9891c73e0fbso895404566b.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690795180; x=1691399980;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CLlv/2g+8YJBVDyaSbIDe/tbW/4jcVh261aoxn4jYFg=;
        b=b5bGdqK85r6R18cpvUplg8qwBPV7uvlxNrCQu1TcDpI+/pX8pwx0LwFlojFPnPhDvc
         8Wo+ZAInZ2684b98m8PZHJIRIhZpuX8mEa5eimmK7qr7qjWB/9hcd0pDf2vDtVpvFyCI
         KhdRerGOQg/eCuHhdhx8qE3LP7zpJeVEd//iuJV4t0GI204Bvg4WmKj/2HMaBN7/UfKM
         Fg2wnsnNLl7uyxSoctOpkj8rnft+eZg1qF4K0UzY/CHceLeGZE8B2QDZWNf3/a8ST2ww
         RcGrqYkyO2SJ5Yr65oeun2CII7QdMYTyDDgpHtWI/WXUYSsl+QT6/dp5j+MK4V27opgF
         iqNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690795180; x=1691399980;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CLlv/2g+8YJBVDyaSbIDe/tbW/4jcVh261aoxn4jYFg=;
        b=X5JGtpnx33KwYcHvapDV40Y2q21zrhRcw2u/VcGjGEMJFH4EVzAuLda+vp1sqzrGVU
         mOkW3f9ls0pwQw8InwNxt19FBT9YSGTyKjeuUFtWgOyWMC1+szylPXllL0mDEdne/6Tv
         v+s35cmukTjkLOIpjT/fwUIhckSOKtP/9juX4m9UlCrHcsytSbHUFduO1aPf1X9W32Yb
         fbHsoLTxnb0ZRgXR9Eb3Tdv/c+p72Ex7F9g7AlF/ztlE1zAUtJA5sEdyz1FTQewKNDk9
         Zw7ZhsSJuENpOOCsZysl8btq/cERgV0ffWIw2n4ZWTJveVMPmqPQcon3Mob3KXlaU3bB
         VcwA==
X-Gm-Message-State: ABy/qLZB2pT9udnZDwSJMMt0cVGqt4Dvvz1ka1cBrvoI+qhxcn9wJVGT
        INxleTfT0PdZilnzg1u7c3mCJQ==
X-Google-Smtp-Source: APBJJlGlo3yNJtkZt5VqMPUJ/KLVLigOGOukwoiMhJSC7gBUFtSIr5vZ8gmsj6DC0NEk4HBVWFJCmA==
X-Received: by 2002:a17:907:7f8b:b0:98d:f2c9:a1eb with SMTP id qk11-20020a1709077f8b00b0098df2c9a1ebmr7608208ejc.24.1690795180377;
        Mon, 31 Jul 2023 02:19:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id n26-20020a170906089a00b00992ddf46e65sm5839311eje.46.2023.07.31.02.19.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 02:19:40 -0700 (PDT)
Message-ID: <273bd185-4aa5-510f-0f1d-1a4cab2d4a2d@linaro.org>
Date:   Mon, 31 Jul 2023 11:19:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] arm64: dts: amlogic: meson-sm1-odroid: drop redundant
 status=okay
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230731090442.100856-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731090442.100856-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 11:04, Krzysztof Kozlowski wrote:
> status=okay is by default.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi | 1 -
>  1 file changed, 1 deletion(-)

I found few more...

Best regards,
Krzysztof

