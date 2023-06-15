Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18F19731169
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 09:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245284AbjFOHws (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 03:52:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245245AbjFOHwe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 03:52:34 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDAF32132
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 00:52:14 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51a270e4d57so461565a12.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 00:52:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686815533; x=1689407533;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ivHTQVsZTRxv5567VHqN+NovPB5i4GWR06mHutq187Y=;
        b=h64SM8xC+4xrIdT1mx4eDjV7aJCQd4HeqhU0mIdj4so1rPp4apvd4dIZPJuy5R5CON
         M41vraBTuBmHqRyjE+9+PIJdjYFYEFVBjuyy9d1qW/HlcFbL3bVMwJ+jYeua99R7OJKh
         yAg40/zkusc78xFkGNXbUQP+P7rYYCSpRGw/I3i3WrP5fZD1Gcm4gDspKUjOgUeQP3PA
         1naVWD4p2Yk2zZRwGyJ5oUqNwDU9rTYayoZBk8rt6hpFq7ro32WoyJleUdTbYdskL8D7
         rxX/vc1hdZ235rJQ5gSY1GGFVGyR/jIC86ZbnogLvYHpdkOTcIcmHdVze5NXbL45Q2Ih
         X/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686815533; x=1689407533;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ivHTQVsZTRxv5567VHqN+NovPB5i4GWR06mHutq187Y=;
        b=f8kCD+pbrFp1z8UAiwBMqo95++cs/H/oLtwq8k0LTKutL+ZfoP2Fq3brYDho9DZRGH
         pnsI3L7C2vGwC1DxYh3yiG+6ydLRmA5yuZDXj1BOexWgj2QnL7XaIkJP4p7Aouzu8z+F
         FqzVWQv7k5Ry74aRsywdzsuYhdhdyniRIDO9v/uU8i2fd/87SeYbhbV37X9/GoffARXQ
         +FEWUb9U8/BOhSMa/ZfLdZqLKgRO7OPWtW5W2E4ZLZhD5rEZCeRR4ErKUkQ7MoGt3tYk
         xEWGMWQj2YSh9+Ou0dDZ+79kJn1E0+z67WMNdlIvSeTJBoyjU7wAoI+0csUv/Nndmt8n
         cyTg==
X-Gm-Message-State: AC+VfDyEIHMmVOLgRLIIKt1yvD1mfHloyrU6VT0IOMDtD5KSk/sd8eAK
        fDK4N/eDbojzMFmwLElSLUtOyg==
X-Google-Smtp-Source: ACHHUZ5ZBnA6FSr/KFXOtZ7l1qdjefw7zYu2PpowLksoX1gS/MXlhB5JVJSSU1eKBbGLsqmncBQHlQ==
X-Received: by 2002:aa7:c54c:0:b0:514:a6bd:144a with SMTP id s12-20020aa7c54c000000b00514a6bd144amr11342029edr.11.1686815532900;
        Thu, 15 Jun 2023 00:52:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id k10-20020a056402048a00b005149e012658sm8611921edv.34.2023.06.15.00.52.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jun 2023 00:52:12 -0700 (PDT)
Message-ID: <53db7b61-cda6-6eaa-4d52-cc28b7a4e5f5@linaro.org>
Date:   Thu, 15 Jun 2023 09:52:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: eeprom: at25: add st,m95640 compatible
Content-Language: en-US
To:     Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Christian Eggers <ceggers@arri.de>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230614201056.379080-1-linux@rasmusvillemoes.dk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614201056.379080-1-linux@rasmusvillemoes.dk>
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

On 14/06/2023 22:10, Rasmus Villemoes wrote:
> The st,m95640 is a 64 Kbit SPI eeprom in the same family as the two
> existing st,m95* compatibles.
> 
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

