Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35AAE2B7066
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 21:44:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729760AbgKQUnj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 15:43:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726289AbgKQUnj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 15:43:39 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9A86C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:43:38 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id o24so25843797ljj.6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 12:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=t7NI13simGsyc9aw9w73uuvgucZyGXooSIdE2T5x8G8=;
        b=yvcEFOq9BcF7LgquEChbWT4/s0xCg8aFic302owme6IFLWGlM1wuKgWXZlbhk7CbXN
         EOeUoNM//JKFYDew1/pRpdloV0PJtNVqfFew3mosWMYx9PC53HQ/LVtsb6/jWHt4WKV9
         HIjeR7TmgXzDgPny8bCfkMwy1XsVkKUeexifYd60cCUUotM5at3yQbSb3hL8IzRdj3NE
         I7iJ/01rf90J84+3GYwLF+qbEG5EBjRtVxgchn3UzLWqSFBwmc64eLOr+xz6H87e890T
         tiyxfREvCrYZytqd/iaw4fJPOCUuwIwiMExY3rro3RqpHKK9rjRQqED4R5Uf3SWq1PqT
         wh4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=t7NI13simGsyc9aw9w73uuvgucZyGXooSIdE2T5x8G8=;
        b=lSybzPFZSgg5aw+oYqPTSuGrdooPL6SLycq1fNBGEtkFf1+j77uwrwE7vNwbz/166F
         xOLzQDqB5GebiGpHgtPA7jRWp0UqMwMZujBBa0c1VIqLAx1X7vkl/V3oKgGvS+fnS8+1
         7SvszkUm0zAxyAbyI9VquW1OhqhHMvnfHxIJtFMkSPwwTIR+dHNofRho0dHPHujabpyE
         xIYigYmd6Ekc9B9O/Bj7TsFc0nDtHViVKAL3HzkjsCgz/JWTCDg9veL9kO0aSxqmyZA9
         Hkkpej+HOu8FQ8jnBG7KX02MGzWw4biKTxiUJdvUg+4hoP9risQd8S4Tx1TSQx2yWj2i
         OCkw==
X-Gm-Message-State: AOAM5305z5FPjBZi+MrvJcv4xmw2PycnZYLVXGovDi2V5zaqRxYe1S22
        6Kj9+E73tHR1Hj7i722AwRl/taFelsJ8YkE5orm8Bw==
X-Google-Smtp-Source: ABdhPJyukBzfTaQq1ffcAx84TNgxYchrEu/Cc8M9PnwoFuv8kBKflAmTRmLuAqvUSXMvMr7YoQWVMuqH24bQq+R5b7w=
X-Received: by 2002:a2e:7d08:: with SMTP id y8mr2488637ljc.144.1605645817321;
 Tue, 17 Nov 2020 12:43:37 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605635248.git.agx@sigxcpu.org> <31b1013d78f539537a6e9e2b70bd9865b430a69e.1605635248.git.agx@sigxcpu.org>
In-Reply-To: <31b1013d78f539537a6e9e2b70bd9865b430a69e.1605635248.git.agx@sigxcpu.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Nov 2020 21:43:26 +0100
Message-ID: <CACRpkdb+EqyV5qHLvJ=8a_S5QnguUArVRVr+eg4=TGUXSSu4MA@mail.gmail.com>
Subject: Re: [PATCH v1 6/6] dt-binding: display: mantix: Add compatible for
 panel from YS
To:     =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Ondrej Jirman <megous@megous.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Mark Brown <broonie@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        allen <allen.chen@ite.com.tw>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 6:49 PM Guido G=C3=BCnther <agx@sigxcpu.org> wrote:

> This panel from Shenzhen Yashi Changhua Intelligent Technology Co
> uses the same driver IC but a different LCD.
>
> Signed-off-by: Guido G=C3=BCnther <agx@sigxcpu.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
