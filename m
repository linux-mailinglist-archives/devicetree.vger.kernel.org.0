Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C76D7839D7
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 08:19:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232976AbjHVGTC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 02:19:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231880AbjHVGTB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 02:19:01 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10BCB185
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:19:00 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9936b3d0286so546705166b.0
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692685138; x=1693289938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rBZR80HMcA0hG5+MQLHG3OGyFYuzset5UuwaFr9JmIk=;
        b=Jowpxuc47sPnHuzsjiRVCa/pCcdQ7vK8OGlfPMZYtljpyS2jp1aZLM1E0XNgDc89Iy
         XrPQexTD4mRQjMouXxRKDST9EbkkPIASWqa3NC9c4ROLBv/P+ZD9uUJUoJzuKSmN/JfG
         0Eesrqjflimy55pQCiq0z8fn1S55V8YfhFr/xwUHOKZt8dcwTc5DkrYg0P1LrR58P8Fe
         DtmDzwNtL5hgthn34Uv2277OEyCApvoYzAU9eO9b5PrnIGnPX0U9+oyWW7WrLPBxLzA1
         rE+JNnGeg5pBm2QzjzCD3a1PZPOhGA8ZK/m+StqatLT71rp4ENcjlSEU5Jq04FO2DUhF
         1j3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692685138; x=1693289938;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rBZR80HMcA0hG5+MQLHG3OGyFYuzset5UuwaFr9JmIk=;
        b=LqWg++XSSgRs7+tqCeVKXwhiIWVKJOV5LHkbBTRRa8L5LXR9QTq/QF0r+TkomBJTJ1
         c5VGjy9Hgx7Y0UkMgPbhH8RBG3+hjaoU9EldTGHLmzmQVs2e2xu4z571n5AdbbYwnKqJ
         +ZTl9B4bg9IMs/t1wN2si3RJazOEAOorBYUR2nXIJTgbbBoZMIoz+nt5XrDBIo9DbBpx
         FpWixbj0K7+77dCCgPue7lCfeyNPNE4zdjC2e8BSqGFhJmR746F0kQ7oxBmett9Ns9qv
         n4lIvWnRrSrV1zCPKjrJdDrikYQPdBiT6Ns2gQkUjIgz96UafUtuUA/rUvvKq0FGgVp+
         o3Sg==
X-Gm-Message-State: AOJu0YwdmNCMOTJCijm/iTZG0giFaFSQSTmahwM7tcDL5ry9CwyNIuUf
        dM41VlqCZ37/f02sHp+rhM+PXh/n2Q5Xmj9QbmQ=
X-Google-Smtp-Source: AGHT+IFd52n5Iwi9201bIJZvqjI/dEisxoNzxRDacGsyRKJKy/1icM7UFynuUyaQ6xzom3FTCA8C1g==
X-Received: by 2002:a17:906:3001:b0:99b:22dd:f83d with SMTP id 1-20020a170906300100b0099b22ddf83dmr6680153ejz.55.1692685138436;
        Mon, 21 Aug 2023 23:18:58 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id h27-20020a17090634db00b009a193a5acffsm3767614ejb.121.2023.08.21.23.18.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 23:18:58 -0700 (PDT)
Message-ID: <305b0572-8625-9233-8d65-393616a72807@linaro.org>
Date:   Tue, 22 Aug 2023 08:18:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 1/7] dt-bindings: loongarch: Add CPU bindings for
 LoongArch
Content-Language: en-US
To:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev, Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Hongliang Wang <wanghongliang@loongson.cn>
References: <cover.1692618548.git.zhoubinbin@loongson.cn>
 <47d5ef30a513a7185a6ea94d8e6f6d9e393eba92.1692618548.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <47d5ef30a513a7185a6ea94d8e6f6d9e393eba92.1692618548.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2023 14:49, Binbin Zhou wrote:
> Add the available CPUs in LoongArch binding with DT schema format using
> json-schema.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>


> +
> +allOf:
> +  - $ref: /schemas/cpu.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - loongson,la264
> +      - loongson,la364
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  device_type: true

Drop

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks

Best regards,
Krzysztof

