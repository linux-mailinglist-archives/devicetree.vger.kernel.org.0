Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6E9245EAB1
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:49:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376528AbhKZJvv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:51:51 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44580
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1345971AbhKZJtt (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:49:49 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8F0314001F
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637919996;
        bh=73zLuZ2dxcezwU+sKHs8KDJp3d/tg6MqvOIgw/POuyk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=C+c3MthWMF62xI64pVUveDZAOLcUx65UE/Tl3FylIjvisFld+qdMrBRZcpULlY68u
         mvYxHZkHVPyneo2VOGoYFfyzyO4q2K9iSvYrhI2UaPiucfxrn3v1b3d6TpHKcdlBn9
         GEOH0HygRwVGdDNjY44oI7p4py1NdqKzhRHBalKqJMq/gUZ3gqefGnY5rxEAf2Bkfx
         y95v/S33vIX/d0EZnNrxWaEUyYCHq1IqDV8fORBfrBjzHYJ68g5aPDY0LYs8v8LW2a
         6Ry8ggQi95QOsffSoOgHdyl3NodOk/PiMjONaRWLFU6ol1+03BRF0VkWxDKqT4GSCK
         1yRUke51fdbTQ==
Received: by mail-lj1-f199.google.com with SMTP id k24-20020a2e9a58000000b00218c7914524so2996761ljj.17
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:46:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=73zLuZ2dxcezwU+sKHs8KDJp3d/tg6MqvOIgw/POuyk=;
        b=KhWINKCyAomLDqtow2k69gxmaU+RVhca0E6PJFM4plKxRxSKHwzZLKavGplIF3DPdE
         dUn8RyeVr4C3NAtwGBs9gw7nsHRaoCUmlTEUvp/QfGpV9dGbw2hMrLE+7yz9Y06IyLrs
         SKFZuglnVhZRuPAFLlXgXDChEg6WRI2On5ZafL29TY83V/Px2q/OCe8lE7HMhH1URuao
         3fbx8zK6HV/SjI8fMOuC3aDNikprrmkY30RiIG4CDGVwyRm/eTYRrgfVlHxujAOYBX9f
         O1QSVrdD8Pm+lALP5n+7YnTB4KEdqILDTD1mWHicp9QPnvniC6KdzhYCvVa+OF6grJI1
         /hqQ==
X-Gm-Message-State: AOAM531TNnHd1dYK/Q9cWYyxappyia9AbTJ4LKX0rbeSzbNmYj0RupqY
        jhg1mTXaS1wccBnwUb+MtqPuZi+rm/uGUaBjWJi4cCTZCn9oZ96PYTlVqv1lcgfnPw5kSqFuVHo
        CYrAXjc6yL0A5JrwsOT5dZrdS9n+2DDgwaXCmRiM=
X-Received: by 2002:a2e:b056:: with SMTP id d22mr29955318ljl.470.1637919996064;
        Fri, 26 Nov 2021 01:46:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyyOKwmhOXNa9ykIhkMDMiAAfqcM8veJucWOyrO4Zd/fnAoKaJPILWDmpuU4zA2hTuoIe3rOQ==
X-Received: by 2002:a2e:b056:: with SMTP id d22mr29955298ljl.470.1637919995910;
        Fri, 26 Nov 2021 01:46:35 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id s15sm462025ljj.14.2021.11.26.01.46.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:46:35 -0800 (PST)
Message-ID: <13128979-af88-6208-4d91-23950a285e95@canonical.com>
Date:   Fri, 26 Nov 2021 10:46:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 8/9] riscv: dts: sifive: Group tuples in interrupt
 properties
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
 <20211125153131.163533-9-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-9-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> To improve human readability and enable automatic validation, the tuples
> in the various properties containing interrupt specifiers should be
> grouped.
> 
> Fix this by grouping the tuples of "interrupts" and
> "interrupts-extended" properties using angle brackets.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 21 +++++++++++----------
>  arch/riscv/boot/dts/sifive/fu740-c000.dtsi | 14 +++++++-------
>  2 files changed, 18 insertions(+), 17 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
