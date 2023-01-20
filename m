Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EF6E675BA4
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 18:36:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230337AbjATRf7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 12:35:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230130AbjATRf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 12:35:57 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F97DBC7
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 09:35:52 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id r2so5483471wrv.7
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 09:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RtibDBYP4iMtkWCSC6UIrfEqP+79E1l1LSnhYmoZi84=;
        b=a0EizrBVJ51x9XMo0SmIYGujI1VE9IuQMAZSmgDPW3HPHFB6mYwi9BGrBxpjbkObek
         itKHvG8slnp/701yTvitXMlHAStQ4lI9mGrzl3SjhF9u0iQrTZxG95kMPUuh8uXghW6r
         pRu6wigR3XGbq2vfZcGagjR/wpGM9BxewkzOfmmuGjFMBkhB1yQihKjwKg6vXsj5e+Jj
         irk/A6di6OnFkhm9W+AXN6OnzD4sMdxfpGGGdcxM2C5VTa0JLQ8R/PHNY3GXxGQSrkNo
         Q8UdRjXv4/n1eEw53K8AUfaTgN69IBSSFcGgAEcicYplX/Rw0A8jpTfAeldp4L9u00Z4
         eCFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtibDBYP4iMtkWCSC6UIrfEqP+79E1l1LSnhYmoZi84=;
        b=agXlbJpGy94/a0RNu8Ez4vK5Q92wh4C5tHIzODgV1IBJZ/Li/Uns1DKQRSPtwmI0XT
         WWzJbmZ5khS1YxkZr8oB6UPE3IyGD9izcHX0jIvyAG3qDwW5IT87lhm9EMNCbGiRHJV6
         2Kwo+Kxfj55OK46CYKxmxc/ssbLb093YXqMN6M9Z3Oe0bP+Df9ShS7ycxGevI+UOh9pI
         2EUnrEd3av57uv0T31bs3Dg28H35/Ki2JBWkBhbFxhZbCN/uignvculRzn+l/xj+sE/P
         TEby+EWayHjeYS+r1CAVnG9a7tNJyF4hAHsnFHhu5EjbHtffKaFZy42/6vIJ/hR4GZnI
         z47A==
X-Gm-Message-State: AFqh2kq4a4JsYoGuByiLoyj1PoDLdaTpvGOWzIozeYIEtdVBfHlwP4mz
        2tEY1HVG6VsYa1Oyppp3+Swwcg==
X-Google-Smtp-Source: AMrXdXt54pJEA64hU9pqLpjAzfF4EB4BwV1gaYq2BN8kjUL2tMAG73rGdCUL7ncRTIzQmMkHPYLxTw==
X-Received: by 2002:a5d:4cc8:0:b0:2bd:d779:c1b5 with SMTP id c8-20020a5d4cc8000000b002bdd779c1b5mr22020011wrt.27.1674236151289;
        Fri, 20 Jan 2023 09:35:51 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i6-20020adfe486000000b002423dc3b1a9sm35871262wrm.52.2023.01.20.09.35.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 09:35:50 -0800 (PST)
Message-ID: <780f2669-7ef0-1a17-9e04-50eeba4c2cf7@linaro.org>
Date:   Fri, 20 Jan 2023 18:35:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v2 01/10] dt-bindings: arm: fsl: add TQ-Systems LS1021A
 board
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nicolas Schier <nicolas@fjasle.eu>
Cc:     Matthias Schiffer <matthias.schiffer@tq-group.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linuxppc-dev@lists.ozlabs.org, linux-kbuild@vger.kernel.org
References: <20230120133455.3962413-1-alexander.stein@ew.tq-group.com>
 <20230120133455.3962413-2-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230120133455.3962413-2-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 14:34, Alexander Stein wrote:
> From: Matthias Schiffer <matthias.schiffer@tq-group.com>
> 
> TQMLS102xA is a SOM family using NXP LS1021A CPU family.
> MBLS102xA is an evaluation mainboard for this SOM.
> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Improved the description mentioning this is a socketable module
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

