Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D71626FEE54
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 11:06:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237177AbjEKJGE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 05:06:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237123AbjEKJGE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 05:06:04 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6809C3
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:06:02 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96a2b6de3cbso297675166b.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 02:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683795961; x=1686387961;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vkAqSC6UaedH5en9ExlmtyaC0OMJh1IaClh6RbNmvMk=;
        b=Y7YZxbAodCGMSG+LimJqIBn0h4KaF9KDN+oq4ZUw6ERygBjEprYZtaCtUUOeF3qMPw
         euZGPPVOpqwbTSbNGtN6NLhziq9HfGhdfL9T52knUDmZjOJYMTDgN3aVCPqoiAOt1a+u
         XGfGLWIEKDoX85qfdG9XWH7+q3s84bBOClyU6GmcKtdnucrB4xBZyelDKAC8TqGUmCe3
         XJc2SCUzIZSey+PpDlvfbA1LW5w19tz4kFiWXepknlzes9V4G4kBt5X4E7qF6Y5p2t48
         JVIsOO8ibm+6S8Nx2NcKsqLBxk6Asxoyl1ginHzVK3hQDTqU7mTYGH8n54BdgNbcBu+1
         BM4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683795961; x=1686387961;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vkAqSC6UaedH5en9ExlmtyaC0OMJh1IaClh6RbNmvMk=;
        b=RXV96WtBnsuYtuYk4VGQK1EbHrohCoowlsRykEarSoZNZerZJcHlUx8YwJmjrTf1lN
         xTWi8NhQ2g8IQRw95Wwpzlu9HSHoYQdpzOhGfgE6rAbskGlYajg4fksLdrWatlNRvOOu
         cyq1NrzwdrADR3bDiruPp+q6hr8WMWvAhu/zcFMyGd1q3KU3jZkLNU8LR/QN3gkIH58D
         Dz2orggoq/APN5dDlqJATu1P4EBV4pzL3OHUNgPg3BXEu+bNxplxMwOTFNnJ43dvMpad
         AkXPJqhCYiNCfjZLVWWLqtdxesAF3NzBxBWxHLL0b3G/EbEKqORTxkPCRpqmNukL2IGJ
         Jo1w==
X-Gm-Message-State: AC+VfDxYRGmHvG/oOv7FskeAK0WSa/0ZAZPAyBjF2F6GMFDP3ZVUMV8U
        gErgdizpapU9qt51c3TubPKOYg==
X-Google-Smtp-Source: ACHHUZ75FWJMlMVD825rNycceHUcI4lGInGTQYK8oGHt73F+DFoon0VVW5G3+dFORWBYjd0QvVVPeQ==
X-Received: by 2002:a17:907:9485:b0:932:1af9:7386 with SMTP id dm5-20020a170907948500b009321af97386mr17758955ejc.27.1683795961179;
        Thu, 11 May 2023 02:06:01 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7e61:f14a:c3a4:809e? ([2a02:810d:15c0:828:7e61:f14a:c3a4:809e])
        by smtp.gmail.com with ESMTPSA id jz20-20020a170906bb1400b0096a742beb68sm267692ejb.201.2023.05.11.02.05.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 02:06:00 -0700 (PDT)
Message-ID: <a2ac9485-23ee-cd6c-4290-eb5e6e2ac826@linaro.org>
Date:   Thu, 11 May 2023 11:05:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/5] riscv: dts: add initial T-HEAD light SoC device
 tree
Content-Language: en-US
To:     Yangtao Li <frank.li@vivo.com>, Jisheng Zhang <jszhang@kernel.org>,
        Wei Fu <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
Cc:     Icenowy Zheng <uwu@icenowy.me>, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230510204456.57202-1-frank.li@vivo.com>
 <20230510204456.57202-2-frank.li@vivo.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510204456.57202-2-frank.li@vivo.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 22:44, Yangtao Li wrote:
> From: Jisheng Zhang <jszhang@kernel.org>
> 
> Add initial device tree for the TH1520 RISC-V SoC by
> T-HEAD.
> 
> Cc: Icenowy Zheng <uwu@icenowy.me>
> Cc: Wei Fu <wefu@redhat.com>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> Signed-off-by: Yangtao Li <frank.li@vivo.com>
> ---
> v2:
> -remove reset-sample
> -convert to use thead,c900-plic
> -add pvt node
> -add thermal-zones
>  arch/riscv/boot/dts/thead/th1520.dtsi | 491 ++++++++++++++++++++++++++
>  1 file changed, 491 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/thead/th1520.dtsi
> 
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> new file mode 100644
> index 000000000000..d1d94098b6bf
> --- /dev/null
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -0,0 +1,491 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021 Alibaba Group Holding Limited.
> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> + * Copyright (C) 2023 Yangtao Li <frank.li@vivo.com>
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +	compatible = "thead,th1520";

Again - missing bindings. You already got such comments, right? And
still there is only one patch here - 2/5 - without anything else.

Best regards,
Krzysztof

