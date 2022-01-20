Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45F3549546D
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 19:52:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377358AbiATSwA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jan 2022 13:52:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377352AbiATSv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jan 2022 13:51:59 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86AF3C06173F
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 10:51:58 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id c3so5916443pls.5
        for <devicetree@vger.kernel.org>; Thu, 20 Jan 2022 10:51:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=GfJPzTO4+6gKH1kcosuz9QZACOYFU4Iv90CbjK5Exb0=;
        b=nvdp+7tAHdaQmGATbPnIJIDkj+IiO4sLDfAtU+06bajMNaFkBg2sUr2kcW/0DjJhbJ
         DnvZN5QwVu2jEBJBQh0/bA3hrummTNnF9rHJIC8RlSJ3bU8mCMmfH8K/fW1ehSU8cXyh
         WqUo57plR4evGAxCGwObzg31zLG28EWiCHuN7kn53gmKXv2PLPGmgnP/XeZEyRsdEPLG
         2lREcPJY9TECyl/8iOHqpwO4aehPq6QglV7ZhfH8Rh6LcvaCnNd/wiMGyV/DcvEVPFrc
         ggtyJBTeu8Xe9cAZ/ZRbU7AfkLskvgcYQ7oZJvoiEjQTDQrwFMBVepMCV1obQao9En+J
         eQZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=GfJPzTO4+6gKH1kcosuz9QZACOYFU4Iv90CbjK5Exb0=;
        b=qaltg0vqQHc5cO/MlfClzkh5M/6HFkSz38tvBm54JR9sAkuX7zLqW3xEq8dt137UOd
         OHcXPwhBuGWU1dUW2AhyLuezu+4OpT54UDi0YJ7L9VIQEzs5SYzXr6D3YxKqr365pjQ+
         pK0VoHPI5LdU+OaRrY+f7GVXBHUHJ4zpwhy7htFwHutacywDchrMsmk2FEdNn5r8AqnA
         SjzWFdoH1tVStCLj07SJ1l7N9yvVeXXwa1fkFHlsQopPgP8XMCDtzIkOCFuQUQpooNDt
         +bLmncbOdAocK0jrS8/LBthBBK0+W/gNa/mXl/T4EgvYixVwSGMWcac3aaXYLo4EAX+R
         BwBQ==
X-Gm-Message-State: AOAM533rslm+yg/SRryjLIjCwlsm9W4LWG1+h3ubE3kM3X5gntYtdp1K
        SCjNK0Tz+M2LYnyJEPvBJemOTw==
X-Google-Smtp-Source: ABdhPJxcgAse5NbCjt07h9gsgp8PUg33sFUeXCIthzYQbiQ3H9mNb4EFmJrFuuza9lMWdk5xfYSUdQ==
X-Received: by 2002:a17:90b:3c5:: with SMTP id go5mr12451432pjb.148.1642704717977;
        Thu, 20 Jan 2022 10:51:57 -0800 (PST)
Received: from localhost ([12.3.194.138])
        by smtp.gmail.com with ESMTPSA id m11sm2968926pgb.15.2022.01.20.10.51.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 10:51:57 -0800 (PST)
Date:   Thu, 20 Jan 2022 10:51:57 -0800 (PST)
X-Google-Original-Date: Thu, 20 Jan 2022 10:47:08 PST (-0800)
Subject:     Re: [PATCH v4 1/3] riscv: dts: Add dma-channels property in dma node
In-Reply-To: <163a2cf11b2aceee2a1b8dc83251576d2371d4a6.1642383007.git.zong.li@sifive.com>
CC:     robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, krzysztof.kozlowski@canonical.com,
        conor.dooley@microchip.com, geert@linux-m68k.org,
        bin.meng@windriver.com, green.wan@sifive.com, vkoul@kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        zong.li@sifive.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     zong.li@sifive.com
Message-ID: <mhng-6f23fd15-5348-4f0d-a972-d43d4ca7f415@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 16 Jan 2022 17:35:26 PST (-0800), zong.li@sifive.com wrote:
> Add dma-channels property, then we can determine how many channels there
> by device tree.
>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> ---
>  arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 1 +
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi        | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> index c9f6d205d2ba..3c48f2d7a4a4 100644
> --- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> +++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
> @@ -188,6 +188,7 @@ dma@3000000 {
>  			reg = <0x0 0x3000000 0x0 0x8000>;
>  			interrupt-parent = <&plic>;
>  			interrupts = <23 24 25 26 27 28 29 30>;
> +			dma-channels = <4>;
>  			#dma-cells = <1>;
>  		};
>
> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> index 0655b5c4201d..2bdfe7f06e4b 100644
> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> @@ -171,6 +171,7 @@ dma: dma@3000000 {
>  			reg = <0x0 0x3000000 0x0 0x8000>;
>  			interrupt-parent = <&plic0>;
>  			interrupts = <23 24 25 26 27 28 29 30>;
> +			dma-channels = <4>;
>  			#dma-cells = <1>;
>  		};
>  		uart1: serial@10011000 {

I've got some comments in on the bindings, but I'm assuming it's easier 
to keep these all together.  Happy to take this through the RISC-V tree, 
but I'm guessing it'll be easier to take these via dmaengine as there's 
a lot more diff there so

Reviewed-by: Palmer Dabbelt <palmer@rivosinc.com>
Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

Thanks!
