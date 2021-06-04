Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EA5339B451
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 09:51:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230097AbhFDHxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 03:53:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229775AbhFDHxm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 03:53:42 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2640C061761
        for <devicetree@vger.kernel.org>; Fri,  4 Jun 2021 00:51:56 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id a1so3053041lfr.12
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 00:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wfXB+k1Q6ViirA4mjN9LR3VrU6+naTbeMgwzCtnLr2k=;
        b=AguLxJhuHlFMuh3TBZdV3QCEAhJz9dFzY737XfMw8IyQROFK6Z5NuNIg/8+/nkBkdL
         laUu8/wPdaPOoyRM0B1gc2RIOhLuVVKxbS2xyZyTyukYHsytKPQB4fnNdSNZmbL4UNkG
         pD/FZTPUL4rsXyPx9dtYsKDsYZ7WPckY8GiBCGRK5SAItP9OifEQNxnWl3CFjBvsSVRZ
         ftaAs0jtv0lQ7SlmV+1VudEWxgYrsVl/18bnAT1BOib0jzTbpPa7NLIzy6OsGKSLAPCs
         GG4lVAF8jO27xoJwUFx7d88KcGGCStQwEReYgocAGPTBNhr0w9AHm1vzmAsiTlMdJJZ0
         z84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wfXB+k1Q6ViirA4mjN9LR3VrU6+naTbeMgwzCtnLr2k=;
        b=mZnR6X86ZfpNNmkfz1z2XudVQ1nxrfG0TAnLxm9c5sN12rV/UStmB9y7SE3c7B7gGZ
         MG4v1r14qvsEGRCsLl+s8u0R76p9itOnBmnsHia7/nV/QVCxGUE3T5GPjMxin/Lj8oFs
         8CuiMkuw8Binr0avb3jU6nQzCwsU4bYo/BWN6NUgQjR6K2/ICePUOOwpcMTnCe/vuYcR
         OazA31aSo6ZzZnn78fxX/fHtqvQh8XSyGQKeEeaRACjKyy2Ol+/nlFyMwkYc1LUZKksC
         oSKy4/flIuWecjIQFi2H+x+Ee1IPntILKv4GiglQGhQtj033cW+RmSGfik8r4cAFxwy4
         eDdA==
X-Gm-Message-State: AOAM530IKucH7fCtoiGh+rmfqjHLThOXYZXmyePizfj6Bvr3+Itx5ezg
        TQr+FOJAggPPzO2KigpThpXGRfa+wjNvXjSFcgzOtQ==
X-Google-Smtp-Source: ABdhPJzQltZYgxaeOPJE8k/LI6pPjnl6/V6Be99faZv5x4czlDJ0bbi7/XH/BqXzBUazEcWqDL4hgpV0tirmKbYh+j4=
X-Received: by 2002:a19:8157:: with SMTP id c84mr1961729lfd.529.1622793115058;
 Fri, 04 Jun 2021 00:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210325122832.119147-1-sandberg@mailfence.com>
 <20210530161333.3996-1-maukka@ext.kapsi.fi> <20210530161333.3996-2-maukka@ext.kapsi.fi>
 <CACRpkdZfdd=ogHoNGuLzGGZYkvw7xtNO2VJm-t-2vMibGNy=dA@mail.gmail.com>
 <866ff376-6d74-49c9-9e4c-2bf36bbd5981@ext.kapsi.fi> <CACRpkda9LD00=mUjLbb+wG3mnEVHbyqj-3L98=c-k-bV54gmTg@mail.gmail.com>
 <3548155a-e634-c433-7173-77b56180ed98@ext.kapsi.fi>
In-Reply-To: <3548155a-e634-c433-7173-77b56180ed98@ext.kapsi.fi>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Jun 2021 09:51:44 +0200
Message-ID: <CACRpkdaqbKSKy1cDAiCHLf5MyB7sTVYCZtoeHJsbB40+dPRpUQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: gpio-mux-input: add documentation
To:     Mauri Sandberg <maukka@ext.kapsi.fi>
Cc:     Mauri Sandberg <sandberg@mailfence.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 2, 2021 at 1:21 PM Mauri Sandberg <maukka@ext.kapsi.fi> wrote:

> Can we just call it 'gpio-cascade'
> without referral to the underlying mux? Maybe at somepoint in future
> something else could be used in its place too.

That has a nice ring to it, go with that!

Yours,
Linus Walleij
