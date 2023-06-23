Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E49173B2F2
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 10:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231831AbjFWIvt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 04:51:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231871AbjFWIvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 04:51:48 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB9AD2134
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 01:51:45 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51bec86b9c9so357157a12.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 01:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687510304; x=1690102304;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zKPx96b2HZf8v4/X7YdtJWbMwp53QOhswyd3lmkmMOc=;
        b=J8QWPFI/vzn/TVspSQXNG3xeXjiV9Lmfa7RJqKvCru8It60AItpxgDQfHHA1SpFEuR
         HTVjgaMKUANmhntyw0uFMpLM0Iv47gNxMtcFKXzGftMN7UxsvWkdWY9Pj/b67PHTALmV
         gDPNBTWnj80olZpfDDQ6cZE2YIieIp1q8o0kk4pi3YDMehlgOiK2xCDjjTUDELgbejuF
         +ArhdGBpQVo5AElVHXWxA3xJS93MAE+oAMXnJcZw8Ez9tr0mVv6LsGCXchAMf4jAfH3u
         1h6QDW9WZP6JbrQFLzGU4LcvvwNMe0LRVnXh0fUFldHuVvjQiE8bweDvxbScv1nX0lhw
         NRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687510304; x=1690102304;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zKPx96b2HZf8v4/X7YdtJWbMwp53QOhswyd3lmkmMOc=;
        b=Odp9oZrQ3vYScUic2P0fKLa5H+r6tUUgA0kPx6fag6mkQw0Vyr3e2xvSdtog0+AyzX
         kXqg2Ly1ITamsTUiZ2bWJGPj7hIbsIgkc9Xphcqxpw/Y1hS2C21YfeVU6qlURx0J/6US
         9B9LwzLOqRUhPX0DK6AhehpGcZMlqO/f47czNbUp7S1gt6Xxg1Tz5kE9vfPOSvPT0/wP
         8Rvurhn2+t9Co5za/vSJUVqduhyp6ikPc+A1hHVYsFiqnIC0RMS1LbuhmCtPW5UH2d3t
         bDqcqZ/ieSlXYtYrvkh9GHlFBSOeLA8w/OdtpGYqxc6rFcfPFkJLdtr8jrRPJbYIBgnx
         6ooQ==
X-Gm-Message-State: AC+VfDw8yhkGyZukLbgJJHWJMkHSsl4ypgv/yo6L4xBwLVJIOpUN94pv
        BKUCDUnXJ93kv1lgfZMed/b2OQ==
X-Google-Smtp-Source: ACHHUZ4uT69UHrkrbEuBvO117wkeSQNiX5LmpwsS9GS3Skq8ALjvAC8d3Ly5sriXb6rbxZpG8THuQQ==
X-Received: by 2002:aa7:cb0c:0:b0:514:8fdd:fc41 with SMTP id s12-20020aa7cb0c000000b005148fddfc41mr13121292edt.15.1687510304159;
        Fri, 23 Jun 2023 01:51:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r24-20020a056402019800b0051bed090703sm1405740edv.12.2023.06.23.01.51.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jun 2023 01:51:43 -0700 (PDT)
Message-ID: <a885b97e-aaf0-cb72-f25b-71054d6d3fe2@linaro.org>
Date:   Fri, 23 Jun 2023 10:51:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5 2/4] dt-bindings: serial: amlogic,meson-uart: Add
 compatible string for T7
Content-Language: en-US
To:     Lucas Tanure <tanure@linux.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Nick <nick@khadas.com>, Artem <art@khadas.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20230623081242.109131-1-tanure@linux.com>
 <20230623081242.109131-3-tanure@linux.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230623081242.109131-3-tanure@linux.com>
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

On 23/06/2023 10:12, Lucas Tanure wrote:
> Amlogic T7 SoCs uses the same UART controller as S4 SoCs and G12A.
> There is no need for an extra compatible line in the driver, but
> add T7 compatible line for documentation.
> 
> Signed-off-by: Lucas Tanure <tanure@linux.com>
> ---
>  .../devicetree/bindings/serial/amlogic,meson-uart.yaml        | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
> index 01ec45b3b406..ad970c9ed1c7 100644
> --- a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
> @@ -50,6 +50,10 @@ properties:
>          items:
>            - const: amlogic,meson-g12a-uart
>            - const: amlogic,meson-gx-uart
> +      - description: UART controller on T7 compatible SoCs

Your description is rather incorrect. This is UART on SoCs compatible
with S4, not with T7. Otherwise what do you expect to grow later when
adding more compatible devices? Just drop the description, it's kind of
obvious when done correctly (but can be misleading if done wrong).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

