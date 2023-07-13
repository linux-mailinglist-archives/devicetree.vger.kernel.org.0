Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39370751E8D
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 12:12:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233390AbjGMKMy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 06:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbjGMKMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 06:12:53 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F02218E
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 03:12:52 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fbc12181b6so4692645e9.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 03:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689243171; x=1691835171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kYyViDr4RsL7lZ2DDpCJ0dguzrcDcD4Ap3cfrYQ3a+U=;
        b=bxRBTkLJ7bAYtN2DWh9OzVLqa2g5xAh9ruzxNK7oUFtau/kOaCJ6scbme1yqNAAO2q
         u0zVEYfP/R0jCC3rrnp+/0wqnPsMBdiZDWgr734jXrXhMkc4fAj4rh6hE5hpmLLEM+qc
         oTIWKlfheXCmP01A1DIHW8wZV7/eLxxDi1D6yigCPm6c+6wsEQUNgVZEwwlE/kmTIt5L
         YtBNuzeNKX7FiK21w6/3ZMyRjv3jPrSDzdj3VLOPEO0ItIdF4v3omXDjRvy26v04Dprs
         zO6FCGu4fjLD2nEE24tNUXV4rxhtKDe7ZEHq/nBbzuwOq+865/1QP+Vf4kPo+rRsXq04
         Px0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689243171; x=1691835171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kYyViDr4RsL7lZ2DDpCJ0dguzrcDcD4Ap3cfrYQ3a+U=;
        b=OXzLX/C4exDDNFYD3xdI+h+9gWuJyqZVoTa2ekylt8grblv+l4LeCwGSXjHSU3emXw
         c5JnOrHYQFihHZ8Z/GMpsPSYo1eIpIaZ+RclQHEu5HhUVqEXEMXI20gOUU2sy3Pk6+OQ
         6UDIiHeMb7kp/dk5md77FL4wBr+MTJiAmI5XhFgSd7NT5NdG5goMUm2RWR99NapbpHJ9
         7xTIrQkUPwIohV9txAKx/SBM6zVYYqxcZJb5vrpJzqKg05yfJ6Gmkwgqd/Hl7pQyOu/v
         8Xg8vWLRxrWAuAcp6R3a5xalujQOb1tNjih4FKatYs6lOtppNTsqep51tddAHcmHGHrP
         Pqvg==
X-Gm-Message-State: ABy/qLYs1oeEMqfwVunsgXmtNDlvNjfhikn9egHsIrKh91dP1aoAxhZW
        XQEfZDgQE5K2O8OZ2Pb/ckI0Fe2EP6fHUSN+YoyQHQ==
X-Google-Smtp-Source: APBJJlFbF3QHoEHYbwb9SpS88zZAyk8pQkFHYbal4mk2kHc7TVb7vTq9ytYXL3ZVFD3psiaETfag6w==
X-Received: by 2002:a5d:60c6:0:b0:315:9de4:92f0 with SMTP id x6-20020a5d60c6000000b003159de492f0mr1158373wrt.5.1689243171063;
        Thu, 13 Jul 2023 03:12:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id f10-20020adff98a000000b003159d2dabbasm7470929wrr.94.2023.07.13.03.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 03:12:50 -0700 (PDT)
Message-ID: <3365c703-5e5c-de7e-3ce3-047c9ac560ee@linaro.org>
Date:   Thu, 13 Jul 2023 12:12:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/3] dt-bindings: spi: add reference file to YAML
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Linus Walleij <linus.walleij@linaro.org>
References: <20230713090015.127541-1-william.qiu@starfivetech.com>
 <20230713090015.127541-2-william.qiu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230713090015.127541-2-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 11:00, William Qiu wrote:
> Add primecell.yaml as a refereence file to YAML.

This we see from the diff, but why you are doing it? Please provide
rationale and answer to "why" in your commits.

Also typo: reference.

> 
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---
>  Documentation/devicetree/bindings/spi/spi-pl022.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-pl022.yaml b/Documentation/devicetree/bindings/spi/spi-pl022.yaml
> index 91e540a92faf..5e5a704a766e 100644
> --- a/Documentation/devicetree/bindings/spi/spi-pl022.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-pl022.yaml
> @@ -11,6 +11,7 @@ maintainers:
>  
>  allOf:
>    - $ref: spi-controller.yaml#
> +  - $ref: /schemas/arm/primecell.yaml#
>  
>  # We need a select here so we don't match all nodes with 'arm,primecell'
>  select:

Best regards,
Krzysztof

