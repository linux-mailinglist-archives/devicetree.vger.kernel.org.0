Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9201245EAD2
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:55:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376518AbhKZJ6l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:58:41 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44798
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229950AbhKZJ4k (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:56:40 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 46E484001F
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637920407;
        bh=mSLw2XbRlC8SWhqwCfGbIs5q4IiWwWBCeoevAptaoK4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=CQlZggMHmsgOZf8GaF6LI97HmfpwMs9d+NsJ4vB/eBEtMiFlBKtm1MocQsNjds/mk
         XObxfcG3crzsNCsp3oIJiTl1EoEsGE+j8YppPGC3YeV1yZWRP71xbgSyvORgUKZjk6
         vpIwk2yXTSOZmfyQcKDn7mGvjdK+q0Y9YynUn4gW1GMww4g1vNR1aTR8v8eFrM+LBd
         9Z/yjXCULuJQkRI9tN8LqGhxQZi3iNqmz4sbSzQaMRYO/P21RocfmLwLd5KdSydxqR
         tJq03gSlbzu5iwa00t4YMabvI9xtiuvHW/bueX+ObCN2WI9y4EEU9ofgLLxTd6OduY
         jr6c4W8bcYMyA==
Received: by mail-lf1-f71.google.com with SMTP id j9-20020a05651231c900b004037efe9fddso3975828lfe.18
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:53:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=mSLw2XbRlC8SWhqwCfGbIs5q4IiWwWBCeoevAptaoK4=;
        b=KltqIr/QPhttVW5jcpuvaGlBgyS9J4gpJ1mqRUveF/jXuSoxEUPlRca7UdIWEQoLzo
         j8cQoYqHxE/5QQS3Eh8sCH+HrsAuc4K1/PRan33InQtb3SbomtS6mVTgBsFtMAvEQtFq
         ZBYPkBqJaXioHJNdIsU+DByLVa6ghShHuFfIdkan1ZDo9CwYC41IGYUfHSGAXC0dP90G
         f0zS/51dyhbYDpLq8r4r6CJGlUORqS/5j7aQQpAHmtex4pCa2VzxTPLvD+sKAiA6ijHr
         f1TUautEWTEwS9saneHAEH4i1k2s6RdRQQd1kqrMYdLOV2h8NnGlGrvEx4zsIz5bVg1Q
         IQdQ==
X-Gm-Message-State: AOAM5305PUMOezKo+aLcoKF7A749Z5mQ9OpetSKk3Z+B5JBb6dzzj3Xy
        hdko0qiltspc9EaOsHWVbswRZYMKkQMir6R1SCgpLrR9T6lnJWfxZlMREGQB++4iw+sNElpgStG
        cpEcn5ijbfrStp1dmw3XHRMDbMVf5OQiGFQ73/UA=
X-Received: by 2002:a05:6512:20d4:: with SMTP id u20mr29704792lfr.339.1637920406537;
        Fri, 26 Nov 2021 01:53:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyoJptexUvEA/xf01vFwHfA5WAEQn2FOvHcpJ9INUY+amqmXMLi0/5ckuZMWEezfj+5WKRT9Q==
X-Received: by 2002:a05:6512:20d4:: with SMTP id u20mr29704771lfr.339.1637920406382;
        Fri, 26 Nov 2021 01:53:26 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id b7sm463798lfb.224.2021.11.26.01.53.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:53:26 -0800 (PST)
Message-ID: <2d87b40e-9fdf-572a-a194-afc13fc20dba@canonical.com>
Date:   Fri, 26 Nov 2021 10:53:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 3/9] riscv: dts: microchip: mpfs: Drop empty chosen node
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
 <20211125153131.163533-4-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-4-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> It does not make sense to have an (empty) chosen node in an SoC-specific
> .dtsi, as chosen is meant for system-specific configuration.
> It is already provided in microchip-mpfs-icicle-kit.dts anyway.
> 
> Fixes: 0fa6107eca4186ad ("RISC-V: Initial DTS for Microchip ICICLE board")
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> index c9f6d205d2ba1a5e..794da883acb19256 100644
> --- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> @@ -9,9 +9,6 @@ / {
>  	model = "Microchip PolarFire SoC";
>  	compatible = "microchip,mpfs";
>  
> -	chosen {
> -	};
> -
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> 

Maybe bootloader expects it? E.g. it looks for node and fills it and
would fail if the node is missing?

Best regards,
Krzysztof
