Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36EBB6AB002
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 14:45:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbjCENpe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 08:45:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbjCENpc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 08:45:32 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4892CA0D
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 05:44:59 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id g3so28329833eda.1
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 05:44:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678023845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y1SgqfrtDVGQPAzb2J+1WJCdpCcTnMueLvLPfe9hIh8=;
        b=lqVeGEmPeWwVvpebdZVQow5Hop2TgcPziwE/c70C6Z0miRvkT8z67GKMIMNzeoyzU4
         7pcl6buYqWjII2iOsSFNqQJ2+sPp1RqLlQRN7SSk6kIjHRf0IxeYMZyq/xloenebMWsW
         z2KK7d6+/gvVvRMJ0qAmpDJ/6VDl/cIfe1sNM303j9fCr5kKoAvaxgj4e2D9NKvhCNx+
         BsrOSj91dKq7qZFJhvcb4n2jQLjTYcQcNqcfumP+gZI3wKiG/6E4C/s8ciyGsAlg8dng
         tDxcRqK9G/KJi6wFc9/Lg5Wu8neSq0FXsSUWl9ED/6MHKJFp3XF4sazMt3DVu3ZK2OH9
         kkQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678023845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1SgqfrtDVGQPAzb2J+1WJCdpCcTnMueLvLPfe9hIh8=;
        b=5a+Xph8wgZf3VuYvGMaYodxlR6QTnHYvTChodjV2DRuIpEUKOKuRp8g6kdRuv2B3dy
         XMamHeJUV8gLrqWX0XeEV1K6Q0OWz1aKyvb+CeiQgWFQtqD37aOmgoRQ5KBs3UKiNMlc
         tVYN37ga77E3sSYYlIcGCmNGkOrqH9cQE+4vtUtdFMaS5rITCTbxvLS4w6dcj96PTU1f
         T0AaVzFo7tXCTlf5WF3wW1+smQBR1ah4Kksfg/5IBsjU7eV1ICFbc8dmJ7Q+K+NO2ZoY
         Z62IULs1TdkJsKEzr+5R5IW/ZiO6vVT8iQRXF/h9sGGLwsK/y2C5rU2+r+RLhY8WAhvy
         X88w==
X-Gm-Message-State: AO0yUKXN6OAKBBFN6jc6PTAqYABy7gWTbKnW2rUP0aHbkRVezXskphNs
        l64yVFy5aXcLpW5CYNV5nKOVviW1fcy26fpH5VVZDp5z
X-Google-Smtp-Source: AK7set/D0QwDOOXy8GsQrk0nIiCLFDLIhwInpOhvfEZjHG8lHOxtrWwFdPapvil2lBBKVJ4MHrPnL5uHXvft3cxRo9E=
X-Received: by 2002:a17:906:7cc6:b0:8b1:7682:3181 with SMTP id
 h6-20020a1709067cc600b008b176823181mr3236282ejp.9.1678023845564; Sun, 05 Mar
 2023 05:44:05 -0800 (PST)
MIME-Version: 1.0
References: <20230304164135.28430-1-strit@manjaro.org>
In-Reply-To: <20230304164135.28430-1-strit@manjaro.org>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Sun, 5 Mar 2023 08:43:52 -0500
Message-ID: <CAMdYzYoxti1ZU-xvc66bVx5TmRfUJK=Zx17pHSvaEELuRE95Uw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
To:     Dan Johansen <strit@manjaro.org>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 4, 2023 at 11:42 AM Dan Johansen <strit@manjaro.org> wrote:
>
> Just like the Quartz64 Model B the previously stated speed of sdr-104
> in soquartz is too high for the hardware to reliably communicate with
> some fast SD cards.
> Especially on some carrierboards.
>
> Lower this to sd-uhs-sdr50 to fix this.
>
> Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
>
> Signed-off-by: Dan Johansen <strit@manjaro.org>

Makes sense, considering the problems we're having with other boards.
We should probably stop using sdr104 altogether on Rockchip, at least
until they release a chip that improves on the limitations of pinctrl
speed. Considering the frequency cap it isn't that much of a hit.

Acked-by: Peter Geis <pgwipeout@gmail.com>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index ce7165d7f1a1..102e448bc026 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -598,7 +598,7 @@ &sdmmc1 {
>         non-removable;
>         pinctrl-names = "default";
>         pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
> -       sd-uhs-sdr104;
> +       sd-uhs-sdr50;
>         vmmc-supply = <&vcc3v3_sys>;
>         vqmmc-supply = <&vcc_1v8>;
>         status = "okay";
> --
> 2.39.2
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
