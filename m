Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8992248A3A5
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 00:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241278AbiAJX3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jan 2022 18:29:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241114AbiAJX3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jan 2022 18:29:44 -0500
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48DBBC06173F
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 15:29:44 -0800 (PST)
Received: by mail-qv1-xf2f.google.com with SMTP id kc16so16673652qvb.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jan 2022 15:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=szCt6t8Wsttc6DHVqvHsn/5TQMRph0yPjuUaXgbQFBw=;
        b=FICAbWEW+0JA98oPgdSaO0wl1EG7fXXnfxs6cUvuga9TT5rrpcsds2fOC9+gHsCWpk
         B35o8np7z4pWP/Jgyfv+4Wftokz4HYBszh2M3dAQfTv4hziGC/T6SZCWo2KPi9to1xCN
         OG0r3bPz/jp0+T9Pu5/wMuSyfA+ZkuU9OxXEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=szCt6t8Wsttc6DHVqvHsn/5TQMRph0yPjuUaXgbQFBw=;
        b=rAxVTgGdlSSIu0/QL7Nxj6gFRPi86yIuDVGnCYdq2uA1TlanhH285YwBlafqZmd4WV
         rdgXRzwCgxHSyTxCcgoP0hUI9GykarSai6oT5yP5IG8Bm3d8VtjgiKSjRAYjES1atCKm
         rldfJZTA1HAJmqNxtiaVzsv5eh/bLjo8OMeiObY0Xnei4OsT0catdaim2o1UbjDTUprt
         oI+XUhfGzhfCcK3tMZzordzj/EXUcXQ7E7wgq+0PcGwEXXQtYV+im9huOy+Hkd8ZQFVA
         2RPXeIX3NeDbt7u7cks5IwP0t6hhJzSrzIAP5YtrDWLDE6ohSr7BKE7r4ipjyNMDg9r6
         uckg==
X-Gm-Message-State: AOAM533xWIfetcv0bCdfto5YJ7cwG0ldtJZYdVCvh8ZrydaUsLQwqv39
        XZ+8Gp+UZQqcFe/sRbQicnZeyLS/ZFZ4JHjwZ5qm5kSd
X-Google-Smtp-Source: ABdhPJxXL0cKHv5EIy/uxs6xqMT/yukZ9f31utfrKh89EVH2ZIAcsjhrJ3koAciN6vl6wjy/1M2478dS4r4Wls/y6O0=
X-Received: by 2002:a05:6214:2522:: with SMTP id gg2mr1714935qvb.65.1641857382829;
 Mon, 10 Jan 2022 15:29:42 -0800 (PST)
MIME-Version: 1.0
References: <20211117035106.321454-1-joel@jms.id.au> <20211117035106.321454-4-joel@jms.id.au>
In-Reply-To: <20211117035106.321454-4-joel@jms.id.au>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 10 Jan 2022 23:29:30 +0000
Message-ID: <CACPK8XcSPiOoJZ4jyJySvCiW+EXxSVsxiEcK2eOZjGY9b1vrjA@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: aspeed: Add secure boot controller support
To:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        Arnd Bergmann <arnd@arndb.de>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Arnd,

On Wed, 17 Nov 2021 at 03:51, Joel Stanley <joel@jms.id.au> wrote:
>
> This reads out the status of the secure boot controller and exposes it
> in sysfs.
>
> An example on a AST2600A3 QEMU model:
>
>  # grep . /sys/bus/soc/devices/soc0/*
>  /sys/bus/soc/devices/soc0/abr_image:0
>  /sys/bus/soc/devices/soc0/family:AST2600
>  /sys/bus/soc/devices/soc0/low_security_key:0
>  /sys/bus/soc/devices/soc0/machine:Rainier 2U
>  /sys/bus/soc/devices/soc0/otp_protected:0
>  /sys/bus/soc/devices/soc0/revision:A3
>  /sys/bus/soc/devices/soc0/secure_boot:1
>  /sys/bus/soc/devices/soc0/serial_number:888844441234abcd
>  /sys/bus/soc/devices/soc0/soc_id:05030303
>  /sys/bus/soc/devices/soc0/uart_boot:1

Quoting from your response to my pull request:

> - I actually want to avoid custom attributes on soc device instances as much
>   as possible. I have not looked in detail at what you add here, but the
>   number of custom attributes means we should discuss this properly.

Can you explain the reasoning here?

I am a bit surprised given we have this nice feature in struct
soc_device_attribute:

struct soc_device_attribute {
...
        const struct attribute_group *custom_attr_group;
};

Cheers,

Joel


