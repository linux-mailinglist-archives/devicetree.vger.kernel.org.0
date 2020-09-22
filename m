Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD3CF273ED7
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 11:49:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726489AbgIVJtp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 05:49:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726419AbgIVJtp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 05:49:45 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46D17C061755
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 02:49:45 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id y17so17316584lfa.8
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 02:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1/GzZlsKjhO1xxrHGT1Pj5iI6bnlIrvYMKuCo5qePOY=;
        b=kslZWqSJM+PosmlJDdIfAsIleycfhPV8R8da0n6UAoIJjhKVm/d/jIjzyh8gWKmP8y
         fnZHKcZ38/iKV4/Kz4Ky8Ek4UM1QmsZGnyAXDu3MQlLHnt58WgMQFh5cHIFkflD8CvF4
         6gMpBBdPMPzqXu5Uu1CZC18g4o+YwLKa8QoTI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1/GzZlsKjhO1xxrHGT1Pj5iI6bnlIrvYMKuCo5qePOY=;
        b=RGmYqAI+WXUk2igtur217kQinCnolahmzl2bx4kqL34aysJwCS2geu1gGLUBzGm7j7
         2dWpnoHonK2K0m3QCEI63EykSOB9tcdbnKCbyEJR06kMy9fX8fHxBsGHguuSCwYpKxye
         stywFf/Bu5lDktS6OrS/DrMk8InNnMI1X+ztOcw07zSTPnQX7NSWxekGz1gDgU/SKc6N
         Te2E31Ia3NwYpPx/2d+SDBGFNtmU9KTozKKGpzzV2CrPEQLbom1BnDuuOXayoZztwQ72
         z6z4yNwYYI8MC96Hlz0ZpkdkoMrvK4vDdf2Kj5RXQtM9oSWlSbyWzr8Sir8IPWupJ1QI
         Yzyg==
X-Gm-Message-State: AOAM531xTToR4ikrkXn/D72XV5VBmj+YcUZM8AL79jDCNEMCggOSVnj9
        2j8NdDmTHcqd36h4oaI13DFscUKQJtyvNyaHHCGXjw==
X-Google-Smtp-Source: ABdhPJzCzXxBPcWaZu5L2QbUTB1OBB6ypvI7XJpXbSukl1N9svuHQlbnL4rX0pdqqFfETgs6kWui561zwFleCfAC/9o=
X-Received: by 2002:a19:df53:: with SMTP id q19mr1280959lfj.119.1600768183682;
 Tue, 22 Sep 2020 02:49:43 -0700 (PDT)
MIME-Version: 1.0
References: <1600686235-27979-1-git-send-email-hsin-hsiung.wang@mediatek.com> <1600686235-27979-5-git-send-email-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <1600686235-27979-5-git-send-email-hsin-hsiung.wang@mediatek.com>
From:   Fei Shao <fshao@chromium.org>
Date:   Tue, 22 Sep 2020 17:49:32 +0800
Message-ID: <CAJ66y9HCTEYcuGpd_C4bZdD3PDOytUW00-PK6u9F6=v67CCXAg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] soc: mediatek: pwrap: add pwrap driver for
 MT6873/8192 SoCs
To:     Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Argus Lin <argus.lin@mediatek.com>, drinkcat@chromium.org,
        devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 21, 2020 at 11:03 AM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> MT6873/8192 are highly integrated SoCs and use PMIC_MT6359 for
> power management. This patch adds pwrap master driver to
> access PMIC_MT6359.
>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-pmic-wrap.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
>
> diff --git a/drivers/soc/mediatek/mtk-pmic-wrap.c b/drivers/soc/mediatek/mtk-pmic-wrap.c
> index 149bf02..c73e92b 100644
> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> @@ -632,6 +632,17 @@ static int mt6797_regs[] = {
>         [PWRAP_DCM_DBC_PRD] =           0x1D4,
>  };
>
> +static int mt6873_regs[] = {
> +       [PWRAP_INIT_DONE2] =            0x0,
> +       [PWRAP_TIMER_EN] =              0x3E0,
> +       [PWRAP_INT_EN] =                0x448,
> +       [PWRAP_WACS2_CMD] =             0xC80,
> +       [PWRAP_SWINF_2_WDATA_31_0] =    0xC84,
> +       [PWRAP_SWINF_2_RDATA_31_0] =    0xC94,
> +       [PWRAP_WACS2_VLDCLR] =          0xCA4,
> +       [PWRAP_WACS2_RDATA] =           0xCA8,
> +};
> +
>  static int mt7622_regs[] = {
>         [PWRAP_MUX_SEL] =               0x0,
>         [PWRAP_WRAP_EN] =               0x4,
> @@ -1050,6 +1061,7 @@ enum pwrap_type {
>         PWRAP_MT6765,
>         PWRAP_MT6779,
>         PWRAP_MT6797,
> +       PWRAP_MT6873,
>         PWRAP_MT7622,
>         PWRAP_MT8135,
>         PWRAP_MT8173,
> @@ -1512,6 +1524,7 @@ static int pwrap_init_cipher(struct pmic_wrapper *wrp)
>         case PWRAP_MT7622:
>                 pwrap_writel(wrp, 0, PWRAP_CIPHER_EN);
>                 break;
> +       case PWRAP_MT6873:
>         case PWRAP_MT8183:
>                 break;
>         }
> @@ -1948,6 +1961,19 @@ static const struct pmic_wrapper_type pwrap_mt6797 = {
>         .init_soc_specific = NULL,
>  };
>
> +static struct pmic_wrapper_type pwrap_mt6873 = {
static const struct.

> +       .regs = mt6873_regs,
> +       .type = PWRAP_MT6873,
> +       .arb_en_all = 0x777f,
> +       .int_en_all = BIT(4) | BIT(5),
> +       .int1_en_all = 0,
> +       .spi_w = PWRAP_MAN_CMD_SPI_WRITE,
> +       .wdt_src = PWRAP_WDT_SRC_MASK_ALL,
> +       .caps = PWRAP_CAP_ARB,
> +       .init_reg_clock = pwrap_common_init_reg_clock,
> +       .init_soc_specific = NULL,
> +};
> +
>  static const struct pmic_wrapper_type pwrap_mt7622 = {
>         .regs = mt7622_regs,
>         .type = PWRAP_MT7622,
> @@ -2026,6 +2052,9 @@ static const struct of_device_id of_pwrap_match_tbl[] = {
>                 .compatible = "mediatek,mt6797-pwrap",
>                 .data = &pwrap_mt6797,
>         }, {
> +               .compatible = "mediatek,mt6873-pwrap",
> +               .data = &pwrap_mt6873,
> +       }, {
>                 .compatible = "mediatek,mt7622-pwrap",
>                 .data = &pwrap_mt7622,
>         }, {
