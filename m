Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A11462F311B
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 14:16:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727201AbhALNQQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 08:16:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728901AbhALNQP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 08:16:15 -0500
Received: from mail-vk1-xa35.google.com (mail-vk1-xa35.google.com [IPv6:2607:f8b0:4864:20::a35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49FE6C061794
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 05:15:35 -0800 (PST)
Received: by mail-vk1-xa35.google.com with SMTP id a6so585259vkb.8
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 05:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5HpMs+jCpJzoPRIbYnU0PyBRGtPP8EGNAQbQZ0ET0Ds=;
        b=AyME6//aH7d68kpuy53gkf0yT+homN08EXAa1jRCaXJ1voVHWWJE9r55hi0gBe/aWJ
         lkNj/zXBO8mhqgkP3Le07X+KHFblOCL2iqt0aqBcDk3O07ZHfBKZiYUPvXLwyn8Z9jh5
         R0DBW/XwGdRtp3IIFHBW8tq5VoZZ7ft4joCSXFoOYRaU9UPQWM+8zw5UdNbmzwT4OR8m
         E8IS1PLkFo25t2onizMYhvRegLdXqHZoc5XN1rg41M3nMcxc1HudOceS2MVhDASwEomP
         IBcNImExW2m6LyuH+CkAACnGG3EypJH9I2Q6jr6Fn6NMjInG9Aj8MqDQ3yXdOZJpcm/g
         Qu6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5HpMs+jCpJzoPRIbYnU0PyBRGtPP8EGNAQbQZ0ET0Ds=;
        b=q3z7hTkO5J+r8P5jpUT9Sk/W0NdnMX6b6VfAFwChxtw+hkyCE3H3XQWkZV797XkHm0
         Lo2FqX/AXbpRpXCyAisH1oNwLbKFCHWdOs+64PbkPcZBkp/wqJYBiDMQO4733Jq1pC/v
         TRjktTHYBvyic0i3QYE7P+MLZw0Fab0howQlxaJndHqyq8lJUaALSFikxfTWhzGYICvZ
         GU5pyuQYFzgiT8ekYsn8ZbMhrJkMyj6SNsb9jOnlXNnbPl1bcWS8CKoo/krqFnT5lGIE
         hS0YPOI38NasXYTxi4aM/QlE5tVNvBJoNToRfXcRrLShmVV4/GmxV9bYA0OsJ2nmDihP
         fzQA==
X-Gm-Message-State: AOAM530Utq8XM1RAth4vPSHIFj81gyhW+WKaK+4Wg24Sr+r5OqeXYhrq
        VYbS6oMdvEj0U8W5O4qnwoQy0GCWZBkQA4VkPcVzOQ==
X-Google-Smtp-Source: ABdhPJxpeToFNXmVF5EOp8LQuUWhZY6LZRFRS/aCJFPpFJxHDA+kG9y0TIy8xtJ4sbiaWUVfE0BPNeCHrqX9ZK8Ruz4=
X-Received: by 2002:a1f:5fd5:: with SMTP id t204mr3877910vkb.6.1610457334247;
 Tue, 12 Jan 2021 05:15:34 -0800 (PST)
MIME-Version: 1.0
References: <20201214180743.14584-1-zajec5@gmail.com> <20201214180743.14584-3-zajec5@gmail.com>
 <4c80450f-cf38-190f-0a0f-83f8f116b373@gmail.com>
In-Reply-To: <4c80450f-cf38-190f-0a0f-83f8f116b373@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 12 Jan 2021 14:14:58 +0100
Message-ID: <CAPDyKFpAGN8kCigpq4c_9zWiceyR4hCxiz5+1vo8KodTjHJnmA@mail.gmail.com>
Subject: Re: [PATCH V2 2/2] soc: bcm: add PM driver for Broadcom's PMB
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        "Rafael J . Wysocki" <rjw@rjwysocki.net>,
        Kevin Hilman <khilman@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Dec 2020 at 19:24, Florian Fainelli <f.fainelli@gmail.com> wrote=
:
>
>
>
> On 12/14/2020 10:07 AM, Rafa=C5=82 Mi=C5=82ecki wrote:
> > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >
> > PMB originally comes from BCM63138 but can be also found on many other
> > chipsets (e.g. BCM4908). It's needed to power on and off SoC blocks lik=
e
> > PCIe, SATA, USB.
> >
> > Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> From a driver perspective this looks good to me and thanks for putting
> it under drivers/soc/bcm/bcm63xx. Ulf, Kevin, I would need an Ack from
> you so I can carry this through the Broadcom SoCs pull requests for
> v5.12, thanks!

Apologize for the delay!

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe
