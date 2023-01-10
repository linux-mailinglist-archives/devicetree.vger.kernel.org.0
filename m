Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27AF96642A7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 15:01:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233194AbjAJOBX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 09:01:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234232AbjAJOBE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 09:01:04 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D81D02DEE
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 06:01:01 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-4c24993965eso148374657b3.12
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 06:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cTd66jKz4KsZyqN8B/YkkUACqAiuZizBOAJvACAkBxg=;
        b=aIFk15a4imSPftRnezXf4PjAty+9YfBMqX3ux2KWPtiYYx9gc2hnvHkZtVuh/u/NTu
         f67DP8xH02iLAliBfHs5+7grh2oqRe6IbWj471ytYWDj8dlznC3FzOnRdiAKNji1PD+B
         IsWjDVgrF4HoH9da9KLqI5fPO2B0T5sGAD5ihCLfJVej0Et+tWm6oQOLrO4MlCKy+iu7
         O/VULzjRav5t5R19YzpL7rlLXwerFK4fGHnOg1aRD267Amrwe/CjAet7nOsUSY/+P3wG
         U1YOMTSb2w6ZHlC0Oj7DWr3RHftFcALIltj8AgjcSEO7qxaFkoNPknyVoxjO1Cnlij++
         4JTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cTd66jKz4KsZyqN8B/YkkUACqAiuZizBOAJvACAkBxg=;
        b=DPaT3NCpZlAOtEVcIAnjo3HpEJpyTPkMy2ZJckh4IDoITiGVHK2a8Va4Ce/KB8lzwR
         9TbQR+GoQZwxDrMKWqhfYy3VjEe/C/txv4VQARWkDX1sB1az019BJSOhtxsPYszy8DZB
         l63BvEbQP90I46BG+SZDMSyRuAre2PSTHGSpDPCOQXyHfs9zjnVQanZ3CCbRdjWb4gMx
         0SuJw/mVeBVDPwSaDbOMrdoHDJTOMRUxByTA/WCa/NPuwu86ZxvLC5jLwnBXCmutGKCm
         gzwndTuxyIsdrUWKPszt2+pJpetYfo4V1O/bHlj21mYLUNmX6MxlgU/BJBcIxyUqtCo6
         mFKQ==
X-Gm-Message-State: AFqh2krCV0hgzx1k0QwaPAyyVCrzRNn9Azzb64s8H+TELo+RvI/S1NZ/
        TpLNXZPqKlJ6D0RYAokhjShhFvvCYUCuNb5tkz5AZQ==
X-Google-Smtp-Source: AMrXdXte7/yVmWym4kBD4FeqBuwxA2OpS1LIITSRjqcaj7G0ZDI7m0a7+72sliLh2TY5Jg5OumbH6emc5Qy5i0kdbuI=
X-Received: by 2002:a81:7585:0:b0:358:36cc:b6cf with SMTP id
 q127-20020a817585000000b0035836ccb6cfmr2398180ywc.505.1673359261105; Tue, 10
 Jan 2023 06:01:01 -0800 (PST)
MIME-Version: 1.0
References: <20230109155801.51642-1-sebastian.reichel@collabora.com> <20230109155801.51642-8-sebastian.reichel@collabora.com>
In-Reply-To: <20230109155801.51642-8-sebastian.reichel@collabora.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 10 Jan 2023 19:30:50 +0530
Message-ID: <CA+VMnFxb1P4tP5sef5ME3jCcCq2Y3rD-0bpv1B0TsUZ3RXXuqg@mail.gmail.com>
Subject: Re: [PATCHv8 7/7] arm64: dts: rockchip: Add rock-5b board
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Christopher Obbard <chris.obbard@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com,
        Michael Riesch <michael.riesch@wolfvision.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 9 Jan 2023 at 21:28, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> From: Christopher Obbard <chris.obbard@collabora.com>
>
> Add board file for the RK3588 Rock 5B board. This is a basic
> implementation which just brings up the eMMC and UART which is
> enough to successfully boot Linux.
>
> The ethernet controller is connected via PCIe so support will
> come in a follow-up patch.
>
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 44 +++++++++++++++++++
>  2 files changed, 45 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 87a853435142..c5bdd0176ce0 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -83,4 +83,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> new file mode 100644
> index 000000000000..d2f1e963ce06
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -0,0 +1,44 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588.dtsi"
> +
> +/ {
> +       model = "Radxa ROCK 5 Model B";
> +       compatible = "radxa,rock-5b", "rockchip,rk3588";
> +
> +       aliases {
> +               mmc1 = &sdhci;

I think sdhci - emmc has to be mmc0 due to boot priority.

Jagan.
