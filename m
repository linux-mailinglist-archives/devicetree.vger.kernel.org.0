Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2E3648371C
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 19:43:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233333AbiACSnP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 13:43:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232475AbiACSnP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 13:43:15 -0500
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com [IPv6:2607:f8b0:4864:20::933])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8EC1C061792
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 10:43:14 -0800 (PST)
Received: by mail-ua1-x933.google.com with SMTP id c36so33670982uae.13
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 10:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nJQBNk6axtfRB7RGJeAUInYTBuvs/80E/DpFdWXcxTw=;
        b=pueGbZ3h1ny2MEwEmNqEHMbRlcfwFBhSTwqfKj2WWvApEm70cprF6KcJ53sOijU058
         IoukxZWHD0gHF4wofYp76S2O9pc2etOve+cWkVIlbZVKb0B46/deu5gdZkND9LlYFn1f
         da9jT5L4o/+uQT/JP9op+Ax37qefK0CNsWdsH1zG6FnVUR105MK8QvPlgGLvxVkGgjP6
         h2joz/eltAq8qB5f/gaRLRix7OrdnlYgpoCWWHnQ9o8faMDwCQwA7no4/9P+Fe/vIWSZ
         G2uu0JCH3A4fh0JACBouWNBKODRc9XtiD5BP602i9W3l9ITWxqh7d7T1l0IW7amxW30N
         L3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nJQBNk6axtfRB7RGJeAUInYTBuvs/80E/DpFdWXcxTw=;
        b=TVErTlg73jN1yPt867tIEwxwemqAdGeRLUnqL1vfPzyT0ZodwVg+SlPb5PlpQlDv/K
         NJ4BmDlXHYqL4G61Bp3k3OHqVJwuUKD2yZIfwTkWSUgK2we+3rCAu54zjN/M/0nXV6yE
         AZUwCNIPlD3yZJqNZDm+zgecXQJICNw4Kw+85kbyxfov68mPfjIu1b4zwLFO/dGeNimI
         LycYl9O3uo9uITp98urlQIZWpE5m+dZeH0XDvMRx+S3Co/bn1k1ZE8ZqoikAyIYhS3A/
         5atw5+lcyMisXEtHNNS7c8LUB+M+De4wkyjqOrEKgWL+cFpwe1A7UyCpaIdPOWOm5kUi
         t47g==
X-Gm-Message-State: AOAM530i5FRDSzVdjpE/ZxofrNfS+YbUf/7X194jm+TtRYtJFTVTtLLR
        3OFVENMipumQ6zojpVUj2T/CFFwBsazaZ9w3qYGnZA==
X-Google-Smtp-Source: ABdhPJwX2k6vaWwYLozxhBfsZvEvo2FdmoJsPYoTEOsunSCI8p/WioPIFzSX+cajzPMg+b6x7iY6xl2+GwAUad8DJt0=
X-Received: by 2002:a67:e10c:: with SMTP id d12mr13619941vsl.20.1641235393823;
 Mon, 03 Jan 2022 10:43:13 -0800 (PST)
