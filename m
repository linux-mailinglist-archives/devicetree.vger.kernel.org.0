Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E493755B66
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 08:19:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231173AbjGQGTn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 02:19:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbjGQGTm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 02:19:42 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D12B411C
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:19:41 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-991fe70f21bso564117966b.3
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689574780; x=1692166780;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B980zBwLvj4rtQ6N+4vP5VbTnvVlJSdED2QfjPo3mK0=;
        b=ml3nAAFrIO4+vXIZ7tajyVURVldVB49rTImgZXD76Sd6H4kDO+eloC+2YiELHdzYol
         WkrUIEGRzL8ZUHHfYvcQ3j1MLT960VrQtS1KaQnxIDCLhnnvCKPzXnPUGxNQwkVTkhHP
         yBOEWYWLw0rivY8Gip93wq3Lw12MxL8CLXpudaic7k//bez6NDX6HLEazOIqd5GFuCsD
         TVRoamKRvZsU/k4EQTumjsAbkvhR3cw6PWYfArJ0w9YALRVxPHGywPdkxxSo5TOj36lc
         hAjXGZgz4fOkTIYVsHXoy90Yst4L5n1RiZ7KkzOmDT7/Ywbr22gF7yV3YF58bLhl78ie
         0u2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689574780; x=1692166780;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B980zBwLvj4rtQ6N+4vP5VbTnvVlJSdED2QfjPo3mK0=;
        b=R7Ft+BR7rNTYsDcWHvobUHENXCoRFuTPLy8yIzF8KQOGePatNLYJ1VJJAANrtm+t/a
         jV2jVvWMagi8+PwayObK3pq3+67/5xmgQKvZ2Zqo7XHKgCGLrgLY/tmJPHWFe+JUuQJZ
         4DfTLDu6a8DHITfUEcF4dRZJ75Nr6KHojS19QRareGWXvLhyjCXuXnmbFs5YWTW8/w3D
         6y026NITvvHlKqmf27lgdPpVajvGzw++EYlHrM80ZMO95ZzBThngIjZBnK3vaU6MIlzH
         qkb+NEqEF8QIT9N1MlQbQrboZk3GNaGw0pa4T2Sw5wIgBQ3Db1mOYnG6iG6z43v9PxN5
         wnkQ==
X-Gm-Message-State: ABy/qLaaQrI15DTvFLX/2S/UBXUbKlHl2nCAW0Oy6mK9XW8PL1vLKIGA
        RvZBxmDlN8cpKrIH8RB9x1PtmQ==
X-Google-Smtp-Source: APBJJlEwZvOZFx9jGjKzTSquavLLMGpfSvcqz9eU7eg6dlZXcBSsj/oLHuzFIs4w1OrikNKIVtKqsg==
X-Received: by 2002:a17:907:1186:b0:991:e12e:9858 with SMTP id uz6-20020a170907118600b00991e12e9858mr9809390ejb.64.1689574780367;
        Sun, 16 Jul 2023 23:19:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id lf16-20020a170907175000b00993928e4d1bsm8710466ejc.24.2023.07.16.23.19.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Jul 2023 23:19:39 -0700 (PDT)
Message-ID: <793b6cc7-f939-a889-1e4c-6ed8ff857e5d@linaro.org>
Date:   Mon, 17 Jul 2023 08:19:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH net-next v2 1/3] dt-bindings: i3c: Add mctp-controller
 property
Content-Language: en-US
To:     Matt Johnston <matt@codeconstruct.com.au>,
        linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20230717040638.1292536-1-matt@codeconstruct.com.au>
 <20230717040638.1292536-2-matt@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230717040638.1292536-2-matt@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/07/2023 06:06, Matt Johnston wrote:
> This property is used to describe a I3C bus with attached MCTP I3C
> target devices.
> 
> Signed-off-by: Matt Johnston <matt@codeconstruct.com.au>
> ---
> 
> v2:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you do not know the process, here is a short
explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tools like b4 can help
here. However, there's no need to repost patches *only* to add the tags.
The upstream maintainer will do that for acks received on the version
they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

Best regards,
Krzysztof

