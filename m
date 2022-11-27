Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 196F1639D05
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 21:51:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbiK0UvZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 15:51:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229861AbiK0UvJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 15:51:09 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61A73DF02
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:51:02 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id b3so14586249lfv.2
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TcyBF1S4bUpKFqqC37gpW44jRKav1Bn5Tz2Jq35WJNo=;
        b=u8k3Lmkynp84WyAtcEBI/uGTcpuSQdAr73TY9D69J36D6sde7JiK8nYdkWgbeKJs17
         FgdTR6EndWjiZ57r+m//dkS3N7h5v9gHNfufZWC23jwLgHZb9C8TXPAzDnz+wurCEAgI
         Gy1JzjIgutt5ScGpExvw6G50wNglmmLdM2HEIQQsbOSAtd1EY4GiVBfIATwQ2f23DDfL
         ktrf17ruj/tXC4EeyuCvn9suFjq2mbJN8yWkhsnXUuceBJnSfuNH8KzjmOesn7Z3ZWgV
         JdxMmPuct/WRg3U4MJXzI2Xg6dTwpsTpI1VFYXs9j4TRbH3Lt7FcEtRjeeQzgUG8hrO3
         Wrog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TcyBF1S4bUpKFqqC37gpW44jRKav1Bn5Tz2Jq35WJNo=;
        b=m52fAOv2/3ulYn7GNPPgfo88++7A2o2oW040lZXugLsctKJO7bhvS4H0phuQDsfYWw
         83o3ucwsMeaoyqqM5xcRC1eDb8I4d0SJJxEJ3ygvFRZyOKGcthmsf9GVvStEC5qP7suZ
         o6rqcV6udeAaTuDhD+ciZr52fVRey2TLChHgTUzUJ9tQsId9drMzbHcz5N3r/Gt9PU3U
         iR9EiEBuHuDpTdy+0FzjPiIJKJwjaRQ1sE/MlKOkPKVFNoXoMcYQjBs+7L9QsgAEwZJt
         k7f6YFOfFpQViXWAyOm6H+MzTXLYSWeMu/PHoW0QOWfELVyB9MwQIqf56fiI6NgyxmCq
         qHZA==
X-Gm-Message-State: ANoB5plYGGR0zZKfRImRkU31Sox1nHMO9ABFsEqx8sxeOyLZ7bZdO1uG
        gRPqw8Kfs9bIL341mnq9Ci5cDg==
X-Google-Smtp-Source: AA0mqf6y7qiqxK6UAntRevJQyavUOzqGJ5cu5MCIJRPSYHx2H37macfXsXW6QTuKSEpxfcOO3x71jQ==
X-Received: by 2002:a05:6512:344a:b0:4b4:b5d8:865e with SMTP id j10-20020a056512344a00b004b4b5d8865emr15559101lfr.503.1669582260800;
        Sun, 27 Nov 2022 12:51:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v19-20020a056512349300b0049876c1bb24sm1401977lfr.225.2022.11.27.12.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Nov 2022 12:51:00 -0800 (PST)
Message-ID: <ff8520c3-75d6-fc0c-fe05-20d19353c214@linaro.org>
Date:   Sun, 27 Nov 2022 21:50:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH V3 3/5] dt-bindings: i2c: add bindings for Loongson LS2X
 I2C
Content-Language: en-US
To:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Wolfram Sang <wsa@kernel.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Mika Westerberg <mika.westerberg@linux.intel.com>,
        linux-i2c@vger.kernel.org
Cc:     loongarch@lists.linux.dev, devicetree@vger.kernel.org,
        Huacai Chen <chenhuacai@loongson.cn>,
        WANG Xuerui <kernel@xen0n.name>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jianmin Lv <lvjianmin@loongson.cn>
References: <cover.1669359515.git.zhoubinbin@loongson.cn>
 <57339e73b6c0bfe446e19a7f55a48b7ca640b9ec.1669359515.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <57339e73b6c0bfe446e19a7f55a48b7ca640b9ec.1669359515.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2022 09:54, Binbin Zhou wrote:
> Add device tree bindings for the i2c controller on the Loongson-2K Soc
> or Loongosn LS7A bridge.
> 

...


> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c@1fe21000 {
> +        compatible = "loongson,ls2k-i2c";
> +        reg = <0 0x1fe21000 0 0x8>;

Plus what the Rob's robot told you - code testing examples uses 1 for
address/size cells.

Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

