Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08A7B755CE1
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 09:29:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbjGQH3z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 03:29:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229772AbjGQH3y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 03:29:54 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F21F186
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 00:29:53 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-992b66e5affso594410266b.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 00:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689578991; x=1692170991;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rReCVFYee/yGUM7XZ3iRLWyfw7FhCzkdqRLH9Zjfw6U=;
        b=PeDIBzoG3C5s0UUNsV9m0040W7pLbmCU1FqLL2czoylDiej5CQypZ+liZSFcaPKm/o
         2HlsEO+8XBGpAW9vNlAgHhi/NdD+IUqlb5vpON7eifVnAwMBxInWvQPingBGEnyBC3yK
         QdGbWAFlduX+nUsazjCZ41pJfOKq4oTSbwtBHMQK4Roryv1uxOGDdJ+iW3lPUrzDCXRG
         sBK/Ylcnpt32q12NdFhD8ptDlDS6I7hji+9yhkMWTukCk88sn1ApkccD7tQFjQ87UeOg
         cgbZLmm2i4rGJ8vtrZArkAYQoWYWvGsDABPBBjmUjR1QCZec43TY2Jh8/NpiGy2jSPI3
         uKeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689578991; x=1692170991;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rReCVFYee/yGUM7XZ3iRLWyfw7FhCzkdqRLH9Zjfw6U=;
        b=Yu+v6n1LYFxMqvXnUL9OFKm2lKWm8fxhjy6Y+lPiS6q6BpRSvPiJsbsC2ALWH43hDk
         EMNt+/uO0bjz4NQVBz8DeDiDKxyxE1Bf0cMTQ5On7/c8qnPMAHY8N5EO8A4xjgFDuUYw
         dD9RdKsLDDxHv6GhFRS1Oklx+DdaIAPObB4O3SSf+HtIf+HAxHhcv3OdAjrx98ScBiHT
         mS0ZzpeRY9j/e+ylKGhkCaa7SMPwjOvJ7JMM097j4cHaU2SXCD3kZapmwYA1zjQnYaJF
         5/Gd/SfMSUpy/MSmks2ZFb/mlqjmkTVsvB21SYj/nDgcFp1TRi+vkbPPo+uHSSfWExcU
         dWfw==
X-Gm-Message-State: ABy/qLacwprhZJo5bFCs3EkCyrwSfRCxkNxuK6ujTnXXaBXAoQYJAAU2
        2qC97qw5Xt15a2J2gEr26KIEEg==
X-Google-Smtp-Source: APBJJlGqpg7l7AYEFoORxE7kx/O7QvzrLx1fhEfmx+uK+tDkEMYYRhUr4kegL7+LH4+QJ58h1Zwd+A==
X-Received: by 2002:a17:906:b04:b0:992:d013:1135 with SMTP id u4-20020a1709060b0400b00992d0131135mr10072944ejg.63.1689578991547;
        Mon, 17 Jul 2023 00:29:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id g18-20020a1709064e5200b009930042510csm8830347ejw.222.2023.07.17.00.29.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 00:29:51 -0700 (PDT)
Message-ID: <19a7dae4-a9bd-187f-49f8-fe9c47f44eff@linaro.org>
Date:   Mon, 17 Jul 2023 09:29:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 02/17] dt-bindings: gpu: Add Imagination Technologies
 PowerVR GPU
Content-Language: en-US
To:     Sarah Walker <sarah.walker@imgtec.com>,
        dri-devel@lists.freedesktop.org
Cc:     frank.binns@imgtec.com, donald.robson@imgtec.com,
        boris.brezillon@collabora.com, faith.ekstrand@collabora.com,
        airlied@gmail.com, daniel@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, afd@ti.com, hns@goldelico.com,
        matthew.brost@intel.com, christian.koenig@amd.com,
        luben.tuikov@amd.com, dakr@redhat.com,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
References: <20230714142526.111569-1-sarah.walker@imgtec.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230714142526.111569-1-sarah.walker@imgtec.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/07/2023 16:25, Sarah Walker wrote:
> Add the device tree binding documentation for the Series AXE GPU used in
> TI AM62 SoCs.
> 

...

> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: mem
> +      - const: sys
> +    minItems: 1

Why clocks for this device vary? That's really unusual to have a SoC IP
block which can have a clock physically disconnected, depending on the
board (not SoC!).


Best regards,
Krzysztof

