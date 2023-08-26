Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 697F6789949
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 23:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbjHZVvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 17:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbjHZVut (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 17:50:49 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88F32CD1
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 14:50:45 -0700 (PDT)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E34F23F206
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 21:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1693086643;
        bh=VjTIpaKc3M9gQ6muJD7ayrAgi+ZhVB11zZBZ8oimfFg=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=Q9VrHbf6IT0Yw68n55/HpfW8GkEnYfTztXHhSfNrpTdOFCDMIcQCNyyfqdheXMOuV
         9OwnfwmJqpskMb0w0e5fSzelxg6E0USiHFdPjUld25U1A5Fout1PzidK0Vg8rYmdfg
         Q9WwUxyP18KeZB+GcqxWcIG7KidmHWxXNq6LD+OHH93GDhMeiWgBgafu6YKUsNlRzD
         AWSGozJchS4Wuj3Vdu20LdrtRgb9V4WtPlYPeuBoatoTAXBFos2wnJIpRfYNEFmcAS
         TtYaITjwtibIqs3OwaciQYWHS+evXsaYg9QQvTJCZVpDFOlsE6eFBrmxww2eMG90Jh
         Ny0X8EBBndHdg==
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-64a0166deb5so25227626d6.3
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 14:50:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693086642; x=1693691442;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VjTIpaKc3M9gQ6muJD7ayrAgi+ZhVB11zZBZ8oimfFg=;
        b=cTDrJ8Xp/VNsw8yPzngMQTWlR2QWtzAE0Fp/llf3XjFmiHaLj8Xqjvp6FFhNYn8BKO
         h5q574zZjyCX5Z7zBmD8VYKHMJ1UVVBIaXK4YTtdybsE4s9++f/YjJO8pPTW4mGUtlsl
         GJkIqmd+1fMiEx8TADYjfqxtAPswH30sV1Po5es3+qfYkQkshe7YAFzQK55IbllKTVRB
         dW4HOk4TUH2lVioVdafonWU4++wBVlJqLULP+SiYYqHKho1ltT2aX+OebvhSmwzkysEB
         WS6x6DnQ6ktwtPrt1c3ulyyTj8uYtki4hEsAsO2vNHxjaBQ33pgC3ZMoBQac72Pf0jnp
         R8bg==
X-Gm-Message-State: AOJu0Yz3dJjkx/hrqSxNYo/7ajEDAIbboWVygNNeN/GUOWiNejQo1Nzo
        y6dbzRXMNU01i6Zqe6rI1i/1qmK0+E6ZpjxBK8nE/VmWFx8UKEV+rdQXvJ8Ng3NyWgb9cbOh7pc
        47bt8VHycb5UkBofNwyp2K+FvoL5M6n66avgeEpOpP/grKT4jSPbjZWM=
X-Received: by 2002:a05:622a:118c:b0:412:bea:af8f with SMTP id m12-20020a05622a118c00b004120beaaf8fmr7293524qtk.23.1693086642731;
        Sat, 26 Aug 2023 14:50:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnBLfcky1Z5PXKn1SUBVQjv9ZgfioMwralikcznERsXZJGRRjNVz25sqDnqt9XYzbuahJwL0KTCDKt/yzCUAg=
X-Received: by 2002:a05:622a:118c:b0:412:bea:af8f with SMTP id
 m12-20020a05622a118c00b004120beaaf8fmr7293510qtk.23.1693086642493; Sat, 26
 Aug 2023 14:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230826182702.2641743-1-aurelien@aurel32.net>
In-Reply-To: <20230826182702.2641743-1-aurelien@aurel32.net>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Sat, 26 Aug 2023 23:50:26 +0200
Message-ID: <CAJM55Z8zsfywScSeoSyKogAJZndKuPTF+_4GGd9+9ZcYraqLHQ@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: fix NOR flash reserved-data
 partition size
To:     Aurelien Jarno <aurelien@aurel32.net>
Cc:     devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Ziv Xu <ziv.xu@starfivetech.com>,
        William Qiu <william.qiu@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 26 Aug 2023 at 20:28, Aurelien Jarno <aurelien@aurel32.net> wrote:
>
> The Starfive VisionFive 2 has a 16MiB NOR flash, while the reserved-data
> partition is declared starting at address 0x600000 with a size of
> 0x1000000. This causes the kernel to output the following warning:
>
> [   22.156589] mtd: partition "reserved-data" extends beyond the end of device "13010000.spi.0" -- size truncated to 0xa00000
>
> It seems to be a confusion between the size of the partition and the end
> address. Fix that by specifying the right size.
>
> Fixes: 8384087a4223 ("riscv: dts: starfive: Add QSPI controller node for StarFive JH7110 SoC")

Thanks!
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> index 498eb179d90f..30c85ba6da02 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2.dtsi
> @@ -262,7 +262,7 @@ uboot@100000 {
>                                 reg = <0x100000 0x400000>;
>                         };
>                         reserved-data@600000 {
> -                               reg = <0x600000 0x1000000>;
> +                               reg = <0x600000 0xa00000>;
>                         };
>                 };
>         };
> --
> 2.39.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
