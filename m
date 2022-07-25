Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE36357FAA0
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 09:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232728AbiGYH7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 03:59:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232654AbiGYH7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 03:59:39 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADA0813D52
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 00:59:36 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id e69so18716444ybh.2
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 00:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7LVjJZ3vZnsHBYWH91XFfNQq4hkSx4/m7XWPR5zW2rM=;
        b=A4yPo/waVaMIqiTi1D3gcMPCRhfFyDMubfV4Ye7jWo15S5jIz6uB9pGlDRNwR+UEkD
         GkoQ3T2bTCUVib5nqdJFiKC8TuGcSIUhW73cMzUYc15erc9PJ3bJNVk1tZAsuMvah8/F
         WAuTrmKmpbQ9GW7vd23p41ImSbU8YL34psKJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7LVjJZ3vZnsHBYWH91XFfNQq4hkSx4/m7XWPR5zW2rM=;
        b=SvJSEfGjsaDD51CHI1dajeSI4uEwoQK1yMDxapQFXi9wv66OuoSme0DCs2s0vUhd1g
         iZ7BEMFRB04/B2faGiMbyg8wbTah0AJ4uC51wqR1CBqyfc9JB3r/eq3lnA6x8c7cEFV7
         KQ/r63xOu7+OsBHHDewftlMU5ruqp5CPzQzHI0OhTQinQ9y9HhV8FdYMMLyB9HAF3NRT
         +wEHf2Awk1mqsv1hI/cJ8WH5e32WIZeWMoO8ZuaiHGVvR4htF9RQWKXxqo9XXAtJwgxo
         B4hJzg9lYeJFKMg+YWgLCotIf9kKZTWigOMlcXliru1PKCz7qfJp2mHaK50u5+FiPNO/
         oLPg==
X-Gm-Message-State: AJIora9lrcoVbefsJFgcEArrLG9zlyGB1F+BwaVhW6xQN05sb3WVYSim
        2jobHKdWXbqPptLa2BTw95q1kKlkza0z+rWp4wgEoA==
X-Google-Smtp-Source: AGRyM1v0HxzW8vtags5zI75LJuEW/+tx6Jwb+I4b5Af0gdhsPwG/G07wonpdlzb5E5ap46RBTKqTtHsQt/XnayBqYFE=
X-Received: by 2002:a25:d852:0:b0:66f:259c:17b6 with SMTP id
 p79-20020a25d852000000b0066f259c17b6mr8769449ybg.438.1658735975662; Mon, 25
 Jul 2022 00:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220721145017.918102-1-angelogioacchino.delregno@collabora.com> <20220721145017.918102-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220721145017.918102-4-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 25 Jul 2022 15:59:24 +0800
Message-ID: <CAGXv+5E_Q6Z9RA6VQDHyn6E9xb-C0AmEx7JR8Lc65ofT1YE0sw@mail.gmail.com>
Subject: Re: [PATCH v2 3/8] arm64: dts: mediatek: cherry: Add keyboard mapping
 for the top row
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 10:52 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Chromebooks' embedded keyboards differ from standard layouts for the
> top row, as this one doesn't have the standard function keys but
> shortcuts instead: map these keys to achieve the functionality that
> is pictured on the printouts.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  .../boot/dts/mediatek/mt8195-cherry.dtsi      | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> index 87ac2b4f9814..2853f7f76c90 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -821,3 +821,33 @@ &xhci3 {
>
>  #include <arm/cros-ec-keyboard.dtsi>
>  #include <arm/cros-ec-sbs.dtsi>
> +
> +&keyboard_controller {
> +       function-row-physmap = <
> +               MATRIX_KEY(0x00, 0x02, 0)       /* T1 */
> +               MATRIX_KEY(0x03, 0x02, 0)       /* T2 */
> +               MATRIX_KEY(0x02, 0x02, 0)       /* T3 */
> +               MATRIX_KEY(0x01, 0x02, 0)       /* T4 */
> +               MATRIX_KEY(0x03, 0x04, 0)       /* T5 */
> +               MATRIX_KEY(0x02, 0x04, 0)       /* T6 */
> +               MATRIX_KEY(0x01, 0x04, 0)       /* T7 */
> +               MATRIX_KEY(0x02, 0x09, 0)       /* T8 */
> +               MATRIX_KEY(0x01, 0x09, 0)       /* T9 */
> +               MATRIX_KEY(0x00, 0x04, 0)       /* T10 */

I wonder if we want to add the sleep button to this list, since it is
technically part of the first row.

ChenYu
