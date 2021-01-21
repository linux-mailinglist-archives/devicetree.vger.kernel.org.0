Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 930D12FEB5C
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 14:17:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731448AbhAUNOS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 08:14:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731293AbhAUNNA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 08:13:00 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CCD9C061575
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:12:20 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 3so2421477ljc.4
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=47HDQmqatFJEKXLv4r1tqHnGg1O7gF/kMf8JxqyY3HI=;
        b=B+ofP3N9cw2DRKlNdxTQ0Am4niyM+1VvQaVipuUYDJNl1BN6r57YuCfMkAfRVsN28q
         oihxt7uvf7TlY+yjyh57UPU5tYQAlgX3ei1F/1yIRMvNlPmMjA/c1II9dO2/PVxrklqg
         AN0w0MCJZzaf3si/HIBxibUQc3hdrUFM7b1OZ37lDnFufpg/Pt/9z4xHcgWFPEf/R79i
         iEog+RvVlWuMlW/g4bYKDc4iituhzoLAmvecRs71S2l7yii+S70b2sulEiht14Z45xVJ
         x7OMpyiNZd/yz0rdichaytWAlSAIjdmo+UqDFIfHto6dTp5SDqF1DsE8udHUu1HTHb9g
         bM+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=47HDQmqatFJEKXLv4r1tqHnGg1O7gF/kMf8JxqyY3HI=;
        b=CVLXW0Ezm0wpOOMbaSi5YDIU+iNQEv641qUgXh311DyIBVaY6Ps1ZOTY5+In4gzPgA
         x3RO3DZ8pyInGDH9LY4z/C0ag9phipAy+FOn85i/kkJawCQ86J9pAIrvS0snNI3/NpMr
         wr0bwy16CSVw5e6BCvM+9Mn+bwTpNOOoRe86QB4As7bo6s3gtxmi/cSm0nCdOGsDA07l
         S+WfcuwhpkYuX987LV/b4741lUS8XwIAjC+znLO5EPUVaPynmjCfXJfTYvQ622MCE3D0
         cP2SI3j1lM02Vaqx2Dri7fpz5ua+qH3XeXZv2kGY94WN0KN/bvE4vI/GyPFz1GjW+mGb
         jRyA==
X-Gm-Message-State: AOAM531gwBeNdLOAQQaoRZdBDYy6XgDzPcXuLAqy+3Lq9qPThfZP/lQH
        DBLUtQYYzL++JeDMHEd/xyUxDsoVJUxPPblAZ4JVSw==
X-Google-Smtp-Source: ABdhPJyYLUDoklQU++7GwvgK4FZhhv5diXxOMOA4kImyzoS22TfNc7EWPRXHO/OybdPh/v1SQ5NWE47oJiAfepcUFro=
X-Received: by 2002:a05:651c:205b:: with SMTP id t27mr6868618ljo.368.1611234738978;
 Thu, 21 Jan 2021 05:12:18 -0800 (PST)
MIME-Version: 1.0
References: <20210120080522.471120-1-saravanak@google.com> <20210120080522.471120-3-saravanak@google.com>
In-Reply-To: <20210120080522.471120-3-saravanak@google.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 21 Jan 2021 14:12:07 +0100
Message-ID: <CACRpkdYon8jc_Twa83ynGVnWg7mnZ-ix3=mg2xn1XoFQ+Hq-_A@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] of: property: Add fw_devlink support for interrupts
To:     Saravana Kannan <saravanak@google.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-tegra <linux-tegra@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Marc Zyngier <maz@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 20, 2021 at 9:05 AM Saravana Kannan <saravanak@google.com> wrote:

> This allows fw_devlink to create device links between consumers of an
> interrupt and the supplier of the interrupt.
>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Saravana Kannan <saravanak@google.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
