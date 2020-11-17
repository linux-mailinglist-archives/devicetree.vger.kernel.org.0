Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 237E22B6C6E
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 19:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726697AbgKQSAJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 13:00:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729476AbgKQSAJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 13:00:09 -0500
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7CECC0617A6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:00:08 -0800 (PST)
Received: by mail-lj1-x243.google.com with SMTP id 11so25343657ljf.2
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 10:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UL81rwXcfbyusrE2QAmwq30h1yMrtrFOVYAuzQEKqis=;
        b=AoiQ74SNR+8Tm50Y+Qr5w01hgvui8+bo0BQSUel/fKzvO347Sq0+FU0GwHazApvqZr
         pkwf26jpWpglpYFKAmCM3c0z9AaikljMn3jlFtT85MZiyJzytAZEpl34lekvS5CyFwmM
         yOKaJcMYH2gLzR6cX9pLh/dnDakRMAANg62kVaRTGWZ854UkSTqOkDfWYxDFNjzJIuog
         26q70ZfIW/ogP6qs3K2/PlIsQVb7zyiUzfD1xd2PsKE7zRtxl3uRLXhDd/soirkjAu+P
         UrC7Xq640rNh2CfOdNbRGWqpZrjoZ/XlfOmK5cQ/EVr2hZ3koEXnBYM6j4eyfzwH5w8i
         XtnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UL81rwXcfbyusrE2QAmwq30h1yMrtrFOVYAuzQEKqis=;
        b=klGAPTlneJZ+HlCQHaRgpo7RxWtjm7ulRGSeUNGdUO8U32Yn0Sh3bGCGOZ4GNswh9U
         b5gTHGuNPvmvCV8mNtRvGzTroAA2q9zsVjZ3FgxE0I/wCpt26ruTQD2q8oy4ByC1cQkl
         dmRpKn7QfoNFzIh/lrDwD8WaLMezJ/RJdhawUBzw07xssrcpa2c4qRNed9lFjvIQ22cS
         Frjora0yuVtttCALFqiwUdl4iDMpetooysHe7rCoFzwKbKogwSQs7cC5F+lWe+oHorI2
         fgzyBRMrSUZ3yiyGhC7Yn4Muv5WcW02zDOGgzGxNzUnfC03GQSv9f+zdMMCPLh4ct3lb
         fG9A==
X-Gm-Message-State: AOAM531zejAlWA8oRPz2o/KT6BAs8qSPdF++MXLOOtKZlJWx1rT1zClm
        JRtkiQzcEfFVBbWVJQkrujVllaiM2zlRKvUan0ufug==
X-Google-Smtp-Source: ABdhPJz9pbSO1bvBKMQf9hNngCUPe/9hMg/wrGmoD5lgT38hr+pU9clV3sQiI6mLMYfkK6pUR6v2mmcn7N56Mmg671s=
X-Received: by 2002:a2e:998e:: with SMTP id w14mr2607908lji.100.1605636006789;
 Tue, 17 Nov 2020 10:00:06 -0800 (PST)
MIME-Version: 1.0
References: <1604284946-16254-1-git-send-email-u0084500@gmail.com>
 <CACRpkdbGs-LEWie2uzZEHxrac-0tuHqRtdDP0D22KnXKQ3rqGQ@mail.gmail.com> <CADiBU3_C2J0p-gWx9KyZWXqX43VAn+bh6ac5TgvPp9xK9HjSQQ@mail.gmail.com>
In-Reply-To: <CADiBU3_C2J0p-gWx9KyZWXqX43VAn+bh6ac5TgvPp9xK9HjSQQ@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Nov 2020 18:59:55 +0100
Message-ID: <CACRpkdb_WWYHKUYWUO1T32fV3T3wLGe5G9D65ejrUgwEo_=XwQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] leds: rt4505: Add support for Richtek RT4505 flash
 LED controller
To:     ChiYuan Huang <u0084500@gmail.com>
Cc:     Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Linux LED Subsystem <linux-leds@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        cy_huang <cy_huang@richtek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 2:10 AM ChiYuan Huang <u0084500@gmail.com> wrote:

> From linus walleij's mail, how can I support him?
> Or just  wait my patch to be committed on linux main stream?

I think it's chill, Lee has a good habit to sync with other
maintainers with immutable branches, so the LED maintainers
should be able to get something from him to pull once he is
happy with the series, then I can rebase my patch.

Yours,
Linus Walleij
