Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 661F2375270
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 12:35:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234546AbhEFKgK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 06:36:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234545AbhEFKgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 06:36:09 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5FCEC061763
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 03:35:10 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id b7so6426149ljr.4
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 03:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=008lPizmeuHrx5W10oGv1XvRUscDXN1KC0lNh4i2SaM=;
        b=c7UsAnb3CmQgI4yk5wN//yVhgXXoeHeYcnak0tVrmZeYIlFkjlCen6jaclPG3TwtvE
         T34pb00F3ZTuXTDiCSSs1lmaZxHZSEu85Zvm7fZQByr3zKwSEVxNr74Aoyk5Ij36TRIu
         fYjRtDJI0CMxEBi2QOMIpRLndl2rlOUblmvNT0od04KXJwyOUenT28MqxkETVIABgo/4
         JdtnAL0FnCsTsTlYuGSgVjAskvExEwGC16BA5ev5NbtGTnh8tLMe87lKcdmyogwrnLut
         jeq7ERMKu5TmkQuQQJe+HsPK96tr3LErNpRXp+EDu5uV+5YUOqwFHMABf3N1Z9tf8ubv
         SHjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=008lPizmeuHrx5W10oGv1XvRUscDXN1KC0lNh4i2SaM=;
        b=d4muKEWYTKJXNd89bP74UKW8Wxrh2SvnzfBA+nXONVYmp/jLn1+ylHGD5XugG+qM+l
         PMTZLn1MgVH2/Uy5Oo+xW7r1WOAV1gsvL5FOQxHjY9XiWhmNVmGzackl8RZu5+r9ak8r
         wCNOpRHIv2I6aKpyKJSFXb9NGY7bpbvLVmNIT4GcJ78YQPDHpYNHP65f9yYGnUiwEwon
         OKJP4Y3Yo0DviJQjoYP1Nxt7Wo5UkDIN7FHI87al/05bQcIp4tz8ToZ2KDog4kWkUyz7
         36bjCmbEjpruxP/VTA6VMkEi7N/7an8KWYCSwtqIr95/1nONfofiqwDqs73cb4MYu6Kv
         Kaig==
X-Gm-Message-State: AOAM532bNZrU3pzulwjXwcMWlEaeU6zG+a9WBuRFiy+bUzL4nyS5CDho
        pqE3SOiXGCOqZSiTkdLLz/o6iGZasLzWICH17aAyRw==
X-Google-Smtp-Source: ABdhPJxqMwYZh4Nk3uCSXsZm0XhweGYNeqg/rvzKy9QH+Q/9EgDbcDl68Wpexm4l9x2R/PkDWIhYdwDw61WPVRvLObc=
X-Received: by 2002:a2e:889a:: with SMTP id k26mr2764542lji.438.1620297309219;
 Thu, 06 May 2021 03:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210503195048.1575007-1-clabbe@baylibre.com>
In-Reply-To: <20210503195048.1575007-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 12:34:58 +0200
Message-ID: <CACRpkdb72LCHpBm-EhgJ4y68hE1=oHjL1L4m-=R5fD4FDc-WiA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: convert rtc/faraday,ftrtc01 to yaml
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 3, 2021 at 9:50 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Converts rtc/faraday,ftrtc01.txt to yaml.
> This permits to detect some missing properties: reg, resets, interrupts
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Thanks for doing this, LGTM
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
