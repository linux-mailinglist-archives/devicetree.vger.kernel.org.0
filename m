Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F219554894
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235117AbiFVItR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 04:49:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353090AbiFVItP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 04:49:15 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 298AF377E2
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:49:14 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id i15so24149787ybp.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 01:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h3DXofTTLpzI/TjWwuQqQFpuNkc2XNdmD7En35ZxJTI=;
        b=DSxnLgcLtwEK+8xC/wAI4hy0XWVJyozvRHgM/P1PRri9OR0vAE41oLzJWNs6tSh+d6
         R1VlnSLbwHfh5J8W1RRNqIs/7slA/2yXXM7j9oyVPxPeB9YkRSjjdvZSe9O7H9MHz7tU
         LFsAPiUMBOCqLhz9bITJneV+ol9NUab5mk7MZyr5IqPD7OnAcidcQVMdmk6kNbZqw92l
         7YD8/GxiZzmXIm1urIK9V76rlwBLAdYL23WHbvF7tQm9UIk0WC2jrIsfupvY0YvKHzPh
         x5UYXcMGKpsoo23BlEWzYM7Fh/Ly4MWWJXklMWM8AZcI7Z7wPgrj4zri+B++Z1eH7+68
         RSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h3DXofTTLpzI/TjWwuQqQFpuNkc2XNdmD7En35ZxJTI=;
        b=bHwBSg0BEwezz2SxbvLs8W5thZZfywuYkbxy5gI11mmECmZlflmIyPtw3HYJdPvk86
         IE4L11FyD3ldbZg7dcmFQl26vU3IBig3mmzvLScecNN8s/DRYwoWxwevN0+2ai1p99Rw
         8Mc4uQt2ndCCIlRbAddoTi4gC6LtjT7j4jhfwFo+6796Di9bl/RGnQS+wPGdroYvhyM4
         P76p7zCKwHm7EO5cVfC/mFHBYverE24YqgZ9jFHCz+Gl2EkV1tPw36FtagiG12/ySBg2
         6vsXqd+xxj0lXjHxlwW9QW2GItimNd/i39wqI9FE+uzB5/IJA+mqcoaJctFGFxEz0BVE
         N+Og==
X-Gm-Message-State: AJIora/Plw6xX+ZblD86K1nEwZRHJ/IkTHkBY4F+VONgZQ5WZQd+PV5X
        RyrdL+ckV/VQDrhPZZbLg8AeueQCvA/9skxJuNm6dcyaeE4=
X-Google-Smtp-Source: AGRyM1viKiISxQ8Egb+XkUDnqCFWJBQSB+E1CgmBQX6W95Tae4PDllQKTdZPoQBkh2q+f9xPXlJG8LG/mgZw6ik0cv0=
X-Received: by 2002:a25:7255:0:b0:668:a372:b433 with SMTP id
 n82-20020a257255000000b00668a372b433mr2451551ybc.626.1655887753451; Wed, 22
 Jun 2022 01:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1655509425.git.jahau@rocketmail.com> <18f223776f6942d52af2e41dd10160e220a23311.1655509425.git.jahau@rocketmail.com>
 <20220618155618.18996d0c@jic23-huawei> <10c06f21-23d3-d3a8-5a6d-8290cf2971cb@rocketmail.com>
In-Reply-To: <10c06f21-23d3-d3a8-5a6d-8290cf2971cb@rocketmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 22 Jun 2022 10:49:02 +0200
Message-ID: <CACRpkdbpz0LPXgW5as3g-pVyHe42R_EtdY4=zaroGxkE6kq5SQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] iio: magnetometer: yas530: Change data type of
 calibration coefficients
To:     Jakob Hauser <jahau@rocketmail.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Hans de Goede <hdegoede@redhat.com>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 21, 2022 at 2:51 AM Jakob Hauser <jahau@rocketmail.com> wrote:
> On 18.06.22 16:56, Jonathan Cameron wrote:
> > On Sat, 18 Jun 2022 02:13:13 +0200
> > Jakob Hauser <jahau@rocketmail.com> wrote:

> > Ok. If this is harmless to existing drivers fair enough, though my personal
> > inclination would have been to take the easier approach of making the
> > new variant sign extend on variable load (sign_extend_32() and similar)
> > just so we didn't need to check the older parts weren't affected.
>
> I didn't know that operation :) Let's take this.
>
> Not sure how to handle the "Reviewed-by:" tags. Even though it's a small
> patch, it gets modified a lot. Therefore I'd remove the tags of Linus
> and Andy.

Keep mine.
I very seldom disagree with Jonathan (or Andy) so the default to any comment
from them is to keep my ACKs/Reviews.

Yours,
Linus Walleij
