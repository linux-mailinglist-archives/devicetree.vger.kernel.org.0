Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB7945701EF
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 14:24:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbiGKMYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 08:24:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbiGKMYH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 08:24:07 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E109262C
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:24:06 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id e28so4791777lfj.4
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 05:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=2oTCLkQtsDP93U3vMV44y4gSAiI/fqTL0rm6izcUsAg=;
        b=cgbaJ0roxYFXycEjU0l3fVgaguaOZQ1ySDp775sWP/TFSxfI2RruG4bnjhrQ6CDtIM
         Ul6hDyd9Ol1Lbqw3xlSvDB30mydi8ZTK/zObMZecyG7xh0o0Kl1XiRmVamTFrM8nQocz
         6m+ZLPlv7vWBLc6XmffVYdn5Us2g4wad5XI/8xByCGcRBgOl5zRPuetWeahpZDMjq7kL
         wKSAHeKMeTyjeLvUl+UrMphGdVzGk3l+cKGjlHi94J2DkmA6CaOFDljoNKy47Tj4d2Vz
         OemYSTfUdm1ZlvVTAtp73Qk3TFT4K9JPlfUpxnf3sdeWKq3/4wkE+SGtGeYI8zyAMlKx
         n6QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2oTCLkQtsDP93U3vMV44y4gSAiI/fqTL0rm6izcUsAg=;
        b=KOFmsEnTrvQXh6xr2FK6dclvDt8NAzyXTA1pPTOiPgISHgLuwA9jQMfJJ+FDI4iDri
         5TwAqwxYm+tp7Eyq9Gal6VadxD6Qpne9RCSHfHuOrobIRdzTAlVyNzCpRVwau+Oon0Ro
         Qh/dqQb7xpTqrlaHw3ebv4mfOyKhZWqFpExDzeD3IyB+A2EtXYl6C5KBIgwPEuA33FIA
         EGnuxXyZVY45KVLChS5TB6l6CQvbnFuVtMai6C/8UItLsYHHcjIzH6RYEySKW2VfZFSI
         5Ubrzeus8V//6F6MKkVkXZoy4yWCR4uIwuvJfRv/l18X32IwS3FPADeDg0hA7e/AmPnX
         pR/A==
X-Gm-Message-State: AJIora/VjmOyf5HLcRXDJrRjNMYx+CEulzdDbXPdF7he96Bsyk4NuNSQ
        S66Q3M+3ZLHrcbzJ6MQ7/oix5bTe0izX4+Jr
X-Google-Smtp-Source: AGRyM1vtVSWHfLrMLp7iDrky4LYK9WumROoqBSqCRry5RVdQ6cytd2SybcglaoEyoIoiuqe+3ncIyg==
X-Received: by 2002:a05:6512:398d:b0:489:c7a2:be6f with SMTP id j13-20020a056512398d00b00489c7a2be6fmr8968727lfu.11.1657542244465;
        Mon, 11 Jul 2022 05:24:04 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id c3-20020a197603000000b00486e63039e6sm1508301lff.183.2022.07.11.05.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 05:24:03 -0700 (PDT)
Message-ID: <c853512b-859a-11ae-b933-c85fec7f9e36@linaro.org>
Date:   Mon, 11 Jul 2022 14:23:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: dt-schema non-array items property
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <f86cbb55-a548-537a-4108-46f10718c284@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f86cbb55-a548-537a-4108-46f10718c284@seco.com>
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

On 08/07/2022 22:12, Sean Anderson wrote:
> Hi all,
> 
> I'm a bit confused about how the items property is supposed to work.
> According to meta-schemas/string-array.yaml, the contents of items may
> be either a list of enum, const, or pattern, or an object with any
> properties allowed at the top level. However, this last clause doesn't
> seem to apply. If I try to use it, such as in
> should-work-but-doesnt-names below, I get
> 
> test.yaml: properties:should-work-but-doesnt-names:items: {'enum': ['a', 'b', 'c']} is not of type 'array'
> 	from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
> 
> What's going on here?
> 
> --Sean
> 
> %YAML 1.2
> ---
> $id: http://devicetree.org/schemas/test.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
> 
> title: ""
> maintainers: []
> unevaluatedProperties: false
> 
> properties:
>   compatible:
>     const: baz
> 
>   verbose-names:
>     $ref: "/schemas/types.yaml#/definitions/string-array"
>     minItems: 1
>     items:
>       - enum: [a, b, c]
>       - enum: [a, b, c]
>       - enum: [a, b, c]
>  
>   non-kosher-names:
>     $ref: "/schemas/types.yaml#/definitions/string-array"
>     minItems: 1
>     items:
>       - enum: &abc [a, b, c]
>       - enum: *abc
>       - enum: *abc
> 
>   should-work-but-doesnt-names:
>     $ref: "/schemas/types.yaml#/definitions/string-array"
>     minItems: 1

You miss here maxItems, which is not correct (no upper limit). This is
why array type is expected.

Best regards,
Krzysztof
