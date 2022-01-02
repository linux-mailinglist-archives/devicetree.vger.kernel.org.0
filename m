Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6E29482A06
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:15:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231819AbiABGPS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:15:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231778AbiABGPR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:15:17 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E2DDC06173E
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:15:17 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id p13so32231344lfh.13
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NWErgVPSbPgPS0cot2KuzsoxPnk5t2poaH8xxZaNOfk=;
        b=yDNjcq4g15xOFHBXQDmYyXN8EZZbyJUjHUrUfjBIRdjYkk4XhGgviRbuxzqnIhrwHI
         IAixxYAZhkVclfTndwOLRDv2dL2UFC3tvno0yBgTm6Ci0hrA+ZdiWNzdktiKBRhGGkYC
         E6EtUZpkyiqGeQxH0sK8EdwBlKyotxF5zzKj8h8sWvUTE2jqW5dOdb/cU1FUbkzE1IdF
         EXtBDALv7qNHkEoUoNMY5LVZr8458hpNNGb+T3fSDdIxhFfzPOsMhhAX1BiB2CWnlNt5
         SFU0ZapAjcGxfx6GhJHXVkO49P2FBilbj561vi4KXabYoyNo8z0uwThYrMZ7KFXNmePB
         ioBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NWErgVPSbPgPS0cot2KuzsoxPnk5t2poaH8xxZaNOfk=;
        b=zoiDPw6ACmEsy+mZAiBiF2meymRG6zQU2ldfYpHrTV4gPnE5dhgA3s0wYWY79uWOiO
         aRLwRCXb6ms0MSzrRJqFkkO0VvOh1jWlqgg1MzN8DmCxHrliEQtoNokSbYWE+SEMkuSb
         KE3xarZgk2ktWMtdz7l89lVtXVxtOIa9zEaj8jephgXKfuLQhzUg5ybZgsbCttneIpI8
         STSO2AIMvGOsUSJbDstI1Jf/6Kp7QpNpS5m1VbZAiBEaZK0NeOLfiIY/tI7NaBxLbtAo
         2OvngMtQtogKLbI+C+daYqkidx3Zsj/AIjJtgKKhQZST1aohReK1JazaDudrmTCq1T8d
         xMIA==
X-Gm-Message-State: AOAM531MML9aLBC2niKj11ioZkYcT1GPfgjJYmrY1en1YG7viPhfxRX+
        7yhQOvh8rEac2zi5Z7e/tWEclVLkk+FVLTjQbjasBw==
X-Google-Smtp-Source: ABdhPJxCopLUWq+4ft+NVnaS82/nys0iopBB2B2ZS6BEHXy52c/7c79JVhvvzJycZWI0WqHdXsCC4MjxOpz9+YpqrZs=
X-Received: by 2002:a05:6512:750:: with SMTP id c16mr37650476lfs.622.1641104115576;
 Sat, 01 Jan 2022 22:15:15 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-29-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-29-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 07:15:03 +0100
Message-ID: <CACRpkdYGQkTEHFNtLB=gMV-jkPWiF8mjUVv_C_rTyd7bxrYcXA@mail.gmail.com>
Subject: Re: [PATCH 28/34] brcmfmac: pcie: Replace brcmf_pcie_copy_mem_todev
 with memcpy_toio
To:     Hector Martin <marcan@marcan.st>
Cc:     Kalle Valo <kvalo@codeaurora.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Mark Kettenis <kettenis@openbsd.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Pieter-Paul Giesberts <pieter-paul.giesberts@broadcom.com>,
        Hans de Goede <hdegoede@redhat.com>,
        "John W. Linville" <linville@tuxdriver.com>,
        "Daniel (Deognyoun) Kim" <dekim@broadcom.com>,
        "brian m. carlson" <sandals@crustytoothpaste.net>,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-acpi@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 26, 2021 at 4:40 PM Hector Martin <marcan@marcan.st> wrote:

> The alignment check was wrong (e.g. & 4 instead of & 3), and the logic
> was also inefficient if the length was not a multiple of 4, since it
> would needlessly fall back to copying the entire buffer bytewise.
>
> We already have a perfectly good memcpy_toio function, so just call that
> instead of rolling our own copy logic here. brcmf_pcie_init_ringbuffers
> was already using it anyway.
>
> Fixes: 9e37f045d5e7 ("brcmfmac: Adding PCIe bus layer support.")
> Signed-off-by: Hector Martin <marcan@marcan.st>

Excellent patch.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
