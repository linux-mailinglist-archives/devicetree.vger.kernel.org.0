Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4057178B79B
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:55:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233187AbjH1SzB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:55:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233194AbjH1Syo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:54:44 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDC98BF
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:54:41 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2bcbfb3705dso54314221fa.1
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693248880; x=1693853680;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n75AuQ1+XXOD3zRSya7hqWKtPwvBzQFzBMHo+oSrVnM=;
        b=GDjjWxs4vTgsdPvM38gEzc2QRSwws9jX7j/ptAST0txDWk3zz9T/9OWdlArUSLKzh5
         7lRZCoG7yr5dOLx8/711cb5ntV3Atdwfxn9sMh3Ki+xw+jksJMrdgunciMdVrp6zNX/2
         Xzb3jthyVUXF9yolG6nrIVoow8JOcrguLFpdQTAWMozkALzE0yK9w2lut+DN5Wo8tPZu
         g6KYd85I2w4H1SHB2hLhZR209TVTpW83mnMMv5mk+iBlGhBNlj/dwFzjut54nFtoBVHD
         mJTbm6Z3K7IKL3oUapdj66gsDIrUvdpbRSdNlfHj+5Dfa/fTSWO9BI8/cgr7prQRywSY
         UB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693248880; x=1693853680;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n75AuQ1+XXOD3zRSya7hqWKtPwvBzQFzBMHo+oSrVnM=;
        b=Wyl8M5oLO0rU4TCq4+OvFVzsxPEh/PalLAc1hvsPwXtiYln3GWzBt/okF43d5TnPQo
         /2z+/gVK6x5FmCt88ElL/LH6sqXbNOvTrjcXpQ+2lgc+LXQytQdyMtB6gOuHwAKnSj0k
         d0lJUgXxHtWpB+838AsG2BpbpG5VFOWROcSeqatMjBsFwhrFlCDthQeS1xsnY65XX+Wy
         hWtLcNwB6FldkCRdolXZkNv6KEyb4Nx/gEeN+UjH/FeP6fZGoaqSxtJPHKO2IZuEE/hd
         XtJE0uBroWXcFjPyFh82slL+PBH8PRCjGKvWquSq1nnASt9DMyz0Qcfy5CjRngZ+6Kh4
         6wqg==
X-Gm-Message-State: AOJu0YwLdTMJEIaaUWIm4VjC85LSkQr1VgUbNpUss5I3nVjOcgAdd6Oi
        L15FxRoAQnAtm0MedZ7XdhZnyA==
X-Google-Smtp-Source: AGHT+IFpEHopqd9Bhudfxj4r8NkGa3yaMFscXfe9H3NWQaE6WxDnY14WSWtSm/oRZD0D/8ZrHLgJiQ==
X-Received: by 2002:a2e:87d5:0:b0:2bc:f28f:9147 with SMTP id v21-20020a2e87d5000000b002bcf28f9147mr7768688ljj.48.1693248879940;
        Mon, 28 Aug 2023 11:54:39 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id v17-20020a17090606d100b0098669cc16b2sm4912262ejb.83.2023.08.28.11.54.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 11:54:39 -0700 (PDT)
Message-ID: <d56cbf95-22b4-391f-dcb0-12a225d3e084@linaro.org>
Date:   Mon, 28 Aug 2023 20:54:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 1/3] dt-bindings: thermal-zones: Document
 critical-action
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, daniel.lezcano@linaro.org
Cc:     rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        linux-pm@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230828141341.1583591-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230828141341.1583591-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 16:13, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Document the critical-action property to describe the thermal
> action that will be taken after the critical temperature is reached.
> 
> The possible values are "shutdown" and "reboot".
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Make 'critical-action' to be of string type.
> 
>  .../devicetree/bindings/thermal/thermal-zones.yaml     | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> index 4f3acdc4dec0..a01456356d9f 100644
> --- a/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> +++ b/Documentation/devicetree/bindings/thermal/thermal-zones.yaml
> @@ -75,6 +75,16 @@ patternProperties:
>            framework and assumes that the thermal sensors in this zone
>            support interrupts.
>  
> +      critical-action:
> +        $ref: /schemas/types.yaml#/definitions/string
> +        description:
> +          The action that happens after the critical temperature is reached.

How some action can happen? Don't you mean that OS should perform this
action on critical temperature?

> +          Possible values are "shutdown" and "reboot".

Don't repeat constraints in free form text.

> +
> +        enum:
> +          - shutdown    # Trigger a shutdown after the critical temperature is reached
> +          - reboot      # Trigger a reboot after the critical temperature is reached

The comments are copying the description and enum value. Not really helpful.


Best regards,
Krzysztof

