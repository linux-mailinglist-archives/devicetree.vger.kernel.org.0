Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84D8C4EB3E1
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 21:06:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239723AbiC2TIE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 15:08:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240839AbiC2THz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 15:07:55 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67D5912659E
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 12:06:12 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id dr20so37022973ejc.6
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 12:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=R4sUD/h50Bf43vOXljayxbaTzrnkE01kcRyo4ru/wmE=;
        b=dCHc12WonPl6079dcHq+ZOly+/rYb0WPhWVaW6uIMntiA3fSfeCfEgE1dLYF7YlsIw
         fFJDXnoMDTFZoWfnZ+6Db1MZBFQuJEORc/aKf+HuWVMFxMnP1JAXXhg9bR18DccS9e9K
         P16oZnRCBSMXFsP6jmDv33TIG8sogxezhfe3hiNFk1F4c7vcCV4P9yysaYkDPXyG45lD
         XYVFXnugodx50wXw6cndXonIZ7rKmo0gZ1iI0FxsbePnKo6dvvHObMtUlmDxrIIOhnj8
         MHBFszLv4oOpT6ssux6c7vd+TPiSdJu+0Tdbf/b2rMLG5R8HJlFtWMPOeY2k/ffKm8Ze
         Txpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=R4sUD/h50Bf43vOXljayxbaTzrnkE01kcRyo4ru/wmE=;
        b=1DA2qmihk2W/8lSKPd/BuDeJ2NeFodxiu2gE9rsSOSvJgp2rYYAcWSLyz0IZybwDjz
         yZqBj6ZrRcm3DOLjRu/fuEPaXkWUg0G6K7nOAYBf12NA6mtxFZdYmgRg+l3FprteS60W
         kbuNJKxCPVhjHw4wjniOcYNt6vRx/jAi5KVkyd5/mqQoYyQOKk+iBbt4t8GU6GjIe9ML
         kmCEIt27yUB7Xi/X8LllOiO1SkpFMZTYbKwEqqfw+HPrpZk8Ur8iXc7KGq33CPxnuWA8
         K58eDgkz+eCPJzyaptMZpj7GXTXYiPkWXtu4qZg06xim5Mk+CrKJqpZ3ggpCNOIrqW7D
         ddRw==
X-Gm-Message-State: AOAM530w1t6YG+Nd8jGEF20LJkc9I59VyNnFe9e9r77IUqMQX4DEf04e
        KJEympn4BNhMCgD/30Mou+3vzg==
X-Google-Smtp-Source: ABdhPJx2shVhEMiPQQnvRhN82e0FGdSWbageEUczWptVA506xGOCxhu6bQZW3y6SqBnigtrgpKjrxQ==
X-Received: by 2002:a17:906:704f:b0:6e0:2ce5:131e with SMTP id r15-20020a170906704f00b006e02ce5131emr34569646ejj.246.1648580769541;
        Tue, 29 Mar 2022 12:06:09 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id bm23-20020a170906c05700b006d597fd51c6sm7492373ejb.145.2022.03.29.12.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 12:06:08 -0700 (PDT)
Message-ID: <e019c6cb-9840-5e4c-9c36-10e2ec99bba9@linaro.org>
Date:   Tue, 29 Mar 2022 21:06:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3368-cru.txt to YAML
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220329180550.31043-1-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329180550.31043-1-jbx6244@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2022 20:05, Johan Jonker wrote:
> Convert rockchip,rk3368-cru.txt to YAML.
> 
> Changes against original bindings:
>  - Add clocks and clock-names because the device has to have
>    at least one input clock.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3368-cru.txt    | 61 ---------------
>  .../bindings/clock/rockchip,rk3368-cru.yaml   | 78 +++++++++++++++++++
>  2 files changed, 78 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3368-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
