Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 844A63E8CCC
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 11:05:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236497AbhHKJGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 05:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236459AbhHKJGO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 05:06:14 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A5A2C061765
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 02:05:51 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id m9so3394230ljp.7
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 02:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WHR5vMYM5Xq0aEUZrFZkJXPDd1LunIEi4v9qS0h1HO0=;
        b=U9Jax0Pz4olLYQJIFk2TzLLCgD1/AgsJjjc1jPyfKN+iHIfSf+sOvIgQ2mOcBufJOe
         dbr669Dfx7xE+7MQXb/jTVZ9PEgd6/3eyXVPGZOoS32v5CEmRvBSJBGOfOGRPUkMz0hr
         Ytp9oJLePRyBugqYenwQeXFNI4dEVGqFCsCV9UzVJQcEW9lrhEZrg4sUfRmNk7ACOHck
         a4a2fqVpcZG274sxyUTFt0N2g+UU5o//7Meh9BOOjDCmzm2tbbJtOrxGrx25r3/4WXhB
         lNP5/JqECXVMx468VZLokXnF9EuF27I4yPLn2YSKV9ndXpW7fCzOgPzKek/fUy820QsH
         bx0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WHR5vMYM5Xq0aEUZrFZkJXPDd1LunIEi4v9qS0h1HO0=;
        b=nUTTztxTlgiJQiX96k6kEhkUt10G8xUFPGf6JV65kiM0gOvL3bGR9H6dvy18SYqmLk
         2l1/J41eUbCkSvxDE+qbg7s0rhBWSjQVwSnxIpklK7pmogBFc71wq1Mdny1KXOdDBPIs
         gTTtyY4jPW7eOwcxxRYv8hTmg7OLOAdzN68im//8MmK4fcc8oQuUvcfZ+97kFYGYQ3lG
         0BF99CN7jsGRbZiIXvkKj9uI9ASKA7wx5aIaVqjkHpdxsnNo+yT/5Kv5Bu1yh0d5uCjw
         SnJ+ybcBaycBhM4jiGCilcJ3obxt1k7rVyJS3+krXqSMaK5hHlDpp1FkXLYEQ6xjd251
         qoWg==
X-Gm-Message-State: AOAM533rzpyuc2uAR2acBhWYW3qcVC7VdQ/pKBZs9UraOi8hNTfHPpHW
        Re/FWwXhlYGJf2jQsjAxcl0YdWWGCkpK6Uk8JCKw9g==
X-Google-Smtp-Source: ABdhPJzJiIAevboqUG5VU4DSPztTjR+dTM5JpLH29JynmMjAv5LJj9eIi3aCBtOUd4vqeU+9At92D/p9hhh83zGz9LA=
X-Received: by 2002:a2e:b819:: with SMTP id u25mr22350417ljo.438.1628672749431;
 Wed, 11 Aug 2021 02:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210726111941.1447057-1-wenst@chromium.org>
In-Reply-To: <20210726111941.1447057-1-wenst@chromium.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 11:05:38 +0200
Message-ID: <CACRpkdYgTeqWz=S+HfLAhd4M3HYESkhvOEBbS6_185PYUzzxWQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: mt8195: Use real world values for
 drive-strength arguments
To:     Chen-Yu Tsai <wenst@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 1:19 PM Chen-Yu Tsai <wenst@chromium.org> wrote:

> The original binding submission for MT8195 pinctrl described the
> possible drive strength values in micro-amps in its description, but
> then proceeded to list register values in its device tree binding
> constraints.
>
> However, the macros used with the Mediatek pinctrl bindings directly
> specify the drive strength in micro-amps, instead of hardware register
> values. The current driver implementation in Linux does convert the
> value from micro-amps to hardware register values. This implementation
> is also used with MT7622 and MT8183, which use real world values in
> their device trees.
>
> Given the above, it was likely an oversight to use the raw register
> values in the binding. Correct the values in the binding. Also drop
> the description since the binding combined with its parent,
> pinctrl/pincfg.yaml, the binding is now self-describing.
>
> Fixes: 7f7663899d94 ("dt-bindings: pinctrl: mt8195: add pinctrl file and binding document")
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

Patch applied.

Yours,
Linus Walleij
