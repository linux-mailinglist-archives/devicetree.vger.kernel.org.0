Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 434E245EABB
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:51:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245090AbhKZJys (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:54:48 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33746
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230218AbhKZJws (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:52:48 -0500
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D76A13F1AC
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637920174;
        bh=sE+21yp5XuA0m6/mKv6GHYQ5eoofrn3B/lwuqx/vUt4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=SK6RlR31XXSDwYHvw4XlwSsM0a3hQp1lamHYKxWZMtGfdgyfMJn6WQ/N8v7LKBCu4
         A5tEJmXkTvFx2b+nxbu9YHJdRbf6yOBAnRjrRtEtbvgUWld37uQn8+n0D+slKaOYGP
         Tok1mlzHVbUoI19/SITlOWh4vXtSv+WDINQifBuikfnwrjcuA7v+hvCcXxzT6f/zIn
         PkViLhwcwh4h0HktKaulnIqTnNfJqj5H8vXuDIGeQEDxwX+QxfOlpkGvS9/NnXv/CX
         PYYdXlJP7p8DPvQba7bTe8L/swHy+/RyWpefUxwJpTdu/NCyznHzfu9HPvV8hu9k/q
         TD0K5emT9pBJw==
Received: by mail-lf1-f70.google.com with SMTP id x17-20020a0565123f9100b003ff593b7c65so3984182lfa.12
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:49:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sE+21yp5XuA0m6/mKv6GHYQ5eoofrn3B/lwuqx/vUt4=;
        b=E0G8AauKq1cyYDmhHjEA20FnKo3wKqIaXFefW/poOyomcRohvyNQ4DkL3fw5YbE+AK
         wvF1TfpoFE/OB953m1fPeoMk8T+6v8uz9tC0viIFl9uESmZPotTG/yTwAubqIJ+uqnsB
         Zf66fpNyfHE+DOPgDR2bUXjwMCo/arHQLxK6ZGzHUmuZC5Aw34vcRgCkUykuii0bsukg
         TL+kYPNZdmV9Vq4qdSfZdaJI5xVLkWgVJ/7+nUl/FHaSmqqI6KewgYYiTC39lN5LsEtv
         UOQETVpMLL/Oimx41x/YIvG0gBmrIJRsXExqSVSyaI5hjtvSNP6Fvnmp0K2wHMLP7F6a
         t4wA==
X-Gm-Message-State: AOAM532pF5JUpDZDKcE3Aw0sARtlxGaGfnGH8RKVBNjs4nj2WdVPHGLQ
        pyB4WrjRhTZdrnO5Xhyde2W3uEIuWX9PS1Uc2hnoCpwwUP9+V5MAFXrg4Zb6VRMBgLYNmgsesih
        YlvnSPY8FPec8vL0goDYc+RX4Zsiia57TV4GzX/4=
X-Received: by 2002:ac2:4e02:: with SMTP id e2mr29253588lfr.264.1637920174328;
        Fri, 26 Nov 2021 01:49:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx12K+xmZh8dFi4zHt1zNxDLGcfPH5+2AlqkY91xnHZk66myQvMaa/ql3PRSXSiUa4CPWsQRg==
X-Received: by 2002:ac2:4e02:: with SMTP id e2mr29253578lfr.264.1637920174182;
        Fri, 26 Nov 2021 01:49:34 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id e11sm463422lfq.65.2021.11.26.01.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:49:33 -0800 (PST)
Message-ID: <0fb9a8ab-4074-ec72-6e9e-9f6dd937d39a@canonical.com>
Date:   Fri, 26 Nov 2021 10:49:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 5/9] riscv: dts: microchip: mpfs: Fix PLIC node
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
 <20211125153131.163533-6-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-6-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> Fix the device node for the Platform-Level Interrupt Controller (PLIC):
>   - Add missing "#address-cells" property,
>   - Sort properties according to DT bindings.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

And similar for fu540-c000.dtsi?

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof
