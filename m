Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC18D701D48
	for <lists+devicetree@lfdr.de>; Sun, 14 May 2023 14:29:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231776AbjENM3a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 May 2023 08:29:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230009AbjENM33 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 May 2023 08:29:29 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 397DD10DB
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 05:29:28 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-50bd2d7ba74so103249105a12.1
        for <devicetree@vger.kernel.org>; Sun, 14 May 2023 05:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684067367; x=1686659367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ArPtIJuVSpHEWwLn92TXk9woMkM3EW+VzLEi/vFr524=;
        b=S/kTiPFxAcro3pd2LeYSuXVNjtSAQ+tcJAwBTwBhfR2TDep/tIB9iOPGqSz45hKJdN
         tHAkQBb5G4MSDtqYIUYIorm+jrW8p6yov+tcUSKtpclbGyxdCEr1AWXCaWgNBBIFF4r3
         R5twIEtIWXXgQYM/4kwdIqdTbOrDUbiffyTKaR4r7CvidjQTKxbq3EpLcVGCuALLBhnu
         GUsMGKMyJDihULtL1goX1c37HIjy9X8JQMfvcWKRAULKHhJ9A7xqne8F3rxC5SpmdRO9
         LanHknxPtb5IfUqZm69kciw0Fg5UP4E+Gxac2n/4sGQ4RlNIK2ji76gYB65Af6d9vbwE
         4Hig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684067367; x=1686659367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ArPtIJuVSpHEWwLn92TXk9woMkM3EW+VzLEi/vFr524=;
        b=PmOsV1miEGDNtC3bNFY3JyXcWRDO3Sf9jTUverESukEpl6R1KScH4WIfAa4J2wpzDS
         uV6cIHCT4KgdbAOdopA9+M0EfMXC638v7twP1Oc8w058fYzOzYDNTn0iRjRRbsx5O4l0
         G9fOGNsXnqi3062ab/P3v1zuvvxUraXG5bjx0t8Wnr7BOULC8B+7MwPtKU5cMQBN/HyC
         J1v8DlKt5U9LWhT4P7ye/z2TpKcRoaPQ3gOk/QBXxUwa5ZKZVoj17LgKmzLEmBepIDvS
         mewx35+HCCUQzdV8u1rBfz3+rJz7tCcw5MZATjfqOAj77xKp3547AEsfovjifRwwN+BN
         4vMA==
X-Gm-Message-State: AC+VfDzcyt305i5GLOEqmnbuECICTtgR1hxbgaLoT8QjmQZFpIxiudOz
        5PFDmP1Zf3zFB+Ack684KdUyGlzqbYNOuVs9ukdGXQ==
X-Google-Smtp-Source: ACHHUZ6APBK8weoIXl7BwELg8P/pCZohgm3GayyKL2i1zQLIS6SWmmey3j4vbhvbdV5o0ce/gRIP9A==
X-Received: by 2002:a17:907:701:b0:94f:236b:9e3a with SMTP id xb1-20020a170907070100b0094f236b9e3amr24151004ejb.3.1684067366686;
        Sun, 14 May 2023 05:29:26 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:715f:ddce:f2ba:123b? ([2a02:810d:15c0:828:715f:ddce:f2ba:123b])
        by smtp.gmail.com with ESMTPSA id p25-20020a1709065dd900b0094f1d0bad81sm8109373ejv.139.2023.05.14.05.29.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 May 2023 05:29:26 -0700 (PDT)
Message-ID: <a6e549e3-a898-c7b2-1c72-4c6fa2866388@linaro.org>
Date:   Sun, 14 May 2023 14:29:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 1/2] dt-bindings: samsung,mipi-dsim: Add
 'lane-polarities'
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     marex@denx.de, dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        jagan@amarulasolutions.com, Fabio Estevam <festevam@denx.de>
References: <20230514114625.98372-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230514114625.98372-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/05/2023 13:46, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The Samsung DSIM IP block allows the inversion of the clock and
> data lanes.
> 
> Add an optional property called 'lane-polarities' that describes the
> polarities of the MIPI DSI clock and data lanes.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

