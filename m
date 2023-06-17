Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8BB7342B2
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 19:41:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233247AbjFQRl3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 13:41:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233712AbjFQRl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 13:41:28 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9FC61BE3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:41:23 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51a3e6a952aso2316608a12.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687023682; x=1689615682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/CAboNdW3dx8jXvZtbv+H2l3pBcsQuYFbUy6d2w41cc=;
        b=VnRW8UXkUNE1ySlIJfrTGDMJTa2berZ0+q93WPkXD7FxxYcgobYRjkxrnlXVrshUS4
         RejVBzNQbDaD03BunAsBpMmYQoqJaLqq/kwDEF0ApiPlsuyYLmf6iKP86Hq5e8JGiq2m
         rNPpTMgzVUIttqY3zPBTcRG8q1Z1zRfruezXxcSLQFkBey+epxA6QhEAW0Pfv4uTKMCD
         Ocmdvw5FTgX0I6dpRHtWfOPHn9lNKTQq550OqM+8nO2LYcuILQYshBQkNV6Dnyg5PuQn
         61miEv9N1rtNkhXkS8rVPWQ/6h2uy8U3um3wHuhGwRBp5zrI8+aIuunqR6wbxK3kobkk
         uJ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687023682; x=1689615682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/CAboNdW3dx8jXvZtbv+H2l3pBcsQuYFbUy6d2w41cc=;
        b=MwIf7fSwHh6Cm06U1GL0RVdg7Yjl3k6Jeo3uMkLkQNBsnTweTFNiDUdUjdqJSCtFOT
         so7v+5M9KUYaYxfp7gBafliKaomyPZ06KcuOgZLsbszBF/xwc9wbEvhnEUj+uG0iRQo5
         FHS+QEp4P0kox7XRzhe76/qwwnLTiHPaqmYk3UJjxw+IEV6ZUlkvIHKOhlN2Rrp4NGd9
         0zYjVVZtwK735kpIJAyGtgTL98kZhKPTvalSQ+ETQXZHP3m9UKwORjqPP2s5feWk8NIY
         Ju7JaYJPJCm33naWesLclNlvQOYx5R5gA+e69uZvNkKSDzcUzjbCA/F22Y5p9B3hKilD
         pG3Q==
X-Gm-Message-State: AC+VfDx1U78Kxa0ls1I8g9s3YfOZaefz/GYVH9DLCT9oa4OK4S4dzC+6
        62N+5fyGtDM0cLgMorj0Gvdzbg==
X-Google-Smtp-Source: ACHHUZ63vRVKVxfzAewQ3T2edE3d28jYussk3eiZ8OyYRUZ9eGYDNOm8FjNQtr9S8WhQXCCluW7f2A==
X-Received: by 2002:aa7:d045:0:b0:51a:327d:f068 with SMTP id n5-20020aa7d045000000b0051a327df068mr3386702edo.40.1687023681817;
        Sat, 17 Jun 2023 10:41:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id l8-20020a056402344800b005187a42b44fsm5405999edc.58.2023.06.17.10.41.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 10:41:21 -0700 (PDT)
Message-ID: <e0e71b0c-086d-ce54-f4d3-6f594d8e5da6@linaro.org>
Date:   Sat, 17 Jun 2023 19:41:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] ARM: dts: sun7i: Add Iteaduino Plus A20
Content-Language: en-US
To:     Julian Ribbeck <julian.ribbeck@gmx.de>, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org
References: <20230617172735.1098591-1-julian.ribbeck@gmx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230617172735.1098591-1-julian.ribbeck@gmx.de>
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

On 17/06/2023 19:27, Julian Ribbeck wrote:
> Iteaduino Plus A20 is very similar to Iteaduino Plus A10. In fact it
> shares the same breakout board and the Itead Core A20 on top of it, is
> only adapted to support the dual-core A20.
> 

Thank you for your patch. There is something to discuss/improve.

> index 000000000000..8d94db5520af
> --- /dev/null
> +++ b/arch/arm/boot/dts/sun7i-a20-itead-iteaduino-plus.dts
> @@ -0,0 +1,109 @@
> +// SPDX-License-Identifier: (GPL-2.0+ or MIT)
> +
> +/dts-v1/;
> +#include "sun7i-a20.dtsi"
> +#include "sunxi-itead-core-common.dtsi"
> +#include "axp209.dtsi"
> +
> +/ {
> +	model = "Itead Iteaduino Plus A20";
> +	compatible = "itead,iteaduino-plus-a20", "allwinner,sun7i-a20";

Missing bindings.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).


Best regards,
Krzysztof

