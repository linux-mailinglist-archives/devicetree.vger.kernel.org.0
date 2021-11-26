Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A732445EAD5
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:56:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239839AbhKZJ7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:59:16 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44832
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1345356AbhKZJ5P (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:57:15 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 71B8540742
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637920442;
        bh=HDZVc4uA5DqONbSrrxMjgBDAsJhsJn2CNSc45+//mZs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=AvEGmz1M6WyTwryfYrR/Mv/YO00z7yrQ6av/LuasNdTL1hqrmR57ItYHlc47ymDoh
         NyUcxiLVO1thpxH64r1GXSJAXUECtr0LQzqhVt5XtJuQnE6ueoaBbkhVYqj02j1nZz
         Dwz4hPanQRMbcGgTf3PYvtB4I0yA68lSIqqqXkuN98lKsH163UGzBg4tTgb0c6oBGV
         N8LiSOX1H7MG/YLu9MkFrO4r6m4XI+uijin9/nDT4eRGA4XBKSfhTsCv0PDAp3yrb/
         PTgxwYgydktGJT64E6z+tcIUjvpfP4VWqnRpY/6MtFAATaJWekQ9vUQZE/uS1LoG7P
         acnOcSUVL+ABw==
Received: by mail-lj1-f198.google.com with SMTP id 2-20020a2e0902000000b00218c22336abso3015452ljj.0
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:54:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HDZVc4uA5DqONbSrrxMjgBDAsJhsJn2CNSc45+//mZs=;
        b=eqlDju+9xmxD1yd2fIjq3UVWZK3sdFQO+oGz3oGm1OcpVIJVHkTGz9/cK0z2mNwaWi
         fN9NClm18TwzO4RHrgTpOmPNYqXqmvNXLtoaXcUpWuvS661tYIKnJcYdmr8RpTMM/pm9
         N5q6CgJXcY2JYsh2B69T7HaK2oP+K2ihnKPP/+LYIZk8WK2tGl+tVqwrbDj472y7zUAk
         ZfEIJL1mOFW35E+G8BjYdy85blbCx8h2abXnwNtmhAAiTw6JUDlWLa+l8zR2tpvyaHH+
         +8IYNqndq5TrT/R0sHUDVajLymo6LRU9V7scUFvUoUkjzxrQihOr3Uif1mHc9rsTwenj
         UJbQ==
X-Gm-Message-State: AOAM533bP14L4we3F2s1XkdQUsIh0TMqHKDJ/Omdxksl5LTVf1Y7Lh5u
        gWaHgdRM4gRfcJU0L+exSxryFdyMoWkf/HmCmX+NyQbRJ/Thb2Id9mEZwrqLPmlDPJfC1slGTFB
        8PbL4pzZxsYzR7mQ7u0z+EQ3DaSu3/QikZqSiTBg=
X-Received: by 2002:a2e:b88c:: with SMTP id r12mr29240768ljp.204.1637920441894;
        Fri, 26 Nov 2021 01:54:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw9WZsVQb6ovekXYugz3PlWjmtYmgUqfC6G5PQic4i0/9fBaW+NpvoF0J57TZIJEWIVsA18BA==
X-Received: by 2002:a2e:b88c:: with SMTP id r12mr29240752ljp.204.1637920441750;
        Fri, 26 Nov 2021 01:54:01 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id u19sm458410lje.74.2021.11.26.01.54.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:54:01 -0800 (PST)
Message-ID: <a30b5864-99b4-6bf8-2034-23a6de416fdf@canonical.com>
Date:   Fri, 26 Nov 2021 10:54:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 1/9] riscv: dts: canaan: Fix SPI FLASH node names
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
 <20211125153131.163533-2-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-2-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> "make dtbs_check":
> 
>     arch/riscv/boot/dts/canaan/sipeed_maix_bit.dt.yaml: spi-flash@0: $nodename:0: 'spi-flash@0' does not match '^flash(@.*)?$'
> 	    From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> 
> Fix this by renaming all SPI FLASH nodes to "flash".
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/canaan/sipeed_maix_bit.dts  | 2 +-
>  arch/riscv/boot/dts/canaan/sipeed_maix_dock.dts | 2 +-
>  arch/riscv/boot/dts/canaan/sipeed_maix_go.dts   | 2 +-
>  arch/riscv/boot/dts/canaan/sipeed_maixduino.dts | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
