Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86F18733F52
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 09:54:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346217AbjFQHyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 03:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231929AbjFQHy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 03:54:29 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 487942720
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:54:28 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-978863fb00fso231757766b.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 00:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686988467; x=1689580467;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1a2NLdlqDkuoOaRV6zLf1eeeGbnu0E9wrw5eqdmSuIk=;
        b=YNBGzaLcZT4x3XYAUmgL04+Ls0IyGXBihnzAjn6/XjhnDguQo4OVshOs3+H2Sy8UA9
         IDXi9+cCfvZhn1xr2pwo75RItG3gyyXWBYeZ3BBpze5J0MbdCqc0M5/k0yC0x1elOKoB
         mXM2BjxtPF/MuE997PrF7IsxzYLSYjbFb2cS9uOAbrp81okGhD3WnPQZJcNhrGBGooUk
         mplGCWdv/HDqbhTxwrEFoIr6k62VK5H3+0qSjx6qqmudjX5XZBGzSAwSIOH+dYU4sthN
         HXvZeSzNPuRkFd5uZgCMpmRT3GrnWqOPFknGFvK8C8uOSmTeCuiKnVw7KcBwJUNoc+aF
         BgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686988467; x=1689580467;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1a2NLdlqDkuoOaRV6zLf1eeeGbnu0E9wrw5eqdmSuIk=;
        b=gt2O9TZZGakMh+VUaD4E0sjVTEywDw8ywK/c0CcAOcnaHDmijOsjZwbR5SvPrGBfpO
         J6FtGTEFZ+hj0BssbidGy1id+aZPFTzfHFIBNNh3Mu4bYPR55eP7wSQSx0F2XosOmrWW
         VeOq6qe5ATuJsbF9l+E4Cte4l4zRxkwKofGIuh1DMdtj92/SN1wEOL0cOj/aiPYHTLhB
         hArMKB0c62+xV5ps1TAQ1/TSlsnOs/uKdOTo/H7JJSY2eAww9LKb52xTCmnz80wigiWT
         03IlSCDPkS4dBVKxSRzc4sJvKikGLo/khE8ome6Ho8F+mGGXyTkuMCFTMZkHpnFpqv9V
         256Q==
X-Gm-Message-State: AC+VfDwap2nnnzhu3ZyCksyGLQSpgfb4q/cVzpwYelTFTUQ2OnXGsciV
        v4O9nvooXG+GzU492+UB0bBw8w==
X-Google-Smtp-Source: ACHHUZ4Lkg/BJcbaRPN6LTKZ/mQ4kHOChdTK9Bnn+7FhqfhATyMF72kKfvoR3yWqjJw8tD3xJfjQxA==
X-Received: by 2002:a17:906:9b91:b0:982:227e:1a16 with SMTP id dd17-20020a1709069b9100b00982227e1a16mr4425627ejc.13.1686988466822;
        Sat, 17 Jun 2023 00:54:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b6-20020a1709065e4600b00985ed2f1584sm1915268eju.187.2023.06.17.00.54.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 00:54:26 -0700 (PDT)
Message-ID: <220815bc-3c45-ebe9-277f-0c81d27c9832@linaro.org>
Date:   Sat, 17 Jun 2023 09:54:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: mtd: spi-nor: clarify the need for spi-nor
 compatibles
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>, linux-mtd@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616140054.2788684-1-miquel.raynal@bootlin.com>
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

On 16/06/2023 16:00, Miquel Raynal wrote:
> Most SPI NOR devices do not require a specific compatible, their ID can
> in general be discovered with the JEDEC READ ID opcode. In this case,
> only the "jedec,spi-nor" generic compatible is expected. Clarify this
> information in the compatible description to (i) help device-tree
> writers and (ii) prevent further attempts to extend this list with
> useless information.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

