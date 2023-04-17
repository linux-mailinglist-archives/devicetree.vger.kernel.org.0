Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34CE36E4EA9
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 18:56:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229713AbjDQQ4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 12:56:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229812AbjDQQ4h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 12:56:37 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 535F9E7F
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 09:56:35 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id dm2so66066679ejc.8
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 09:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681750594; x=1684342594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j6xy1GRSFsuZ+PUMKZhMiAkv+GOex/u5ih/pKCbE4AI=;
        b=aEkK/1YUBw8jtrWo6WZt3CuhZH9zX7ObDmfa3cgWfykPpUiWO+FGtH181RItSorpMS
         cedPHx70AyB3nPqJsdwiSF3jtD/CPTZDk2SPZfzbn97XbcDtLs9QwHOgJqtIwrxLPOL0
         uaVOOOaJ08FcNZpr9RTjhgxWVA9V62J012YtaXcHdqiZChvwtUd9NZTZ6z0ZFOSzDlDs
         BeL85nuDcRg/5a11MlbkI38AVULRjAQH1e0bX1MJYZfLBXKDnlRxI3GHETnWe6llpWZz
         pkppo9SHe4Tps9RtV6DDcjPiHHu+LjKK1pJqYv/vdZn9WO61l+wpKpfNgnrcQpEt+zy3
         VdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681750594; x=1684342594;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j6xy1GRSFsuZ+PUMKZhMiAkv+GOex/u5ih/pKCbE4AI=;
        b=OWXycSQu9FvxvklKqCsjOajR+BAnWfv9dMc8UF0o46ENiWEGL9078kDf82mJsgBy1b
         n2yn/B5R3PGscADDIVO+Q/Uz7k3xpIxoDifCK7NwIQvmQn7nR3KkndkpIv9oXsYdbpRp
         ZTly8OekZi1/XpHWpmMzviWwk5IlpZHJ81KLpOMij3n/CWOZAHrKdzNIzAoKhBN4GYls
         9CFK+Hk0up2j8K85Wl2cu4O4mwVOWjZYqkTgyo7kquvABI1WkTc9NKJ/FUCl4bHO4wTE
         NpgCfluJRKAruJae2nqojEM+d7IAgrBziw2HYNizk5xdwWnqjaDEnAy2H4IIlZ7j4LX3
         xVVw==
X-Gm-Message-State: AAQBX9fh47+as60t9Y6XxFpQjDWbhcXZXV6bG8WNopxYTEppwt0QETDf
        40A3dryC4e4nakUAjn21oezS+Q==
X-Google-Smtp-Source: AKy350bmAI+i0j9qkS9nhkX8WPcUqNIoUyi4MPQ2z+q5+QxDAbXuUzl1NiAl56xYusPQLgC9wkQAEQ==
X-Received: by 2002:a17:906:5384:b0:94e:ffcb:b15d with SMTP id g4-20020a170906538400b0094effcbb15dmr6061973ejo.71.1681750593754;
        Mon, 17 Apr 2023 09:56:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:96aa:60eb:e021:6511? ([2a02:810d:15c0:828:96aa:60eb:e021:6511])
        by smtp.gmail.com with ESMTPSA id l8-20020a170906414800b0094fbb76f49esm353631ejk.17.2023.04.17.09.56.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 09:56:33 -0700 (PDT)
Message-ID: <ba0d33b1-9da8-209c-6407-12128d08a4d4@linaro.org>
Date:   Mon, 17 Apr 2023 18:56:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v12 1/4] dt-bindings: i2c: Correct interrupt support
Content-Language: en-US
To:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        Peter Rosin <peda@axentia.se>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230417104801.808972-1-patrick.rudolph@9elements.com>
 <20230417104801.808972-2-patrick.rudolph@9elements.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230417104801.808972-2-patrick.rudolph@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/04/2023 12:47, Patrick Rudolph wrote:
> Only some of the PCA954x compatible ICs have interrupt
> capability, but the binding advertises it on all ICs.

Subject: Add proper prefix for the device. You are not correcting
interrupt support in all I2C controllers.

> 
> Sync the dt-binding with the driver and only advertise it on:
>  - nxp,pca9542
>  - nxp,pca9543
>  - nxp,pca9544
>  - nxp,pca9545
> 
> Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> ---
>  .../bindings/i2c/i2c-mux-pca954x.yaml         | 20 ++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> index 9f1726d0356b..93ffa67d0d9c 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> +++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
> @@ -63,6 +63,24 @@ required:
>    - compatible
>    - reg
>  
> +allOf:
> +  - $ref: /schemas/i2c/i2c-mux.yaml#

Duplicated part.

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

