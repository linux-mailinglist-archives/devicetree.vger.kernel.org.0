Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9350832AAD6
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 20:59:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1839912AbhCBTzr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 14:55:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382060AbhCBIsm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 03:48:42 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6A9BC06178C
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 00:48:01 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id jt13so33740781ejb.0
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 00:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rZpA0b0nZ0oV8tIgjk1GgOPTpGQGWjc3SqFNlF/nAjg=;
        b=bhpW9YjLtH6WxpffPKs4ftIdB6kEzlPYvMRE4w6u4+Ms/Ybfo4fznsNNQ6IGwkIX1e
         TeTPAKgZVJ+R1PSMOdd+ehfeP8jW5rRKpVNDlDTv0Pra8HyXgVXz1CJY3EhymmTx2SHX
         AYo3glejXTHqfpzbBFtBQBh6DTEO8RWbzf9CwJq0V8NMNPuRn2zTnHOlHNlLNGXseX6x
         chYYJQgKqjiF5uHvxgJcAYb19ErSGKx86BIT5vzycz2u1wJM09USsRRIoKF5bDjM8vAQ
         kHW8FHKI6s/X2Ftl/o/NqbRaEllxGM6y708QGzRkXjN+kcUuQDhPXLCelc18klyeuZ9h
         QvuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rZpA0b0nZ0oV8tIgjk1GgOPTpGQGWjc3SqFNlF/nAjg=;
        b=A1BYl6EXJXSYJgSg61abySLC/+HgSb0MJrJ267xBpdSM2GfFkt2F7ZJexOpoQjDKQ9
         zzCgQvogw+l8xbpwB3jI/jB86hy30sx2x1msAR/9msty6/KW64wAIQa0HkZrtGUqvU/V
         0k5EyI7xPv9JqCqtsv3va60HPrT8jGque3OfbiFxQBwSUextLV3VeB1vPD5mbcriczu0
         4hxQWso2yf7u8SpbXoLbgYokbnYtx9duTak+uhg/4X5lPsstJtX+EKtGEeS9QMyuIiwf
         9gA6ZpY8Bkq8sZ8ir5l0VI0eBrTS2lgy9CM34D849q555eCcTVDAAvbHgSIWsNikPxpF
         X6uQ==
X-Gm-Message-State: AOAM533o9dZJwtXuFD17kKD9Ql8hFJohc5kfnzZh2KTQ2Sj+tQ8WQ9dk
        EAeyFNXUsKDpx3eD6H0wlGOwHH1G4+vQi/FS7SQl2A==
X-Google-Smtp-Source: ABdhPJxaIR8R0M2MhfB9/bK+Jw1y7uV2v5sZWjHNnGAWiYXUfoQDjviHdtbcOIZjTVeYqavg7ifapNqB3HMH9XgY9Gg=
X-Received: by 2002:a17:906:2314:: with SMTP id l20mr20436562eja.178.1614674880504;
 Tue, 02 Mar 2021 00:48:00 -0800 (PST)
MIME-Version: 1.0
References: <20210215121713.57687-1-marcan@marcan.st> <20210215121713.57687-15-marcan@marcan.st>
In-Reply-To: <20210215121713.57687-15-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 09:47:49 +0100
Message-ID: <CACRpkda_BdcvTamh-=O2ej+OHYVfNmRokCNJ_mJbF1Fr5Gr5wA@mail.gmail.com>
Subject: Re: [PATCH v2 14/25] dt-bindings: interrupt-controller: Add DT
 bindings for apple-aic
To:     Hector Martin <marcan@marcan.st>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Marc Zyngier <maz@kernel.org>, Rob Herring <robh@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        Tony Lindgren <tony@atomide.com>,
        Mohamed Mediouni <mohamed.mediouni@caramail.com>,
        Stan Skowronek <stan@corellium.com>,
        Alexander Graf <graf@amazon.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 15, 2021 at 1:18 PM Hector Martin <marcan@marcan.st> wrote:

> AIC is the Apple Interrupt Controller found on Apple ARM SoCs, such as
> the M1.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

I think this looks good and makes for readable device trees
and similar to how the GIC IRQs look so there is a
consensus.

I would maybe add an example interrupt consumer but
no big deal.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
