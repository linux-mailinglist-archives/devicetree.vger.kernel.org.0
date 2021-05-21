Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADD5338D20A
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 01:39:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230017AbhEUXlH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 19:41:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbhEUXlH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 19:41:07 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4553C0613ED
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:39:42 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id e2so19553691ljk.4
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NsEYV15WJxVPhF1qW2qRsDL8347kj9miuk7JSi+TA4s=;
        b=JlAxBcIhbeZBbdKctXu5+zydEdmu6ICFB4/jglKltcG+VQnqGjHihUu0djnOokpFhD
         ZyREKqJ4/MwNfCc1lRXrjyTJ2pDyDG+8Qsa5ZQcgknDTzy5F/eIWqgVMFVVdLcH4MeNP
         IfTOB3P0yZfaDcc3qZaW/BjADD+dqhBXu0bzYDC1yOQ+xB1IvV36ngoXREF40teQMKj/
         nL56siSHLSg8DQ4XEm+Dr/+Js5J5JZQ1Uviot3slasoyrAp9k2Ra20EdsRlJwryE7WTP
         iVmkIsu3+EqBQHvWSpj0fH1Hi2NRP5zVZfz2bF+TudRg9Imd9Ry4DXnAX/Zy7hmLxEoI
         jqVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NsEYV15WJxVPhF1qW2qRsDL8347kj9miuk7JSi+TA4s=;
        b=KvxX+TOLIsY/XIMnkU4DsGFq23dGzuwHcmsoYMAkjhPYMhqOFObrCJGnFOauWclHr6
         ybw7NrMPM3erxhx294xeKSPocwYmz+rhIYKDWMZN6eC3i6Jv7W/YUq/l5C4bGtYNw2w2
         7s/yN5jZxNCw22EHL7GaSijUa5gDKYKZWy00lhC1m+imawcWJ7YXe5GHq0JaVlFAHl0x
         3G6jERoCtD3oCxAEfVhM7KWEQlFlhYm70JC2sgExjLc/YB7kmm9UdLF0lTF16H5ucJtU
         WxlpAW0jkt+cNDKEYruInSYwenVb/ZjgYXu3fIr++l26pJ2wL+Mk0So/l3SzxNowgKiJ
         BBJA==
X-Gm-Message-State: AOAM530UTevm5+FjA/0mIzAPGx0OPgVlvXxbmv3FOfgghI/kFyLoRrvw
        6czvDepOVR2Bi5KfbHRRUPpBi2RUtbz+wfNQndImOQ==
X-Google-Smtp-Source: ABdhPJyk6mAbNkK9lDoe2gUdi8CH/jRd0If067NLN7Kj824I9z0GAEBuI5mjukyJKcSbryJVnm5M3CVOWAuSseAN+As=
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr8947923ljg.74.1621640380923;
 Fri, 21 May 2021 16:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210521193540.16164-1-clabbe@baylibre.com>
In-Reply-To: <20210521193540.16164-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 22 May 2021 01:39:28 +0200
Message-ID: <CACRpkdYvp0AOuMrMN7ph9DxCErh5eW8QtNyzodGgaAa+otCPdg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: gemini-dlink-dns-313: rename gpio-i2c to i2c
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 9:35 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> This fixes dtcheck warning:
> arch/arm/boot/dts/gemini-dlink-dns-313.dt.yaml: gpio-i2c: $nodename:0: 'gpio-i2c' does not match '^i2c(@.*)?'
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied!

Yours,
Linus Walleij
