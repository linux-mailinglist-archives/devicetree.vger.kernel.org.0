Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 158494EB295
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 19:20:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240120AbiC2RWG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 13:22:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240117AbiC2RWE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 13:22:04 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31A9F16D8E7
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 10:20:20 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id j15so36477981eje.9
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 10:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ROsQcUJTGNxUVGtLXxEiy/5+m8Zgw5SGAV2688lVg4g=;
        b=o/5vMuNiIBEAuZd0SjplKcjp4d+racjVgUESBlfA7iYult41e/OVKGwOCEAy0g7c/z
         +c4TtwYJM7xxJXIPEGKsjG2JI/W60wL58H1Ex3ebbr5vicEqqSeSRUqXK6i8F+7PnxCr
         XA+25ysr6U44Tp3sL0L8TMGMwO31zYmhOvetAvrGt/1NjtqLE49OUBtpw5G2bxUyg3rH
         cA2m5BVCkFXY4DtvCZ5oerGtLJ9Oo00/ByywRHHYmgL6t46w0NByYO+clPjtup72Vdr2
         GpdC+9GdcFUdCotzU2JNFHyJt+Ere370OakHWs5NR9tyAdWCdxd2egttVqvgHPmb9dJw
         aU4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ROsQcUJTGNxUVGtLXxEiy/5+m8Zgw5SGAV2688lVg4g=;
        b=CCz2eIBCXdtkPCCNN6JLNBMO8CMFi95THinetbEHmL31TsNakDgdSzsL+lo3DGM7RZ
         mIKm4iBLVYiH3/lMUBw3P6Zkxt5bZrxe7EgdxUuUBvL/Vd4g1HCj/IRzhwQtIYWadz3v
         Gd1Fq5x29SMLe4i1lULx+hHbqOp0pvFYGY4xKWsgWeyiXfOjPNRY+tlsduQoXZcm4UH+
         SfrRkcWy+HypiGxAADGUerdstj573VqTgMSt2YZiiE2MRyaJfNrCXA2eSYF+COUUAhBJ
         ZvC6d3c7gd2MKWosSRgmmtwawmH/NBnZ/FlvRY6wXmlqomFp8AE1qlwgv0x59AY9OnMR
         PY+w==
X-Gm-Message-State: AOAM530IYa8oF7d6UKao8yzM2A40JuH1P4P2VddwWzW2Z8BwDig+u6us
        hPF03DTK2NPmQH84557xPPz9pg==
X-Google-Smtp-Source: ABdhPJxkbDZq562GC5mkdl0Wlt68amgyNMSrc+Yo4YTeVWsfVfweU8TsmgnU6j66uTFhrh1FbFO/8g==
X-Received: by 2002:a17:906:c110:b0:6e0:dc2a:3393 with SMTP id do16-20020a170906c11000b006e0dc2a3393mr20631113ejc.512.1648574418760;
        Tue, 29 Mar 2022 10:20:18 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id z21-20020a1709063a1500b006da6436819dsm7295462eje.173.2022.03.29.10.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 10:20:18 -0700 (PDT)
Message-ID: <5e3ef437-82d3-ae4e-f8bb-0b508b45050d@linaro.org>
Date:   Tue, 29 Mar 2022 19:20:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert rockchip,
 rk3328-cru.txt to YAML
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220329163016.27458-1-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329163016.27458-1-jbx6244@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2022 18:30, Johan Jonker wrote:
> Current dts files with RK3328 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3328-cru.txt has to be
> converted to YAML.

You know that this can be one or two lines max?
"Convert RK3328 clock controller bindings to DT schema"

It's equal, because we all know the benefits of DT schema. :)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3328-cru.txt    | 58 ---------------
>  .../bindings/clock/rockchip,rk3328-cru.yaml   | 74 +++++++++++++++++++
>  2 files changed, 74 insertions(+), 58 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3328-cru.yaml
> 

Best regards,
Krzysztof
