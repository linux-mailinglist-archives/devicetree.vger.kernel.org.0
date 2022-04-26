Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE85D50F32C
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 09:55:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241672AbiDZH5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 03:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344372AbiDZH44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 03:56:56 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9CC1113C91
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:53:35 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id z19so8005454edx.9
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=PKj9VZlz+AF0K6JftzV4xbwDLiquD/QBKxhzqnv4Ff0=;
        b=NGxAKj6s7aebO/0U7Pd48rc1TNzzmZdRw3TonawDq2937wPb9wkBAgNvmics7f7BMe
         4eLBr91bnVk8HakLRiCV7EkiAoNV1bscLmWNySym6w8LZ3bozjbW174N+7edjLdmZphW
         tmXt/VqVyMAWa8y6xx+5k574gX+UuCTgCmar677kSgc8VuUCKu4i5AqEaCgM8r+VRg04
         qC01eN9IwF0szYWIk3Kc+BYF9poOK079x2S/p0VUsDMNceiJYW5fLiDhokYzxdvOC5em
         TznPDAXTPcKSbPB9i/yWHXThCys1G6uWMIIaXnSwMYf/bBFCUcO+8ywO5aMDppJkb0En
         ybtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PKj9VZlz+AF0K6JftzV4xbwDLiquD/QBKxhzqnv4Ff0=;
        b=cSF4fyQFPB1UwVhkDQL1rkasD7sYR+EKeRNi9j5gIKYLrX97HLIcXaJRF8jo97Z6ve
         +QPaKa5g3c0e3yc+DK2Xsmiuzw79JG4qtw9QJdgcDdlvcooWAK9gSRkGFDKf+3gWO30T
         p4VdXXlB/IEr57h8oqb+gecEMl6lH7jvUjEcadOwUf71yNE0Nl8RumHDQU+FLDPgZOWv
         B2FSVmFdCrfFuRTSjwN6JP336amc3hM5H24OtGp1u23uBmokvln36NSi/M/k/9gJQwd9
         RVLTxAMwNgBmibrjvtF3ci3P+We1rwuSpa6spahnoiIaPg2VcWAdF/VXSJs+bPvkktQq
         kZqw==
X-Gm-Message-State: AOAM530yWkszjJTYGEZJxAKe1ond/rkJ/ywzGj1QfWsrA4RVIJypw9pA
        daa05d6MAokNqzsqsX6asK7d9g==
X-Google-Smtp-Source: ABdhPJxYaJZLHrMQjNCNIJfKmbEHJjkyAxu5VhPrvFy/d9Ii5GCTjzTtqd7dDPISmzCigYAHJMWeOA==
X-Received: by 2002:a05:6402:d0a:b0:425:d455:452 with SMTP id eb10-20020a0564020d0a00b00425d4550452mr15490565edb.259.1650959614307;
        Tue, 26 Apr 2022 00:53:34 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id lb26-20020a170907785a00b006ea4d2928e5sm4437809ejc.218.2022.04.26.00.53.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 00:53:33 -0700 (PDT)
Message-ID: <f822fc7a-7c47-d8f9-8ef9-fda2c7832926@linaro.org>
Date:   Tue, 26 Apr 2022 09:53:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] riscv: dts: fu540-c000: fix duplicated dma compatible
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Zong Li <zong.li@sifive.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        Bin Meng <bmeng.cn@gmail.com>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220421065401.9303-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220421065401.9303-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2022 08:54, Krzysztof Kozlowski wrote:
> Remove duplicated compatible to fix error:
> 
>   u540-c000.dtsi:171.4-42: ERROR (duplicate_property_names): /soc/dma@3000000:compatible: Duplicate property name
> 
> Fixes: 7eba954a8de8 ("riscv: dts: Add dma-channels property and modify compatible")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Hi everyone,

This is an error which causes compilation to fail. Such patches should
be picked up faster than later, because it breaks various builds.

I'll take it via my tree.

Best regards,
Krzysztof
