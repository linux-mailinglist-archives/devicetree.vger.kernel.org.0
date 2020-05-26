Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C2EF1D71AC
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2020 09:22:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726876AbgERHWP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 May 2020 03:22:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726573AbgERHWP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 May 2020 03:22:15 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7BB9C061A0C
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 00:22:13 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id 82so7119516lfh.2
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 00:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ta2gbgUnTd9cjAo8d+iXtIxCCmOdQ9s25dbiJxtxN7c=;
        b=H45b10GoSvrnbPb2a/o3lK9Nl0HuYne+YFGpSvMJiNjwcxbVxcZeeUrjPUQx7sXW+R
         hQWjYwS51Nsn9o3d6QmcnVszrfyH2pFc5Wjwa0dzvxsSdLHpcpLTJI/d6cGHheznDOWr
         aw+OrGy8tPVKae29pfSJi/RecDYQKtqV1KUlNJI2vPPJ4iide2fNvyqfk9HlxzuTBOnU
         EPQklZ2sqMCZL9m0Tj2/hWeJ/WdYq14P0TDpxlWB5tUtgZbtOshsuI5mqiPEJ0x89Eje
         unpR6vch5DGld+UnoJprw33lXuot+0VyLHHf+qLgbZnvm8/Lp/tDq/xbkMgZRftxIgaa
         3dyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ta2gbgUnTd9cjAo8d+iXtIxCCmOdQ9s25dbiJxtxN7c=;
        b=YWNqzWIa15vR9C8u37K1Ky/TxxincHICyG7El6rKkdSOUS8TAHTGHL8/qcMAUDAb57
         OSQyHsVnMzfbZi7scR8k491PyV+DnE1kZnW+rAKuOYY6tTtliXJ/ds3cj3u2Vu0f/EGa
         f9DV0wcP6MMicnuCXZxXKNVfQRTU2/h8zZRO4yTAsrZ/uwA0lLi71gAW7pEnWkpQyukR
         jbpj2WaKcR1gpxCYGMuYo7q/qgUE7unkUex4JB8Yq3w7XRodVjEyZQEjSr7uuU4SQOHX
         ffWMOXwlXKmfWezZtX6gfzCjvj2QED/v6ln+MMN6xrdYBtrKMlJT8WIGVaVpCU1QKv0w
         l5BQ==
X-Gm-Message-State: AOAM532+StJDkRxig4L27VVVNA+qM6YgKzi8VMX79aaXFDyHq4Kw8qGI
        niPz2LIQeCvbngnEGkNuOx5BaO1fDIbTyT+rGcPc2w==
X-Google-Smtp-Source: ABdhPJwjBRm7gpLqIiY05Psy2U6dlWExnKINR/oAoQ5mkgDD5QtubFG19R6MFzkv42RekuXIOYC1qPLmFToR58V7Wmg=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr6307358lfn.21.1589786532265;
 Mon, 18 May 2020 00:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200512203524.7317-1-jbx6244@gmail.com> <20200512203524.7317-3-jbx6244@gmail.com>
In-Reply-To: <20200512203524.7317-3-jbx6244@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 May 2020 09:22:01 +0200
Message-ID: <CACRpkdaN4tMcsOmsERdtcwC+Cw6SjTtSENxNRjTOeMU9rdU+RA@mail.gmail.com>
Subject: Re: [PATCH 3/3] include: dt-bindings: rockchip: remove unused defines
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 12, 2020 at 10:35 PM Johan Jonker <jbx6244@gmail.com> wrote:

> The Rockchip dtsi and dts files have been bulk-converted for the
> remaining raw gpio numbers into their descriptive counterparts and
> also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings, so remove the unused defines in 'rockchip.h' to prevent
> that someone start using them again.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

I think patch 1 & 3 needs to be applied to the Rockchip tree.

Yours,
Linus Walleij
