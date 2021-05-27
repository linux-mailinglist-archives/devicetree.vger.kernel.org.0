Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6948B3937BD
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 23:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234012AbhE0VGm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 17:06:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233893AbhE0VGl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 17:06:41 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48532C061760
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 14:05:07 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id r8so2570904ybb.9
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 14:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C4xtuCLIJzoRZ5qysXB/M8Lkr6wF9029ch4VKLEo4Nk=;
        b=M53oZgchZQwKTASJqaHlFNcDyKB269ABJeaQwoFcv9LYbaN8P0OQ2nq1CunfZ1/oNn
         CylgPjyHpEp6ezO+TduQV0l9CBLwehHjerBOjGllrc4MPtn/IQjkzXSQnNZDcA5DXBvJ
         AjRqRCKlCf4m8TYGo91rQofT79vbs0evPB3/4soXp6o+CmGn1GcRd7O0B5rIsQOyhtGX
         T/zrQN0iwgmR/kgthEQ3UdOt2U6r0IekeYs0W9qqSOYmHLr6PUOAeILWE0HWDj/pES4/
         9qYYDZAHnwWyX5MbYRdXpY4cVexB6bUI2ROaGIRXU6DJVsHIeWKQLW/vNBxEj5HFcmfa
         lKPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C4xtuCLIJzoRZ5qysXB/M8Lkr6wF9029ch4VKLEo4Nk=;
        b=ZFtfhd0JscarxmwkfyYWSddi0MKifmnkeCR+DD7EMlWRsTuToXiRiiTNmUWRACtNua
         yjSK4x2NyIBCB4hm5Xretb4KEpnja57TA2mz0TKYh7TIMCzWrW1ThISGp1XhLOWJgBy7
         O7ptIrVp9tOPcEYvlw4AMH+lmrzxiuUfhHmj/d1Z4U22wOyy1mR+nBp2hX3YrwQB3QW1
         Ru1KK/wln0HNmkNgf5gMyeAKQuXOzQBlgqLlcUcwnVzt2Db3u/cHiB/guHGVtszltSzv
         G3bQcYqccNOBdgf7durxMl9xdD+3gNHkHsdwnFQ7zOygpn0MzvmQZr28HMdsx6EFz/cW
         +1FQ==
X-Gm-Message-State: AOAM531t1PYcrguaB2tGNW4qBKGGtPv7HqSJ6Gzf/sqqW5nO92N4xrKE
        8ML9RCKPJLtozF2FXF2CKemryO5A7QqSakuLcHef0Q==
X-Google-Smtp-Source: ABdhPJxIbBnlg158ooaNKWjHJdmYHBAfidZeBGo2PABpWG07dsTPNUmMgL7YLngIV+HOvGB0sgIdZ8yl+/QSGMrLOQ0=
X-Received: by 2002:a25:cbc4:: with SMTP id b187mr7710606ybg.466.1622149506118;
 Thu, 27 May 2021 14:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <1622102950-31688-1-git-send-email-orsonzhai@gmail.com>
In-Reply-To: <1622102950-31688-1-git-send-email-orsonzhai@gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 27 May 2021 14:04:30 -0700
Message-ID: <CAGETcx9w-gYrPQuxOf9qQDwzyi8Bjp7cf_uK=Q5UcKuH+vWVFw@mail.gmail.com>
Subject: Re: [PATCH] of: property: Add fw_devlink support for pwms
To:     Orson Zhai <orsonzhai@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Orson Zhai <orson.zhai@unisoc.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 27, 2021 at 1:09 AM Orson Zhai <orsonzhai@gmail.com> wrote:
>
> From: Orson Zhai <orson.zhai@unisoc.com>
>
> pwms is often required by backlight in embedded devices. Add device link
> support for pwms as well.
>
> Signed-off-by: Orson Zhai <orson.zhai@unisoc.com>
> ---
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 6c02863..93be977 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1287,6 +1287,7 @@ DEFINE_SIMPLE_PROP(pinctrl6, "pinctrl-6", NULL)
>  DEFINE_SIMPLE_PROP(pinctrl7, "pinctrl-7", NULL)
>  DEFINE_SIMPLE_PROP(pinctrl8, "pinctrl-8", NULL)
>  DEFINE_SIMPLE_PROP(remote_endpoint, "remote-endpoint", NULL)
> +DEFINE_SIMPLE_PROP(pwms, "pwms", NULL)
>  DEFINE_SUFFIX_PROP(regulators, "-supply", NULL)
>  DEFINE_SUFFIX_PROP(gpio, "-gpio", "#gpio-cells")
>
> @@ -1371,6 +1372,7 @@ static const struct supplier_bindings of_supplier_bindings[] = {
>         { .parse_prop = parse_pinctrl7, },
>         { .parse_prop = parse_pinctrl8, },
>         { .parse_prop = parse_remote_endpoint, .node_not_dev = true, },
> +       { .parse_prop = parse_pwms, },
>         { .parse_prop = parse_gpio_compat, },
>         { .parse_prop = parse_interrupts, },
>         { .parse_prop = parse_regulators, },

I already have a local patch for this and "reset" bindings. But I'm
holding off on adding support for new properties till fw_devlink=on
fully lands in 5.13. Trying to avoid inadvertently adding new
dependency issues. For example, the remote_endpoint binding I added to
fix one issue caused more dependency issues. So far I've fixed them
all.

So, yeah, temporary Nak for this.

-Saravana
