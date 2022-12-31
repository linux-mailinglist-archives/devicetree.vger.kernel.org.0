Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1D5165A637
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 20:06:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232261AbiLaTGT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 14:06:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232374AbiLaTGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 14:06:11 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E92328B
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 11:06:11 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id b3so36236954lfv.2
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 11:06:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/NfbFQvWMrg19C59QAiBdh289D1/4YcCn92kh7icEkU=;
        b=tGBH/FgFFrNA8or+SERewmHOA01oohuGeeYqs4oLy5LJ4tQPrcukFluDGrmBKNwR+y
         wlXi1WF/fNdb3yaoq6w3WdKlPmslt5WDbNDVkiemJVt9C35CuzxEQ8hxwySU45K9M/u1
         5zjB0jghIdm1naf6Ax8YjYXnZEdzM4NzqzQKk5ZxGdVcQOlB7KcJzf4JKKD2UeOPQLYR
         8QQdmUc1QKtyG5qHm4m+Cyr9DSHvv6fe70k6eHSA1LQARzQLPzSGSqVEkfZ5DpiT5n9g
         T1lGLtbIS2QN150DSZBHn/jkLcYQ1rICdBLxHVdfIcHskiVceNntvulCChhPPHHeL6k+
         diqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/NfbFQvWMrg19C59QAiBdh289D1/4YcCn92kh7icEkU=;
        b=o3fwZ1mDXki1HnGSvUi21MhnAxSpjFNgTo91jiuMrAn/V/2Vpxr/pVKHvC6j9bVRik
         +uEoRf4Ds8qjS8EuZoRNQlz6An1RTgWnAMk696+Fc2QO69hg4p8booW7VL0d0AQjx4nO
         Gu/9q0GWe9o5O4X+3IADHZa2BDNG7gEnSOdZpvgN4Iv/ZnHEQ1DNH7cYgY/xEwReUQlW
         DFY+xHxhKU2anRt4giBsQ2BR16XXt4Gzh20MYa7nmD34iIISvwoQKOa7Z2+rPiX+COV9
         YuY0uY5xHkRGkpdceahjpcd40ArltnYx2py1VeBb+4spkWABCK9ggaISf28IgJCbVQMQ
         vxng==
X-Gm-Message-State: AFqh2kqy5U/ZZtUZhUw8Z2UEVd00UK+KpiFj6gh6SrSnxatGkgwaoPXe
        EmMXCjSvXCIQ1k0lF480BF9JHA==
X-Google-Smtp-Source: AMrXdXtZojB28H4lrGmOvJhUhvTd3BsQ/EYuphNlQHEHDYK4kVuJlwOgVJpbalKsqxkDm0RfEyNZ/g==
X-Received: by 2002:a05:6512:2385:b0:4b5:90be:33c8 with SMTP id c5-20020a056512238500b004b590be33c8mr11051695lfv.48.1672513570654;
        Sat, 31 Dec 2022 11:06:10 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id j18-20020a056512109200b00498f67cbfa9sm3941314lfg.22.2022.12.31.11.06.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Dec 2022 11:06:10 -0800 (PST)
Message-ID: <ec51892f-d825-48ab-ec11-377e8d137e4a@linaro.org>
Date:   Sat, 31 Dec 2022 20:06:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/4] media: dt-bindings: cedrus: Make allwinner,sram
 optional
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Maxime Ripard <mripard@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-staging@lists.linux.dev,
        linux-sunxi@lists.linux.dev
References: <20221231164628.19688-1-samuel@sholland.org>
 <20221231164628.19688-3-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221231164628.19688-3-samuel@sholland.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/12/2022 17:46, Samuel Holland wrote:
> Allwinner SoCs can remap some bits of peripheral SRAM to a contiguous
> range of addresses for use by early boot software. Usually the video
> engine's SRAM is used for this purpose, so its mapping must be switched
> back before the hardware can be used.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

