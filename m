Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D33EC57810F
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 13:39:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234387AbiGRLjb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 07:39:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234543AbiGRLjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 07:39:24 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92C9D2AEC
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:39:23 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id bp17so18814267lfb.3
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dtGhrGM04DEpcddG1EHK6PZkvVttFOlX+DQ19nSSesY=;
        b=BPLF5d3kR5qRtyPOG3rzPDve5kIegiIby3xwe7PfF4kG3c5lM8lXe9Bwgp8JfFW8dT
         QOZzFwSj/y/4EyOkWUhz9YPznGehh52xarwdkbYuFp+ZwWB5HA/zWZp7qDRRgKyKo2UP
         TeYod645dxcZNnODe/mcyJtJtZFa30z9xsNX97L3Z2V2jmxHO/BELUu5GDzGW7mA4Phj
         Pkq9szqMTDHEb5Zpuz50g6l5lDvxdefZ9pOg/7Mha0LTq/H2Y6gai+/E6WdX138185o2
         37O4quScpJ+mJqbNTK8I3DfM6ry9WPB5LVkw8Rv0YKdM5qJLZkgYTAWE7M638SbULY+t
         bIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dtGhrGM04DEpcddG1EHK6PZkvVttFOlX+DQ19nSSesY=;
        b=RKqyNXLZWp20DBPqp/kUvLbo6ab6X1RbNiM9FnFo8ziZ7AgeZ9m63lALxYtCdyHCaK
         Yri3rgrelj5nz021GiL2CE+SYRjm5bSyccilkS/KzFqwSP8eBaIMV22RPn9P7LvzudFm
         dawRFNG0hc8NK5PeixMyB3boP4i0w5VKaS2CSXl0/0MUtphJNcDj6vMCfaNxt9IvAQ81
         FM98w9lkD+V+Bw1TwqbaaZi7DA1arUkfKBwpCpxOjxlEVyHYOmoYEQ3yMcxK7FJCFVu6
         7ILAErWUGwPeV1Rh7jkabzckNiLipI0QMqBIV/tNemXXQJt76keGj9Q/nA4jPu8A4wEq
         IdLA==
X-Gm-Message-State: AJIora+4anW2dtKvLyDqJrF65Yr8kHzifZ/5USdnDTiePpj9kegxMiq8
        vp24+T5vNCOkgylEk1v73Sk1+X7oJvuXEa4bOU4ckVLfA+k=
X-Google-Smtp-Source: AGRyM1vqcqmFgwN1ErpO19yQ5+UG1bvQtqrFSw0vLzgYREoGbY0aARU6mv4w256A98MAraZc0XwppDbTGU41tSj0yL0=
X-Received: by 2002:a05:6512:c0a:b0:489:cf39:d750 with SMTP id
 z10-20020a0565120c0a00b00489cf39d750mr15882107lfu.233.1658144361871; Mon, 18
 Jul 2022 04:39:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220714174132.18541-1-kdasu.kdev@gmail.com>
In-Reply-To: <20220714174132.18541-1-kdasu.kdev@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 18 Jul 2022 13:38:45 +0200
Message-ID: <CAPDyKFq-8vksy+qNKRCj+6q3RDtDmoACfM7usxG1AE_BG3NHxw@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-brcmstb: use clk_get_rate(base_clk) in PM resume
To:     Kamal Dasu <kdasu.kdev@gmail.com>
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, alcooperx@gmail.com,
        f.fainelli@gmail.com, bcm-kernel-feedback-list@broadcom.com,
        adrian.hunter@intel.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jul 2022 at 19:42, Kamal Dasu <kdasu.kdev@gmail.com> wrote:
>
> Use clk_get_rate for base_clk on resume before setting new rate.
> This change ensures that the clock api returns current rate
> and sets the clock to the desired rate and honors CLK_GET_NO_CACHE
> attribute used by clock api.
>
> Fixes: 97904a59855c (mmc: sdhci-brcmstb: Add ability to increase max clock rate for 72116b0)
> Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/sdhci-brcmstb.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/sdhci-brcmstb.c b/drivers/mmc/host/sdhci-brcmstb.c
> index 28e9cf995c41..aff36a933ebe 100644
> --- a/drivers/mmc/host/sdhci-brcmstb.c
> +++ b/drivers/mmc/host/sdhci-brcmstb.c
> @@ -406,7 +406,14 @@ static int sdhci_brcmstb_resume(struct device *dev)
>         ret = sdhci_pltfm_resume(dev);
>         if (!ret && priv->base_freq_hz) {
>                 ret = clk_prepare_enable(priv->base_clk);
> -               if (!ret)
> +               /*
> +                * Note: using clk_get_rate() below as clk_get_rate()
> +                * honors CLK_GET_RATE_NOCACHE attribute, but clk_set_rate()
> +                * may do implicit get_rate() calls that do not honor
> +                * CLK_GET_RATE_NOCACHE.
> +                */
> +               if (!ret &&
> +                   (clk_get_rate(priv->base_clk) != priv->base_freq_hz))
>                         ret = clk_set_rate(priv->base_clk, priv->base_freq_hz);
>         }
>
> --
> 2.17.1
>
