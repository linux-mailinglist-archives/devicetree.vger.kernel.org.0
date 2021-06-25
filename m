Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FD133B4024
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 11:18:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbhFYJUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 05:20:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbhFYJUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 05:20:55 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F7AFC061574
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 02:18:34 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id b7so11732726ioq.12
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 02:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=88FCEyGY0ObH+JRYnSMOFbc8rSLjvc2FivRi/MWezus=;
        b=clmTQ6i02Tj8s8oVZQHWalhZCVnAixA5WTtIyAGQL9bFK9TDRU4WY9w6YLpuaUPd4D
         lVG1MDJ72xb36377gWaJzV0cuc/8vgda8HyXZ1iB5cBTZu+B3l8X7LRtkn05iB26eG5f
         E0lwNnLMnegvu3O/6c1qmkG5WKYdc7f4cQMZjCcyijNLMDc3tsJyr1x03Av8qjjmg/+q
         QrZ18UapyQ1AtNDXrm7q0vKY32eTvZmOOCD0ht1W15+SbDf8YakNDTvPTT6f/KZQp4yn
         JduvzNX+WegZ57QObIYIJXvc88Evh0qAEpin2ELCCg+ti2khYJcTecXfuiK4piU9Fixw
         fW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=88FCEyGY0ObH+JRYnSMOFbc8rSLjvc2FivRi/MWezus=;
        b=sQWiOtPIS3JFLbOSkYDxU/70JY9vo3UYgli1bIqL/GxzIRjiiF9S16m9QBwIWwWnXl
         jMPn/QD+Y6UVTALBlUSdPA++MCaKTLRuAJTRa3EP9otWcm1yhz70Lga+oloZWjxAs+yO
         4Ka1aRmo0Zf2BQqE4lNHQ1Z9LRFOjPsXnHxBYBaflQry0OOJ4J3g0XK8cM5WkKnrP0F1
         fnkE2l4lttgFI4KaPvF4bc/+gbzvjrX5UZXhKBPUeRj1h1UVAz5Fnhf2evRrxA6gELnp
         Q+B6215vHHTbIxTzothe2B+eOgZdcxdsfM886H33Fp4UiuHjoYGQTBRjPp/t3svpnmib
         JSDg==
X-Gm-Message-State: AOAM533TrkArpHHyBSF0XOYB6a8k8VN/WZTwMKH3x05k6jZ7GrG9OEbG
        GTo8G0P9O7moBOmXZf8yHpo6fwm/GV4g0xmWByz2Mw==
X-Google-Smtp-Source: ABdhPJxbt3pm/73VTwg6WDqxvFoGlsWZppVPiwv/xS7DVbmoMx3sJvxUADJW/Q03NqHJbGeQmuoHUyhzht6/MupEWr8=
X-Received: by 2002:a6b:7110:: with SMTP id q16mr7755529iog.53.1624612713653;
 Fri, 25 Jun 2021 02:18:33 -0700 (PDT)
MIME-Version: 1.0
References: <1624428350-1424-1-git-send-email-kyrie.wu@mediatek.com> <1624428350-1424-2-git-send-email-kyrie.wu@mediatek.com>
In-Reply-To: <1624428350-1424-2-git-send-email-kyrie.wu@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Fri, 25 Jun 2021 17:18:22 +0800
Message-ID: <CA+Px+wW6PrYihYo8F2Op8XPfVHMmO7ODRQrF75DQxc4gRM-qfg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mtk-jpeg: Add binding for MT8195 JPG
To:     "kyrie.wu" <kyrie.wu@mediatek.com>
Cc:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Rick Chang <rick.chang@mediatek.com>,
        Bin Liu <bin.liu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Tomasz Figa <tfiga@chromium.org>, xia.jiang@mediatek.com,
        maoguang.meng@mediatek.com, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 23, 2021 at 2:06 PM kyrie.wu <kyrie.wu@mediatek.com> wrote:
>  Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt | 3 +++
>  1 file changed, 3 insertions(+)
Note: the patch won't apply after [1].

[1]: https://lore.kernel.org/patchwork/patch/1445298/

>  Required properties:
>  - compatible : "mediatek,mt2701-jpgenc"
> +- compatible : "mediatek,mt8195-jpgenc"
> +- compatible : "mediatek,mt8195-jpgenc0"
> +- compatible : "mediatek,mt8195-jpgenc1"
Why it needs 3 compatible strings?
