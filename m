Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D71D936529C
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 08:52:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230200AbhDTGwv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 02:52:51 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:59794 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230142AbhDTGwu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 02:52:50 -0400
Received: from mail-ej1-f70.google.com ([209.85.218.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYkF7-0005b1-ND
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 06:52:17 +0000
Received: by mail-ej1-f70.google.com with SMTP id t9-20020a1709069489b02903807ab24426so1857241ejx.2
        for <devicetree@vger.kernel.org>; Mon, 19 Apr 2021 23:52:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j1PGlFqGKikJO8z0lD8lXj0af4Bf8i36wqtsVcNsaxY=;
        b=PqNANZ1DTCm85YxZf0EG0mxOXXEK5Hh/C0tjC222IUDGO0aRcd/nDhilydf/XtRWCQ
         0MLQAbq1bvFAExCi5wBZLXmrfC6Ddyc/Hbc9VIP+pAGtIPkJMmNYFLeT5R3fsr5jq4Q6
         F4eBgxP6iw1mX53+JxCTx+VPK4/A51zM8y18oOU3uP5IJ6pxKE5ftrmyNxOqvKxlVdem
         unnkvNkqumjP1tdrHpOwePbq1D7KtOxoym7iN991Ld1Xy/hUlVlt7CSTnf1Q2NOT6dBO
         V+cdAiEvTn/NGJeMWEX8ful8Tz9qUo6CFHjd7Nq8S9NVqhryZO6L5UBw/nSJXhlNZOg8
         +BHw==
X-Gm-Message-State: AOAM532eG1x3p0YX7nsnrApvYxF6B715kBQXkje6sa7xZqHWh5BZXXph
        4VQqOZqyNQ53UPwuhTiUal01LFy5ZViMymjCubvvCbwHVLEydSqawSUBpsySCo/rNm60isafBc9
        ssE5XFQp/A+NItasN8dKiSwW3dNncmKhgsxEHGQIVghxuD2Q2v7G56Zs=
X-Received: by 2002:a17:906:dc92:: with SMTP id cs18mr26604221ejc.27.1618901537483;
        Mon, 19 Apr 2021 23:52:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPmpfM8eOEJS4rNHtsnpZr74Ds25XYl77S+to6BTJGlDIYnIAMsIXABdzM4aZ2fcwaE9A8kv+s/P3C8NzZfSU=
X-Received: by 2002:a17:906:dc92:: with SMTP id cs18mr26604211ejc.27.1618901537323;
 Mon, 19 Apr 2021 23:52:17 -0700 (PDT)
MIME-Version: 1.0
References: <1618459535-8141-1-git-send-email-dillon.minfei@gmail.com>
 <1618459535-8141-5-git-send-email-dillon.minfei@gmail.com> <CAL9mu0LmZO38CvmRfBMvgJm6310eMY64tgTRw8kWKCPuGJReoA@mail.gmail.com>
In-Reply-To: <CAL9mu0LmZO38CvmRfBMvgJm6310eMY64tgTRw8kWKCPuGJReoA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Tue, 20 Apr 2021 08:52:06 +0200
Message-ID: <CA+Eumj4M5k50Vv+5tzsY943yp2CVvXFxnf-W0nBf=Bj5M-1AQg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] media: i2c: ov2659: Use clk_{prepare_enable,disable_unprepare}()
 to set xvclk on/off
To:     dillon min <dillon.minfei@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        krzk@kernel.org, linux@rempel-privat.de, s.riedmueller@phytec.de,
        matthias.schiffer@ew.tq-group.com, leoyang.li@nxp.com,
        arnd@arndb.de, olof@lixom.net,
        Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
        festevam@gmail.com, prabhakar.csengg@gmail.com, mchehab@kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-imx@nxp.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Apr 2021 at 08:46, dillon min <dillon.minfei@gmail.com> wrote:
>
> Hi All,
>
> Just a gentle ping, hope some expert could take a look, thanks.

Don't ping people after 5 days. It's not gentle.

Best regards,
Krzysztof
