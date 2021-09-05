Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2EE14011AD
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233779AbhIEVJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:09:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231968AbhIEVJe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:09:34 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80880C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:08:30 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id s25so6682143edw.0
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TSZVN/xDExOJoq3d1TZIuZP5CsJa9TOn/k0uIYOt3pU=;
        b=kTScqyopi4qn+SqT7G+N4MP/bT11PvCEKEtGXZOPEpwUJjx7ubCqPGGLWhkZHpsN7l
         l6+ok9AoaRlIib7iOf4yRQodsbl/0UU0pPtlTSY9rulOTOdFTgrAvW/hd5jSOlizPXIF
         +DvM1rSKo6l0xa+8ClOeNlT1VAR0RCt6GkLN9EAoLyY9wn0Rrbv1BroGSH1lt2Vi40la
         UWJd0UKcTm157/rFRzBSBZyYS3dRHxteTxGs4jcPXqp3tTMZmdk4HnMvq6EjTxgLDTeV
         sN82e31tmO3WuM7chPIKH6fmSw0DTI/9XC9qy7SjlKlCHM0z+s6EdrpbHX5yb0QEggS6
         mjfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TSZVN/xDExOJoq3d1TZIuZP5CsJa9TOn/k0uIYOt3pU=;
        b=cfMWV5OscxzqO3woIWsBNp4v/Fc2M1KSUUCfmj2lmxxirlicT9BtUFJVZDo66z6Jsq
         NztYkGB6zxu/srkcAql2tJvUJf9+knQW1T2gmcuqCwYKY893THara8clIueHokttao4s
         rdIrxAUnfAsg55XvEt3AxnFbwq56GUKnPo8nvvqmasArNnUOoxkuJrCEwno56TjzzGOu
         VEtqZhMQImIZbfzfgUZwb6ICZ0Y/QFuFEYADkfTQdTJQqxq/Q7uV74QJqqbfvb3+HPAh
         9QdLqgwk3gDcpyzhvevD/ZY032klm4Ct3sF4E6WN6ikZo3nG3wJ88IK8Gxd+X/hjlCAc
         yyuQ==
X-Gm-Message-State: AOAM530JctZIfOnq3pAykA6IOPn3e0uH+mf9BK4KUfPJ+PHcGGN7oy1f
        P88TjYItajqcvZflxkZ0Ys0AT90/u0KXiA==
X-Google-Smtp-Source: ABdhPJwJfAe1EIbL2mWxoXbAY7mtmzLmoFK4sL24zCMN8etBYvrt91Yn7Ad8Ch/lADKi+BcXAJPvWw==
X-Received: by 2002:aa7:cd92:: with SMTP id x18mr10016319edv.325.1630876109190;
        Sun, 05 Sep 2021 14:08:29 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id h7sm3407796edr.4.2021.09.05.14.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:08:28 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 44/52] ARM: dts: v3s: Remove useless DMA properties
Date:   Sun, 05 Sep 2021 23:08:27 +0200
Message-ID: <3131369.y1uDJ13AhA@kista>
In-Reply-To: <20210901091852.479202-45-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-45-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime!

Dne sreda, 01. september 2021 ob 11:18:44 CEST je Maxime Ripard napisal(a):
> The crypto engine binding doesn't allow for any DMA property, yet the
> v3s define some. Remove them.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  arch/arm/boot/dts/sun8i-v3s.dtsi | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-
v3s.dtsi
> index b30bc1a25ebb..44382e36e825 100644
> --- a/arch/arm/boot/dts/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
> @@ -285,8 +285,6 @@ crypto@1c15000 {
>  			interrupts = <GIC_SPI 80 
IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&ccu CLK_BUS_CE>, <&ccu CLK_CE>;
>  			clock-names = "ahb", "mod";
> -			dmas = <&dma 16>, <&dma 16>;
> -			dma-names = "rx", "tx";

Since V3s documentation mentions those DMA channels, wouldn't be better to 
update bindings instead?

Best regards,
Jernej

>  			resets = <&ccu RST_BUS_CE>;
>  			reset-names = "ahb";
>  		};
> -- 
> 2.31.1
> 
> 


