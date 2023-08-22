Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB62F7839D8
	for <lists+devicetree@lfdr.de>; Tue, 22 Aug 2023 08:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232761AbjHVGUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Aug 2023 02:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231880AbjHVGUc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Aug 2023 02:20:32 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26FBE185
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:20:30 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so10657681a12.0
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 23:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692685228; x=1693290028;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AdjocTBHOtnth2NKa2sExvTI57TFDAqcca22DEvACmA=;
        b=L574EEwWd5asi4wbA5UwJqrBz+MPhQctyH66wweQd5iFPX84sxkVhGxe57X6QT8eWq
         TMg+5aWTcl5d28OxO+fAbVwmTwL3DMkc+upfQM26izng8203kSAexXco5gXdkpDZAzEf
         YtlFGPRbd/nC1cc8LiSU/IEG1Fh67zN47dNM65Uw98q2jYVMnUrLKeZ7wLz1gitbnqvY
         nrziqlT41sCSTZyty8CHqezoS882l9yZMTfVHBco8yph5vqzRVJjrp0NwMX6mDSnDtb6
         JjvFkp8xRZfIEKjfv0kUWiEZ9Txhbzt6CO4/kwUF8pUgYV+H1zah4RrCjk6cIYlILSz/
         HI7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692685228; x=1693290028;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AdjocTBHOtnth2NKa2sExvTI57TFDAqcca22DEvACmA=;
        b=FEj01Cg1rzX0O8uv32eLLXHgg9Bzq29wYzIcMscZcvCIIW+HqUGEI8gvPfBJJCl59z
         27JLUhrVmiraV5pijR7USh4diHkvujGOI3JKBN9uoOSKgojtNFbRI2f8TslXC8zDvvWf
         hveYuJiHloUU5BmFdSY1GNV3b0SDv+htLvXvb4BVYbhQnOkFZjLQCEPYqlh+u68dgXj3
         aw6vXuveyXvZiq5gRdz9DUel8d6MQmhLhhl0T/BFCal02TtioOYc9K1goTvSGMQuly6k
         /91OX80levumNQhYZ2dMmVxGLwKIb88PugrzvgVBRYhGtLpKX/ZSQMVaEGoCJshQC1Uy
         UpHw==
X-Gm-Message-State: AOJu0Yw+90I3VGtJlB48zqo7ByGQDYHtNPVlBfAO4j/uio4jNbeon0Jq
        8vx/JjeqaH1x8I5DrMGligOQ/Q==
X-Google-Smtp-Source: AGHT+IHDrmAsqqMTvg2qcb0k1Z8N+wmcDtnBH1ocLOrTdRH7lGbN1jLpGxGJ7SMK/CZlULHNLTxY4g==
X-Received: by 2002:a17:906:846b:b0:9a1:b528:d0f6 with SMTP id hx11-20020a170906846b00b009a1b528d0f6mr1662394ejc.27.1692685228219;
        Mon, 21 Aug 2023 23:20:28 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id la14-20020a170906ad8e00b00982a92a849asm7680520ejb.91.2023.08.21.23.20.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Aug 2023 23:20:27 -0700 (PDT)
Message-ID: <27c1feeb-7661-7583-c168-f87ecb14ecff@linaro.org>
Date:   Tue, 22 Aug 2023 08:20:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 2/7] dt-bindings: loongarch: Add Loongson SoC boards
 compatibles
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
        Hongliang Wang <wanghongliang@loongson.cn>,
        Conor Dooley <conor.dooley@microchip.com>
References: <cover.1692618548.git.zhoubinbin@loongson.cn>
 <0c27857ee0ac7e287b24b37e1b6ab9d5cc524ae1.1692618548.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0c27857ee0ac7e287b24b37e1b6ab9d5cc524ae1.1692618548.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/08/2023 14:49, Binbin Zhou wrote:
> Add Loongson SoC boards binding with DT schema format using json-schema.
> 
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  .../devicetree/bindings/loongarch/boards.yaml | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/loongarch/boards.yaml
> 
> diff --git a/Documentation/devicetree/bindings/loongarch/boards.yaml b/Documentation/devicetree/bindings/loongarch/boards.yaml
> new file mode 100644
> index 000000000000..5092314b7a52
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/loongarch/boards.yaml

loongson.yaml

I suppose you might have here different manufacturers?


> @@ -0,0 +1,34 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/loongarch/boards.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Loongson SoC-based boards
> +
Best regards,
Krzysztof

