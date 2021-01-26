Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC46F30414F
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 16:03:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391695AbhAZPBo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 10:01:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406009AbhAZPBW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 10:01:22 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 644D6C0698C2
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 07:00:21 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id m22so23107507lfg.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 07:00:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oou4JBBLNg89AoflcEwukaUQeMGozONrAI+ykd68abc=;
        b=CMa6kBvpR7r2i7zpxtIhNACZ2ViuaRO16BBxLI8B05cp9KOHqdEStU7xvCXZWY74SX
         9lqFxZaRm4aqr+c9UZoLdzO0SOMIUuiYyxAeIJJGdPM/fiZR4aDiStE89i/QvkPTJ04r
         UajsbqVlBJyRziIRZGuKOojtOnzJ5Q4KD2yRDbzkXpaQtXrh1M9quvjUl/9uy5spVVb5
         GO92t8QxJaHe3M7H82gYGbZA9hX7M29967sScvq3sc6d0cfSQmE9sZiJQiLeevmZHPqx
         RurYYDJ0RzvHiUwdCy41fLjd6IqcaiDE2XMbg2avVyrkBgog0Qghh8I/VRVS9XJ7SVPY
         wkdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oou4JBBLNg89AoflcEwukaUQeMGozONrAI+ykd68abc=;
        b=X+6bLZcWtAkjFCxUZef0zARGktyIrbowrDwfK0OICX/x1khZYaXdiaiUuxGjNybr2n
         DdnR2ApBO3fnI43uv+H27TACYtjla6W/F/vEF2NqaV1OFnBRgJDK/0Ti3+WKY7H6BBx/
         vIovkL7eRadi7OLF8OZuAHogvYX37uEqj7WpL7guNkBjsOGOlQuNjyoebkiVGm81y76I
         yv0MJokYGPkgA4vmXu8yuF/hAApDwjFJx5J1sgXWQsNK7SzulW+4bDQUzZeMEfXFf5pR
         H7wIRbH3+xXS9Xit+JV8zJx0pW9ZOQhbP85zEe4YDUeb0fLQYPHilwOROhScOFCGwgwU
         8fmg==
X-Gm-Message-State: AOAM531SP0SIzbsOjO3J33K55P8avd57BnWDUCaNC70UuHDO1EXqIdfn
        EnmaoLFNZ1jESmazBDL8bL1y74sG/0CFGTinrTrv1w==
X-Google-Smtp-Source: ABdhPJzrV9fkzjpZBwQ0mQ9Fy53MLqpTRDv/TPUMKddMWfeRpgkK8NEwID8Bpzlme642rYr1YhFm4FNjevHCdUpgQwY=
X-Received: by 2002:ac2:4285:: with SMTP id m5mr2664496lfh.649.1611673219946;
 Tue, 26 Jan 2021 07:00:19 -0800 (PST)
MIME-Version: 1.0
References: <20210126132531.2084711-1-robert.foss@linaro.org> <20210126132531.2084711-2-robert.foss@linaro.org>
In-Reply-To: <20210126132531.2084711-2-robert.foss@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jan 2021 16:00:09 +0100
Message-ID: <CACRpkda4pChqJoR-RH_QGMq0NBgyWFsyhzQHthFWPZkm62qC8A@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: mediatek: mt8192: Fix
 dt_binding_check warning
To:     Robert Foss <robert.foss@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        jiaxin.yu@mediatek.com, shane.chien@mediatek.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 26, 2021 at 2:26 PM Robert Foss <robert.foss@linaro.org> wrote:

> Silence indentation level warning reported by dt_binding_check in
> order to reduce noise during routine checks.
>
> $ make dt_binding_check
> mt8192-mt6359-rt1015-rt5682.yaml:10:4: [warning] wrong indentation:
> expected 2 but found 3 (indentation)
>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>

Patch applied!

Yours,
Linus Walleij
