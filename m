Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E15437740F
	for <lists+devicetree@lfdr.de>; Sat,  8 May 2021 22:43:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbhEHUog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 May 2021 16:44:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbhEHUof (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 May 2021 16:44:35 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DC35C06175F
        for <devicetree@vger.kernel.org>; Sat,  8 May 2021 13:43:33 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z13so17722428lft.1
        for <devicetree@vger.kernel.org>; Sat, 08 May 2021 13:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3aMRJw//SgbViPdOeA6h0zsJSuw6jNbbh0oon3PGvyY=;
        b=xUz3VzAZXxiP9IJ122gdnyhWsC3/pyCOzi5CquMSC/KbBDhcZmTZbzklQ11/01yGYw
         nlx/k54zYyMrI8R62MwuvJhpxEU0MelIXIGZMXCmSsD+PEb9f6WX1I23DAtjL1XXctD+
         RAq9QlJBgBNzdM8PqpDYGFfgzX1zPVWB6VfZoSmR/m3JEfWU5ar2oxnW0MU+FF5jcZsO
         NV0sKjJixoyW9BrerzZnb2Dn4atxiZIs4Gdz/h6RAJVWgaLcB/f+sfyE3MunHODAAnNL
         X/ScyayHvY+FZ7A1iC/G2Di5EkIr0oYPZj2XA/JPIKAyhimtQaUREC5iHh31lUrEkbSa
         94jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3aMRJw//SgbViPdOeA6h0zsJSuw6jNbbh0oon3PGvyY=;
        b=aSSZ5miuP5KnitQ+yuIztEWq1758fAB0NlLdi2KjHfP3/C5sjh3AxHj0pzrMjcltN0
         tLLFO8DpkuipFU+n5dbfcQXY1qVO8X/vLvu/H/nWBSXjurCKTNHc8IsRI0KgqF5Lr9A7
         g2yRBWc71GKIkzQ9CmhH2TLhSDOLl8QUCdlkyDk/dtsla5F7OSqTo7b1l9L5EMxUUHHP
         MIqThyuwkzslHAI4U+KXlaqoYYeHEMiTuvjvpz6SWjJ4q44LLMRlNZif4UtlywYOOmFi
         2NCQnB2GRD2LRJ5h96SaXXIKxYXU7viCCmA1uol6OI8xQP/HddVJh2a0DIiI+yXgQqsb
         OYrg==
X-Gm-Message-State: AOAM530/jb3CXkI3RuiT7mPQlhWWBZ13YBLnI9rKcWS1KZ9EgbEOebf8
        OtSKs/5BxVk/wC00a5/O7vyuH5KiJ/aEHdrxwHioZw==
X-Google-Smtp-Source: ABdhPJwZYa3bAx7J/5xfnit9RQ+FLyfuoiPGR8UdtS/99Kp/0oPeXA9F60gcFLgEVYDlOAnYt+vHVa132TrfTDWB+CE=
X-Received: by 2002:a19:b0b:: with SMTP id 11mr10650964lfl.291.1620506610252;
 Sat, 08 May 2021 13:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210508193654.2596119-1-clabbe@baylibre.com>
In-Reply-To: <20210508193654.2596119-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 8 May 2021 22:43:18 +0200
Message-ID: <CACRpkdYyD+MkDKd3L6CShJ_pnUSjriwnYvSRmjkTN2dZe0BWfA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: leds: common: add disk write/read and usb-host
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 8, 2021 at 9:37 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> The triggers enum misses 3 cases used by gemini DT.
> usb-host was added via commit 0cfbd328d60f ("usb: Add LED triggers for USB activity")
> so we add also as valid trigger usb-gadget which was added along in this
> commit.
>
> disk-read/disk-write were added by commit d1ed7c558612 ("leds: Extends disk trigger for reads and writes")
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Good catch!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
