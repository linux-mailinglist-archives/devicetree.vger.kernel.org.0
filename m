Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E68226C97B1
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 22:04:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230418AbjCZUEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 16:04:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbjCZUEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 16:04:13 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5431165A4
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:04:11 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id ek18so27715906edb.6
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679861050;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hJ2zmqBiWF8xNxlF2DpfPiHluVhEuG/NqmcIKEjOERw=;
        b=aA1Pja6WvB4X3aGFSLK6pweg7xRHG//dRUY2v3rdNu5Y1ZhUUSYy/RgXn22Es92AQZ
         2q7dirvzy+f8ToVEzoojz08UmnKi4yFzH5wN14F6odYDjT+ETB3pBIcscVN7ZBkmhIdr
         dkNjOK/KYVWX+rcZAjjQ6p1Jz1g4DNSpvBsUStPqHPXhP6BtqrM79oCJ4aLpeFtnE5Rd
         79Xtglom4SxxEjG9X9nAsz5CvV8YfEbvZSzh2Z3sbC7qoxzojxjpHc7+wS4018IHgdL1
         9vtiLa7PMS87L+cTAlM3z1pd+pWSlOFiO7RFQAtOHx/krweFaONZ5xYFmmBA9LS1JiQi
         E4uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679861050;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hJ2zmqBiWF8xNxlF2DpfPiHluVhEuG/NqmcIKEjOERw=;
        b=3fF5lY3E0gDwKSGQkj9OO/BROSdvrPd54ItbijNsgZXrI0o8AOU1I2FfKu4we8P5M3
         kCQeotR1ibBdrCkZNYC0W31/kUfcNMigbiGOro/1Gk6fYDeObB1Gsx8eOo98qnVYGilX
         HtfqdYU0kmJ7onU0mJSP9fYzo3ufaAYAiJzfkYhD8KBdPE+mgLwHXI8BFq2lv1ChvX8V
         vKfuzSdyAQCnQeZ24RHBn5eFAzmav7quy1DdRpNGYVv2jKGibjfQBze/qvOLt3+cd5h6
         8Vpex8uYtXlA+Xubb7dRJdrFTqIpAR/bBRiMIkpZQhXzn6oHlJIiTO1+8/8oryRwcHwC
         8mWg==
X-Gm-Message-State: AAQBX9cEQk9yKY2csLj4SQjURGIDPFzhviTiDqtj2kPFMtDem4UzqyPd
        DTTFxb6qE6THsz2vQ9SDSgjqBA==
X-Google-Smtp-Source: AKy350Zfn2lQrBVjODwHJamrQ0D0o0vR3gzPm6WK58ij2lWqCQGKKtUZrfYQZlXrfdUA9IXOarxj8A==
X-Received: by 2002:aa7:ce0f:0:b0:502:24a4:b0ad with SMTP id d15-20020aa7ce0f000000b0050224a4b0admr8629955edv.4.1679861049845;
        Sun, 26 Mar 2023 13:04:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6b51:4748:3f3f:ffcf? ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id u22-20020a50d516000000b004ad601533a3sm13970070edi.55.2023.03.26.13.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 13:04:09 -0700 (PDT)
Message-ID: <0711b320-6c36-6564-70d2-35fc76ac1ebc@linaro.org>
Date:   Sun, 26 Mar 2023 22:04:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: update rk3588 clock
 definitions
Content-Language: en-US
To:     Shane Francis <bigbeeshane@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230326001535.149539-1-bigbeeshane@gmail.com>
 <20230326184040.33008-1-bigbeeshane@gmail.com>
 <20230326184040.33008-2-bigbeeshane@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326184040.33008-2-bigbeeshane@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 20:40, Shane Francis wrote:
> Some vendor uboot bootloaders use the target kernels DTB image to
> determine the target clock speeds for some PLLs, currently this can cause
> uboot to set the clock rate for gpll incorrectly on to cpll (breaking)
> RGMII.

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

> 
> This change starts the PLL clock definitions from 1 to correct this
> miss-match
> 
> This could be handled by uboot bu updating mappings in that code base
> however not all devices will have a replaceable uboot (in cases such as
> when a secure boot chain is implemented)
> 
> Signed-off-by: Shane Francis <bigbeeshane@gmail.com>
> ---
>  .../dt-bindings/clock/rockchip,rk3588-cru.h   | 1442 ++++++++---------
>  1 file changed, 721 insertions(+), 721 deletions(-)
> 
> diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/include/dt-bindings/clock/rockchip,rk3588-cru.h
> index b5616bca7b44..d63b07d054b7 100644
> --- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
> +++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h

We did not finish discussion yet, so sending new version 50 minutes
after your last reply does not give me chance to respond.

Best regards,
Krzysztof

