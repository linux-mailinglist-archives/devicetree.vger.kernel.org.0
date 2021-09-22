Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8FAC41496A
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 14:46:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236039AbhIVMsM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 08:48:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236035AbhIVMsM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 08:48:12 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67F4CC061756
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 05:46:42 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id 72so9045154qkk.7
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 05:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JWVLXk0bW1n6vs3jcT9aY/C1O7KJx57lzY2TTe3JW5A=;
        b=gGJbgnP4eCcWroX9W44Hm9lGT6j58J9JOSGTeNcq+Xx8GnM2kTNvQGeYzeolAcwpyD
         AquDychphdIHB7NuTmxzraGY1i3MLTSHvrttGNrczJire6G4kj09hCfkjSUxWOoxusGH
         nwAfQLtcEEjfFPNus1o7eswyWKpifeYg4YALK+YGWMt5uDFK4TmXlH3ndMia99vnjZEb
         ecqRyClW4hnjXyA0tl0+ZJP8VSZ6XPhVYWrCvaIM2uY5y86rl5WYo6kCgV7mPOH2znkn
         /qK1ZIesG3mHPzHvmeOMmdXh8NV61F/arODWtPO5LuSmFMTdkQ+ThyvsGlvlUsGi5Ths
         YDiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JWVLXk0bW1n6vs3jcT9aY/C1O7KJx57lzY2TTe3JW5A=;
        b=HTFylbzkv2QAnAJkGtBduW3DPvHqDWZW4ZfH7ushCPVNcnknIEDOsib5DrLondODp2
         YfNKSb+8QRVOyQCHvE/U0tv/FzeSfPOMWekwMZgZRnB/Aowu7o8aNHAe+UkcFyiU7S1w
         oq1feTOaVaagbXyru3K5ooAB87p99u39hbZ6/QRUhWDMsEwrM5UKPE9jinqhZue2pCTc
         oxUBF6r9WVw8Yr9w27rYnmPg0qfb/Y0NaG4I3t1PXEPbrcIRzc1ivlHVx/dGzXEx+CXk
         9fKaYLOYsPo0abBm/V0utO5A1IZSu7FHLNjH86d8eNAleGefNspJwPa/v/Gl1zekvhme
         2j5Q==
X-Gm-Message-State: AOAM532YfMHFiwTDM/4X77LzQZEnpQVLTUyTv9qqiDwIyzXqX9/dJ5FK
        O2K4YbGbK5J927RHmDnV2EhZQSVMudiW/iawkoYk6w==
X-Google-Smtp-Source: ABdhPJxirl32JTg1ALZKlLeE8BM4i7EQqgoZBA+2NZjzSl/xAxbokXvhBRpqqlGLMUTSBNo9fz6/cW08ckF/IP6wZ28=
X-Received: by 2002:a25:cbc3:: with SMTP id b186mr43624072ybg.199.1632314801488;
 Wed, 22 Sep 2021 05:46:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210906083020.6038-1-a-m1@ti.com> <422f7ccd-348b-8023-37db-803339684054@ti.com>
 <CAMpxmJV_DJRtuHH7V86WOi+Rd5fZ0uOf=jNBY7XvJa_5f4h9bQ@mail.gmail.com> <91aa4468575143c9bb6a8b6a56ab2995@ti.com>
In-Reply-To: <91aa4468575143c9bb6a8b6a56ab2995@ti.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 22 Sep 2021 14:46:30 +0200
Message-ID: <CAMpxmJUam3ZQeizGWaswTy=ziYMh0R5cH+b5F2tdPgWKAuGTDA@mail.gmail.com>
Subject: Re: [EXTERNAL] Re: [PATCH RESEND] dt-bindings: gpio: Convert TI
 TPIC2810 GPIO Controller bindings to yaml
To:     "M, Aparna" <a-m1@ti.com>
Cc:     "Strashko, Grygorii" <grygorii.strashko@ti.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Raghavendra, Vignesh" <vigneshr@ti.com>,
        linux-devicetree <devicetree@vger.kernel.org>,
        linux-gpio <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 2:11 PM M, Aparna <a-m1@ti.com> wrote:
>
> Hi Bart,
>
> I have resent the patch.
>
> Regards,
> Aparna
>

To which address? I still don't have it on both of my email addresses
(not in spam too) and patchwork still doesn't see it.

Bart
