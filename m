Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 478F5283507
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 13:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725939AbgJELeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 07:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725843AbgJELeg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 07:34:36 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46B9FC0613CE
        for <devicetree@vger.kernel.org>; Mon,  5 Oct 2020 04:34:36 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id h6so3642402lfj.3
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 04:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0oasYUn/DFPHyfpwUSLDafrvSPH+4dMhFJB75nBJ0NA=;
        b=LGjIp8gdHZwZsp9firBczY8q1j24JfL7rxvncNyEQZLC1k29goNe5NEdq9vTCeyD+p
         8q0oGPGG45MyLrS4yKiv78fvKNcAWvBPrf+2rt9RD+kXFB09ex66868LF91Ay9TS69GZ
         jKMhUlGKM9qvNEQcjmP4Vm3qV9XfQSlCmvy60Jx6YDkoNhEDpl+T/6bT6CA1l7zdpPLx
         2jFfM1BwQY7+dLJWElRSkV2YSPEmI3iLKgPGGfniiRIkcf4jCa7i5gR38RkvvNNoGvo0
         Ug4esBn2MUCEb5u9ToEyAC0nnOwJ4lH61cBLZIM3Id0rl8cCaaG5u2kxvGu/dAs6QZmH
         r5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0oasYUn/DFPHyfpwUSLDafrvSPH+4dMhFJB75nBJ0NA=;
        b=D1LRK5vP/Nl8ZMbIBT02GEIr4hwmN6axssPUrBrIG4uqfkfJ3mCTe7N7LeOPl8+itM
         SKrCQed9ZuNlqND83KTr4XMKRUii5yDv1R/Y4TmyAMJ90OlsXxLR5moYM1lwo4zOHZP2
         ygN/KePBAPEE56S17SZrC2Q/HXzdcIvbv4ZfDcXFroMc6nwnE3SrfRhaNQ634xpcx+z1
         +3zKTB4TwbxQLLkoIOiO3bBrgysS1bxMmLlSpUaQwIiU2yHUubDfIYMHbtLO7B7r0Nrv
         8bDGh7t0hBUSQiBChhAC9lmGx8fLuvXqH3wRHKZ1q/Rvmc6L+fHAOrAqUflkrTn2cvL9
         5K1Q==
X-Gm-Message-State: AOAM531lDgBkq3CvrOnH68a8KCY6g0vZLBF1aXLa02aVTL5tytzxsucU
        fO1T9CPEOPQdw2s1xHp/5laNz+A86uzrQU3FEr58dNwUWso=
X-Google-Smtp-Source: ABdhPJz5PPNoJmUl0u9wvw8E321vxHRtCbwB0xIiPrUZEr07DIHozHYOogOWSqdYp9aclZlMXspxM1LBHcdx/vDv2LQ=
X-Received: by 2002:ac2:4e92:: with SMTP id o18mr5933387lfr.527.1601897674632;
 Mon, 05 Oct 2020 04:34:34 -0700 (PDT)
MIME-Version: 1.0
References: <20201005111644.3131604-1-primoz.fiser@norik.com>
In-Reply-To: <20201005111644.3131604-1-primoz.fiser@norik.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 5 Oct 2020 08:34:23 -0300
Message-ID: <CAOMZO5D7=kJJ1RJ5X53aEnBWqqpUL-RVDqBibdZ-N65gg7nq6g@mail.gmail.com>
Subject: Re: [PATCH 1/2] ASoC: fsl: fsl_ssi: add ac97 fixed mode support
To:     Primoz Fiser <primoz.fiser@norik.com>
Cc:     Linux-ALSA <alsa-devel@alsa-project.org>,
        Timur Tabi <timur@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Primoz,

On Mon, Oct 5, 2020 at 8:16 AM Primoz Fiser <primoz.fiser@norik.com> wrote:
>
> SSI supports "variable" and "fixed" mode of operation in AC'97 mode. Up
> to now, driver always configured SSI port to operate in "variable" AC'97
> mode which is known to be unreliable with some CODECs, see:
> commit 01ca485171e3 ("ASoC: fsl_ssi: only enable proper channel slots in
> AC'97 mode") for more information on issues related to spurious SLOTREQ
> bits. But in summary, when SSI operates in AC'97 variable mode of
> operation, CODECs can sometimes send SLOTREQ bits for non-existent audio
> slots which then "stick" in SSI and completely break audio output.
> Contrary when operating SSI in AC'97 fixed mode, described issues were
> completely gone!
>
> Thus add support for operating SSI in AC'97 Fixed Mode of operation
> which provides better audio reliability when compared to AC'97 Variable
> Mode with some CODECs.
>
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> ---
>  sound/soc/fsl/fsl_ssi.c | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/fsl/fsl_ssi.c b/sound/soc/fsl/fsl_ssi.c
> index 404be27c15fe..3b89785f6de8 100644
> --- a/sound/soc/fsl/fsl_ssi.c
> +++ b/sound/soc/fsl/fsl_ssi.c
> @@ -243,6 +243,7 @@ struct fsl_ssi_soc_data {
>   * @dma_maxburst: Max number of words to transfer in one go. So far,
>   *                this is always the same as fifo_watermark.
>   * @ac97_reg_lock: Mutex lock to serialize AC97 register access operations
> + * @ac97_fixed_mode: SSI in AC97 fixed mode of operation
>   */
>  struct fsl_ssi {
>         struct regmap *regs;
> @@ -287,6 +288,7 @@ struct fsl_ssi {
>         u32 dma_maxburst;
>
>         struct mutex ac97_reg_lock;
> +       bool ac97_fixed_mode;
>  };
>
>  /*
> @@ -616,7 +618,12 @@ static void fsl_ssi_setup_ac97(struct fsl_ssi *ssi)
>         regmap_write(regs, REG_SSI_SRCCR, SSI_SxCCR_WL(17) | SSI_SxCCR_DC(13));
>
>         /* Enable AC97 mode and startup the SSI */
> -       regmap_write(regs, REG_SSI_SACNT, SSI_SACNT_AC97EN | SSI_SACNT_FV);
> +       if (ssi->ac97_fixed_mode) {
> +               regmap_write(regs, REG_SSI_SACNT, SSI_SACNT_AC97EN);
> +               regmap_write(regs, REG_SSI_SATAG, 0x9800);
> +       } else

Should be } else { because the previous if block used curly braces.

> +               regmap_write(regs, REG_SSI_SACNT,
> +                               SSI_SACNT_AC97EN | SSI_SACNT_FV);
