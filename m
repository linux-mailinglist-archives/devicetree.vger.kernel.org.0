Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4345A37BBD8
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 13:33:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbhELLet (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 07:34:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230114AbhELLes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 07:34:48 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02FF4C061574
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 04:33:40 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 15so30344625ybc.0
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 04:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Hwqwx4LJYn+nGrs/s7vt3MWR+fST/FOpGPjuEVfqI1Y=;
        b=ZzghOpmFjMBck1DvPmfzHW9Sdd7J4gJKsYxzxHyT/K6yCOmAqFHSIghrHgQCxbq2tl
         3UVfc6d1p1Xt+yDdLD6Og7RCTTD8O+NPaToKV/DXRYMEaMhWju5fad+YssppnmMA5hTA
         Z5Ar6zGcfi35Lw0yHYk/Zcxi4psHs7/la7mptBxbVoeGmlUYvbyZ9jzzygTn8kP87K+Y
         hksbrePF7VxFYOG7wBoN6L6/QCNQgUzRTtPP5SQMWYx9Tvru9NKiJbKbV2NvXrVbojHs
         k4xoMJe4TL+6PrKAe+cQLMehmqVWre2lC6vNQ2Oq9a43g4ghs+6UzBJv//PpYfeXb1qE
         a4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Hwqwx4LJYn+nGrs/s7vt3MWR+fST/FOpGPjuEVfqI1Y=;
        b=MmjjR5noUbjZQKMVKICBKm80W8/rdsNpb0CI+Sp08SDH1erLxq1tphqugPPA0qQ9j0
         gBffHR8DwvSadQxJlVgqxH9TiZfgSIEdkqadFvyfSVIApUFhJkwvV1G3PrjhcBV9/NLM
         uKhjILvMYkhRNftCtvJ/4uY3EcXp9DpxwFjnVPogj+RraG76aMH82bo6v1e/Rb+/PZ53
         TlAhhJLKbSsQlbY7FMUVhpcttIm/SNwqJy8f8OCPVDCgt2fh4LucMcwOF0AiTl+XY6YV
         RvLhnKy6v/FEKBkLTQ/Yg00ZRBL7pd8xY+n8kfRGkEzHIJ7xGLS2G7RhJTwUp88tgR47
         SuGQ==
X-Gm-Message-State: AOAM533vXU6CCy2IfaFfcVz1ft3hZhVUP0OxgvClQ/RW/HENcVbVudQa
        txu0xIX6/IbpcBJQHCbJ+SXeoo1JF8eK7CTihaj8pg==
X-Google-Smtp-Source: ABdhPJzVDgzsy/eNX1ps1bd8bp+PkNNtBxIF7Wh4nsVHVqC87fdjHMvHoqdIsZ0U8nQlU9VMEcEjqK5fZzdFDLjoMGQ=
X-Received: by 2002:a25:dbca:: with SMTP id g193mr20139314ybf.0.1620819219357;
 Wed, 12 May 2021 04:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210511050511.5973-1-jbx6244@gmail.com> <20210511050511.5973-2-jbx6244@gmail.com>
In-Reply-To: <20210511050511.5973-2-jbx6244@gmail.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Wed, 12 May 2021 13:33:28 +0200
Message-ID: <CAMpxmJU9K9t+LOT6SLarXQYZs1YCqVZHMz_ZM+iMpzfMtqUH8g@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to YAML
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
        david.wu@rock-chips.com, zhangqing@rock-chips.com,
        Tao Huang <huangtao@rock-chips.com>, cl@rock-chips.com,
        linux-gpio <linux-gpio@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 11, 2021 at 7:05 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
> In order to automate this process rk3328-grf-gpio.txt has to be
> converted to YAML.
>
> Rename 'grf-gpio' nodename to 'gpio'.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Patch applied, thanks!

Bartosz
