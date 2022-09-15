Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C76E05B9DEA
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 17:01:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiIOPBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 11:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbiIOPB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 11:01:29 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 190D27B78D
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:01:28 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id n23-20020a7bc5d7000000b003a62f19b453so17912043wmk.3
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+/YQUGKG79YoC7NHmR5xoM7tUa0JcBEoBM0TE1piCw0=;
        b=x7ObIcWspzpH54hkjhs8OwMGiLUcGWhOMmC0pBQFQxq3YZJYvi3YA73jiX+qH/6+OI
         JXl+M7Fo2u3nJG6fjPitWelyCyRJ3jXIGzZvVLEXokDA/EUQXCpwARal6i6RxJ97KYqo
         VKDeXw+aIS6Z2lbpU4e1sN1gsZbELUvuilkCg/W8iNXfqCAizIE6nlyfRODFXBZ6RypA
         0CfyWev+HCQb3ALaycsOzgjonb51SZHayj3nUov1w3e8Ub0I5OiYdymgHn5V1r5s2y4u
         PSsqubl72/uJRT1PsaXxcdXEnYsewWiCabI2Ank7nkkOCt8xm16/J2cfRF3Oo6BL7H5x
         dXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+/YQUGKG79YoC7NHmR5xoM7tUa0JcBEoBM0TE1piCw0=;
        b=qPM4MbKfG8tdNGN6j7SFQuqEUp0Cm+EI8dgOipZNHaFs8Mcs1EjI+Hx0lrFGmnEQrN
         eXKpX4a7Nm+m3aibh2ce4b0wdVx0rZDcnr/D64F1syXn7Hai7pKnqFvFWbIgZcchRh06
         sYoa4pmBUVzLXswk4gu2wLJSXLnzyclmlk0Ys7FZhmv62Bv+fHwX0lvSTuvVbzQjU2T8
         svNzxggwTK4TuewDMWUeWu8P7vBedW13fxZEn8SNweKcc7u8rRYw0H294LHWi9VsWjRG
         8bFSQFOu6593NOuPgKel5PZ7t89Gd52Dv+bVnGhWA8HuVmZreQjAshJZzBGPC2zgOaNE
         K34A==
X-Gm-Message-State: ACrzQf1JF209DDy4JSVsWfrxJXMKgBZqVoT1q0UYdN3LtjUrJ0532KeS
        pfb+OJCJ4MomKAAZkxhVJzH3aA==
X-Google-Smtp-Source: AMsMyM6Doquqmik2Z+CTCB4I78Qh1NPhEmbjqCZB/XV48p5OywlUQjico/uVsTBXHXmBgg/gKsQW2w==
X-Received: by 2002:a1c:7412:0:b0:3b4:7a81:e7e4 with SMTP id p18-20020a1c7412000000b003b47a81e7e4mr148115wmc.15.1663254086507;
        Thu, 15 Sep 2022 08:01:26 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.72])
        by smtp.gmail.com with ESMTPSA id r10-20020a5d694a000000b0021e51c039c5sm2825251wrw.80.2022.09.15.08.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 08:01:26 -0700 (PDT)
Message-ID: <69d4218e-5e85-098a-621a-e02b484285a8@linaro.org>
Date:   Thu, 15 Sep 2022 16:01:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
 Enterprise Edition
Content-Language: en-US
To:     Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220911040628.13774-1-cnsztl@gmail.com>
 <20220915022511.4267-1-cnsztl@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220915022511.4267-1-cnsztl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2022 03:25, Tianling Shen wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R4S
> Enterprise Edition.
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
