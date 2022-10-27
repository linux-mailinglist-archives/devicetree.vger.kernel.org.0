Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 910E7610245
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 22:01:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236823AbiJ0UA5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 16:00:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236828AbiJ0UAe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 16:00:34 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC967495C5
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 13:00:28 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id l2so2675811pld.13
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 13:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DHAUvNNBDJLLBfUBNsCX+nHYIAXfRTUs9Ev5WNIlPkQ=;
        b=b09dqe2MMTDDXfzLWoUWrqD4c5Tm6jKGUdkgf/rJe+I4XprYnSDDheGpGKHDfFiQ3l
         i5FaocBz+G+wBqOKdIghveSEwwrkCDgIVsWJtwiZ7uAXFiiGbBKx7Vix2ILeWY8PiUcD
         H9P9gySKd4LnDIrpKRoc8054RKh7pFv4r9E1P2bpwCSUBB54W7/7Fcv5LIYczeTU9cV5
         OPmhoyq9IaFDPnoj8U1SsgOU/E6jgHofnpDml7od8M5XKTuarNzuwNn8zKefj+WXNijL
         W1NCp//DLaov97ngnoJr02hTtHUgEYF1yWGFoUgsDUisoz1BiFU6I/w/j5NjTg7Fralz
         WcHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DHAUvNNBDJLLBfUBNsCX+nHYIAXfRTUs9Ev5WNIlPkQ=;
        b=cmAo9tcTYENo/M56kUXrnBURqBF3HsRJvbyqLYCETtjHvDBb38AUfzi4atxEbKqbgJ
         RciRuDZjwYR5SHT26dbv6E9HmW/JaS74WaR5bOzZY0+htUBsIJbwQmxgUBeaECpTLgAy
         OGOznY+W/XCGzrrH9Cdek8Efoee3+Dam2vvz2kdAeuR0CI8Ivb58xnrWjhUSMtr7IH9d
         ie+3JUx/tpk7mUm9QwOBtSB2pd4H6y6QG5e7NgIXRGkRKbBmmCj8WneEaF25Bn2um8Yx
         LocTvc1Pe9LTTLjbPLMBmdXHs88mQiurSgzkFlv01qNWUoQNkohYKt3oqW3LCOpVpJIR
         t7xg==
X-Gm-Message-State: ACrzQf2/BNi4vLhCzH0S3rxuNQQpo01qxYEHqklHvS5whjxWcCd+jl35
        6Iw6pP7McPal3KJUD+/NnUvcG7lcC4OuswQEO1pA2hB6sT1Jfw==
X-Google-Smtp-Source: AMsMyM5Ga4P77OU4aZE1C1w9hmIeLFyd9xKXETHvzk+Z5yFzkHl4wI555FKPGsuqEgPlu9IhFqm+z2vemJUSmGh7yFI=
X-Received: by 2002:a17:90b:1e46:b0:20a:f9d8:1ff7 with SMTP id
 pi6-20020a17090b1e4600b0020af9d81ff7mr12257209pjb.34.1666900828050; Thu, 27
 Oct 2022 13:00:28 -0700 (PDT)
MIME-Version: 1.0
References: <20221027191939.13106-1-mcpratt@pm.me>
In-Reply-To: <20221027191939.13106-1-mcpratt@pm.me>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 27 Oct 2022 12:59:51 -0700
Message-ID: <CAGETcx8N8TPMuOFBhJ0kgBfxa74YpeZXTFM3QRrbdz5bVj2x3Q@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Fix support for nvmem-cells
To:     Michael Pratt <mcpratt@pm.me>
Cc:     devicetree@vger.kernel.org, rafal@milecki.pl, ansuelsmth@gmail.com,
        srinivas.kandagatla@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 27, 2022 at 12:20 PM Michael Pratt <mcpratt@pm.me> wrote:
