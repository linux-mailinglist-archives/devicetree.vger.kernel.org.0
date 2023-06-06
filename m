Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B5CA723C19
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 10:46:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237243AbjFFIqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 04:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232131AbjFFIqQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 04:46:16 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36E2CF4
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 01:46:15 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-977e7d6945aso259559366b.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jun 2023 01:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686041173; x=1688633173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zhXwQM1axbZVP2R8OTg/nTjRF7LjBSXFyA1Pe1rgXwU=;
        b=jXpQDLQejxxBFd0UfnOFHTyEnRcBuSf14kQhGyzGTpjiML3LMNEoe3EgxnCScam58x
         1JL7xSQS5fMTU/kBRVY7Vegdg8w7DyHxUS/ZboO/VYEYKaXeUJ/Hk3AvHVyMWlY+66xl
         v97q3SFJiLjCLMaTXa1lE6APNloD3Bt2rTRlyyjI3geQ04ywLZyon4/ROVhrI3pUTYdD
         8EZg33enMYWuuqQefJ4UQj8yS/mdyAHR5jGcWgzTyPXyGWs1SMm9f9oO3b3KZ8ImQlan
         K2HgcN1eNbzJVwl7I7K6iO2hPcRYcuZYdAEhq3XSs8ebCGeyXVLPe0aXG0AP0oA9sPfb
         4H1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686041173; x=1688633173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zhXwQM1axbZVP2R8OTg/nTjRF7LjBSXFyA1Pe1rgXwU=;
        b=KnEGaUKihwnuXv+bwrZx8pla2Tg6khDzaxasK0VxQRmuJlfNzXWliNyFyi41xXu64I
         Jti6ozPKwDggZosyNsbn/3lL9ypSvrXNEThDbptCVeTcLZhLZQ/aLajZbWSRT09JVsBo
         SdArt6LLf4yBQBhAySG5q9lZ1dVZ19HSZiLQOPmlEKTg7JWK0oZ/wvSBhYlbdG7QpgIF
         fDWuUJdBiN3hc48hB1UmlFd5ho4corPQohx3V2lcIe4SCM4eQo2uPVb9piyuPOV97/rv
         enwLdLQfQBOTBGGMxuLILtTq7cobjXwwDOAUaq4gsXPcfZfO6JY4aCb3MCccsEhzdhqv
         zI7g==
X-Gm-Message-State: AC+VfDxKxgZaf4aZgQkS21XVXSg/5ak7+Ru2j/QJfxsDjG8o3q/+HZya
        I5Yg6II1FXHFGZTTON82W0T0+Q==
X-Google-Smtp-Source: ACHHUZ6XPMkYalRlyNWE2pAPL43aV20Dl8/aCIgapDRm3k9iQeuNZMX/aNkFgm3+1GqDSzEW+qa8mg==
X-Received: by 2002:a17:907:9496:b0:970:19a2:7303 with SMTP id dm22-20020a170907949600b0097019a27303mr1672203ejc.19.1686041173683;
        Tue, 06 Jun 2023 01:46:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e4-20020a170906504400b0095342bfb701sm5455841ejk.16.2023.06.06.01.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jun 2023 01:46:13 -0700 (PDT)
Message-ID: <2c3fa1f1-1859-0914-b39f-05f1f4186179@linaro.org>
Date:   Tue, 6 Jun 2023 10:46:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v4 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Content-Language: en-US
To:     Rudraksha Gupta <guptarud@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20230606040529.122433-1-guptarud@gmail.com>
 <20230606040529.122433-3-guptarud@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230606040529.122433-3-guptarud@gmail.com>
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

On 06/06/2023 06:05, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> index aa97478dd016..bdeffb52340b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
> @@ -13,7 +13,9 @@ if:
>    properties:
>      compatible:
>        contains:
> -        const: qcom,usb-hs-phy-apq8064
> +        anyOf:

Look at existing bindings how this is done. This should be enum.
Best regards,
Krzysztof

