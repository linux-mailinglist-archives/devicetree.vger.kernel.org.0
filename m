Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5DF8465BC5
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 02:39:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346578AbhLBBnI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 20:43:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344402AbhLBBnH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 20:43:07 -0500
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5FA6C061748
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 17:39:45 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id e17-20020a4a8291000000b002c5ee0645e7so8407581oog.2
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 17:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+Td99FTDulvPZBU3NaFYSJRyN3JaDj4ogOHKbJ+TJnU=;
        b=KJggdsUvmH6q5PKrTkXeBdV/PcEqekUkL4hgq8aOZzdCPUxT+xPxVtz41A62Uu5B7U
         lLpIEqHHxBuK/AtCOLw2o9M3pv+qWagfttRf8EO5p3lj10+2d0FzzPKh56dsaiZKDmAT
         2lHIZPTsZ5k6gig8Z86AVZhSHmjNrCfCzfai+7PrvcAMlxIYMv1AhDM6baaZLGRoFZVo
         9TpfBUDplhgrJ9FGpz6cDSR6hd8xW2Q0gDTHU7ZKWCCDifYaqf1IIByaMr/2b0R4enn/
         lTadKlUb8rN0Sd12FskC6iFU8NeS1GdD92Usxz3p6OhZORFAYWOux4CLqWTX0eMDw7Dq
         yckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+Td99FTDulvPZBU3NaFYSJRyN3JaDj4ogOHKbJ+TJnU=;
        b=jEJAgYB/sokaIxIv1m8ZecNESK6uxV5O+Yb5XE4uCNM8x4GXVoZi7UeCcblEYm6zl6
         ljXoRN4TfzJXHXCPAYGrOQGuvToII17aAIyDJTEgDOQ8FnVplGc7OoGmPlRVxu0LsgCv
         PKOkp3fi5dI4WJVieOq4MSFm1CPtORIgQV8ilgOc2gSPjKhBEO9/2DxZAyHigUm5xpjZ
         Rywd9W4GDlpPwg8PLHmJR8M8abtWpqAAE7W4DLwcAADR9T/dGpxNL6obXKHlvIcM2maF
         hrzkqUrwHBAB3niW3nVhsca7uQm/sNKXROEqB6IhPSHM4mOyrwWT5bHGtIKxcloVrqTO
         yh2w==
X-Gm-Message-State: AOAM531dApsnd4L2e9MUbgxe1Fwxofwcmt+IfL+KYS9e4wfFvR1afQvd
        pkHbJQ3pvNNZV5IeDFzzUeKU8QNZsbgWKtXWPUQQ7Q==
X-Google-Smtp-Source: ABdhPJw7d578VYLOpQsWH+hzk47HxyEp8kmvA1vx8sLQe8APfANOj0Wwkow649hfmECy9ecSvUdHL1teqmdy71gVTtc=
X-Received: by 2002:a4a:e155:: with SMTP id p21mr6738104oot.84.1638409185080;
 Wed, 01 Dec 2021 17:39:45 -0800 (PST)
MIME-Version: 1.0
References: <20211129105556.675235-1-phil@raspberrypi.com> <20211129105556.675235-3-phil@raspberrypi.com>
In-Reply-To: <20211129105556.675235-3-phil@raspberrypi.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 2 Dec 2021 02:39:33 +0100
Message-ID: <CACRpkdbSvBDDeJGJWUi+oH4+1QvsUfE-J0KOvAAUknqvbK243g@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: gpio-ranges property is now required
To:     Phil Elwell <phil@raspberrypi.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 11:56 AM Phil Elwell <phil@raspberrypi.com> wrote:

> Since [1], added in 5.7, the absence of a gpio-ranges property has
> prevented GPIOs from being restored to inputs when released.
> Add those properties for BCM283x and BCM2711 devices.
>
> [1] commit 2ab73c6d8323 ("gpio: Support GPIO controllers without
>     pin-ranges")
>
> Fixes: 2ab73c6d8323 ("gpio: Support GPIO controllers without
>                       pin-ranges")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>

With the funny linebreak fixed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Please merge this patch through the Broadcom/SoC tree.

Yours,
Linus Walleij
