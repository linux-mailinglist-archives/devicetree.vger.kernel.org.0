Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 017F972AD58
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 18:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbjFJQge (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 12:36:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbjFJQgd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 12:36:33 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA98F3588
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:36:31 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-97467e06511so465108566b.2
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686414990; x=1689006990;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gVqKXkm6UdMGsr/6uJkX7hXU3csy2qVKj/NiyJxtouY=;
        b=S5WU3P2PFFG/PK52QOhky/XHmE2v8HGo0CW2WjT4vIbsKfo/3Q0bKCpj9s65H0fdjE
         smBhkenTRREoM8gnVO+Ze5jdlqkuK09zrBwpqbXnwGkWhfJ/cXgklgpjzM5475k+m6Jr
         LvXdQA0qUJU63uq6u4OJ0Zvvcw1RVMpgJtdPYZ+URLKPdx6frwtFW2RneOeIKucDR+dB
         VMQToKkemm0RIKU82m6dI0hWlnByWIY3DmWfKlBKNEhl8/PWlhR+A+zuninQSu6nlrzz
         eMVjn20zUrnRm2e28/F6QIBWiStgT43xdTiaIe8LikTz+Ok8g0aD+ouOT2CM5G/CYntd
         1aWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686414990; x=1689006990;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gVqKXkm6UdMGsr/6uJkX7hXU3csy2qVKj/NiyJxtouY=;
        b=O5Mr8YVksqxH/LrTGrfnWMqGcmoFVL/jW9IJ5LWvjIuAOa0fDB5R4PDNf0C7l1IWEL
         wtLR51wJuu4cT7ZIiEwLuGtjnJqmKsU1RaxdncGYVgM18UvXpFmgju8kAdOFYqRBMsmT
         xZbTCSkg08nmN5A2dJ+Wg40UCNJ52AYd2qxIPjEaRSCBhDMyj2ZKYqliyr2b5fzaA24a
         kRb7yEaTo48OoRWjBlxPiXCf1E4/ygfgSNpdCOxiNHS15fA9n3Kd+UiuOHLsVtYpl5xJ
         gRJhCpx0eJq+L7YdM1gSZzxyFCDOKflb6yOHhk/HPE+NdJmvx73XP58tFCPiXcrzujfg
         //Eg==
X-Gm-Message-State: AC+VfDyhjcJ+lsbi80He0rfwm2DT7RXzeFeHx2NJAdDRdVipqkKVqXJb
        apIAU+FjAqnphCVbt8j3izeirQ==
X-Google-Smtp-Source: ACHHUZ7rlmuBqlJj6WbXv6buDuz/3vJ0zdznNuYHO4cJUBpVia5GC0LBzZVFoWuASDWymHJO69fXcA==
X-Received: by 2002:a17:907:7fa3:b0:977:cdd6:6a5c with SMTP id qk35-20020a1709077fa300b00977cdd66a5cmr5792269ejc.10.1686414990197;
        Sat, 10 Jun 2023 09:36:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id a17-20020a170906685100b00965ac1510f8sm2753800ejs.185.2023.06.10.09.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:36:29 -0700 (PDT)
Message-ID: <a1fd28d8-684e-da6e-02f6-75424687889c@linaro.org>
Date:   Sat, 10 Jun 2023 18:36:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add Gateworks i.MX8M Mini gw71xx-2x
 board
Content-Language: en-US
To:     Tim Harvey <tharvey@gateworks.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230607170724.2016988-1-tharvey@gateworks.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607170724.2016988-1-tharvey@gateworks.com>
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

On 07/06/2023 19:07, Tim Harvey wrote:
> Add DT compatible string for a Gateworks GW71xx-2x board based on
> the i.MX8M Mini SoC from NXP.
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

