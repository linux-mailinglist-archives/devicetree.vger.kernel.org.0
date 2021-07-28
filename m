Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 271FC3D87BB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 08:14:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232985AbhG1GOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 02:14:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234007AbhG1GOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 02:14:32 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47D63C061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 23:14:29 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id u9-20020a17090a1f09b029017554809f35so8360428pja.5
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 23:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+eCPJolnjFD6s7o/D7/wCD8S3LJbNwZNkFAhDgmHNdg=;
        b=mR4Tt7DzUQaHNxHJQDGkFhLLLljZDCuHSLxVhBOpom3iS+QI99MjDfopHJ9XmURL/i
         bCugbreHHQ0xBU095vg6uHwXTSdQsTKtVFGvhxCtiLbvzN8yaKuepp0M9CeZxG8Nr3Zq
         /Qe7l6ARfY6A59sOduR69WOdWo96M4zLL4GRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+eCPJolnjFD6s7o/D7/wCD8S3LJbNwZNkFAhDgmHNdg=;
        b=s9DZbK6Mz/y6lgweNjAcM7uEweSXxf+UzjV6lBwMe4Dp0UAh6lKSo7bHcdOjCGG60W
         UcB4Ob7zZfR4K4qL0qk4YtIswQ8k7Ui/TY7Z716uyGvCc7sqyXSL+GzsT9iTwhvoEmmO
         4a/Cjpxt/vq/LOtgu4ogdK/xzifjIsCDZF11mIL21fqMpE5eEl6rAwQnvfpnvfkdh853
         gGAOVDOvv3rF3jBVkFjbq2cmuWIdi3oqTZefTNz1YolTLUtRDhr7byGy3pxeF64b+yeQ
         yWiWzHq3VTQPfICUjl/ZYH4MFOlE24wnSTcN4Wlbykj8O/lAziRLje7fyrqdEKZOK/HS
         9LBw==
X-Gm-Message-State: AOAM532CBr1RkgKifrE/GMfclKuI1m5k6pcOTmqckP7GZ/qCaz585nA+
        KuS4PE/4UkfVgpiKJNSmJ+qkXtNS3lGuKlSQHysaEw==
X-Google-Smtp-Source: ABdhPJzmByxKqYRSbuErkA4p8ANUorSkgXNNWkdhJmCqT7YsTx5hk209/4gRAztv7igdNUaEYtPZLsDig5mlURlglKQ=
X-Received: by 2002:a63:8f04:: with SMTP id n4mr26845226pgd.317.1627452868772;
 Tue, 27 Jul 2021 23:14:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210727023205.20319-1-chun-jie.chen@mediatek.com> <20210727023205.20319-3-chun-jie.chen@mediatek.com>
In-Reply-To: <20210727023205.20319-3-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Wed, 28 Jul 2021 14:14:17 +0800
Message-ID: <CAATdQgC-X6pijkgTBsWJJKp__J6N=7JNKHQJmOMvTAjivwPM5w@mail.gmail.com>
Subject: Re: [v6 2/2] arm64: dts: mediatek: Correct UART0 bus clock of MT8192
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jul 27, 2021 at 10:43 AM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> infra_uart0 clock is the real one what uart0 uses as bus clock.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8192.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> index c7c7d4e017ae..9810f1d441da 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
> @@ -327,7 +327,7 @@
>                                      "mediatek,mt6577-uart";
>                         reg = <0 0x11002000 0 0x1000>;
>                         interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH 0>;
> -                       clocks = <&clk26m>, <&clk26m>;
> +                       clocks = <&clk26m>, <&infracfg CLK_INFRA_UART0>;
>                         clock-names = "baud", "bus";
>                         status = "disabled";
>                 };

There're many other nodes still having only clk26m. Will you update them too?

> --
> 2.18.0
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
