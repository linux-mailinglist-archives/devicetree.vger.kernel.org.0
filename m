Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ABBD1AE74A
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2020 23:09:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727841AbgDQVJP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Apr 2020 17:09:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726396AbgDQVJP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Apr 2020 17:09:15 -0400
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com [IPv6:2607:f8b0:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F40BEC061A0C
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 14:09:14 -0700 (PDT)
Received: by mail-oi1-x244.google.com with SMTP id r25so3307181oij.4
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 14:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zz9iwCIr/F3QG8mgmb+B3MoXqMi0D5rT/9ckWLDoDEM=;
        b=JIJ9eiP0d18p+Zkg+P6W3I47al2Fd/m5GOB+bsA4kAfEEP6SEguLqDnF1U4cU4Otoj
         yGNGZ8kL394HrJzIfPQd4Xa5bLpKRbvjaGl1kCmY99Xd6DydUHPlE54AF70b9KUHL94o
         WES7sAEMa/PKEy72T7FDyZs6YJ8bwb5U3ksHMUIHnWV39SwgV2FDMhkiBLJgNcgnxQ5r
         Y7P8JD2YO9H9nAN6qUOS0HQYi0THeZjDwDfrUsXlpS36dkWSYh1ZwJmz+IEcezNziFG4
         piYsepr1qBtBWXLB9aqZNXGyAk65n7/zwIQnrbLpChhpYS3hIU6jxStoubTfcoszTlJk
         vBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zz9iwCIr/F3QG8mgmb+B3MoXqMi0D5rT/9ckWLDoDEM=;
        b=g4HUdtJHHYwwp7eKzuBGxV4Jv6kCUgFj58YhZaI24NYjjo3J4RvhboPbqhurmDuysW
         mpFA5MdRP++xL/2vQZDz6CnhG8H1CYZKdFOQ/gCTR6TnP8upn7UiJAS5wr1OHn8hQdPY
         CFSsuzvjvcW7fez3c7MZOPMFU7rzBQvi1SSMX8JbizIlqwf52fxqhsfDUu5bE3wHdZvG
         vvxzc2gAwkcyMJoSvvhXgOujKgxvtxxtHtKb4FDLyLl7W2t4rpgckgOk1ROwXX1JjYRm
         08e1F8rfrEZNSxoECGaZceXvIAfg2k4Y1gI+fGhJw4U5s2dj2EJxl1yzPm/A1BUFs72Z
         TRDA==
X-Gm-Message-State: AGi0PuZ+EUPpwqQDpsnxxYiIgycxKxYjOnzEbq5QxXyxfJSEYOOSq+w+
        KG8FKQYITLy9Xz7114Vgem3fi5QOhk1OHJGrct2x1g==
X-Google-Smtp-Source: APiQypK8ir71E/2iF5VbQ56Y9/gwhbhgTxYiJSR6H1lg11vLsrlw/eq/raUXM3LbEIAhwUCfR+wycDIH61u7ER+R8JA=
X-Received: by 2002:a54:481a:: with SMTP id j26mr3623960oij.172.1587157753792;
 Fri, 17 Apr 2020 14:09:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200417165442.1856-1-nsaenzjulienne@suse.de> <20200417165442.1856-3-nsaenzjulienne@suse.de>
In-Reply-To: <20200417165442.1856-3-nsaenzjulienne@suse.de>
From:   Saravana Kannan <saravanak@google.com>
Date:   Fri, 17 Apr 2020 14:08:37 -0700
Message-ID: <CAGETcx81uPQLCurX6N6pMH+2jOZBcs-9u5yhBp83jQWJks0EFw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] of: property: Do not link to disabled devices
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 17, 2020 at 9:54 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> When creating a consumer/supplier relationship between two devices,
> make sure the supplier node is actually active. Otherwise this will
> create a link relationship that will never be fulfilled. This, in the
> worst case scenario, will hang the system during boot.
>
> Note that, in practice, the fact that a device-tree represented
> consumer/supplier relationship isn't fulfilled will not prevent devices
> from successfully probing.
>
> Fixes: a3e1d1a7f5fc ("of: property: Add functional dependency link from DT bindings")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>
> ---
>
> Changes since v1:
>  - Move availability check into the compatible search routine and bail
>    if device node disabled
>
>  drivers/of/property.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index dc034eb45defd..14b6266dd054b 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1045,8 +1045,25 @@ static int of_link_to_phandle(struct device *dev, struct device_node *sup_np,
>          * Find the device node that contains the supplier phandle.  It may be
>          * @sup_np or it may be an ancestor of @sup_np.
>          */
> -       while (sup_np && !of_find_property(sup_np, "compatible", NULL))
> +       while (sup_np) {
> +
> +               /*
> +                * Don't allow linking a device node as consumer of a disabled
> +                * node.
> +                */

Minor nit: I'd just say "Don't allow linking to a disabled supplier".

> +               if (!of_device_is_available(sup_np)) {
> +                       dev_dbg(dev, "Not linking to %pOFP - Not available\n",
> +                               sup_np);
> +                       of_node_put(sup_np);
> +                       return -ENODEV;
> +               }

This if block looks very similar to the one right after the loop.
Maybe there's a nice way to combine it?

If you replace this if block with this, it'll end up with the same result.
if (!of_device_is_available(sup_np)) {
        of_node_put(sup_np);
        sup_np = NULL;
}

of_get_next_parent() handles a NULL input properly. So that won't be a
problem. And "No device" is a valid statement for both cases I think.

> +
> +               if (of_find_property(sup_np, "compatible", NULL))
> +                       break;
> +
>                 sup_np = of_get_next_parent(sup_np);
> +       }
> +
>         if (!sup_np) {
>                 dev_dbg(dev, "Not linking to %pOFP - No device\n", tmp_np);
>                 return -ENODEV;

However, not against this patch as is if Rob/Frank like it as is.

-Saravana
