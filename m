Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43CF345EAA9
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:48:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376415AbhKZJva (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:51:30 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44536
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231484AbhKZJt3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:49:29 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4AEF140A35
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637919976;
        bh=PD2apBschJDaO+kzSdE0OsITDKBWNi5rIvaDGRk0lAg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=DjtfGSPmI9fCdF16aD0CsEF9Xqct1AsMcW+M7dUIrYLKOaGDbwNV7P2HBRj2dUKDo
         sl7KfzCjNaiwKkFqX36K9K1yJDGi6GMOxsHsj20zFtW6OUz9k0CvPzLOoqGoi0lVDN
         U1Uz5XVXRBtJWOatBRj1F3XNPhnpJn/djSbrJFzM5RVi96DrYXnGYwJ21gE2lk4lrT
         mqYRBGy8AziC2Oi34VAs57w7bOKM1OPXi38YusrsDTtLRB431WVwIcuGsbSBcvm4gJ
         Lf1Ds/625G3kv/cDwh1X0/ffgg4/GqkGlsVIr9XXP0ULkC1OuJ3v7LnT3nRQT0pdNQ
         te2bZt6W5aQhg==
Received: by mail-lj1-f197.google.com with SMTP id a7-20020a05651c210700b00219132ab503so2998079ljq.12
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:46:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PD2apBschJDaO+kzSdE0OsITDKBWNi5rIvaDGRk0lAg=;
        b=CICEbbkktbNLKeBa2j/D3BeGv2CFL/chYXuJW3jf8RwxYvhB3OphDTrSoUZ4p/y6OG
         faYbG9yp98cdwNX6Jq4jjOmzOZKYCWLTtA3ImfxksKaLOnTphAfMgjttmB6+sVCBOMul
         Q3XRSFg7yUbOfrONAJSHfUQ3QDp5e67vy1/AgWVRLdi+epOEj5O/gTAM63QXtPIT2s5w
         mk82JeJjCQK6rZUFqsw4FTF+4X6mVGY1yLhsWkGVFCcqA+JSqdFrJjC/alUS7qI06VcK
         k1PnHjQrZ35yunIV3Y6/LT0yJzYITNSLx7QtQaFSgll2/NR7YESOyC77TczhFFrB3kG9
         zXUw==
X-Gm-Message-State: AOAM532D/BCeZsNA3l1uGJN+uCrN503S4a31FXTOOzMfRpGtxfHZuyW7
        sUwsx0mFD062FNJhfmD1N7cf8ZO+/LLG5C8HzP+WpaHRwIs1YSg3/gUYIkRsER3JkoANHXW3tQQ
        ldaN8dwQeyw8BrZ7u8JL7uUhDMl9AbQBe5IeFKPo=
X-Received: by 2002:a05:651c:112e:: with SMTP id e14mr29454773ljo.466.1637919975678;
        Fri, 26 Nov 2021 01:46:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzm5eX5c7jP2V75wFfuBpaqVzfprayBlyEwb5h3GH5D0e2xCpsSAd56ykLJnm4w7JR6n3LUog==
X-Received: by 2002:a05:651c:112e:: with SMTP id e14mr29454765ljo.466.1637919975528;
        Fri, 26 Nov 2021 01:46:15 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id a29sm458536lfi.302.2021.11.26.01.46.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:46:15 -0800 (PST)
Message-ID: <8022b8fa-e636-144d-4e9e-7a0d23e354a5@canonical.com>
Date:   Fri, 26 Nov 2021 10:46:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 9/9] riscv: dts: sifive: fu540-c000: Drop bogus soc node
 compatible values
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-10-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-10-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> "make dtbs_check":
> 
>     arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml: soc: $nodename:0: '/' was expected
>     	From schema: Documentation/devicetree/bindings/riscv/sifive.yaml
>     arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dt.yaml: soc: compatible: 'oneOf' conditional failed, one must be fixed:
>     	'sifive,fu540-c000' is not one of ['sifive,hifive-unleashed-a00']
>     	'sifive,fu540-c000' is not one of ['sifive,hifive-unmatched-a00']
>     	'sifive,fu540-c000' was expected
>     	'sifive,fu740-c000' was expected
>     	'sifive,fu540' was expected
>     	'sifive,fu740' was expected
>     	From schema: Documentation/devicetree/bindings/riscv/sifive.yaml
> 
> This happens because the "soc" subnode declares compatibility with
> "sifive,fu540-c000" and "sifive,fu540", while these are only intended
> for the root node.
> 
> Fix this by removing the bogus compatible values from the "soc" node.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
