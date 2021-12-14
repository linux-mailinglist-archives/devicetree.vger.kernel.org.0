Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DE6D473E43
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 09:30:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231823AbhLNIay (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 03:30:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229735AbhLNIay (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 03:30:54 -0500
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C58DCC061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 00:30:53 -0800 (PST)
Received: by mail-qv1-xf36.google.com with SMTP id i13so16716326qvm.1
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 00:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uajsDEex7bsoTTLmmIuCG5itA5xIQYPMZdhRY5ATmI8=;
        b=mf2RHFNUq8ZUdrJ8Aul4LWaMuwvk/wMCayWDi6NRibzflMBB26TwsKDFeFrXzwaQbm
         3RlncRrQIk5ieKZq7okNZYnjmUoR6Sh5VtE5wn2ISElO1YPi+xNMaLqSd0g5ZITse6++
         oKkHpRkd47CnfQ27ld+1hcZnnIbM5agWdg48TZdaelKaaPFpctSRvaNzOgwuFBv2SzjW
         NQvh3fj1HIKiqdSO1iAdFocAiiETkAddgBVJS5BBJ47ICzq7l//V3NdGbdA7ePl3Iupj
         XkPciGV/NnJ5PgEWEFe2iNa+fq/eUtLzco2+CWiKtngMATkzaho0vbhTsVzGCjZh40kX
         8nPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uajsDEex7bsoTTLmmIuCG5itA5xIQYPMZdhRY5ATmI8=;
        b=Q/x0PH2f5Nmo/8ER6uRdAwdQ9EVfMo1qWdDWNf4NFybXC6M6yf2XehNF/Y7odX1QHL
         3gQXGVGYGwOyVg6kH5LrQr4SE+oayMpg+9fOYdMFB4HmUjYassN5JXjRbZooIsZ1G86D
         zw3UtaJVoesHZPSRH4wBFrQkrh0gF+eGdnm+Ue3yin2EI4Z774vDi8HfAmh8vyFJMTlm
         LIZQBcWvCKwiLKaJgbT5bRoBQ7d7aLiMQ4sx/L8ODdIecpECKudY1zwr6nhYK2vj9uL8
         2hOLdcpqOGleO9GzQhkI0sHSE0W3YmJ26LdvPb/jqmhJ2nmcTgXt0nw8bMUwRMoOZQWS
         TQlA==
X-Gm-Message-State: AOAM5324vbuGQDKSTv8OQan0XK9A/PMIsyXmVkQ7KvjUm4//kdoB4Yvx
        k3xoT46C+GAqI4oJrY9ZHNoXdJYYOIgbp8YzLMTi2A==
X-Google-Smtp-Source: ABdhPJyv2ONMfdlytM9T3YUARkn73BeNNrUW2+f1SBfCkvo+sGCIXZFxwt0r7Bzz1StRpDHHIRWHv0A9Y5seMQu1H3s=
X-Received: by 2002:a05:6214:410e:: with SMTP id kc14mr3893644qvb.73.1639470652830;
 Tue, 14 Dec 2021 00:30:52 -0800 (PST)
MIME-Version: 1.0
References: <20211213162635.252582-1-maxime@cerno.tech> <20211213162635.252582-3-maxime@cerno.tech>
In-Reply-To: <20211213162635.252582-3-maxime@cerno.tech>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Tue, 14 Dec 2021 09:30:42 +0100
Message-ID: <CABxcv=ka4uc0Mt7Yv2RKnSYG74WRP--U1n4PhOjCentGEGkaMg@mail.gmail.com>
Subject: Re: [PATCH RESEND v4 v4 2/4] drm/vc4: Support nomodeset
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Ray Jui <rjui@broadcom.com>, devicetree@vger.kernel.org,
        Dom Cobley <dom@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Maxime

On Mon, Dec 13, 2021 at 5:26 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> If we have nomodeset on the kernel command line we should have the
> firmware framebuffer driver kept as is and not try to load the
> full-blown KMS driver.
>

Patch looks good to me. I just have a question, but I'm OK with either way.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

> In this case, let's just register the v3d driver.
>

I wonder if the v3d driver should be registered if nomodeset is
present. Most (if not all?) drivers that currently check for this
parameter disable both KMS and DRM. So even when it seems to imply
that's about kernel mode settings, it is also used to disable DRM.

This semantic was never documented and I attempted to do that in
commit b22a15a5aca3 ("Documentation/admin-guide: Document nomodeset
kernel parameter"). After feedback from folks in the list, the text
ended as follows:

```
Disable kernel modesetting. DRM drivers will not perform
display-mode changes or accelerated rendering. Only the
system framebuffer will be available for use if this was
set-up by the firmware or boot loader.

Useful as fallback, or for testing and debugging.
```

So maybe vc4_drm_register() should just return -EINVAL if
(drm_firmware_drivers_only()) like the other drivers do?

Best regards,
Javier
