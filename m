Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 749EA6FB2F9
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 16:32:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234665AbjEHOcn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 10:32:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234396AbjEHOcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 10:32:25 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAC81A5F7
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 07:31:44 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc25f0c7dso8716153a12.3
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 07:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683556283; x=1686148283;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HnRnnpVFS9BxjWyWHWjOuy6tpS6xB8wewMJVF6G4ggs=;
        b=Qhxuh9HICDBbK2ZhKX7IpiDVsXuTKbiNMpPiY4EG8mGqNG2kchhQQcWvTcKJy/UYoc
         PXNHCwKZ/E4D+pBFf9eB+dneL/x/wMaAiF+WD11VFkgEPXEMCI59f6mXUaoc65BTczzM
         HMMPYPzuV/GmGcMIuaq/pp0/MPcgQffRRDohlM9KhbqnRknmyGpv8UaKxdC9YYVhTcro
         Ro07nFlqrt/zNoLCa9kEECULsQYXJVG7CLVegm9magTFlYC1uuqofCUBrEubJEhOnzSO
         uIe9erd6Lxf1e+A3hA90uSXR20hTAWjVD3aMn+Rbw3OGkYmJpYyWveACvWNHM+lt27hi
         OJSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683556283; x=1686148283;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HnRnnpVFS9BxjWyWHWjOuy6tpS6xB8wewMJVF6G4ggs=;
        b=VxJN5649rt+qB5Gi6zwy9lmT9mKL6/Z+Ks89IfKNR8Of5HH6w/B+oeAKG22Kbv+Eag
         Lox8SdkmcvpGaXf0YsUzXkA2Kq4W0Easf7pYaFjKl2C5UT0hrLFll/Faa09bYJOUgSCD
         dk52ASE+tmEl51K1GOPaYdUstYLRLolHwiQzv6XvwbJwuYFiBxJuSmjgUXAAJbYHChfe
         W4TFZ1cjj8efC5+MQYCzzzgwmNyugGkeBA67ndJwcdh19o/KjuVx/zu1dYQ0wQCPOCgV
         Q0hFQgXsFWeuljvxlYxLrsdXIe5Fi1lIKa/zQDA6V0t/Mby+M5zLtBCZapYWN/tK6Wwp
         jenw==
X-Gm-Message-State: AC+VfDxbb2R3WJ8JmjPhCqPCgkhx0DVcRApTAMHUtGvR0xDXZXhnnk8y
        2dMa7syb3QOy46cbrwosBpGSPw==
X-Google-Smtp-Source: ACHHUZ6l2MUXliu1Uv4qYZgZTGtBJINS3oSzGHiUogbgJZUH/Ub5yhnE8qcMRSjr5Ci/dlDb38lcIg==
X-Received: by 2002:a17:907:868b:b0:961:57fb:10c1 with SMTP id qa11-20020a170907868b00b0096157fb10c1mr9298898ejc.63.1683556283270;
        Mon, 08 May 2023 07:31:23 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:50e0:ebdf:b755:b300])
        by smtp.gmail.com with ESMTPSA id de25-20020a1709069bd900b0096664376ec9sm51253ejc.55.2023.05.08.07.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 May 2023 07:31:15 -0700 (PDT)
Date:   Mon, 8 May 2023 16:31:13 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Zeynep Arslanbenzer <Zeynep.Arslanbenzer@analog.com>
Cc:     robh+dt@kernel.org, sre@kernel.org,
        Nurettin Bolucu <Nurettin.Bolucu@analog.com>,
        linux-pm@vger.kernel.org, lee@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        broonie@kernel.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com
Subject: Re: [PATCH v3 4/7] dt-bindings: power: supply: max77658: Add ADI
 MAX77658 Battery
Message-ID: <20230508143113.ichsezawrlxobujk@krzk-bin>
References: <20230508131045.9399-1-Zeynep.Arslanbenzer@analog.com>
 <20230508131045.9399-5-Zeynep.Arslanbenzer@analog.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230508131045.9399-5-Zeynep.Arslanbenzer@analog.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 08 May 2023 16:10:42 +0300, Zeynep Arslanbenzer wrote:
> Add ADI MAX77658 power supply devicetree document.
> 
> Signed-off-by: Nurettin Bolucu <Nurettin.Bolucu@analog.com>
> Signed-off-by: Zeynep Arslanbenzer <Zeynep.Arslanbenzer@analog.com>
> ---
>  .../power/supply/adi,max77658-battery.yaml    | 47 +++++++++++++++++++
>  1 file changed, 47 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/supply/adi,max77658-battery.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/power/supply/adi,max77658-battery.yaml: Documentation/devicetree/bindings/mfd/adi,max77658.yaml

See https://patchwork.ozlabs.org/patch/1778410

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
