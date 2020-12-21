Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A2CB2DF851
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 05:40:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbgLUEjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Dec 2020 23:39:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725841AbgLUEjR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Dec 2020 23:39:17 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30C4FC0613D3
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 20:38:37 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id z12so5446650pjn.1
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 20:38:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=42aU/0QkvhPwE8g58QyrNOHFOkDcHhgODUw0Rs5b/Uw=;
        b=ea9CItxiILeaNwCUkQP2JS5JQFW1QWbk3+Nx8tKIMMx0H7EmkWqaJl0PgSxzs2WEzQ
         o1YKd2wX8ELgdqJ71XFRE3d7/Zby7W6O+NrguV2DlduUkuVvZFLp0gQwJUKvA7ucuq+8
         bxVaftTqHXPqOu9cLbNSxxuqTUYYsq1X8HxRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=42aU/0QkvhPwE8g58QyrNOHFOkDcHhgODUw0Rs5b/Uw=;
        b=pceSAl1NboNlH8o8XABjTqPul578jrTNnpxPwKzfH26+V6qUxRTR5ZRbR8MeDdqTXR
         MeSqUm3oLdr13cqYt/WKpsi/HLzmpoPFDdlMBUX7jZcqxq2tnIMNXnhj4ri2BLZzdUqC
         NZZV06YsLwfbBpU4Jcop93XDwa/aYzyWNQrrS28W7rc5QwG4RaCTYGTlYTIJfXRyqOU1
         onju0xgLIJKcvAC1DbQtyrUKWPoBRlKkyCVAxkZEyGaqB1Bk2mgoFiwLCXQ0m9wqhIs6
         EbkFI7IR/2a04Qnbz/DGEozA0Yg+opC/Umx0qhJkLbVs22eeXBqQpDK/jW2kaoqJUumv
         SwAQ==
X-Gm-Message-State: AOAM531qApFos8rDLeH1TB8tHEcqkB6JcKPL98DJU13DZDT3freM/5k4
        umU0Q8VQFElGFJlp1AP95FabRWCXn/s8jcYA/Lk4+rqhk0hFNQ==
X-Google-Smtp-Source: ABdhPJxyuTf71XGSFnxCVk3D2pXZTKGLrWsD632V9VKnQKt8wROKwl2TJ3anpFzlIkMTXAqcjAKmszVvdq2V6TBsP2Y=
X-Received: by 2002:a67:6b46:: with SMTP id g67mr11079180vsc.60.1608518533535;
 Sun, 20 Dec 2020 18:42:13 -0800 (PST)
MIME-Version: 1.0
References: <1605700894-32699-1-git-send-email-hsin-hsiung.wang@mediatek.com> <1605700894-32699-5-git-send-email-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <1605700894-32699-5-git-send-email-hsin-hsiung.wang@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Mon, 21 Dec 2020 10:42:02 +0800
Message-ID: <CANMq1KBXKQOj=qUMULeJsqy8bvsJLgRniuF2kqzhxpKTWCVq1w@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] soc: mediatek: pwrap: add pwrap driver for
 MT6873/8192 SoCs
To:     Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Fei Shao <fshao@chromium.org>,
        Argus Lin <argus.lin@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        lkml <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 18, 2020 at 8:08 PM Hsin-Hsiung Wang
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
> index 5678f46..d1cd050 100644
> --- a/drivers/soc/mediatek/mtk-pmic-wrap.c
> +++ b/drivers/soc/mediatek/mtk-pmic-wrap.c
> @@ -632,6 +632,17 @@ static int mt6797_regs[] = {
>         [PWRAP_DCM_DBC_PRD] =           0x1D4,
>  };
>
> +static int mt6873_regs[] = {
> +       [PWRAP_INIT_DONE2] =            0x0,

I don't have the datasheet for the PWRAP interface, is this register
at offset 0x0 real?

If so, I'm concerned that mt6873_regs only defines very few registers
offsets, so the init code will do a _lot_ writes at register address
0x0 (e.g. for all the undefined values in this array: PWRAP_WACS0_EN,
PWRAP_WACS1_EN, PWRAP_WACS2_EN, etc, etc.)

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
> +static const struct pmic_wrapper_type pwrap_mt6873 = {
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
> --
> 2.6.4
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
