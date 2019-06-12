Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4BFA442534
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 14:13:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727490AbfFLMM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 08:12:57 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:43643 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727233AbfFLMM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 08:12:57 -0400
Received: by mail-lj1-f193.google.com with SMTP id 16so14863765ljv.10
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 05:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ELkeEswy3RryzFI9wP7fvpF8yJjPUXwtrgXJFfzoWvc=;
        b=cs1gGg57RFwsFNBg5Wz1FxALZjEjnWdh36wZ2+m8aRNowiw+keszis1eGyPtUSycfJ
         jw4fgGS36H0s7D12QWk4cu5sD72scRy++h1LTxCTbcVox4Xjha4j2VqTkBupv8Ta2Ui+
         irn2QLfGeUryARGROwaNwQt9HbqFNSh55sS39e3e7IdSxoAb6RCUk7ubQQvb3BRpq9Qj
         ysE9d/YnTN4UNmKzzslol++aPGqWB5P+7Mqsp3Uyxu59iZ4oIRaUFQbuwvNOAOUbDXwZ
         tgQdhfyVIfSiIroPFqotYYUROmQXrYohGNecKnbB1jB+kRnxiMrUHi3i6HtA6P0t39dW
         WtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ELkeEswy3RryzFI9wP7fvpF8yJjPUXwtrgXJFfzoWvc=;
        b=DroQJx9BudM3cEpWbKB1e+s84J7zeSQ78ZowLBSKT/7xwUW0IqtSbIGU52yxDYCR9L
         mYe2j7gU5cCs437PA+YZ3XBM8BYDVC8qADp/9saldy1EK2WelsXQpXTKdHXLpCtij3Rt
         YFcB6D6gmVNnHMeOQlf5+zQdTyFA+9w4cRglG1Ncy78nIA/GiMputr/px7JQBie7mV+e
         cFKQ9crE3hOh8Epoeyobg3ukqityC0c6oheg5WzKbyiHJd7B8Ah/ffU7rGomRWJaLYW1
         mR5nNFQ0ICWlsfZArdBf/nuZgGUyqREBtrTzsbZtZOoUGFqPU4sVsEvB5o8+2J8wrJGi
         lh6A==
X-Gm-Message-State: APjAAAVIyfAchDKfa5yOqF8zmfhjGJ0QMuKyDmtnTKUgJSO3ugLl41+X
        aDd1PVp2rpNPMIj8hIRY17215BcA84opbCBcppLyVA==
X-Google-Smtp-Source: APXvYqwX/cz4Ov/rw6ige4uWEBhHtZdC1FwFiYjZbazDExi8Yz+Hq0FkTVaZ7z4h+4ZcFlJnGyli0LLghmuu6GyC4p8=
X-Received: by 2002:a2e:9753:: with SMTP id f19mr4505822ljj.113.1560341575429;
 Wed, 12 Jun 2019 05:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190611140940.14357-1-icenowy@aosc.io> <20190611140940.14357-3-icenowy@aosc.io>
In-Reply-To: <20190611140940.14357-3-icenowy@aosc.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 12 Jun 2019 14:12:44 +0200
Message-ID: <CACRpkdav8F0F=Kepa6YskZbFEC6vfGxRe89VpK+bw8o_+dgAdQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/11] dt-bindings: pinctrl: add compatible string for
 Allwinner V3 pinctrl
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 4:11 PM Icenowy Zheng <icenowy@aosc.io> wrote:

> The Allwinner V3 SoC, despite come with the same die with V3s, has more
> GPIO pins than V3s, and a different compatible string for pinctrl is
> needed.
>
> Add the compatible string for V3 pinctrl.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> Changes in v2:
> - Add the review tag by Rob.

Patch applied.

Yours,
Linus Walleij
