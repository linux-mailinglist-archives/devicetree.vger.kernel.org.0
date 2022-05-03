Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 411605188D8
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 17:42:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238683AbiECPqQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 11:46:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238521AbiECPqP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 11:46:15 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35C922CE06
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 08:42:43 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id l7so34270100ejn.2
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=11jXtpnvRUPC/KRRG8tH2eowrbQgqPMtLwttUsKdEBs=;
        b=l0UWrpYiK6HwDKRByqNJ3y2uZFFdvaV8ANIW3JNVAItsVDKpa35XU0bfLvkTASkMBv
         +OYfZwDZEyVjpC/rnG1E3dCdtsJ6zJWvIaU0QLAnRYlpGYiWBnv2HGA3bsT55oCtJ8j+
         si18E5OWo0BZ5uAJgB2CIAbB7q9eW9rt7IrK8WmwCeyf+uhQw8rU1BfsSAVEAvmqSACZ
         n/jivP9CyFypRShQX6hr40Kcj2DOzb9bcGMYJgqD+hWAq7Jx/zOVyavrysS920ixUVSs
         cnuasOnTDWOLizp4EDGrpvpTtfKHYNzcFvMk62KyA1/QE0bJJbiGLbg/gNkO/Q4NtPqz
         KH1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=11jXtpnvRUPC/KRRG8tH2eowrbQgqPMtLwttUsKdEBs=;
        b=t9UQDSS5xI2HOjxCStDJG32rDBYoZ3Y82iLZM7cvcH/zjK1cDJhBxULu7/4kJIEKgh
         Xd9QKRgOwxf552QUJlopccbcqgjKE6iBKcY1iS63xt0j+abVazgW2uoeMwagk5uGKlh6
         73EugoX4+q7AHEapHCn4dxqMmTaPFnE1kwMqa9Yheb6+fV57HMe7ZzKmPGgUvhSSEft0
         k2q5T0Zfl5vlwt5YLlvEC2+VKMlYpTTC70jdAqgn1uxy6iNGsnhtmsg3vknKQL4sQKSs
         kXns4UGnfYpQu02c5qHoKMMxwR0j+ULt/H2jeRpnk2Pgm5/zmkte2Y7PENRvUKibtex5
         RNrw==
X-Gm-Message-State: AOAM530MkG/QMLVjG+YEaJt3Tb9nwEvTuMIz26wU1L9OzFmd7K3+NFgl
        LW2dERKW8lKQLC9qaND2fJv5AA==
X-Google-Smtp-Source: ABdhPJymi4qyD/go6KagiE9Q2ldpmJnc1Ds2F8U9KW18H1QHIbUQ3tb99imrNDebapNF2Qgl/+X0Ig==
X-Received: by 2002:a17:907:3da2:b0:6f4:78d8:7c23 with SMTP id he34-20020a1709073da200b006f478d87c23mr5396961ejc.233.1651592561803;
        Tue, 03 May 2022 08:42:41 -0700 (PDT)
Received: from [192.168.0.205] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jl26-20020a17090775da00b006f3ef214dbdsm4701696ejc.35.2022.05.03.08.42.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 08:42:40 -0700 (PDT)
Message-ID: <2280875f-fbd8-0dfd-5a0a-1d7fceb856e4@linaro.org>
Date:   Tue, 3 May 2022 17:42:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/2] dt-bindings: google,cros-ec-keyb: Introduce
 switches only compatible
Content-Language: en-US
To:     Stephen Boyd <swboyd@chromium.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-kernel@vger.kernel.org, patches@lists.linux.dev,
        chrome-platform@lists.linux.dev,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>
References: <20220503042242.3597561-1-swboyd@chromium.org>
 <20220503042242.3597561-2-swboyd@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220503042242.3597561-2-swboyd@chromium.org>
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

On 03/05/2022 06:22, Stephen Boyd wrote:
> If the ChromeOS board is a detachable, this cros-ec-keyb device won't
> have a matrix keyboard but it may have some button switches, e.g. volume
> buttons and power buttons. The driver still registers a keyboard though
> and that leads to userspace confusion around where the keyboard is.

(...)

>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: google,cros-ec-keyb
> +then:
> +  allOf:
> +    - $ref: "/schemas/input/matrix-keymap.yaml#"
> +  required:
> +    - keypad,num-rows
> +    - keypad,num-columns
> +    - linux,keymap

else:
  properties:
    function-row-phsymap: false
    google,needs-ghost-filter: false

Because these are not valid for the non-matrix-keyboard case, right?

Best regards,
Krzysztof
