Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BED44A32E5
	for <lists+devicetree@lfdr.de>; Sun, 30 Jan 2022 01:38:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232643AbiA3AiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 19:38:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242625AbiA3AiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Jan 2022 19:38:23 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF663C061741
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 16:38:22 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id w81so7298302ybg.12
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 16:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kD5EeMfWUZCSsdRFixk1so34OOReUXkCj6tRRq5J/Uc=;
        b=O4Tw7KGaXWjdqt9T970Y8/kH7N+ViE2uO4IeA3UWwfb5LWDhLAgdQ13kGqqCFktiMk
         4Vv7jQT52fSqMz5OkdAC4KjLplOciEm3LyV6cOLM6+pAEnWGc4o6mZJDCbioWpGVOUG1
         2lHSyAOBMCN5Frc3Cdsg6bg7HxZ6b231c3GvytE0674ovgf2FlDq0ID6gg9gLJDi45+I
         pa7EYF80KoI9HtvPwgzfHMaG8Zw3WLlC+MOQe/xA8bSx8j0mMvs5X1TcC/ArieNb5T2Y
         ho9dk3Xhanq8jicrHV0bc2yPvangtdehWkknv7962AdwCimsA+Te/k139zwe+cHAzd0y
         wkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kD5EeMfWUZCSsdRFixk1so34OOReUXkCj6tRRq5J/Uc=;
        b=w6uw9eRka2POLPJuikL/g3n3a4Yj/C4Pr/zaJ4bQceErw90sKcWER6/O+O0JZk1Vmn
         PxFK9oidl/S0BhfNGnjyQZcQJ1IJgLdgKLfKQ7SBQBLo5V1UXcFHOUlo0NIJ7IXAj8cT
         Wsuh5VVa80eBB1517/W5TVmxHyj5/sbaAMjyM2mCXeM9fkmdgnN2qFm/z1g+EFnupCg8
         EpSvWUP9Aw9yMoW+j8pbYZnba2YeCxRci5ej0lN1/RtpePX031gXWD2ddTG0NrpOGdNc
         eyYEJaNxFvJnLZCyC7q00LAv2fR7pobLwdA4+39RPlcS7jLEbGUkXFAx6LuWAub5GgxI
         3ocA==
X-Gm-Message-State: AOAM533lZGOS7abkyz8C3gEPakH2JrAeRgVDq153CvId7rcobJFczmwG
        JQDveXa8tYcxU/Od0qa/0ijeOyHFyWI9rae0sBGuEEqLhSs=
X-Google-Smtp-Source: ABdhPJxrsg7lw1QYllN4dx+IUpwLh8pIspc1kHtZgNyj3fI5O7+wptcqpiBXNZmBeah8UrGe2QSTVaJBq7sQALlEU/w=
X-Received: by 2002:a25:cfc6:: with SMTP id f189mr21225792ybg.322.1643503102047;
 Sat, 29 Jan 2022 16:38:22 -0800 (PST)
MIME-Version: 1.0
References: <20220112114724.1953-1-tinghan.shen@mediatek.com>
 <20220112114724.1953-3-tinghan.shen@mediatek.com> <18f7a647-6153-6d38-dff1-727b9592b01e@gmail.com>
 <102ea6303dd16fdf9ec931d0a1845a93afe92545.camel@mediatek.com>
In-Reply-To: <102ea6303dd16fdf9ec931d0a1845a93afe92545.camel@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 30 Jan 2022 01:38:10 +0100
Message-ID: <CACRpkdZ194_7+mHauDPwMHG3TeGnp2ENdcSDjZnWny1X4YTT7w@mail.gmail.com>
Subject: Re: [PATCH v9 2/3] dt-bindings: pinctrl: mt8195: Add
 mediatek,drive-strength-adv property
To:     Tinghan Shen <tinghan.shen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        David Matlack <dmatlack@google.com>,
        Jing Zhang <jingzhangos@google.com>,
        Marc Zyngier <maz@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        ryder.lee@kernel.org, wenst@chromium.org, chunfeng.yun@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 25, 2022 at 7:21 AM Tinghan Shen <tinghan.shen@mediatek.com> wrote:

> I want to send next version to update the CC list of this series, but I'm not sure
> whether this will break the conversation between you and Linus.
>
> Is it ok to send next version? or waiting the response?

Send a new version, I'll apply the v10 version!

Yours,
Linus Walleij
