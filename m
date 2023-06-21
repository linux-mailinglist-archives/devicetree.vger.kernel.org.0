Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9302573816A
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 13:11:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231944AbjFUKMU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 06:12:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232148AbjFUKLw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 06:11:52 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DA4D1BE3
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 03:11:15 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-51a324beca6so7579286a12.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 03:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687342274; x=1689934274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JtjhjLVfg04akTkdiibA+NwINqQwIqQCJGUJibyu5wQ=;
        b=dpYS+MO/S9ZRkfjV5PqgIWfu1tcbDUpYNGHMHMvbjfrYG36Mnidl0+WvqsW7Pd8mvD
         rKEmN0UW3yYAe1r/LhNnZRhh4gioL2mxqvTIM4Gab8x5U+Pc6AgYz3xSEAFbUKY9unC2
         K139Ix+LXUNdUsOodmMD16t+qIGRIoyfd86/JKUpVM/khOuflbp4JQUDThhGkWE6/7lE
         3bRpISJy9Z0rn4bEGH8Qs/fxVH9WO8OKd1eMO5pgUM+eYbESiZv/0o2IQSGd1G99NzVW
         afZrWvC/hKUGkRzc225CxQi3HYp/UCoJh8K8C+NKxSF8UBNpxQaoTBewQ9NL/MHoXgcr
         X4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687342274; x=1689934274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JtjhjLVfg04akTkdiibA+NwINqQwIqQCJGUJibyu5wQ=;
        b=Bhfc/gn5vSJBs6V5B0rcX0D4w3yGhSXHywhzrkz4Fc/dUEk8PzX5cbYPqgVW39oJOb
         3QPhY7ZYOvcsTN16VUZl6h06p9j5YrsxhDf5fNsSg7pKtexVbAP6W1QiBN6w6WzJklka
         slXL2KDVTOXH+xDrocr8P48m5v73fgcg8Zzyvr03os5VfcPblB5agXxZRLX6ZCql5XGN
         pdRKIzyH5/v2A+MT1j+3IN7MNSxmTRX9XzgPWXjKPyewhN9nyYvta2HAGEcxQkSH98q7
         FLlfmPDa2hhVQIf3zIPhXxaT64rA7OUhhAsKaY+uc0/Ky9lP5oCq5ZC/a1nA1tzC8wql
         JChw==
X-Gm-Message-State: AC+VfDypDz0A2da7tkjV1KFIQ7Ef/RXJE1lT8fFzDe8JCrvpyd8UhT1G
        fKVgUDR+AbM5kKKAlRKhzkNiRg==
X-Google-Smtp-Source: ACHHUZ5pfTVfBtS3MJwsD21zgHNuKFo/GdCgwG7gdMfOGPIee1trYy/f90DoOnO8Q+ogpECi9dZbJA==
X-Received: by 2002:a17:907:969f:b0:947:335f:5a0d with SMTP id hd31-20020a170907969f00b00947335f5a0dmr13607379ejc.62.1687342273999;
        Wed, 21 Jun 2023 03:11:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id s9-20020a1709062ec900b009787062d21csm2898560eji.77.2023.06.21.03.11.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 03:11:13 -0700 (PDT)
Message-ID: <80cd8bb9-54ad-4c5c-f3ce-c8655cd2ff74@linaro.org>
Date:   Wed, 21 Jun 2023 12:11:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: clock: ast2600: Add I3C and MAC reset
 definitions
Content-Language: en-US
To:     Dylan Hung <dylan_hung@aspeedtech.com>, mturquette@baylibre.com,
        sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     BMC-SW@aspeedtech.com
References: <20230621094545.707-1-dylan_hung@aspeedtech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230621094545.707-1-dylan_hung@aspeedtech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2023 11:45, Dylan Hung wrote:
> Add reset definitions of AST2600 I3C and MAC controllers.
> 
> Signed-off-by: Dylan Hung <dylan_hung@aspeedtech.com>
> ---
>  include/dt-bindings/clock/ast2600-clock.h | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/clock/ast2600-clock.h b/include/dt-bindings/clock/ast2600-clock.h
> index e149eee61588..07377589f8f4 100644
> --- a/include/dt-bindings/clock/ast2600-clock.h
> +++ b/include/dt-bindings/clock/ast2600-clock.h
> @@ -90,7 +90,18 @@
>  /* Only list resets here that are not part of a clock gate + reset pair */
>  #define ASPEED_RESET_ADC		55
>  #define ASPEED_RESET_JTAG_MASTER2	54
> -#define ASPEED_RESET_I3C_DMA		39

This will break all the users.

Best regards,
Krzysztof

