Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 637F2631DCC
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:09:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229916AbiKUKJ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:09:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231177AbiKUKJv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:09:51 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7C2C10C6
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:09:48 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id be13so18092195lfb.4
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i3YXumFsPw6lbI2IHMtFObomGfN5gHhNwcdgLP+EhJk=;
        b=jMQDqklr6GJhwiLPT9kPQTPmexECun/4HMUGVLBEqBvYISI8XEuWKkoKtj+dKN2kW8
         LnyRPehM4XhFvmvIv7o8L1T7/0ugBPOT9oMyWvlsqngtdLPsdhc4DftPtJVqPwZ3ajMF
         zB5BQky4xx8qaU/c7Wuq25mcd7cAeoJdiEwFZ1lptGOkknfifq8ztal99bBbiWwkWfeM
         5wjxp2czMpvgnJavWNh1b6EWfwNwQ9tncKAkyrzSefAaBJDi9YSwOtA9aR826sp/4z67
         iIIsu0EgU2jqZF5JijtlmtYruvIVVwTIl2+CscNbK7DLfXToq2+9aMY/qiUQ8lg2sfEx
         hQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i3YXumFsPw6lbI2IHMtFObomGfN5gHhNwcdgLP+EhJk=;
        b=ZI7cX5TDrN8GRGxTz2mFnGI6Qaq/58ZZ9MLjIKjCSwFwU+FGyOBgN8ZTtMZxtyJZ4H
         0bsjNF0e3xv+p0M1HuHV6ZS7q4EFAVeB4Lu+uXfz6IG9Ct4BoTSK2dcbPtUQMs73IGKP
         wHmNUbN3xU6gNryv4ntQ1f40pvtnZo2wrIJQEMDljolACWfLVXi27O2wTJYJclVkmHrK
         Gw2ywHoBcZBOOEJw3YMaw2RDIZTOjdNvLD4beA6wtYARQnqrwWpcrbxlRFuo4J1sGzdM
         B0atqHD9jpwdSaRK1z4y1PaEZOCqslp3Ns0jGpQFobyPZYH5AstW8Athl3UTb5Y6dQvp
         OrMw==
X-Gm-Message-State: ANoB5plp0QqpTzccXMcwnzIILk/ub6ZsJe5j6xthrxQ10LxPKLq1EXoB
        se5ZAvkcUzocKUjlKdzlOlDD5w==
X-Google-Smtp-Source: AA0mqf6DBfrEF5O0+Ktio6r059/CuVFDgOS3eqygqMtw5mUk3rI1/U6Kjd8+p/QbRjRwyx2S7laiMA==
X-Received: by 2002:ac2:5e2c:0:b0:4a2:243a:ef6e with SMTP id o12-20020ac25e2c000000b004a2243aef6emr942157lfg.454.1669025387158;
        Mon, 21 Nov 2022 02:09:47 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm1975586lfb.164.2022.11.21.02.09.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:09:46 -0800 (PST)
Message-ID: <9d287ce2-a826-5777-8d88-8e05e6924670@linaro.org>
Date:   Mon, 21 Nov 2022 11:09:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 5/7] riscv: dts: bouffalolab: add the bl808 SoC base
 device tree
Content-Language: en-US
To:     Jisheng Zhang <jszhang@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Jiri Slaby <jirislaby@kernel.org>
Cc:     linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20221120082114.3030-1-jszhang@kernel.org>
 <20221120082114.3030-6-jszhang@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221120082114.3030-6-jszhang@kernel.org>
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

On 20/11/2022 09:21, Jisheng Zhang wrote:
> Add a baisc dtsi for the bouffalolab bl808 SoC.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  arch/riscv/boot/dts/Makefile               |  1 +
>  arch/riscv/boot/dts/bouffalolab/bl808.dtsi | 74 ++++++++++++++++++++++
>  2 files changed, 75 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/bouffalolab/bl808.dtsi
> 
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index ff174996cdfd..b525467152b2 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> +subdir-y += bouffalolab

Nothing to build there, so not yet.


Best regards,
Krzysztof

