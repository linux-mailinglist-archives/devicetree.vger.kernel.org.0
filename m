Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 25C3E51806C
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:00:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233140AbiECJEC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 05:04:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233135AbiECJEA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 05:04:00 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60D4D17E2B
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:00:24 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id g20so19108896edw.6
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 02:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=j4CRxL9e7zZlh4b2P/p8FhUccprH7HKthusA0VBt+bM=;
        b=b/XeqkebSCbXODnHkCi2RqyjzoJ74d6kbuqoZYv3DO3OcaTbv/qeFWTURH2hoJ+2yT
         WGzeYXnB0WS7BN6GFadu3iQPdm9CuNhqzf1vrUZR5xRXgbPmT/eo+2ZSAXWNMcoHGmKz
         0qkBZFq9PrTHigehcs0ZjjD2RXid7n3okw3z/guesffeaexDfAmRuOwafPUHmi2zUAuc
         SlkA7fPdc2WFFX8N8bTNhp90GINnma8Ibkb8q6wZqFYyVz0tuQoBzY/0n8MgEYHKOiZR
         Ao57ZnmzizOktGk10i8wgkowf72pMbtLtMJQi9EwK7WL9ZRMpKzqc6m5b68Xot4jmkCf
         MiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=j4CRxL9e7zZlh4b2P/p8FhUccprH7HKthusA0VBt+bM=;
        b=C4ZChJQmN+OAV0yMwp9RWpjdMOH9X1FDi7cMAt0FLDosaTneV/o9Xnfm6J3Y7hNN1p
         zykf+1wMg7govkgfIgBd9yhdcKBtPHVGaxsbOwnShFSqNEfNBRCN+Wd5XUWS0z1t0n3V
         AEyiovt5X5sr9mVpBE3BtUTF3K3C6JsUhKzuLm0uEupB8W/XJUbuNspZkYbIrFlHdaV1
         wgMI8NBzuLKdB0GMHWShCOPA3wM1Nkt2qnywzIDuFaM6+NHRqRY4mR2JJPSKQeOrwxck
         WCckRPnLqW5NrHjM+OPVEBIjvGvmVZ9BciUlVnKP20knHO28aKlqW8c3qnd1SWVbxXdr
         P5Ew==
X-Gm-Message-State: AOAM533ag1zuo/sM+gInmyHWTvTRcO8i1sXTHmU+FsnA9n194DMCcNW0
        xDnWRf1BnhDA/qQAG7lSIGDzXg==
X-Google-Smtp-Source: ABdhPJyX/ElrrxMX0/REfY3yLwKmEzVBenlQvKtFB9erYnqq+TRCxOFksTz3abIbzpybFPoFGhbplA==
X-Received: by 2002:a05:6402:2363:b0:425:bc13:4c8b with SMTP id a3-20020a056402236300b00425bc134c8bmr17084825eda.140.1651568422920;
        Tue, 03 May 2022 02:00:22 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jy10-20020a170907762a00b006f3ef214dc2sm4415617ejc.40.2022.05.03.02.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 02:00:22 -0700 (PDT)
Message-ID: <215254be-da27-2f3f-fa07-7520b38eff5c@linaro.org>
Date:   Tue, 3 May 2022 11:00:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v8 2/2] dt-bindings:thermal: Add Sunplus schema
Content-Language: en-US
To:     Li-hao Kuo <lhjeff911@gmail.com>, rafael@kernel.org,
        daniel.lezcano@linaro.org, amitk@kernel.org, rui.zhang@intel.com,
        robh+dt@kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cover.1651543731.git.lhjeff911@gmail.com>
 <e9f65ca9a2b3205b91210398d743415f6c799d90.1651543731.git.lhjeff911@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e9f65ca9a2b3205b91210398d743415f6c799d90.1651543731.git.lhjeff911@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2022 04:13, Li-hao Kuo wrote:
> Add bindings for Sunplus thermal driver
> 
> Signed-off-by: Li-hao Kuo <lhjeff911@gmail.com>
> ---
> Changes in v8:
>  - Modify yaml file.
>    modify the setting compatible
>  - Change yaml file name.
>  - Modify driver.
>    mosdify and simply the nvmem setting and remove valiable
> 
>  .../bindings/thermal/sunplus,thermal.yaml          | 43 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/sunplus,thermal.yaml
> 
> diff --git a/Documentation/devicetree/bindings/thermal/sunplus,thermal.yaml b/Documentation/devicetree/bindings/thermal/sunplus,thermal.yaml
> new file mode 100644
> index 0000000..1ecf6f6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/sunplus,thermal.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/sunplus,thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sunplus Thermal controller
> +
> +maintainers:
> +  - Li-hao Kuo <lhjeff911@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - sunplus,thermal

This is a very surprising change and was never requested by me or other
reviewers. It is also not correct. Previous compatible was correct.

Best regards,
Krzysztof
