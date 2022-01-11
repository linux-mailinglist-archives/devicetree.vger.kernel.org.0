Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6846848AA77
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 10:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237123AbiAKJ0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 04:26:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237101AbiAKJ0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 04:26:53 -0500
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A41BDC06173F
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 01:26:53 -0800 (PST)
Received: by mail-qv1-xf36.google.com with SMTP id jr5so6776483qvb.11
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 01:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8tq/et4xYmva4m9fJHsmk5wCnGh5xT4vOZTkPwsBoZ4=;
        b=vNKeTLO6E2Y+w9V8TpyEVaLyqb/tmqEv7QCdUlzyRk/NYZZ29FNUIJTnJFiSY8/GhY
         eBHu572eaY3mzHwFRcvIK1chc4kEVMBKyhgvYT6Tigm5G4IV+JdqRuJY+drlG+uy11y2
         kGz2SuhIHfTeQ/mVaUKATbf8par+xvWz6nz5yRS+GPARKAVom0d2/J/S4+vfOfJn/7Xp
         YU1O6ak6zV8h9Ak48U6p4Xxx8wTLWvFcoFyPjjvvLujAcn5NfjX+44nvTOgIfpi9jIeX
         M2rMTK9cm5ANG4rooHfumN5iedX8OaRlvjFOMQ3vbB2hUC8iKhGnZ7k9vph+kwgbqcsU
         R7vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8tq/et4xYmva4m9fJHsmk5wCnGh5xT4vOZTkPwsBoZ4=;
        b=SjYsMlMbyhp4oKwzCvAx2btAmekTUqdHRIPGOp7hyuYmyUhYK5jXDHPueaChOKv+5r
         InWRrfaKoJzu0uD2yWD/cjJqHdz5ofkDwv9n0mhfDac8t09nVpT5+KXvweyUZ0pWTMUL
         sPe069z9NilNlUv+yMzNVDjSw3m61zZoP1enqdI5YZO36AFfUEkuW5a/51jGXLFtpUzl
         MsS+/qXXI+3hVGv+AoSQrHyZ3vhmkUV53ZEdHyiasNzXi+Kmbd2FOhEQUh5Mvm9Ci6x3
         bkbdHvpOex3dPnZAzW3zJRXnF5P0h+XESmlCNirw81tvyRKMSVILTxVebAecaqDqL0KO
         HwVg==
X-Gm-Message-State: AOAM530xPJ4Vr9/RDmPbZgE6HS65ZlwycWhQX4E3IlTR7h+3TNZhah3g
        o7LQn7DhSXW5gCYSSS585WXDZTv+Cx/GbKqU/EhEIw==
X-Google-Smtp-Source: ABdhPJwQB4Hi/12Fc86eq6wqhDjHS9A0x4Cd0AOnfthOsT2jxd+R0eawLKmZaRZ4riayb6cxng+qlsGn/VzfkKAt9pk=
X-Received: by 2002:a05:6214:5288:: with SMTP id kj8mr3085474qvb.88.1641893212792;
 Tue, 11 Jan 2022 01:26:52 -0800 (PST)
MIME-Version: 1.0
References: <20211215095117.176435-1-maxime@cerno.tech> <20211215095117.176435-5-maxime@cerno.tech>
In-Reply-To: <20211215095117.176435-5-maxime@cerno.tech>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Tue, 11 Jan 2022 10:26:42 +0100
Message-ID: <CABxcv=mseT4o71HYKETiezZ2FDFvvf=Aw+jpuOE98dVWdvwLzw@mail.gmail.com>
Subject: Re: [PATCH RESEND v4 v5 4/4] drm/vc4: Notify the firmware when DRM is
 in charge
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Dom Cobley <dom@raspberrypi.com>,
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

Hello Maxime,

On Wed, Dec 15, 2021 at 10:51 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Once the call to drm_fb_helper_remove_conflicting_framebuffers() has
> been made, simplefb has been unregistered and the KMS driver is entirely
> in charge of the display.
>
> Thus, we can notify the firmware it can free whatever resource it was
> using to maintain simplefb functional.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Patch looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
Javier
