Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 74E6D225BEA
	for <lists+devicetree@lfdr.de>; Mon, 20 Jul 2020 11:41:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728068AbgGTJl6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jul 2020 05:41:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728114AbgGTJl5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jul 2020 05:41:57 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FCEBC061794
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 02:41:57 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id d17so19535873ljl.3
        for <devicetree@vger.kernel.org>; Mon, 20 Jul 2020 02:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=twhRHN8GmGnSaOWdhFH407w2bJQWN/XspQavxD2E7NU=;
        b=vUBM16JedblSszCmKcUOtNNCpBXv3CIhGha5f39iVCq+GLQjc1+5sjVAf3MGajt6eb
         js3i3eEdyXIM2MQPvSQWiAbe6gPeB4YjU2Sab0OH0PF9+7BZ1Hfg3dMIm6fiTGmnLQGE
         WN52jmOtjrzVTwhA5TpOoRi5fzEqLaC3gBn8SKr5iixPXGEf8j0ueAKU4MbazsVA6aRf
         FyvYHaaSBU57IPmfcX0ILw4NWbPu9l8TUYzGeGQoqnmJtc7HHBIKatEXj/thpaDFX2WV
         Aokyu21j7CqO9w7d6xuJ7PUwJIG1UxxaIPnap6CCEB8zRyeuqnRZ3bACsucfj0UgkFkX
         fSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=twhRHN8GmGnSaOWdhFH407w2bJQWN/XspQavxD2E7NU=;
        b=AVB3avOin2vlC+Xfsb9JZc89MCgl+jXqf21cbqOgXKhna8hVAI9nGdMV4YTZqzkR1h
         zlrAN1val+kMtySuhk7TTg0CdY5Ehe5MBkf8fg0CKC7mK5U4jJZiehpF99/NRi/yaAE3
         lhgm3Hh7A4/hLIEzXr587aD0QKyg+Bb0CdqQJho4DziT03IVuFZkhsdTR2QpT38fTsdQ
         aJATkRm6DZj3PVwvPpIan9mz7d/ruFOWzRnG5kQ2YfUP7M+b3f3yj0/mrxZaisULhJnS
         8gkJgctuLIt+hsQUJISDymfUzkG6GrJlVzUSz6gHYwvK25yQXRNK00Q1tTj3daAI2tNC
         O31g==
X-Gm-Message-State: AOAM533Pp3WAlFnKcbi3tZeVS89o+FFoPcgfxXf+DOmRSPslQ/uanvcn
        IQ2iRRCGXLkrUO46YQCJJHSoBQzqPCYts9UTj8eGVg==
X-Google-Smtp-Source: ABdhPJzp2xsR54WZ1Ot/7m0WsiusF7Y4zChVz+CNR+5Bym/Dcaq3ISLURbaFVL1WyVZW8pynmK9Y5DvEDxM1d6oFID4=
X-Received: by 2002:a2e:9b8c:: with SMTP id z12mr10226971lji.35.1595238115661;
 Mon, 20 Jul 2020 02:41:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200716022817.30439-1-ansuelsmth@gmail.com> <20200716022817.30439-2-ansuelsmth@gmail.com>
In-Reply-To: <20200716022817.30439-2-ansuelsmth@gmail.com>
From:   Amit Kucheria <amit.kucheria@linaro.org>
Date:   Mon, 20 Jul 2020 15:11:44 +0530
Message-ID: <CAP245DUqvTYENmaxG3rjUn1XrzrmvdFmKG_vaef2BxKL6jY+Rg@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] ipq806x: gcc: add support for child probe
To:     Ansuel Smith <ansuelsmth@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linux PM list <linux-pm@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 16, 2020 at 7:58 AM Ansuel Smith <ansuelsmth@gmail.com> wrote:
>
> Add support for child probing needed for tsens driver that share the
> seme regs of gcc for this platform.

Typo: same


>
> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>  drivers/clk/qcom/gcc-ipq806x.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/clk/qcom/gcc-ipq806x.c b/drivers/clk/qcom/gcc-ipq806x.c
> index a8456e09c44d..d6b7adb4be38 100644
> --- a/drivers/clk/qcom/gcc-ipq806x.c
> +++ b/drivers/clk/qcom/gcc-ipq806x.c
> @@ -3089,7 +3089,7 @@ static int gcc_ipq806x_probe(struct platform_device *pdev)
>         regmap_write(regmap, 0x3cf8, 8);
>         regmap_write(regmap, 0x3d18, 8);
>
> -       return 0;
> +       return of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
>  }
>
>  static struct platform_driver gcc_ipq806x_driver = {
> --
> 2.27.0
>
