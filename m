Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6057C4EB06F
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 17:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238680AbiC2PbV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 11:31:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238640AbiC2PbN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 11:31:13 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF8B0108559
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 08:29:27 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id b15so21145692edn.4
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 08:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IUZG8nVH/wwzYSRFhBM6Bw4xy9hGVC/KLREG9NrMP4M=;
        b=cjr33Kje+O/AXpHjsptuzskdm1/lrSk4O8oxogTwxmCCnv3srHLJbgdFoAdFwcrvfg
         +CBRCdDzPr6JsMufOO3PDmQ2Jmr2VCABDSyBC6z4jxSgjCXWTZoWnzT0Y+g8GCvMqG2M
         LQtwPKK67c/vQy0lL5B+Kq47R2uDWSXb1+PhtaSRsSggZ9aDqX8QE9x2SmgBqS7SJCSq
         3UFjnhuhd1POy4590PYxAq6ML3PPZeoUjCio3Zb7oynhuk7WNWCSniyExEVjWXRMTh69
         u8nVnY3OBbyl46z6Oqa2A7SuRZqf6KkMJ8ADI+sTaCzaNrhhjHedvL/lv43jnxrjuvxW
         JdAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IUZG8nVH/wwzYSRFhBM6Bw4xy9hGVC/KLREG9NrMP4M=;
        b=gPPR9CxOC/4DtJzvzVMYgqOR5GEx2cHZC6M/84Znl2HGtrf+UAPPuNiEWn5399Cvd1
         IjGbxgFP7c4FoIrShdWXfRQ9FLyM4B1Q3gOTohDhig6hi+6C7bs8EACZkpywAwMljA4I
         C/f/uP5IR6mNhBKna8+9tBOInDoatHf66YHuqfONdtFnRdZcPAtouoFCjlngtAPt7iCs
         hHPdzFEnde5JCvjgSSUB9KxMG7nws2ogRHOOA6eOIDM2Gqp1DRPiOXUUxEVbc95jFB7Y
         /SwGYvnOvzzPpD92oDtI8Df9w7jdiqmY4hpwhkMeUviDWD6CikD6rjEut6q3ZdPxQXum
         LdWg==
X-Gm-Message-State: AOAM530gIeBe0Lzx8b2AU6JjPkrGtAeupylZZyZ+ovq26gxb1VA/3Qhw
        VW7CNtp3GycSp7bQ7zga3HAR/g==
X-Google-Smtp-Source: ABdhPJywjEH0hsTU2NFaukN9gPTvHZyJD2A7VAfgfWBig+OglKPC+QC42f4rDU+hm0oRiKkJ9d+IWg==
X-Received: by 2002:a50:c307:0:b0:418:ec3b:2242 with SMTP id a7-20020a50c307000000b00418ec3b2242mr5095016edb.229.1648567765601;
        Tue, 29 Mar 2022 08:29:25 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709060cc900b006ce04bb8668sm7138848ejh.184.2022.03.29.08.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 08:29:25 -0700 (PDT)
Message-ID: <c3e9fae5-8e18-a272-8a0e-9022f23903e3@linaro.org>
Date:   Tue, 29 Mar 2022 17:29:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 3/6] dt-bindings: clock: use generic node name for
 pmucru example in rockchip, rk3399-cru.yaml
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220329150742.22093-1-jbx6244@gmail.com>
 <20220329150742.22093-3-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220329150742.22093-3-jbx6244@gmail.com>
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

On 29/03/2022 17:07, Johan Jonker wrote:
> The node names should be generic, so fix this for the pmucru node example
> in the rockchip,rk3399-cru.yaml file and rename it to "clock-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> index 3cc8398fd..18a009311 100644
> --- a/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> @@ -77,7 +77,7 @@ additionalProperties: false
>  


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
