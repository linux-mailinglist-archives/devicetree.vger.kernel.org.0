Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2FE16EC9D1
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 12:08:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231425AbjDXKIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 06:08:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231315AbjDXKIs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 06:08:48 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39DF526B0
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 03:08:44 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-506bdf29712so31581469a12.0
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 03:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682330922; x=1684922922;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6qLk4oJYWz95lxn7w7iAeT2nN/8YiVfH5AAMjjVGzts=;
        b=b682V8N07BcmbxiF4PiIoQXbcf1d/NGnV2JjmsOLEJ1NiOk/7+gHyUrDQ5c0ut7mJ8
         3dgRvRE0JNs0tj+TlNXh2FkeMjwq8hob/nI/xaGY9Yjj3azgRXG0ea5Sz32GUg/fog8Y
         xrFrXupDmzVkMKXOlC4fK54B+OSsECfebR3336/4lA5AISBpIO6DsnLYQUmPz7n4uMnd
         vamiYn6bKd67ZOPY2z6ZH/fadc8I63HmyrGvWO5hMHAwHFXR899M6s3Er2d/qAeu/OqV
         KC/RT38/s3FFJnf7K5YYaViWVYZlNllKrI6Sd/MuGfe0aV8LHk2qNZio60gzjc9BPOQV
         X5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682330922; x=1684922922;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6qLk4oJYWz95lxn7w7iAeT2nN/8YiVfH5AAMjjVGzts=;
        b=S5MTgjE1v3JssCOyxXJA/LzGhvNsys0j/ka4xNstJRcjfIDGKQyp7XhB6qhUbw/oi0
         T8vnQoBXJGR6eaCKWzV6tXq/UfHscc907isFLfLMMS7KBKD+vrJItpaZTJaE68u+5zOb
         S2yxG+7S1h9LXLhFrPLcm9+m91GWAQ9Pu9c2aSwys4WJGzwCFGmGGLbZui5YWzlzAFaC
         nuacWUFyaemdkzMoB1IEIsHONvWHL5hTYaHuzRwHJ4S/hQFA/fbex6MhKcERq7IIwwGs
         meE2jIaBv91eVAu5ceby1WmMq4QoH7XbmEUW9SA5uSAYDFjAoCMTWLL8dKZuU5ffrl65
         nr/g==
X-Gm-Message-State: AAQBX9cfnXDtf1d9mgz76BEykVrtrVjKUmGcArigJU4bU9DyAEArsZwK
        mNAS9gagx8W2DgfpWwppIc/cIw==
X-Google-Smtp-Source: AKy350Y7Y1mfbbZSQYuVQJdixhTkEj4sONlquPRVbemWEIUupD2bDF5/oLveHNYJRor6uEPCFaFKhQ==
X-Received: by 2002:a17:906:4145:b0:94f:1ce7:1865 with SMTP id l5-20020a170906414500b0094f1ce71865mr9370940ejk.26.1682330922679;
        Mon, 24 Apr 2023 03:08:42 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:fcdb:bf53:d053:3a52? ([2a02:810d:15c0:828:fcdb:bf53:d053:3a52])
        by smtp.gmail.com with ESMTPSA id vv1-20020a170907a68100b00957278cfb2dsm3960013ejc.79.2023.04.24.03.08.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 03:08:42 -0700 (PDT)
Message-ID: <430ce91f-8750-12bc-c7af-1dd61812c73b@linaro.org>
Date:   Mon, 24 Apr 2023 12:08:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 1/3] dt-bindings: misc: esm: Add ESM support for TI K3
 devices
Content-Language: en-US
To:     Neha Malcom Francis <n-francis@ti.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        jdelvare@suse.com, linux@roeck-us.net, linux-hwmon@vger.kernel.org
Cc:     nm@ti.com, vigneshr@ti.com, u-kumar1@ti.com, kristo@kernel.org
References: <20230424095331.45351-1-n-francis@ti.com>
 <20230424095331.45351-2-n-francis@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230424095331.45351-2-n-francis@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2023 11:53, Neha Malcom Francis wrote:
> Document the binding for TI K3 ESM (Error Signaling Module) block.
> 
> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
> ---
>  .../bindings/hwmon/ti,j721e-esm.yaml          | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml
> 

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching). misc->hwmon

> diff --git a/Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml b/Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml
> new file mode 100644
> index 000000000000..c5eb7f46cc46
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/hwmon/ti,j721e-esm.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2022 Texas Instruments Incorporated
> +%YAML 1.2



Best regards,
Krzysztof

