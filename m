Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C012B42FB2E
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 20:42:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241309AbhJOSnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 14:43:53 -0400
Received: from mail.kernel.org ([198.145.29.99]:52728 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S241210AbhJOSnw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 15 Oct 2021 14:43:52 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 02E8060F48
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 18:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634323306;
        bh=aEKLubok9WP8Kvw2B/IwvLb541cDY1RnNAAwJyp/RBA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=RyUOTcSa1z3riwlF+IEmHkagSM5pIFWoMFsbjQzmfptXSmH8JDaTT/1kQDO4K+lOF
         Co4EONGKeC0PlQ1UVD31napP4HUN94f1hAYWk/P+EBB62gICEX+Q99JQwg9f0r/szK
         GAgk3aS0p+sYph8j3RA/qHKbBgLEKhD2vcUq+tFIT92uTeDuxToSPB0XKbn92qcs7N
         gl828pRwWGwsCt66gVtO1wEkVVLPA+eNmARZnPRz1iQyH/T208ZXS1gTcvs3+AdfNs
         kjuBhEvuNVIH4G2+iTl9lW1F4offNRZw9+nUJToSI11MD2leP10IzMAZygQjCDdJSV
         cdOx0v1yniL8w==
Received: by mail-ed1-f49.google.com with SMTP id d9so41383739edh.5
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 11:41:45 -0700 (PDT)
X-Gm-Message-State: AOAM531k5KKUHJNYTrWVO5e0KPm3Jq3EIKW80tFWq8ZQyt/7FWNEus5Y
        qp5qj3lQ5W6rDlcr7GI8gJgLzklW5yksyN7D7Q==
X-Google-Smtp-Source: ABdhPJwaqxAWAw4QXbVNEgxrT5eu76RFWee4sWI7cAEgtvrVHWO6fv6Y7OyylOlsgbi6p5tBxF+CGowe13/DkuR/NEU=
X-Received: by 2002:a17:906:e089:: with SMTP id gh9mr8867117ejb.320.1634323304320;
 Fri, 15 Oct 2021 11:41:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210914091204.2204278-1-tzungbi@google.com>
In-Reply-To: <20210914091204.2204278-1-tzungbi@google.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 15 Oct 2021 13:41:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL7QbCJrqLZtRX9eNJC39kJWwbva2ZQeD+Azb+pKHzJ=Q@mail.gmail.com>
Message-ID: <CAL_JsqL7QbCJrqLZtRX9eNJC39kJWwbva2ZQeD+Azb+pKHzJ=Q@mail.gmail.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: mediatek: mt8192: re-add audio afe document
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 14, 2021 at 4:12 AM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> The document was merged as commit 1afc60e00de3 ("dt-bindings:
> mediatek: mt8192: add audio afe document").
>
> However, [1] revealed that the commit 1afc60e00de3 breaks
> dt_binding_check due to dt-bindings/clock/mt8192-clk.h doesn't
> exist.
>
> As a temporary fix, commit 7d94ca3c8acd ("ASoC: mt8192: revert
> add audio afe document") reverted commit 1afc60e00de3.
>
> dt-bindings/clock/mt8192-clk.h is in mainline per commit
> f35f1a23e0e1 ("clk: mediatek: Add dt-bindings of MT8192 clocks").
> Re-adds the document back.

Sigh. What's the status of
dt-bindings/reset-controller/mt8192-resets.h? Because now this is
applied again and has an error in linux-next since the header is
missing.

Rob
