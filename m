Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9C7472421A
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 14:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233015AbjFFM3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 08:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232579AbjFFM3p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 08:29:45 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC44B10CA
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 05:29:42 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-977d7bdde43so463875966b.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 05:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686054581; x=1688646581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W8bjNW006lIGeXXTvLEmyObQQvWZdXaKzwPi+Kg6QFQ=;
        b=UANglB0IvH5VFytUBHWTDZr279hkDNYZk3bE/mwXdOIJ7a/USJf7JT6YT4ZlctCbJz
         V/CbT4QIfMBx0oNExmEx1Ij/xUHn56+RkvgHEiSouvLIELitNpRnb5fRv0rMNDjc1Tl9
         VAvbPCj1O0oSo0ZGenpnc5S4sJqXEJRcvB8sFoTDPCzSxoZeUCbdUtsJsDa/2bwXg7jA
         P2PQuYDoNqPZK+24zDTYSUgGI1WwS8Ve0VcxUmYlJxuMPrkj99Y2nJGjz03w/F8E24E6
         QKioE5gtAQLwV3ugVZNCGApZ5NfE5ijPrYUvWsWcW4mDYXftPpr+P8qKUyusJwJNk1V6
         GW8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686054581; x=1688646581;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W8bjNW006lIGeXXTvLEmyObQQvWZdXaKzwPi+Kg6QFQ=;
        b=I9TLhoOQwIbqNKaEFUboeUdFRlffvlqJZgBLRiC80OSMLleo9psUz56vT5rDiZELAU
         OLvJugvD1vETHaiAiKKcgk5Xs3ES8GnEiG4vhZByrh7ubSv1/HOdeDLAqcPppolg6n9Y
         5LfowdcG7YK0FslEP3Vn66XK+u7AhzADJ7jcat7BUnGAS1WcBXokxPyGQJGoh7U3Vr5A
         VOSIuPxleJZkhary6ygO5pCNH8i7EXP+fYOHfCqwukCeZe77rcd6An7Md+VMd5Fj9yaK
         c5j7uLLjyNFsm268S8Vq7NiJ/xDMT2Gu8wHBdvyrjj3lO7NhFhmXTc/2Z34zYonvsLVy
         Nofw==
X-Gm-Message-State: AC+VfDw8TZgx5sYN7IfDPTpfalzB9mV/WkEbHYrtf5FsLz36oqXHtMTs
        kEbezAz9nk1I8cV0BHaTp+LtJQ==
X-Google-Smtp-Source: ACHHUZ74gCkWdqGt68D2uqIK/FVkMqv6PEjoxCaeOaRCVaW8otYDttPJwhpDSCZcZtZGFkgL/JjU6Q==
X-Received: by 2002:a17:907:70a:b0:94e:bf3e:638 with SMTP id xb10-20020a170907070a00b0094ebf3e0638mr2152290ejb.11.1686054581099;
        Tue, 06 Jun 2023 05:29:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l4-20020a170906644400b0095707b7dd04sm5421948ejn.42.2023.06.06.05.29.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 05:29:40 -0700 (PDT)
Message-ID: <ba853327-9faf-3b2f-6e4a-e674c8b75b8f@linaro.org>
Date:   Tue, 6 Jun 2023 14:29:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: stm32: document audio of graph
 port for i2s
To:     Olivier Moysan <olivier.moysan@foss.st.com>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230606115605.1633595-1-olivier.moysan@foss.st.com>
 <20230606115605.1633595-2-olivier.moysan@foss.st.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230606115605.1633595-2-olivier.moysan@foss.st.com>
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

On 06/06/2023 13:56, Olivier Moysan wrote:
> When linking the STM32 I2S to another DAI component, according
> to audio graph cards bindings, an OF graph port property is expected
> in the node. Document the port property.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@foss.st.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

