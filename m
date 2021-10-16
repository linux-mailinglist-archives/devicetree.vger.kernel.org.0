Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED83E430558
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 00:18:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244826AbhJPWUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 18:20:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244844AbhJPWUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 18:20:39 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98E4AC0613E4
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:18:25 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id x192so22562217lff.12
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5hTZmsVraLnoyoiajwq2kp7kDJD/UBIvDGojNlZOjYA=;
        b=MlO9EhDO0R+F6a5IFnTIPbpmq5BWUpNHbM6qRx1Se8vfzBsGJpgsGiIfisAVmCOyo8
         lTiW0jaVH1nUXT0F0YXJntoy6WAyo07Tyh36UXjKY9JKKvpY+pfD0X7zs0DozQ9DQXP6
         karq1mJ2Le0t4/YNCerJCdx+i1q+nbSTF9hakC6Xo16kJejquw5aMr9bdtYSfioHkoCO
         70BEy+4R6MmLmofcuDIv2wWHzULVW6hq5ZmyX8PhgEgrkEFcn6x7XKEMCCoMXR5gUhsw
         G+861Cw4nKW4ccwd0KS42UXE5caVkz3VajZVIPE6ghQLY+1a5QKi4c9DVcbODx/pm7FQ
         jrGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5hTZmsVraLnoyoiajwq2kp7kDJD/UBIvDGojNlZOjYA=;
        b=uZouesbdBoe2BOhUxm8Kh7ifKkFfBynQrxoQtTZzAYbpvhMZCuOgQygRkNvgKD6zDf
         waSWGX7b7SW+UGfvVh+r7mXaJU6MqlpVjXQ47xoOnijLQimBVMOTrDqDuExwk7hc5qQR
         guQPXmwluW2oYPc70fgpBFnbDx9wXu7npVeMxBv+aO/v8eBa03EiD7vZVYX90GbPTHFf
         UvB1irEt8ZhePVuXLjUYLc5wg2PB+uUWFQfU5f8FGAizPP/rgvjwE2a36S/HCV+A2PRS
         ynoKWm3u4cGGW2L/dGvONBtJMOIl+V/6UiSueHDF52PxpC1EawKNby40TgIkvcQY5kU3
         yw2A==
X-Gm-Message-State: AOAM532CH+Oc2iYB3MFUBGb0sa9elVQbhdnFQNuCrtH8x52aSttezBwN
        AunpawIZkfd2uiQcnvntAetoYqDZHpvTLUI7aNlTHQ==
X-Google-Smtp-Source: ABdhPJy7PQL7FlWahwMf8zqvRh3tgaf9x3NU3N/Jf4Z/TBpgv3e+zIyq80gCL0b/Z+0DKPZ9HVLLg6VScA1ErGJ2s9s=
X-Received: by 2002:a19:c10a:: with SMTP id r10mr19208289lff.95.1634422703906;
 Sat, 16 Oct 2021 15:18:23 -0700 (PDT)
MIME-Version: 1.0
References: <655523d7bf9658eb0b8e49a06c8b79a04052e5d5.1634286595.git.michal.simek@xilinx.com>
In-Reply-To: <655523d7bf9658eb0b8e49a06c8b79a04052e5d5.1634286595.git.michal.simek@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 17 Oct 2021 00:18:13 +0200
Message-ID: <CACRpkdY4pQXGB0e+HY1UYrbNpSb9tZzcnMh9zETCpSxxQ-HoKg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: zynq: Add power-domains
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
        Srinivas Neeli <srinivas.neeli@xilinx.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 15, 2021 at 10:29 AM Michal Simek <michal.simek@xilinx.com> wrote:

> Describe optional power-domain property to fix dts_check warnings.
> The similar change was done by commit 8c0aa567146b ("dt-bindings: gpio:
> fsl-imx-gpio: Add power-domains").
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
