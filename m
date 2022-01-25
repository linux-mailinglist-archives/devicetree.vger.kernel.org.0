Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA5B149AD31
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 08:15:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1391637AbiAYHK3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 02:10:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1325309AbiAYECY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 23:02:24 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDE75C06139F
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 16:43:12 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id k17so1544204ybk.6
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 16:43:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QR4ODCGloiSEuxz9w6zI+W3jBwxc9y0Io++GcFYvn/E=;
        b=a/ESHOliZ2cm6ktrQxxYDm98SV5xTuU5suiJ8i7uRsgOEItokvMNG9kUI4lkRcgXzS
         K9u41GjHfSdI+SG8X7SqcfhcU+B768MfJYEfP/YoRtKFRTpZOTG6/XSh4bQL9MMcE+dD
         SCVqYfE6fV5D6WQA5bnXH8u47QxJQcS7yRcbiSkjoOOAqFl3gvqo6X+WpMrpGqt7lmIP
         2rDMrQn6csCQwiewWyLAVL2pdeEhNWJ2UJ3A3I9TC6oh64ILlzNVZ1bpUY26/VxPG9+z
         nOSEkqrwXgQXQsGKbipijIc6ORoQEUIdfqdIMDDwWXbWQ+uP55Z7X+e7tpjZMs4nDtlD
         /HvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QR4ODCGloiSEuxz9w6zI+W3jBwxc9y0Io++GcFYvn/E=;
        b=O9lHT/mSrAqD1WOWHriKE+mIWl09qd9V+Iw4LN1czpwrGAZ/vbNcyeyvEoVQh2Rjj0
         XBOjqsm5+Fbna/pzajVvI+nEfRhjMdONZDguVBXc0onXMvu7OuImBQR53+602xlWqrPD
         n5Pkn+PbW1NsX+uV6wafmW7upH+uNEaTPvtMbSY41RyP1kaabWPoQL4wmq+DSGVM6Imk
         +3hJekw0rteIYaz1P9uazcEQRAR97MvbpdUtAqis50+EA8ASWRH7BUS419rk+oUrc6C8
         ftGKL5aWVotFrjrAwgj/w72bp8XqE/b1tFa4aNfiAK7Okfz0jJ4IHtQzf0NK69LnRQNX
         QaCA==
X-Gm-Message-State: AOAM533CVPBTZLLqYhFQ9QOm82hHYmIUsdKD8JwlTHAka0sFJSIsE98G
        dWVcv8v9n6jQ4vrc+3KT4wRNwEaO7NUFDJoYKQSeCjxjVywqvw==
X-Google-Smtp-Source: ABdhPJyv5QgyRIOOGd9z0Lzg/vfhhng5aATh0xdbR1lqw01SPdgIbD2vl8GpOdvSrZU6wucGgZ7M6PGU+6+xo4x8TwM=
X-Received: by 2002:a25:8e89:: with SMTP id q9mr29308114ybl.520.1643071392215;
 Mon, 24 Jan 2022 16:43:12 -0800 (PST)
MIME-Version: 1.0
References: <20220124102243.14912-1-zajec5@gmail.com> <20220124102243.14912-2-zajec5@gmail.com>
In-Reply-To: <20220124102243.14912-2-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jan 2022 01:43:01 +0100
Message-ID: <CACRpkdanFtHyvg9kt2xuB0d9cZLcWNP8WOAo2x8f5++bpbSnmg@mail.gmail.com>
Subject: Re: [PATCH V4 2/2] pinctrl: bcm: add driver for BCM4908 pinmux
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 24, 2022 at 11:22 AM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com>=
 wrote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> BCM4908 has its own pins layout so it needs a custom binding and a Linux
> driver.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> ---
> V2: Formatting fixes
>     Kconfig fix
>     Cleanup of #include-s
>     Use devm_kasprintf_strarray()
> V3: Bring back OF dependency - required by pinconf_generic_dt_node_to_map=
()
> V4: Rebased on top of the latest for-next which includes 5.17-rc1 now

Patch applied!

Yours,
Linus Walleij
