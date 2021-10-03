Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 861A742013A
	for <lists+devicetree@lfdr.de>; Sun,  3 Oct 2021 12:43:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbhJCKpf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Oct 2021 06:45:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbhJCKpf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Oct 2021 06:45:35 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 157F1C061780
        for <devicetree@vger.kernel.org>; Sun,  3 Oct 2021 03:43:48 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id l7so29213779edq.3
        for <devicetree@vger.kernel.org>; Sun, 03 Oct 2021 03:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hhIRtNmyJhexmlECmPtCbGT/nfcemz4pvtm/ZZP1+s8=;
        b=qViNRUXpg2z5pHiN5Fz3bPOZhvD8stCabqAePRKLT0AV9fjaKxZHar8BO2eageI6Ws
         hqnJ3rKDhsc094NrCqafWrOUT6UiAbonSooohHpacDw2x7aq0QqONPDn4TF8gFfYbXXu
         QPE7X9MQVk4CgzTjHQR9w7da7oopFVZP3ih0Faz7mNPPCcs1DMrfKBpKoEe1Xeosiowk
         nLzF8CPFrD2/elNnbZGZO6EyE3dxugQPQrceecl8NlC2Z7jdC+deB/SVpRT4/0VBUQTG
         EcQZDSLxWQ5y01OanQyrcDx23cVSpTcRx9kn+7C7UGY76IcCnrne9F5DcJljP2WXwc4H
         6ZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hhIRtNmyJhexmlECmPtCbGT/nfcemz4pvtm/ZZP1+s8=;
        b=hkhcL9RXlCj1y4Roa0Jhh9VukfZIM6zzvzYjP5QyZiqV9zK0xSV5yF71nbHLjMArZp
         EQPiwiHgcRFQczCPNqEWeWxsix8x7Hm6k371fnE2X7pS8ob6ulGE/5IMoVGG1aHtg9Xq
         3fft0jbwDEbbcSArW2m+Rd0cSEaCAdMj26ittDURf27q4ITyVaQ+VyVlxQA3/rvm+LLf
         X0JsezUyOG2MFWXUeuRHH3CAYKDX8h5ayIUoeIDn2Y9ipEOOlCkdg1W46M7AU5ZQbwfo
         urP7++sNkHqF3FIweNNLHxtCBHdzpjIaYWaHuxM/LSj/e1NdoSinOEPpFN6nB29xFu4I
         COEw==
X-Gm-Message-State: AOAM531fZ6+8LjMpIpx8+whTZ3bq9uHfoBczq+QTxRlt+c4dOdHWMaKn
        c+HcB3RLg8ipt36cSHLXAR/YhbWCzZ42TaoW+48=
X-Google-Smtp-Source: ABdhPJzaw3AaXutbDq0RUw1XOvF6qKVUhEa9ygPpfXLAYlsXA2BtsLr816EVS3zJtQJnNWTRlO3zgaNOLW6It75Tk58=
X-Received: by 2002:a50:e046:: with SMTP id g6mr10346421edl.296.1633257826477;
 Sun, 03 Oct 2021 03:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20211002005954.1367653-1-l.stach@pengutronix.de> <20211002005954.1367653-2-l.stach@pengutronix.de>
In-Reply-To: <20211002005954.1367653-2-l.stach@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Sun, 3 Oct 2021 05:43:36 -0500
Message-ID: <CAHCN7x+GgH5Lu-2jmVy6tcnB08Wn1=naePWEVMJ+HzZE_k9q0Q@mail.gmail.com>
Subject: Re: [PATCH v5 01/18] Revert "soc: imx: gpcv2: move reset assert after
 requesting domain power up"
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>,
        devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 1, 2021 at 8:00 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> This reverts commit a77ebdd9f553. It turns out that the VPU domain has no
> different requirements, even though the downstream ATF implementation seems
> to suggest otherwise. Powering on the domain with the reset asserted works
> fine. As the changed sequence has caused sporadic issues with the GPU
> domains, just revert the change to go back to the working sequence.
>
> Cc: <stable@vger.kernel.org> # 5.14
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Acked-by: Peng Fan <peng.fan@nxp.com>
> ---

Lucas,

I applied your series to the 5.14.y kernel to test with the
imx8mm-beacon board, but I found that it doesn't wake from sleep.
I'll experiment with other versions of ATF.  If nobody else has this
problem, I'll assume, it's an error on my part.

adam

>  drivers/soc/imx/gpcv2.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index 34a9ac1f2b9b..8b7a01773aec 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -244,6 +244,8 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>                 goto out_regulator_disable;
>         }
>
> +       reset_control_assert(domain->reset);
> +
>         if (domain->bits.pxx) {
>                 /* request the domain to power up */
>                 regmap_update_bits(domain->regmap, GPC_PU_PGC_SW_PUP_REQ,
> @@ -266,8 +268,6 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
>                                   GPC_PGC_CTRL_PCR);
>         }
>
> -       reset_control_assert(domain->reset);
> -
>         /* delay for reset to propagate */
>         udelay(5);
>
> --
> 2.30.2
>
