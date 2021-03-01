Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 568AA3281B4
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 16:03:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236862AbhCAPDM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 10:03:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236857AbhCAPDK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 10:03:10 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4690DC06178B
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 07:02:30 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id d3so25954860lfg.10
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 07:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EFOeKxx+x8nH8EXeGpMjw9TJ7qoiWb2I7zXcIbDEVEM=;
        b=zmY9bGnuwv18XABPZgnbrM7C97rDYNAMSls0uPhopoevUd2AFS8AyCJpn/vZQFslSO
         7efAb90ANTRz2p3XZa/MLp/S36BovLGR8eRYHIMvnlwZtexz9kfCY89r5RmFfyZY5kBJ
         mSVaH5PrNvrxb+EywlsTBQrEdY3VpDUtXaqLFLDIqxBTRI9zCfDuR+Dfc4E6gsZH1OJm
         +IPAZjztZIToJLhyW2KTB5Aj5Lz6bEpJpVuuTAXErT7WX/a22Hbxnmr0MbfoNbh3dIlb
         6nojyePVIFWrh26dsYyrSuEDH2QV/m2YDmOct7x4vBs+XpvkKg7jt1Kaw7ZGX5EsA2jE
         JGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EFOeKxx+x8nH8EXeGpMjw9TJ7qoiWb2I7zXcIbDEVEM=;
        b=gkJj+PgT1gk58jBw0dqjj6QmgCKMX150QZYO0+ldOoUI5JBCkGYUpwXHQM7q1ZJns9
         M/7EZ7X6vTTnSB6slr65TGoMzZP0mNWPsME/Fr85oPIs1PQwfGIwxH69M0vX9V5ZAqZv
         MIMElngFUymD+/AMai6el2y42neMS5JgsauoNMg51PZkuufkW3da4LWWwK5l52Hg5Wkh
         SETNB0Y04HrdaxTwS2RtLy/QH84KW6W0ewDD8Zp7CAHWlaBx/fhBk64tXxSGrcAtXnDf
         nvZftnje4JDk5LGdQwiVsrfF+XeaWyAqZ8zgiQ484UV05rIs/vKiG/Zvb20AhfnzbTGd
         0NRg==
X-Gm-Message-State: AOAM533YhbQHm2Z6ixtn3om+sXXIoeO49MqGsRbNvvqPwkmCXHw2vzm6
        wpvQ8+VnSYffMszffTJjgaFogGUuduyH6SseTU4DqA==
X-Google-Smtp-Source: ABdhPJyaMLpKcro1JxJav8VEQsF7koIu0HST0DM5/MnhW+lzdisriudzyG3yhwIP4A43ZZBSXPdZro34P55XpkiV20M=
X-Received: by 2002:ac2:4d95:: with SMTP id g21mr10210007lfe.29.1614610948698;
 Mon, 01 Mar 2021 07:02:28 -0800 (PST)
MIME-Version: 1.0
References: <20210212163806.69996-1-krzk@kernel.org>
In-Reply-To: <20210212163806.69996-1-krzk@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 1 Mar 2021 16:02:17 +0100
Message-ID: <CACRpkdbcp2Z96mfqZywEQqRw454VqHoXtcPNwVd9SC_pdK2gwQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: input: atmel,maxtouch: add wakeup-source
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Nick Dyer <nick@shmanahar.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Linux Input <linux-input@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 12, 2021 at 5:38 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> The touchscreen can be a wake up source and it's being used in DTS:
>
>   arch/arm/boot/dts/exynos5250-spring.dt.yaml:
>     trackpad@4b: 'wakeup-source' does not match any of the regexes: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Looks correct to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
