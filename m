Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F185A4FE127
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:53:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354618AbiDLMy5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:54:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355023AbiDLMxq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:53:46 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68486B534
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:23:21 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id ks6so12336087ejb.1
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=r6b8JFq11sNhYGggl2Q6152OsWAlQiwPXZOrteDY1io=;
        b=U8EnQp76eVCpuAh4hUUJHaytletJJ0CXI2Tm9BHtkUc7jf2Y8uaAge+oo99FFOTca1
         J3fpbLnb6JMTQYK0MKkt3vrHymJcAe0n9XZimX8m7ukDK8RjzwLQeUi79+KqoS3B2BG+
         6O8Nh9o94LVs//35xp/5Z0v/6xr0ff1/3D6N8KrBE2dJvg7KJZpH74JXNzROskAnSrS9
         xB7RmP97oFOltI57mdJIdPzZQzOnIwKNdv05nb1U1VNx4CMzCHVogkAz44gryVfHnjDr
         ytzZQ9km+nT/vnCECmGEu+1mzYnE1Zn9xsOWEP/kx0tSJpA+nz5zxQcFoYvp8on4S2T8
         lLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=r6b8JFq11sNhYGggl2Q6152OsWAlQiwPXZOrteDY1io=;
        b=skRA8wLAM1NFhL726wue1zTnnDZrM+VMetXKu3dvv/TiU6Q/0imsByE5cDRZNz5lqG
         k0iS6G0iQyQ7T/BAcjFNFdCsFCVbv+mHhkQIrbp4mFlHbYFAVyRwvMpnAUHfM2A2/zUn
         wh6WWyyBjQA9UKTEjgpagDBtaYU3/bucWjAZR6oUfoFtGdopOw/WNBBvV+A1zoljRDki
         rh/16MW3VrtDZAlm6O1+7pybzUMNagqacCoD5WWcgADKE0J6fpsfZlKo0Qdw6rrTfj8+
         rneU1EGuncvVWpc9XmA72rnzUFhk/VAIvTnrFyj4HBOJ2CjHveuAdhnGaK1VZV/CE+i4
         QHbA==
X-Gm-Message-State: AOAM530QdzxbkOoNlGjkxHE9lTstRjXuxVuVwG3D+wUKVMkTFyeY3xCW
        Hadaj1AqxiL6GKmuhKeLB/aTV8kRzZ/p7U5u
X-Google-Smtp-Source: ABdhPJyEBLbeKAZrs4DyQpkDkXw20Cx5pu5Nj9atDR6ghzvrky7sPl13Spgp+x5+sYg7WaL83z8PUQ==
X-Received: by 2002:a17:907:6e25:b0:6e8:5976:e29c with SMTP id sd37-20020a1709076e2500b006e85976e29cmr16976105ejc.645.1649766200281;
        Tue, 12 Apr 2022 05:23:20 -0700 (PDT)
Received: from [192.168.0.195] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id 25-20020a170906311900b006e87e5dd529sm3385978ejx.70.2022.04.12.05.23.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 05:23:19 -0700 (PDT)
Message-ID: <ad2a3830-d77e-7460-42f2-03dfbddc42f4@linaro.org>
Date:   Tue, 12 Apr 2022 14:23:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/7] dt-bindings: ufs: Document Renesas R-Car UFS host
 controller
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        alim.akhtar@samsung.com, avri.altman@wdc.com, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     jejb@linux.ibm.com, martin.petersen@oracle.com,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20220412073647.3808493-1-yoshihiro.shimoda.uh@renesas.com>
 <20220412073647.3808493-2-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220412073647.3808493-2-yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2022 09:36, Yoshihiro Shimoda wrote:
> Document Renesas R-Car UFS host controller for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../devicetree/bindings/ufs/renesas,ufs.yaml  | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ufs/renesas,ufs.yaml
> 

Thank you for your patch. There is something to discuss/improve.

> +allOf:
> +  - $ref: ufs-common.yaml
> +
> +properties:
> +  compatible:
> +    items:

No items, so just "const: renesas,...."

> +      - const: renesas,r8a779f0-ufs
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    maxItems: 2

No need for maxItems. Please test your bindings with dt_binding_check,
because you should see a warning about it, AFAIR.

> +    items:
> +      - const: fck
> +      - const: ref_clk
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +

No phys. Are you sure you don't need one?

> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - power-domains> +  - resets
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r8a779f0-cpg-mssr.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/r8a779f0-sysc.h>
> +
> +    ufs: scsi@e686000 {

Node name "ufs".

Best regards,
Krzysztof
