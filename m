Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42F3D6FCCBF
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 19:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbjEIR3F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 13:29:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230345AbjEIR3E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 13:29:04 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FCDA210E
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 10:29:02 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-94a34a14a54so1222194466b.1
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 10:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683653341; x=1686245341;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vAR3KfUz/YPRd9R/52roRvvUsOUK/7qszydO9adn7zM=;
        b=ncRdt+qiA2YdqwJ/GN0hrLtBy4v9F8V/mJukkFyUHc8OyDAzKbeG/McWrp98wSCdaP
         fsBYsCAWhrrj9vj/arBw/Io9fpzykQIBbIuHXWV3nKfk4Uz/KcSh8Iz9S6oytvXTst8P
         2aqHwjbAyc2gFTA3mB9FnHAqDSvm7RU9Cwvn9qLAhRkZ/WxILkDC0IjnT0V+8hncYvet
         fzn2RizcD0jcJrWY7HVvWgMsinnDljoAKmxbczApv49xBwnC7gNZy3QfaoJ6P2rkz2/i
         axrJOLafbVp1vu+wObZwpBQQSXsSTC0QcGHzwL5YVl7RNDbjphB0EE1w+vgLYsspO7v0
         AlKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683653341; x=1686245341;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vAR3KfUz/YPRd9R/52roRvvUsOUK/7qszydO9adn7zM=;
        b=h6bbGDBgBX7iOsjqA53RmHP0Wny+GxhVmTCRlwGcK6VtEfwefpLVSOvxjor4vLCVbE
         qQAaJJ/5srOwj49ePoi4EtgIt8n89u6/MTCTguZp1pkMz71RcsYc8IDXdpR33zhucsMf
         KhJA591t8sKgxPlYeWSn/K2cjcr20Z2ffTgaR9tUsPsp97wc2OOUfGrw1XZ7Fl8eJjyD
         R91n2BOFnc6eCNDvRdJovUSEBTrNXXfBiSxnQky5T4y1Ka0zjrbYNPFWfEjL5AYRikZ2
         GNaYO/B4nllI1t3BGsuCG1vap+aItAm4L8R6MzqJVNzryZaUGHP2FxVcfdUV7ELVR4W2
         PCqQ==
X-Gm-Message-State: AC+VfDyRHnHsrL9f5j1EblmncNazKAUhsi4Pu7PWMBKVsRZmbTdvw6Rr
        MF9oHq/q9CGBcuJQ9JckNZwHNA==
X-Google-Smtp-Source: ACHHUZ6TCglIbXyEl9pJ69jlh8GHotf6t76RixRTimTjIKbeE0BlQ6923pq1jk0unOLSKE1FTUTmvw==
X-Received: by 2002:a17:907:9410:b0:966:217c:b383 with SMTP id dk16-20020a170907941000b00966217cb383mr10268238ejc.75.1683653340758;
        Tue, 09 May 2023 10:29:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id jx6-20020a170907760600b00958434d4ecesm1614396ejc.13.2023.05.09.10.28.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 10:29:00 -0700 (PDT)
Message-ID: <e1d3b716-74ed-a2ae-a05c-7459eafd15ac@linaro.org>
Date:   Tue, 9 May 2023 19:28:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add Emtop
Content-Language: en-US
To:     Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>,
        marex@denx.de
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jagan Teki <jagan@edgeble.ai>,
        Chris Morgan <macromorgan@hotmail.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230509112031.3301766-1-himanshu.bhavani@siliconsignals.io>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230509112031.3301766-1-himanshu.bhavani@siliconsignals.io>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/05/2023 13:20, Himanshu Bhavani wrote:
> Add an entry for Emtop to vendor-prefixes.yaml
> 
> Signed-off-by: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

