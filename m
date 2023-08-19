Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D2EE7819B1
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 15:29:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232664AbjHSN3j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 09:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjHSN3j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 09:29:39 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A4C5BBA
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 06:28:16 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bccc9ec02so238179366b.2
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 06:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692451695; x=1693056495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g2/eTmeGLIHBF7FLb+vCfZlq5lr8O3DMbn1/hvnwEr0=;
        b=IPP4vVumV3eDszkG6RRimK7qs2DHKWHs0SYQ/Txw9bpUM69YewaXB+K+ON0WZhlKHi
         /QaRSWaQPo/Q9BFzBsxvX1O4hzyKIAkvkQVMUn9nJcb0gZ3ZNlQDMi+xvl6y/xMvJye1
         s4Qm1dnccDe35absNagrltggKFvTDuoBLzHcNz04CMDNGPTxJZmq3utzsFBabOzEO2Qy
         q8A2QYMzmfPmsDwWZAEBMe023eV4jlOyinzFkYH7+0cCaCBjhOPe0vNnKYFbE9/y3CZ3
         eKX19dgYEQSJ/CNa0M/WJgwUN1etceK7lJme8LgKn/jmMVU012xyyCcgZNlYM1yT7lyV
         LARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692451695; x=1693056495;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2/eTmeGLIHBF7FLb+vCfZlq5lr8O3DMbn1/hvnwEr0=;
        b=KJ5bB6wrl2t4M4EAuxA9d+O6uUcOQ4LT+PgWQri5NOBvzIHxF61ELqxzHXkLLCtcHp
         IooLLaU9iVjvrbK+uyCZ3LO4bXxN2OLVfNvh+GdDL7qTWZh6LplRZzz8/nhVO8YPCpGd
         OJBN6vC5GsB08JfDvGJr3lnWMBmXNpamWJBimhu/FhvXgWoP23vt8B9IqLPgwYTW35JZ
         arGLe2MiHwGGC4IykW5GPWJf3K3Tr80FaiUirDxwaewhaLjES37dFG+jS319WPmjubkc
         3+MAQeZIMDe5LLrM3oMcx9n0jT0lZiM9qgfthsvYB/uraBzNb5nEc4x0QqA9efb0WdhM
         k2FA==
X-Gm-Message-State: AOJu0YwWgB3nldJRZd2pQoVYSROxgXkRiOUZHyRIrDn0TvLe5T9es51d
        4B8GZEnOUPZAs+s20pUoTAw10w==
X-Google-Smtp-Source: AGHT+IEY+//SQa8zNcZTsTQw8ncQ3H3DK6JEfU+cLSw3MgnGMw7CEFSFaX3ge9tNUR78sO6+c880Uw==
X-Received: by 2002:a17:906:3287:b0:991:fef4:bb9 with SMTP id 7-20020a170906328700b00991fef40bb9mr1393127ejw.58.1692451695295;
        Sat, 19 Aug 2023 06:28:15 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id sd20-20020a170906ce3400b0096f6a131b9fsm2710140ejb.23.2023.08.19.06.28.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 06:28:14 -0700 (PDT)
Message-ID: <18f41262-97fc-9346-7d77-32d914cf3b24@linaro.org>
Date:   Sat, 19 Aug 2023 15:28:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v8 3/7] dt-bindings: display: bridge: Add Cadence MHDP850
Content-Language: en-US
To:     Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Cc:     kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com,
        alexander.stein@ew.tq-group.com, sam@ravnborg.org
References: <20230808083243.3113192-1-Sandor.yu@nxp.com>
 <20230808083243.3113192-4-Sandor.yu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808083243.3113192-4-Sandor.yu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 10:32, Sandor Yu wrote:
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp8501.yaml         | 104 ++++++++++++++++++
>  1 file changed, 104 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

