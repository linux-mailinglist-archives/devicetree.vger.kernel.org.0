Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 648CB367609
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 02:04:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244138AbhDVAFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 20:05:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235167AbhDVAFT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 20:05:19 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2430C06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 17:04:43 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id q22so6914793lfu.8
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 17:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q6eQLFu/iZ23p96P28yxRC3p2GNrQXWzyQQzuio77pc=;
        b=SPP4om4R4AMTV7IgofXTXIm3i9K8bYuNHWnGTz853l7ml5bkGZLceTQQg3nM6j36+H
         HR8t6ggUMkXBkiY5E0uiOZ9GAyK4OnQ0+GgyeZVeGfMzV82TccJry/scpZEksIt903jf
         pbdVZUdDi1+Oq2BKy7Y8DWBpiew+3oS6ED/8T7+YSqiH37Ytgi4/MCuo0iwkTiaBR5gH
         fUecbzygzr6HxI8EaHApHZs05K9sMa+dBEnYocuYwY38HEOzomlDH3QmsY596kg98vPo
         fLXDXVX/+Xbei+odWGlZzKXMKWhZbqg/TNlFl3+F1aNmBEJboyzxiC5MQRvoKyOqCoDL
         V3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q6eQLFu/iZ23p96P28yxRC3p2GNrQXWzyQQzuio77pc=;
        b=JkyCOr7JT/30h79PArpG2MNUwwC8uf0TUbPG9fE0eRHZcMto4oYCWgniC0lJNYOEW5
         zEfOQBv0sQBx5k9lf8TnsWvUujBi/QnyZIqtFkKNG78WieOc98ZY8AoyfNaC747cNBpj
         HnRbDeFVsoz3dFtYp/Q1dYPz1OCXSESsb4ZeQUdAAzWuWhT4knBQCUX6RoK8LHSncInd
         KiW977PlXsm57bT9biyLiB7ImYp0uYWpEUo7CBAhEIQgZyV96w92fH24AzBQw9kaZJji
         mjYpTMjdUX7zJe+wirx8+lOv3OIeyCHqlBDPdc5zdOsxgyMlaqhfh72FlVQaxH/fW1SS
         Ue3A==
X-Gm-Message-State: AOAM532bHc7NXhQghszP+cgQJAkphAwEa2q4nIfpLuyQEZa+wg1JYbus
        f2BHDRXUdT/HqGdziZkC8piaCELnXWvF9XZbgQnDGoCynNA=
X-Google-Smtp-Source: ABdhPJwgc/YDtMjvbV7CtzwS7CT4zWpF9qjte+U5TKOZomL/y0KBiiuFLFwV9D+0JXT0kOz2toGEOElNbvV6CUAa3dw=
X-Received: by 2002:a05:6512:3a85:: with SMTP id q5mr492634lfu.465.1619049882524;
 Wed, 21 Apr 2021 17:04:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210412223617.8634-1-jbx6244@gmail.com> <20210412223617.8634-2-jbx6244@gmail.com>
In-Reply-To: <20210412223617.8634-2-jbx6244@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 22 Apr 2021 02:04:31 +0200
Message-ID: <CACRpkdYv2vmFgFaEbQhRUGJ60oGYMdy+Zsbkg+0CQKonRp=7Ew@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: dts: rockchip: change gpio nodenames
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 13, 2021 at 12:36 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
