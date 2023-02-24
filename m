Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5FF6A1944
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:59:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjBXJ7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:59:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbjBXJ7H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:59:07 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EB0E65AF
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:59:06 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id f13so16618666vsg.6
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mHLbgtC9eaEy5W5YoFrWu6seyn59kvRi1Sqb5aL8SbQ=;
        b=b69Xf5nQRII8T75C7CsYVxwf87GZLuEg4VUM/9OzTISPIzUjpLShl0lZFXdWbKCt+X
         WJzVjMA3yOfm2KzrLljPqDRvdVly5mzoYjxjQPT371EwoEUaMw+v8yBdF0Z0fpc/clGU
         ld/oyVLQr9zvQC3Pb0luxYoNfHWC65IpaqVjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mHLbgtC9eaEy5W5YoFrWu6seyn59kvRi1Sqb5aL8SbQ=;
        b=qynYXOjTfy2qlBZs4f3S1uw+hJaI8XwUjRqPKe/sy6VjUyEYxM04ZNlXTzY/B5KCMh
         Tfa3Z24vON9zH4Mfpis5H4xnuw781ZUNUwRRQB6Eq52xT+LGVXemXF/07u9aGlT904AR
         QbTP/DNWJaX4N3YMy6tcHOheTcE2aSFbsKBiTOf4yZFSfZX+b5hWH0PgBbB1GpmjtOEj
         lDjdtzr7GQhpFRYljBCcdd93scjSDUvGV6pyKFyXArMEHRfY1KZukORAjaE22mniBCF/
         0z8VfTgC2sQLPgOlk/jbOxXmBfDryzNNhLGLGQ/PVEeL1iFT6Pgk+OaPdK9lJQ6djB53
         Hgkw==
X-Gm-Message-State: AO0yUKWUDGgL2oJd6IttagGdjpCJNEdy5ot6J0MzkusHXwpYcLDwI7SR
        9BqO5iSPjuaT6bw7nLKS6SzURMGAaStJFIBsahNuug==
X-Google-Smtp-Source: AK7set8HsPgFjiHEs8kJFwTbhza2xbhJLtQBIrep9NpSiN29T9vZ8VfsQAshILBJ+x0txHKlIjDOG6ygccqaFbZz+/k=
X-Received: by 2002:a67:c584:0:b0:41f:641c:f775 with SMTP id
 h4-20020a67c584000000b0041f641cf775mr317973vsk.3.1677232745205; Fri, 24 Feb
 2023 01:59:05 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-12-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-12-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:58:54 +0800
Message-ID: <CAGXv+5ER-Z9WiRAKEbfKV3hzNQu0Xru-z5QUJA85wzrwzY7hcw@mail.gmail.com>
Subject: Re: [PATCH v2 11/16] arm64: dts: mediatek: mt8192-asurada: Couple
 VGPU and VSRAM_OTHER regulators
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 23, 2023 at 9:44 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add coupling for these regulators, as VSRAM_OTHER is used to power the
> GPU SRAM, and they have a strict voltage output relation to satisfy in
> order to ensure GPU stable operation.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> index df477eb89f21..c8b6e1a9605b 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
> @@ -447,6 +447,13 @@ &mt6359_vrf12_ldo_reg {
>         regulator-always-on;
>  };
>
> +&mt6359_vsram_others_ldo_reg {
> +       regulator-min-microvolt = <750000>;
> +       regulator-max-microvolt = <850000>;
> +       regulator-coupled-with = <&mt6315_7_vbuck1>;
> +       regulator-coupled-max-spread = <10000>;
> +};
> +
>  &mt6359_vufs_ldo_reg {
>         regulator-always-on;
>  };
> @@ -1411,6 +1418,8 @@ mt6315_7_vbuck1: vbuck1 {
>                                 regulator-max-microvolt = <1193750>;
>                                 regulator-enable-ramp-delay = <256>;
>                                 regulator-allowed-modes = <0 1 2>;
> +                               regulator-coupled-with = <&mt6359_vsram_others_ldo_reg>;
> +                               regulator-coupled-max-spread = <10000>;

Also fix the constraints here? And overriding the constraints should be
mentioned in the commit log.

>                         };
>                 };
>         };
> --
> 2.39.2
>
