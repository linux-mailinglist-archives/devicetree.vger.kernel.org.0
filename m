Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5A3C6CBE1C
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 13:51:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231396AbjC1Lv1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 07:51:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231437AbjC1Lv0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 07:51:26 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B0877EFD
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:51:23 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id y4so48586149edo.2
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 04:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680004282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SroYEWWsu7eZpWI/xX9YYbpvlBKlIjSyYMo3wuZnCCo=;
        b=IPYIScgR8tz/qOQarAmW9/eOp1N7Cyw0eDGXZZ/Yn57F2cz0lkh6OJNBQ2xH9zBLdx
         m3lnPhT4LbkWsQi9rXvtpQXSANfljQovXxN8NBMPqWrktkpeuVw+9agpAswq44SRekoV
         kSJjSZFk4naIP1qrhicOFkyqL1pWf0ihs+x4yRKo5DjghDRK68bHxem16cnlik8e9zAZ
         F+bAQH3hLGo0p2VTEkCrVaK0OyX0mdP6WOCKP6TtQ03FmEzUdVUG/0zpcSLws9YNbv+K
         +f8tvd/+RWMPXxMxs8sAZdPUkuwnuUPQtC9btY2Z6iAx3hWrZ+b7jIr7Lyt605fhnJXP
         4vyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680004282;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SroYEWWsu7eZpWI/xX9YYbpvlBKlIjSyYMo3wuZnCCo=;
        b=DyaQb4Eb0zIl5bPuVUUVX5QnSNXbjFTcUMQ8vgxTNtiIM+MG17YZaeJz6Cuz1dnSVN
         cIh9YizM2EbESbYJfYj7wZlrUo7YFLuAKWtDs4+gO9g/7Xv9AJlxoOoVFf0TOVUAEaSa
         6LeTOonWJdNPuUONOjsZtAaozzdmoZ7yTeYi8+9jdWi+HJIRRugsDuv9h9hdpyXYHasi
         eNn+kFVq7LQUvtI3/CAe8hhMZBMocTgMWg64LS3xuUzYLx/9nbeUgjSj606QnUJoQLwM
         8xV7rkOHF2zR9d1cchGeShwmH5+0Bjun+bdF2ay8cfmhxvBDQ1loCGHrxZFbz7jmMzCA
         R9fw==
X-Gm-Message-State: AAQBX9fYEeOGuMlYz20TFNKWOoRDPAtVg3xJlF33vyKKqM+BgZOy4kbk
        C1pIdAkJ1SnUNhuqnYUJoCYwbw==
X-Google-Smtp-Source: AKy350YJGama/E7rVfgouf4YqzNzTkkzVQFL1mmSBUutIoXlhC54kDnezNyqSd2W0XGMjvtVVqvFSg==
X-Received: by 2002:a05:6402:6c1:b0:4fb:4354:ab2e with SMTP id n1-20020a05640206c100b004fb4354ab2emr15279051edy.28.1680004282416;
        Tue, 28 Mar 2023 04:51:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id s12-20020a50d48c000000b005023aaf52desm4068364edi.95.2023.03.28.04.51.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 04:51:22 -0700 (PDT)
Message-ID: <9c46103e-c033-73e7-a45a-6278a95e2fc5@linaro.org>
Date:   Tue, 28 Mar 2023 13:51:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: regulator: Add Richtek RT4803
Content-Language: en-US
To:     cy_huang@richtek.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     lgirdwood@gmail.com, jeff_chang@richtek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <1679899572-16182-1-git-send-email-cy_huang@richtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1679899572-16182-1-git-send-email-cy_huang@richtek.com>
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

On 27/03/2023 08:46, cy_huang@richtek.com wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add the binding document for Richtek RT4803.

Subject prefixes instead:
regulator: dt-bindings: ......

> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
>  .../bindings/regulator/richtek,rt4803.yaml         | 68 ++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/richtek,rt4803.yaml


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

