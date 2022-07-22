Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 608A457E647
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 20:10:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235853AbiGVSKo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 14:10:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234012AbiGVSKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 14:10:43 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46F723718F
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 11:10:42 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id p6so6333995ljc.8
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 11:10:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VAU6tgd7nCtwghNmO7f0d3fFyhG1h4AEauJuDoEQdi8=;
        b=wXaQaOec609oVa4eWdHw2f4aaPyceXdJIl2j6WNYR+OCc2863eVHQgVQyqZktje32H
         wPEKJOMgHGK+nT/ixbc9WhBs4EKDKsgAfZgHbHBcsxmBkOQDmdJsnZEZU6qlAKlFxRjA
         5QcpMttI072K3lZmMrpmb93zAOd+h8pn9rTVHLG19QsN0bLH56CgBGP5n/7oNWEVMwel
         96cC5DYd6kn9Op+529gzO/2py153w2NjuS4hTeFdkFP6E1WWro0yZQBKO5QziCCN8PLu
         nhDUQlqW0wqkLN3tc5jVxe64I89F7om+4F+NgpWX1QksNxTZBxUJ1rz3yuS2iIkT3Psx
         ME9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VAU6tgd7nCtwghNmO7f0d3fFyhG1h4AEauJuDoEQdi8=;
        b=BeU8wnD5mzKX6AoQKQoYBhUkImly7H8F5yb3/UYM/JEasKypRKqq9aL2KvkIwaGNry
         fzkhHvecwck3H5sRVLa7eXApOoTkqcfk3qXqxcrtZDHZB7O/wHGN+VLpmdUjzhrnXwfe
         dNVJg4lK4+qlB5mAnEN5Ou2jbLmuWNLRXQdB0RL26WcjcYI5eJa65nCJDoNm/n8uqY6x
         ctJDLgAdDYvOlfRKvGKk7KyqFKcqnfdq1MqF9N5/ku+JhfV9q5ldvpLfccUOfD+GZ8zx
         5t33mV0I1W7gSHD2TJpGTZL6KXSrhYQdL+O/u7tPsf5uSh8PeEinKlJmqaFmvkcUGkMu
         otDQ==
X-Gm-Message-State: AJIora8v11syIZf6UYVOCPoMXFgbMeut20WpdsfSgBtra2sM5mVY2Zsf
        6KrIGJqsXq4t+1Hy1LHzfuiNzQ==
X-Google-Smtp-Source: AGRyM1tib2blqsuZkhwaPPSkLkmTgx7QUcFJmRPVCx1EMFcG2dQ0dbMNuMywjaLtY/YDAYsIIwPJpA==
X-Received: by 2002:a2e:a162:0:b0:25d:9c00:2834 with SMTP id u2-20020a2ea162000000b0025d9c002834mr414805ljl.437.1658513440500;
        Fri, 22 Jul 2022 11:10:40 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id t8-20020a192d48000000b0047f8132d10bsm1168989lft.281.2022.07.22.11.10.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 11:10:40 -0700 (PDT)
Message-ID: <36b3b0f0-b4fd-c3fe-f16d-0c23778e3c35@linaro.org>
Date:   Fri, 22 Jul 2022 20:10:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: atmel-i2s: Convert to json-schema
Content-Language: en-US
To:     Ryan.Wanner@microchip.com, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        claudiu.beznea@microchip.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220722152945.2950807-1-Ryan.Wanner@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220722152945.2950807-1-Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2022 17:29, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Convert atmel i2s devicetree binding to json-schema.
> Change file name to match json-schema naming.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
> Note: running dtbs_check will fail unless updated with this patch,
> https://lore.kernel.org/linux-arm-kernel/20220707215812.193008-1-Ryan.Wanner@microchip.com/
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