>
> On boot the state of the system according to the secure boot controller
> will be printed:
>
>  [    0.037634] AST2600 secure boot enabled
>
> or
>
>  [    0.037935] AST2600 secure boot disabled
>
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> Reviewed-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  drivers/soc/aspeed/aspeed-socinfo.c | 73 +++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
>
> diff --git a/drivers/soc/aspeed/aspeed-socinfo.c b/drivers/soc/aspeed/aspeed-socinfo.c
> index 1ca140356a08..6faf2c199c90 100644
> --- a/drivers/soc/aspeed/aspeed-socinfo.c
> +++ b/drivers/soc/aspeed/aspeed-socinfo.c
> @@ -9,6 +9,8 @@
>  #include <linux/slab.h>
>  #include <linux/sys_soc.h>
>
> +static u32 security_status;
> +
>  static struct {
>         const char *name;
>         const u32 id;
> @@ -74,6 +76,54 @@ static const char *siliconid_to_rev(u32 siliconid)
>         return "??";
>  }
>
> +#define SEC_STATUS             0x14
> +#define ABR_IMAGE_SOURCE       BIT(13)
> +#define OTP_PROTECTED          BIT(8)
> +#define LOW_SEC_KEY            BIT(7)
> +#define SECURE_BOOT            BIT(6)
> +#define UART_BOOT              BIT(5)
> +
> +static ssize_t abr_image_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +       return sprintf(buf, "%d\n", !!(security_status & ABR_IMAGE_SOURCE));
> +}
> +static DEVICE_ATTR_RO(abr_image);
> +
> +static ssize_t low_security_key_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +       return sprintf(buf, "%d\n", !!(security_status & LOW_SEC_KEY));
> +}
> +static DEVICE_ATTR_RO(low_security_key);
> +
> +static ssize_t otp_protected_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +       return sprintf(buf, "%d\n", !!(security_status & OTP_PROTECTED));
> +}
> +static DEVICE_ATTR_RO(otp_protected);
> +
> +static ssize_t secure_boot_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +       return sprintf(buf, "%d\n", !!(security_status & SECURE_BOOT));
> +}
> +static DEVICE_ATTR_RO(secure_boot);
> +
> +static ssize_t uart_boot_show(struct device *dev, struct device_attribute *attr, char *buf)
> +{
> +       /* Invert the bit, as 1 is boot from SPI/eMMC */
> +       return sprintf(buf, "%d\n", !(security_status & UART_BOOT));
> +}
> +static DEVICE_ATTR_RO(uart_boot);
> +
> +static struct attribute *aspeed_attrs[] = {
> +       &dev_attr_abr_image.attr,
> +       &dev_attr_low_security_key.attr,
> +       &dev_attr_otp_protected.attr,
> +       &dev_attr_secure_boot.attr,
> +       &dev_attr_uart_boot.attr,
> +       NULL,
> +};
> +ATTRIBUTE_GROUPS(aspeed);
> +
>  static int __init aspeed_socinfo_init(void)
>  {
>         struct soc_device_attribute *attrs;
> @@ -81,6 +131,7 @@ static int __init aspeed_socinfo_init(void)
>         struct device_node *np;
>         void __iomem *reg;
>         bool has_chipid = false;
> +       bool has_sbe = false;
>         u32 siliconid;
>         u32 chipid[2];
>         const char *machine = NULL;
> @@ -109,6 +160,20 @@ static int __init aspeed_socinfo_init(void)
>         }
>         of_node_put(np);
>
> +       /* AST2600 only */
> +       np = of_find_compatible_node(NULL, NULL, "aspeed,ast2600-sbc");
> +       if (of_device_is_available(np)) {
> +               void *base = of_iomap(np, 0);
> +               if (!base) {
> +                       of_node_put(np);
> +                       return -ENODEV;
> +               }
> +               security_status = readl(base + SEC_STATUS);
> +               has_sbe = true;
> +               iounmap(base);
> +               of_node_put(np);
> +       }
> +
>         attrs = kzalloc(sizeof(*attrs), GFP_KERNEL);
>         if (!attrs)
>                 return -ENODEV;
> @@ -135,6 +200,9 @@ static int __init aspeed_socinfo_init(void)
>                 attrs->serial_number = kasprintf(GFP_KERNEL, "%08x%08x",
>                                                  chipid[1], chipid[0]);
>
> +       if (has_sbe)
> +               attrs->custom_attr_group = aspeed_groups[0];
> +
>         soc_dev = soc_device_register(attrs);
>         if (IS_ERR(soc_dev)) {
>                 kfree(attrs->soc_id);
> @@ -148,6 +216,11 @@ static int __init aspeed_socinfo_init(void)
>                         attrs->revision,
>                         attrs->soc_id);
>
> +       if (has_sbe) {
> +               pr_info("AST2600 secure boot %s\n",
> +                       (security_status & SECURE_BOOT) ? "enabled" : "disabled");
> +       }
> +
>         return 0;
>  }
>  early_initcall(aspeed_socinfo_init);
> --
> 2.33.0
>
