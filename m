Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 983D33E376C
	for <lists+devicetree@lfdr.de>; Sun,  8 Aug 2021 00:41:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229899AbhHGWmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Aug 2021 18:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229854AbhHGWmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Aug 2021 18:42:02 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FC0AC0613D3
        for <devicetree@vger.kernel.org>; Sat,  7 Aug 2021 15:41:43 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id x9so15727915ljj.2
        for <devicetree@vger.kernel.org>; Sat, 07 Aug 2021 15:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6hVw1r1xpEEInLXXoh33JupWqqEySNuELXLxCfeyrys=;
        b=RcsslV0xypOfQvV0lHtWdMMrmMoto9aibjGdTKlZ6OdVZsgthRLJWU3VBcar1WBu+4
         4WNOvmiLtnedt0KjCDiLGHCiTAYaHWeAy3WzUhsOAHFMgQ4Too5QCUh/bvkR6NhoA5Fd
         LV1ILblpt2cVewmiYg1QYCSstJjV44chQKGk5SqAAQu8Tf3cf4DIuYTf7wQaJH738Pi7
         zJdbwmXNUrknrCJJUUSZBTqyyNJYPbshkfB+aGmZpC584KtfGFHijNmxng9tENAQ7P23
         CNnM8jDfIwB2A3eY1JCSZi26mba09h4ol+UnZluoX0KCHKCK0Qw6eCpDrM76M3h5ucFD
         vrDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6hVw1r1xpEEInLXXoh33JupWqqEySNuELXLxCfeyrys=;
        b=EKyywvNhJL6xFdK52vfeJp9waBF9/UqfKnYhvgSHo5JZxeUf5+QLC5zKHCHVT/tYkS
         JYoGeGegxAffv6yVckdcrbA9GUk+c7ArOSEL+US1cWdxOSxziL5EPEBXEufW8ds/o9XI
         75dnnZxWZGVHQ3dycw69D/25lSpXe37BWCXR4AQwKvmSsqKR5vKsFcLaHTaG8vY/4aZP
         mTHxYvlMwytTc9is1+2LCUfUwgUtqiw/VIH5hdg+Wle8mdzrZb4QWy1fj/6m+e4S9oRD
         DwFROdxHAGQYCdAGKMXZhvKKX8jut96Swn9qj8aWSSb4+MRZSXIkBcs0MDAbCXUOSxWQ
         GDPQ==
X-Gm-Message-State: AOAM5303HjO3tsuij38YDmFDo/sD1+i8eAaBh/EW026bqUj3/I36ljnP
        GS6BmYn6PbiR5O+k4OFblc7ISID8cevnr2VngDuahQ==
X-Google-Smtp-Source: ABdhPJwJvd9YehjH3Z7NxGJZ4qtVeQRm9MP0I86bEkJjIUPV/Ii2uwT9draQbeHYvx/NrjwYUO1yGuqblYUBqBwqnxw=
X-Received: by 2002:a05:651c:1318:: with SMTP id u24mr10696662lja.200.1628376101474;
 Sat, 07 Aug 2021 15:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <YQw7M7OF6OZLcLjk@ravnborg.org> <20210807133111.5935-1-markuss.broks@gmail.com>
 <20210807133111.5935-2-markuss.broks@gmail.com>
In-Reply-To: <20210807133111.5935-2-markuss.broks@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 8 Aug 2021 00:41:30 +0200
Message-ID: <CACRpkda5CX2AVh4=Kt7Fn_6TrW7btX0Vqb30-60SMG5u05JBgg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/panel: Add DT bindings for Samsung S6D27A1
 display panel
To:     Markuss Broks <markuss.broks@gmail.com>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 7, 2021 at 3:31 PM Markuss Broks <markuss.broks@gmail.com> wrote:

> This adds device-tree bindings for the Samsung S6D27A1 RGB
> DPI display panel.
>
> Signed-off-by: Markuss Broks <markuss.broks@gmail.com>
>
> v1 -> v2:
> changed additionalProperties to unevaluatedProperties;
> added vci-supply and vccio-supply as required;

These bindings look good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Will give DT reviewers some slack before applying the patches.

Yours,
Linus Walleij
