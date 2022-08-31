Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89A5B5A7775
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 09:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbiHaH2H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 03:28:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229870AbiHaH2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 03:28:06 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3648BC115
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 00:28:04 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id w19so10724054ljj.7
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 00:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=pYwEOgwaYMT98tn2nr33wP6bbdbqqCViXlWQh9NQEr0=;
        b=zwU71mRNWXQnWAAoCjogZ06eKchpGl+s7YA5LSqELEprQiTZuLWlJnd8vs5+tCk/gR
         OE2xwg8nkh5lA9DMHaGyaKnsxo1/uZEZ5GYgYave4d6hKKqRBzR7Y1FjW9VGPoalfBqs
         okjo5ZJ5/7vQCqgFvv5zK7Sbn4QGKJxyv5oio6YLBO9AfDon8r2rBY+Mhwov+ZfkUpcF
         KFSIDmhAMoAGO9r0C4lQGiFchFiaPcjuPAwqaU8IL7oJmc6vEX09Y1ybQIwne9SFw7bQ
         j/OEV5uawBFi7o2Z3pAeOSlf98R7IUBk2WWHx7q48MUCplXqECjV4AViU2BuK7sAdoCD
         5kcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=pYwEOgwaYMT98tn2nr33wP6bbdbqqCViXlWQh9NQEr0=;
        b=3R4eYDQI6oowIGZCafhUmyTlYbyMA6Snp3TTy4c34xGvAWnVD6/LmovSTIbW1BtLwL
         7vBdY/U/vefMZCjDcTd+9OEyrX9W+Imu9Fgf9ipKJssYFrelOGNrOyk9I02D34xT7rtQ
         EU3pncC8J8vP1YH4D0aunoqRnzavG3r257+q1wwms5tS8za4g7FT1ZZqM0aFQhjbOmXw
         dAUYAe2ZYr+X2wImGssNeOzFVzV2oL3qk5H46gzXUIiUxhz/ouYps9oeEcR1XKAVPHNN
         3JzSDEWptZajgAk/ccmJnSRY8mb9bFKgpF8ydGNPFE6X2I3SQSu3b3JUq7yOr/LrffdK
         DI7g==
X-Gm-Message-State: ACgBeo3Fkn8vn+/6pUE8doKm9St6PsYcwvuv95kWUp1YBuxYn4ls+uRO
        TpzPqtNIwyqPiXaTNkAeZx3Y8A==
X-Google-Smtp-Source: AA6agR7tIIro6e11nVm4WGeP5XJv3DEofe105hSZOR4Em6NcKkBcj61qi1fQxSM/AZIMib2v1R5QYg==
X-Received: by 2002:a2e:9ec8:0:b0:265:ef3:b74b with SMTP id h8-20020a2e9ec8000000b002650ef3b74bmr4315545ljk.297.1661930883306;
        Wed, 31 Aug 2022 00:28:03 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id e15-20020a05651c038f00b00264bb2351e8sm593593ljp.7.2022.08.31.00.28.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 00:28:02 -0700 (PDT)
Message-ID: <393933f5-9a87-4d12-2527-5adfa4aeccca@linaro.org>
Date:   Wed, 31 Aug 2022 10:28:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 1/2] dt-bindings: lan9662-otpc: document Lan9662 OTPC
Content-Language: en-US
To:     Horatiu Vultur <horatiu.vultur@microchip.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, UNGLinuxDriver@microchip.com
References: <20220831064238.102267-1-horatiu.vultur@microchip.com>
 <20220831064238.102267-2-horatiu.vultur@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831064238.102267-2-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 09:42, Horatiu Vultur wrote:
> Document Lan9662 OTP controller.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  .../nvmem/microchip,lan9662-otpc.yaml         | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
> new file mode 100644
> index 000000000000..def20733cf60
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/microchip,lan9662-otpc.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/microchip,lan9662-otpc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip LAN9662 OTP Controller (OTPC)
> +
> +maintainers:
> +  - Horatiu Vultur <horatiu.vultur@microchip.com>
> +
> +description: |
> +  OTP controller drives a NVMEM memory where system specific data
> +  (e.g. hardware configuration settings, chip identifiers) or
> +  user specific data could be stored.
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: microchip,lan9662-otpc
> +          - const: microchip,lan9668-otpc
> +      - enum:
> +          - microchip,lan9662-otpc

This is not what I wrote and this does not make sense. You now listed
twice 9662 and 9668 does not have its entry.

Best regards,
Krzysztof
