Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53FC9589102
	for <lists+devicetree@lfdr.de>; Wed,  3 Aug 2022 19:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237232AbiHCRK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Aug 2022 13:10:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231966AbiHCRKz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Aug 2022 13:10:55 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12D121583D
        for <devicetree@vger.kernel.org>; Wed,  3 Aug 2022 10:10:53 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id i128-20020a1c3b86000000b003a3a22178beso1237908wma.3
        for <devicetree@vger.kernel.org>; Wed, 03 Aug 2022 10:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=1fAk4ASz3j0xha63REYMD8PuhThvSqQh4ahLrujukbo=;
        b=fs8yHgiyhdA1z0EfcjsTOlbF/Qf13OpncAruAPpIot21aLel7s2ehUdyenO25g6CQj
         NVUtOYE2bsobRFwH8pWvNKZGKGKh2++uX78eKQKbOSvpp049wjuIeULxUWj4DmU1l6Ie
         78yNqus2CplIZdOcptHaiVXjJZjNzhv9CGbHZ55Q86RgVAuQLa8eEtZ0UDxLJyQBpXes
         YAdyLSUklyNf/ZNpfzEOB+FUj6SEkUGmLO8kj3dc2jFTrj2U9TGfv2IGhgSXJarD1UFp
         AAtuAJIOWf/ylmYmEWjK2c/vJ10ZklcAXN+aHqDur6Qkk6ebGjYwdLueICwtvwTbeqLP
         Ytrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=1fAk4ASz3j0xha63REYMD8PuhThvSqQh4ahLrujukbo=;
        b=ILbcwB1yitOMW3a5j0S+S9EjehhKB5Sf7Y1E65f62GD/DogLQacxshci/E1uFbXNIn
         tzz8Q/uc/GC+w5ZxCvHRoygjOFJvi3mZcN6s9Hy2eOvK5M1PeYqIYcSn9VfPJZPg0b4G
         YCRX/kYAiMYquhjyQe+ILhGrIhusOuD6fb+MzhSV2pUTifoGUTqVuBCdYWQkxXpFpouV
         9r63yw8g1Az8SQB1ikhsjuTRag+HojdpKDn9MAZzPn7IdnntKWUgzu6d7/Yu0EtUwlAK
         NBDiDtsnXj066ns8/b3uVNPmxbkwWNYkdAA4j2yJ4vwvNQmH8BqOYoXtBfcRTboM6OdN
         OfoA==
X-Gm-Message-State: ACgBeo0NVXk7cu75RFFlVn0EeCBU5nb6+UDG3tp8h2d100u6EMVo9Q/g
        gMHqUsantJPqyc8VCTX7FSV8ONkBrv1BDgSr
X-Google-Smtp-Source: AA6agR5gNYn6xzGqz1YkXULMVMLoYYGFqBEwcNhkUvbXkMokw4Rv8B9RQK07KqPxYcYtx73VEWTlDQ==
X-Received: by 2002:a05:600c:4fc5:b0:3a3:2d73:c147 with SMTP id o5-20020a05600c4fc500b003a32d73c147mr3525753wmq.197.1659546652339;
        Wed, 03 Aug 2022 10:10:52 -0700 (PDT)
Received: from [192.168.2.222] ([93.107.66.220])
        by smtp.gmail.com with ESMTPSA id f8-20020adfb608000000b002207a0b93b4sm2791809wre.49.2022.08.03.10.10.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Aug 2022 10:10:51 -0700 (PDT)
Message-ID: <673492ba-caad-bbaa-4952-0ad1dac6eda5@conchuod.ie>
Date:   Wed, 3 Aug 2022 18:10:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: DT schema warnings on Risc-V virt machine
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20220803170552.GA2250266-robh@kernel.org>
From:   Conor Dooley <mail@conchuod.ie>
In-Reply-To: <20220803170552.GA2250266-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/08/2022 18:05, Rob Herring wrote:
> Hey folks,
> 
> FYI, I ran DT validation on the Risc-V 'virt' machine and these are the 
> warnings:

/sigh
There was I thinking I was almost done with dt warnings!
I guess I'll take a look Rob, thanks for the report.
Conor.

> 
> /home/rob/riscv-virt.dtb: cpu@0: riscv,isa:0: 'rv64imafdcsuh' is not one of ['rv64imac', 'rv64imafdc']
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/riscv/cpus.yaml
> /home/rob/riscv-virt.dtb: soc: poweroff: {'value': [[21845]], 'offset': [[0]], 'regmap': [[4]], 'compatible': ['syscon-poweroff']} should not be valid under {'type': 'object'}
>         From schema: /home/rob/proj/git/dt-schema/dtschema/schemas/simple-bus.yaml
> /home/rob/riscv-virt.dtb: soc: reboot: {'value': [[30583]], 'offset': [[0]], 'regmap': [[4]], 'compatible': ['syscon-reboot']} should not be valid under {'type': 'object'}
>         From schema: /home/rob/proj/git/dt-schema/dtschema/schemas/simple-bus.yaml
> /home/rob/riscv-virt.dtb: uart@10000000: $nodename:0: 'uart@10000000' does not match '^serial(@.*)?$'
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/serial/8250.yaml
> /home/rob/riscv-virt.dtb: plic@c000000: compatible: 'oneOf' conditional failed, one must be fixed:
>         'sifive,plic-1.0.0' is not one of ['sifive,fu540-c000-plic', 'starfive,jh7100-plic', 'canaan,k210-plic']
>         'sifive,plic-1.0.0' is not one of ['allwinner,sun20i-d1-plic']
>         'sifive,plic-1.0.0' was expected
>         'thead,c900-plic' was expected
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> /home/rob/riscv-virt.dtb: plic@c000000: '#address-cells' is a required property
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
> /home/rob/riscv-virt.dtb: clint@2000000: compatible:0: 'sifive,clint0' is not one of ['sifive,fu540-c000-clint', 'starfive,jh7100-clint', 'canaan,k210-clint']
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> /home/rob/riscv-virt.dtb: clint@2000000: compatible:1: 'sifive,clint0' was expected
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> 
> 
> Also from the 'spike' machine:
> 
> /home/rob/riscv-spike.dtb: cpu@0: riscv,isa:0: 'rv64imafdcsuh' is not one of ['rv64imac', 'rv64imafdc']
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/riscv/cpus.yaml
> /home/rob/riscv-spike.dtb: clint@2000000: compatible:0: 'sifive,clint0' is not one of ['sifive,fu540-c000-clint', 'starfive,jh7100-clint', 'canaan,k210-clint']
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> /home/rob/riscv-spike.dtb: clint@2000000: compatible:1: 'sifive,clint0' was expected
>         From schema: /home/rob/proj/git/linux-dt/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> 
> 
> There could also be other warnings from non-default configurations.
> 
> To reproduce, dump the dtb and run:
> 
> dt-validate -p Documentation/devicetree/bindings/processed-schema.json riscv-spike.dtb 
> 
> (processed-schema.json is from kernel validation run)
> 
> Rob
