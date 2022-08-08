Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75ABC58C7C1
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 13:43:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242816AbiHHLnC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 07:43:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242214AbiHHLm7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 07:42:59 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7844213EBD
        for <devicetree@vger.kernel.org>; Mon,  8 Aug 2022 04:42:57 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id w196so4974400oiw.10
        for <devicetree@vger.kernel.org>; Mon, 08 Aug 2022 04:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cb3aojTBCwoqKlf094zVcQ2du9p5QhcXe/9+P5qaCEM=;
        b=6lCQtmq3qHD6ntjoqdPsNsunQbRdVlgv8kcXIDChgaHS/X5Ahm1e15cStzPFUvM7LB
         BslTu8dOueL2cpwUqCTbX7BcmknAV1PRkBWkCLS9qeyzq9mPtJ0d611/rP+4VhCYQ/CX
         2j2ao6RPXdTg4PZ26chs+2yz5bUK6KnlFfmAvxsrDpxkJm+4ZGMZR9llKUtLgNVFtPeu
         gqpv+tAH95oI9ooHUgnuOXgVSqiPiAgsyjjQCGTCpReekQQxcpUU5N7nBFl6m/xyoudv
         WEUxJqJt1DCzmBOjbToutZ2X6Rsx3/F4EZE7MZebdysFYdViTIcP/ALV5HUP4rieFRYs
         YiOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cb3aojTBCwoqKlf094zVcQ2du9p5QhcXe/9+P5qaCEM=;
        b=VOJ4wHGipbSpuid0GRspO5Itl16CvootBTS0o0Fld/XTUtdHnpBjvlxm1Svw0ifLX5
         8l8k8hkw5HTqxcIreht/VrjSCGsm1r2qk3E5JFRAIzXY5wTLoq0/bsVd2qZgOzgGyT1c
         VbkBGWQ4M6udtRqsrDF/MR5FbFrwSBNjR3mXe10iywrDT/4u9QjyDYjta/0bdjf3vKp/
         3IagaYmGURteqeUSTVJNpAJJDgmvFv6Dprug+MW8WqzYcCwMlKRxq0ji3lE8mtY0uWkt
         zoU/aKE/zJiyGIUM7/gRb+59yZ1XjgRVr3DXukdgZvddZyL8krAJCYTb63hJFIl86GYO
         V4xw==
X-Gm-Message-State: ACgBeo2vmIbur2XqeMRg33CP4A0o8acyLOXlmlTwb3ANQg8Hyy+a0dnM
        7/nppb/N7/1XzYFXVzj9WOgEQfX+rN9gytxeMhbW+w==
X-Google-Smtp-Source: AA6agR5qWSIS/V2l90gz5qriUGRu8VKG7dafu2Bm67MdJ6eD6CnDbSd8Q3lKbR44OLqDkBzBDre9oflGaKuwuj7aaX8=
X-Received: by 2002:a05:6808:1b20:b0:33a:b9ab:30d8 with SMTP id
 bx32-20020a0568081b2000b0033ab9ab30d8mr11076530oib.8.1659958976764; Mon, 08
 Aug 2022 04:42:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220516124828.45144-1-robert.marko@sartura.hr> <20220516124828.45144-10-robert.marko@sartura.hr>
In-Reply-To: <20220516124828.45144-10-robert.marko@sartura.hr>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Mon, 8 Aug 2022 13:42:46 +0200
Message-ID: <CA+HBbNF2R--984SdB0v42GMQOwAx4pTEz_FHifTtebN05ELU-Q@mail.gmail.com>
Subject: Re: [PATCH v4 10/10] arm64: dts: marvell: add support for Methode eDPU
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 16, 2022 at 2:48 PM Robert Marko <robert.marko@sartura.hr> wrote:
>
> Methode eDPU is an Armada 3720 powered board based on the Methode uDPU.
>
> They feature the same CPU, RAM, and storage as well as the form factor.
>
> However, eDPU only has one SFP slot plus a copper G.hn port.
>
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> Changes in v2:
> * Make the DTS split a separate commit
> ---
>  arch/arm64/boot/dts/marvell/Makefile             |  1 +
>  arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts | 14 ++++++++++++++
>  2 files changed, 15 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
>
> diff --git a/arch/arm64/boot/dts/marvell/Makefile b/arch/arm64/boot/dts/marvell/Makefile
> index 1c794cdcb8e6..104d7d7e8215 100644
> --- a/arch/arm64/boot/dts/marvell/Makefile
> +++ b/arch/arm64/boot/dts/marvell/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  # Mvebu SoC Family
>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-db.dtb
> +dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-eDPU.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-emmc.dtb
>  dtb-$(CONFIG_ARCH_MVEBU) += armada-3720-espressobin-ultra.dtb
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> new file mode 100644
> index 000000000000..57fc698e55d0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
> @@ -0,0 +1,14 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "armada-3720-uDPU.dtsi"
> +
> +/ {
> +       model = "Methode eDPU Board";
> +       compatible = "methode,edpu", "marvell,armada3720", "marvell,armada3710";
> +};
> +
> +&eth0 {
> +       phy-mode = "2500base-x";
> +};
> --
> 2.36.1
>

Hi Gregory,
Is there something else that I can improve in the series?

Regards,
Robert

-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