>
> Device linking to an OF node specified by the "nvmem-cells" property
> as a supplier device causes probing to hangup on the consumer device.
> A previous discussion is linked below.
>
> NVMEM framework does not create standalone devices (i.e. no probing,
> not in the hardware layer). Specifically, nvmem devices
> are dependent on other subsystem devices and are created when
> another driver (mtd, thunderbolt, etc.) calls nvmem_register() or
> devm_nvmem_register() during struct device creation in that driver.
>
> The "compatible" property nvmem-cells serves as a trigger
> for parsers in other drivers, not for the nvmem driver itself.
> An example for MTD devices is commit 658c4448bbbf
> ("mtd: core: add nvmem-cells compatible to parse mtd as nvmem cells").
>
> This commit introduces function of_get_next_compat_node_parent()
> in order to select the next parent node with a "compatible" property,
> and the condition sup_not_dev in order to trigger the function,
> so that an ancestor node is selected as the supplier device node instead.
>
> Link: https://lore.kernel.org/linux-devicetree/696cb2da-20b9-b3dd-46d9-de4bf91a1506@gmail.com/
> Fixes: 53e6a671f70a ("of: property: Add device link support for multiple DT bindings")
> Signed-off-by: Michael Pratt <mcpratt@pm.me>

Hi Michael,

Thanks a lot for submitting a patch to fix issues in fw_devlink. I
think my other patch series[1] should fix this in a generic way for
all such cases where the phandle doesn't actually point to the
supplier struct device. The series itself has some bugs, but there are
"try this if it fixes it" code snippets in the thread that I need to
roll into a v2.

Give it a shot if you can. I'll try to get back to the series soon.

[1] - https://lore.kernel.org/lkml/20220810060040.321697-1-saravanak@google.com/
-Saravana

> ---
>  drivers/of/property.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 967f79b59016..4b7ee036f3e8 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1104,6 +1104,18 @@ static struct device_node *of_get_compat_node_parent(struct device_node *np)
>         return node;
>  }
>
> +static struct device_node *of_get_next_compat_node_parent(struct device_node *np)
> +{
> +       struct device_node *compat, *node;
> +
> +       compat = of_get_compat_node(np);
> +       node = of_get_compat_node_parent(compat);
> +       of_node_put(compat);
> +       of_node_put(np);
> +
> +       return node;
> +}
> +
>  /**
>   * of_link_to_phandle - Add fwnode link to supplier from supplier phandle
>   * @con_np: consumer device tree node
> @@ -1281,6 +1293,9 @@ static struct device_node *parse_##fname(struct device_node *np,       \
>   * @node_not_dev: The consumer node containing the property is never converted
>   *               to a struct device. Instead, parse ancestor nodes for the
>   *               compatible property to find a node corresponding to a device.
> + * @sup_not_dev: The supplier node and nearest parent node with a "compatible"
> + *              property are not a struct device. Instead, parse ancestor nodes for the
> + *              next "compatible" property to find a node corresponding to the device.
>   *
>   * Returns:
>   * parse_prop() return values are
> @@ -1293,6 +1308,7 @@ struct supplier_bindings {
>                                           const char *prop_name, int index);
>         bool optional;
>         bool node_not_dev;
> +       bool sup_not_dev;
>  };
>
>  DEFINE_SIMPLE_PROP(clocks, "clocks", "#clock-cells")
> @@ -1393,7 +1409,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
>         { .parse_prop = parse_power_domains, },
>         { .parse_prop = parse_hwlocks, },
>         { .parse_prop = parse_extcon, },
> -       { .parse_prop = parse_nvmem_cells, },
> +       { .parse_prop = parse_nvmem_cells, .sup_not_dev = true, },
>         { .parse_prop = parse_phys, },
>         { .parse_prop = parse_wakeup_parent, },
>         { .parse_prop = parse_pinctrl0, },
> @@ -1457,6 +1473,10 @@ static int of_link_property(struct device_node *con_np, const char *prop_name)
>                         con_dev_np = s->node_not_dev
>                                         ? of_get_compat_node_parent(con_np)
>                                         : of_node_get(con_np);
> +
> +                       if (s->sup_not_dev)
> +                               phandle = of_get_next_compat_node_parent(phandle);
> +
>                         matched = true;
>                         i++;
>                         of_link_to_phandle(con_dev_np, phandle);
> --
> 2.30.2
>
>
