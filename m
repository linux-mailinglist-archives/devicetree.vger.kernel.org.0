Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87EED656940
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 10:56:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229621AbiL0J4y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 04:56:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbiL0J42 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 04:56:28 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A4BAB49B
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 01:55:18 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id g13so18935173lfv.7
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 01:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IPELBybm3OZnPzS1qLb2eKjz0NHNGczcyBgATwq2AJ8=;
        b=a3UtnFcbLnbcl0VpqfiGS+3wdLVd8cVaF6vWs6Z73JN9u8GKOcwuHvZ7PeFo2Fz8Gb
         Dg33aK8GsX9rXOk5JHLN+UFwwLtUGge2vDJcLxDgKQBj0UlrAwxvRdTyIlqjOBxb6uL2
         3r8wy+ifXw9wMu+5ohSWs57+ivuQsve9TeeIsGrOCr3I2UKbfLcVTzYjnN3o5GN79Z8V
         4aixJ758qbUSfUaK04lAaM+3z/IdBQ94CY7xifFwzdw5ESD37q6+CFXOjjzRg1KEvOb9
         bx3izGa6470MaOEzPMLBZD6oRxIvl+pgygrs7v2swp3COdc38cNfCwdd7rXSjYmxbKqi
         A25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IPELBybm3OZnPzS1qLb2eKjz0NHNGczcyBgATwq2AJ8=;
        b=7T64R9zm+iof6dakKwZW+0ry3BJGYwhn/kXxlt637tUwQIWj5AC+PKif9mRZ2fZN3e
         dWKhvXZ05UAqTHLvAoYRaSAMarvXPQrZCXd08pfsk7wIaNLZnPIUFSx4XO8kdO/4isSl
         oqhb3EozDOWuZQrAAGOMN0FAVnZ8QK0putizbI9NZGyM0SBcwr/S99zJlmXJ/iiI4qQS
         vsW0nA8CZftNDu3RxGFEkf/7TgrLghArNFUSb8Db+LUhWE5f6lajVEig3yoUNwlP2nbj
         ckgOUmuVORaUJDU4oQF2fhGt9AFcx3J8hw4S1p85jwDNBDTkPWGRGIswpgT3X+0O92/6
         Wbcg==
X-Gm-Message-State: AFqh2krMBtU05jUiIW673HGdrscJNWdxauJKoEKLz9mn2gpkJrSdlJGA
        auEbTTwbTzzSwehIdVSpCKqi3g==
X-Google-Smtp-Source: AMrXdXtltf4vB2TNQasjCgOUGdVW5TjMPZt530L9JnGeaOu3jfGKIVxewdonxiUQ0BeVA82qYm+DzA==
X-Received: by 2002:a19:f514:0:b0:4b5:61e8:8934 with SMTP id j20-20020a19f514000000b004b561e88934mr5295350lfb.64.1672134916572;
        Tue, 27 Dec 2022 01:55:16 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o17-20020a05651205d100b00498f77cfa63sm2211382lfo.280.2022.12.27.01.55.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 01:55:16 -0800 (PST)
Message-ID: <1cc66b84-fcf3-2801-57ad-94430fa38055@linaro.org>
Date:   Tue, 27 Dec 2022 10:55:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v10 3/7] dt-bindings: arm: nuvoton: Add bindings for NPCM
 GFXI
Content-Language: en-US
To:     Marvin Lin <milkfafa@gmail.com>, mchehab@kernel.org,
        hverkuil-cisco@xs4all.nl, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrzej.p@collabora.com
Cc:     devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
        kwliu@nuvoton.com, kflin@nuvoton.com
References: <20221227095123.2447948-1-milkfafa@gmail.com>
 <20221227095123.2447948-4-milkfafa@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227095123.2447948-4-milkfafa@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/12/2022 10:51, Marvin Lin wrote:
> Add dt-bindings document for Graphics Core Information (GFXI) node. It
> is used by NPCM video driver to retrieve Graphics core information.
> 
> Signed-off-by: Marvin Lin <milkfafa@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

The comment about subject from v8 applies here as well. Once you receive
a comment apply it everywhere, fix all the issues, not only one.


Best regards,
Krzysztof

