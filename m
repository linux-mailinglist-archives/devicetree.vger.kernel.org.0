Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6055A733F3D
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 09:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229933AbjFQHi4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 03:38:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234856AbjFQHiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 03:38:55 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E0326BE
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:38:54 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9864d03e838so217424366b.2
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686987532; x=1689579532;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=67YwpV4r/TA8L/XN9KeePCcghZaMw0dJnLsptSbS9OA=;
        b=lKJ6yNHVIk4OM5Rx6O8vvglodaLiXJITSBOlbOfJGwEHv0MsBvescU2jnfSbwfLGJf
         mBJTHXlp5xoEnw5mVNnIXQgQtw0MrR3bmefZ2QmCkLNMs/xnQifwxUwUlILPvNW59b8N
         r6k7pqBCEkvBy/6olQjd3y4oWubNq9qH0rwip0cAJLUTG8zyeyHS5um3qPeVqNWjxMvf
         /+OngTaWdZZiop4aVVNc4ZAdjRDpt2UHpqna0SWIl9AFqzyJgoS56IxqsbeBKO+Wxxr4
         Lm1CgpcN977UelBv8QH8ElOBXwRl82PW7tZkH+fbxwc7jDPSPKkqX94gWBzNy+zbu/P3
         lVcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686987532; x=1689579532;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=67YwpV4r/TA8L/XN9KeePCcghZaMw0dJnLsptSbS9OA=;
        b=GSPycPobEBESRNGeRALrgeyFWoX9+aSeLtn1LnSlVxERGOpoagjOOY48l6NwFES15i
         mO8ejGtDoeCujoTt3LfCDdrDBrPx/fpsXEICRbrxi4IBRxnVOtEWCNws8ha8Fgh5pn3w
         4fdMRA+ahHRnH4/PlYqaEvlAhWb4A4vlIaMLJbGiriMQmE2ikuFxUtTv+fC5GdEuYVgo
         j04q04/oPR/bef3I/pNmM3z6M3jKq95MvTHM22NoqlgIxP/DNtvYs0f3zLzo+dE86ws9
         wh1It8Tc2pQ9qqy+29pf7qD5l+DvgMm/cm72wp5XIYNf8tsYWw1y4wPVDShaDmoxu/CU
         Fe1A==
X-Gm-Message-State: AC+VfDwI0Ddj//j1A9oiPXAStPslnW7gxNqRZBLKGGZGBx4vqg0Aqfhy
        dc9Fbp4EC3TMW2JZP7XIgbPS5w==
X-Google-Smtp-Source: ACHHUZ4a3vmkFekym1Wy32PM/lXo8GJNMTPsYYtsp2+g2VcUZnlEIFYweqBuiWG4OLclZzUT0aYqPg==
X-Received: by 2002:a17:907:728b:b0:96f:a8c2:77ad with SMTP id dt11-20020a170907728b00b0096fa8c277admr3992090ejc.63.1686987532568;
        Sat, 17 Jun 2023 00:38:52 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r16-20020a170906705000b00986fa07729csm864795ejj.94.2023.06.17.00.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 00:38:52 -0700 (PDT)
Message-ID: <fc36dd50-7d4f-6232-ad59-968f929b6b6f@linaro.org>
Date:   Sat, 17 Jun 2023 09:38:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Mitsubishi
 AA084XE01 panel
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel@lists.freedesktop.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230616163919.2805694-1-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616163919.2805694-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 18:39, Miquel Raynal wrote:
> Add Mitsubishi AA084XE01 8.4" XGA TFT LCD panel compatible string.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

