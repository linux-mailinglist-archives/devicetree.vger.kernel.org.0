Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94E7B2B99FF
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 18:52:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729409AbgKSRto (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 12:49:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729396AbgKSRtn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 12:49:43 -0500
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com [IPv6:2607:f8b0:4864:20::b44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2698C0613D4
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 09:49:43 -0800 (PST)
Received: by mail-yb1-xb44.google.com with SMTP id r127so2243225yba.10
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 09:49:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VOr6koQF+IBLIVc9r3QuKU141fh3NjeHnysl+nNQ1mY=;
        b=ZdNkW2Ed0WCu+MUenjPzGWiCfRrssAbsJEhfH/B1GsUNDozZ7I7BNQwSSXKGiZf2wr
         PgFtyPDEAQnJpmztTEReCK8hab3fa9qJxBWKYb9ijJ+UDQWvAVYjY0YYCwJwCDcKkr4f
         1IvEqbXg23tng7tyq/8ELY0xA8H3PwsjAx215RHzTkiMJyIatPmD3gnm0VRcBCM+SKPn
         eQLQ4N/iI3MPabzYOKeqJWgKLNVTTwQHy/P6RhZLFG1wBieupzW8WLd7M+/qRNtfhUri
         C9xH607KUhIj3u+t4OU3/se96SoP9s0Gr2ZTWFHYOcx7ahkiGXWjLkLMROZQVnjptq6r
         4AWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VOr6koQF+IBLIVc9r3QuKU141fh3NjeHnysl+nNQ1mY=;
        b=GPsXRdjJbJy18bikVsqodGvuCmvohNaHo0Xyzd+CciknUvE3CPx2T0u24SoaLYEfW4
         S+/ImRfkj6Gks710/OTzHMK1JBcSg9LY8h+hGJfycAvlZShDpkVCmq7qT+UoAJqWGg+T
         5iYQcYb0nZmM9Qi/5vcQle27P1D7HBs+o/t8rr+U2Kp0jNaZV/Vdf1yZ55fQLgJ66CgV
         2u2tQubZXfMe/Vdjos94dn79hpSmcoW4EwbZP2ULUCnsGRosW0jsJOW9oSft0NIfovSv
         DrZdBC08OwSOzaDgVryuN+OOkuEFuf7Fo+eXzbt8WsAnA1QWlhxLsvcw7Ew5NqR7en8k
         oP+g==
X-Gm-Message-State: AOAM531d5Xyc6Pue0Wi7R1+YTodXOZVbnzbuRNNVqeK6E/EIAZS+U/QL
        qt3yapiM40E5HTYibvS4Yh40XFakBZPZMtoQTVOHHA==
X-Google-Smtp-Source: ABdhPJw2i3gwQRDyzO6sOhaflWBk70JDyjkMq6XWSXLGIdeAMir9vPqqb/V0cCaciPoIK4W5YNfbLEEx9xSJG5MXLp0=
X-Received: by 2002:a25:8401:: with SMTP id u1mr24460099ybk.96.1605808182804;
 Thu, 19 Nov 2020 09:49:42 -0800 (PST)
MIME-Version: 1.0
References: <20201119110036.19959-1-aisheng.dong@nxp.com> <20201119110036.19959-3-aisheng.dong@nxp.com>
In-Reply-To: <20201119110036.19959-3-aisheng.dong@nxp.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 19 Nov 2020 09:49:06 -0800
Message-ID: <CAGETcx_vHdZ0TwSj+Qbgoe1nEwKkQO=TJd7XKZ+nO0iLjMEUJw@mail.gmail.com>
Subject: Re: [PATCH 3/3] of: property: fix document of of_get_next_parent_dev
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        Dong Aisheng <dongas86@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 19, 2020 at 3:18 AM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> Fix document of of_get_next_parent_dev.
>
> Cc: devicetree@vger.kernel.org
> Cc: Saravana Kannan <saravanak@google.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  drivers/of/property.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/of/property.c b/drivers/of/property.c
> index 21a854e85234..5bd4a9bead47 100644
> --- a/drivers/of/property.c
> +++ b/drivers/of/property.c
> @@ -1038,7 +1038,7 @@ static bool of_is_ancestor_of(struct device_node *test_ancestor,
>  }
>
>  /**
> - * of_get_next_parent_dev - Add device link to supplier from supplier phandle
> + * of_get_next_parent_dev - Get the closest ancestor device of a device node
>   * @np: device tree node
>   *
>   * Given a device tree node (@np), this function finds its closest ancestor

All of this is going away[1].
So, Nack.

-Saravana
[1] - https://lore.kernel.org/lkml/20201104232356.4038506-1-saravanak@google.com/
