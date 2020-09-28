Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D59C27A9C8
	for <lists+devicetree@lfdr.de>; Mon, 28 Sep 2020 10:42:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726566AbgI1Imn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 04:42:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726328AbgI1Imn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 04:42:43 -0400
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com [IPv6:2607:f8b0:4864:20::d41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F14BFC0613CE
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 01:42:42 -0700 (PDT)
Received: by mail-io1-xd41.google.com with SMTP id m17so313425ioo.1
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 01:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jHoZDQlwe3bInHjDqdgJwAIRQzRh4OYWXeTsNhW+0xs=;
        b=ULHmVLkSSzD9goGqnhweqB0TQ4QBMS7/ywPZwnTfhHbE63noQcbKaRXjvYL2YncXzU
         zvWDdDxZ5G7DHSO0IidJu765p2wokm5IMsN3iJXF6beLcANc8ns5xoDYxfk4yz6l4TXp
         IPJUAXqXGTL05Ca2J/Fbt4/oBkTZeMukGU4teavSY/s9pJyBpOVJ9AykZ5H41UunQv0y
         GOU6PAErJO3W9yLa+nRQc4LbxVH1shKvptEn5klKiCMxoK2TMgq9r2yduOIQYxO9q+Gr
         DP6LoKGN/zPA6ENMHLQ1nW2DbWUP9h52mbCFjkzEbz5rzsF+H44HvstT5fy0tYIvUeIS
         LAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jHoZDQlwe3bInHjDqdgJwAIRQzRh4OYWXeTsNhW+0xs=;
        b=ZOLzYtv0jfVVYAFX2uP7MlhpYJkQBaTkMkqzBWzMLkLkEE6JcPAgqC2TleOzQbhPQj
         VczJtdCtJxnPEiR5+PqseT79NlmOUQKFMuw9wHaro9SPBaiQMMIPzwT/YNTqwIm+bL63
         LZY9qttEXaByJJHn6bWwgBeLQeerot6lH1Vr8MYr0JQrAppvNLCyEw/oHgWToToPGDC+
         /+N94mEUy7NhNovpnBwJ3AexvDOW69hFMAJ5aCDTp0dX+3sVkbH79o1b2J+y4pyGqEZ9
         ZLgVKACDVHG/xMgI9bzLb52SAUtanvHax/xjajULxHRy9fHK2XYFF09it/aK0miwPV8K
         /ETQ==
X-Gm-Message-State: AOAM532r+G1TI5Oajgdzde5+ItNEeDkyd8dgn7sJ4Vw6Tt6GYc1kae8m
        hRd2fkN9iExHsoKyjhVZ00+Q99Wd8yt/TSVGQv2aNw==
X-Google-Smtp-Source: ABdhPJwbTWcno4P6Edwq4N+bGXzpx+UEpIW9H6hwoCfpJo0iXHWryHYGunh2J+T2zmBMaDI727qiz7EQjquwRYpAhO8=
X-Received: by 2002:a5d:8352:: with SMTP id q18mr6506969ior.31.1601282562328;
 Mon, 28 Sep 2020 01:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200928073317.7240-1-mike.looijmans@topic.nl>
In-Reply-To: <20200928073317.7240-1-mike.looijmans@topic.nl>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 28 Sep 2020 10:42:31 +0200
Message-ID: <CAMRc=MebGw-06ZW4kaK9ePRZY2xfVzJXuAD5wGJygyhv8u164Q@mail.gmail.com>
Subject: Re: [PATCH] gpio: pca953x: Add support for the NXP PCAL9554B/C
To:     Mike Looijmans <mike.looijmans@topic.nl>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 28, 2020 at 9:40 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:
>
> The NXP PCAL9554B is a variant of the PCA953x GPIO expander,
> with 8 GPIOs, latched interrupts and some advanced configuration
> options. The "C" version only differs in I2C address.
>
> Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>

Please, split this into separate patches for device-tree bindings and
the driver source.

Bartosz