MIME-Version: 1.0
References: <20211231161930.256733-1-krzysztof.kozlowski@canonical.com> <20211231161930.256733-3-krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211231161930.256733-3-krzysztof.kozlowski@canonical.com>
From:   Sam Protsenko <semen.protsenko@linaro.org>
Date:   Mon, 3 Jan 2022 20:43:02 +0200
Message-ID: <CAPLW+4kVjswvcx7PjkBq_cPrmoi1_yJw9qGOO2tcRCDm27zKmA@mail.gmail.com>
Subject: Re: [PATCH 02/24] pinctrl: samsung: accept GPIO bank nodes with a suffix
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 31 Dec 2021 at 18:20, Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> Existing dt-bindings expected that each GPIO/pin bank within pin
> controller has its own node with name matching the bank (e.g. gpa0,
> gpx2) and "gpio-controller" property.  The node name is then used for
> matching between driver data and DTS.
>
> Newly introduced dtschema expects to have nodes ending with "-gpio-bank"
> suffix, so rewrite bank-devicetree matching to look for old and new
> style of naming.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  drivers/pinctrl/samsung/pinctrl-samsung.c | 57 ++++++++++++++++++-----
>  1 file changed, 45 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/pinctrl/samsung/pinctrl-samsung.c b/drivers/pinctrl/samsung/pinctrl-samsung.c
> index f2864a7869b3..561853df8ef7 100644
> --- a/drivers/pinctrl/samsung/pinctrl-samsung.c
> +++ b/drivers/pinctrl/samsung/pinctrl-samsung.c
> @@ -1011,13 +1011,56 @@ static void samsung_banks_of_node_put(struct samsung_pinctrl_drv_data *d)
>                 of_node_put(bank->of_node);
>  }
>
> +/*
> + * Iterate over all driver pin banks to find one matching the name of node,
> + * skipping optional "-gpio" node suffix. When found, assign node to the bank.
> + */
> +static void samsung_banks_of_node_get(struct device *dev,
> +                                     struct samsung_pinctrl_drv_data *d,
> +                                     struct device_node *node)
> +{
> +       const char *suffix = "-gpio-bank";
> +       struct samsung_pin_bank *bank;
> +       struct device_node *child;
> +       /* Pin bank names are up to 4 characters */
> +       char node_name[20];
> +       unsigned int i;
> +       size_t len;
> +
> +       bank = d->pin_banks;
> +       for (i = 0; i < d->nr_banks; ++i, ++bank) {
> +               strscpy(node_name, bank->name, sizeof(node_name));
> +               len = strlcat(node_name, suffix, sizeof(node_name));
> +               if (len == sizeof(sizeof(node_name))) {

Double sizeof is probably wrong?

> +                       dev_err(dev, "Too long pin bank name '%s', ignoring\n",
> +                               bank->name);
> +                       continue;
> +               }
> +
> +               for_each_child_of_node(node, child) {
> +                       if (!of_find_property(child, "gpio-controller", NULL))
> +                               continue;
> +                       if (of_node_name_eq(child, node_name))
> +                               break;
> +                       else if (of_node_name_eq(child, bank->name))
> +                               break;
> +               }
> +
> +               if (child)
> +                       bank->of_node = child;
> +               else
> +                       dev_warn(dev, "Missing node for bank %s - invalid DTB\n",
> +                                bank->name);
> +               /* child reference dropped in samsung_drop_banks_of_node() */
> +       }
> +}
> +
>  /* retrieve the soc specific data */
>  static const struct samsung_pin_ctrl *
>  samsung_pinctrl_get_soc_data(struct samsung_pinctrl_drv_data *d,
>                              struct platform_device *pdev)
>  {
>         struct device_node *node = pdev->dev.of_node;
> -       struct device_node *np;
>         const struct samsung_pin_bank_data *bdata;
>         const struct samsung_pin_ctrl *ctrl;
>         struct samsung_pin_bank *bank;
> @@ -1081,17 +1124,7 @@ samsung_pinctrl_get_soc_data(struct samsung_pinctrl_drv_data *d,
>          */
>         d->virt_base = virt_base[0];
>
> -       for_each_child_of_node(node, np) {
> -               if (!of_find_property(np, "gpio-controller", NULL))
> -                       continue;
> -               bank = d->pin_banks;
> -               for (i = 0; i < d->nr_banks; ++i, ++bank) {
> -                       if (of_node_name_eq(np, bank->name)) {
> -                               bank->of_node = np;
> -                               break;
> -                       }
> -               }
> -       }
> +       samsung_banks_of_node_get(&pdev->dev, d, node);
>
>         d->pin_base = pin_base;
>         pin_base += d->nr_pins;
> --
> 2.32.0
>
