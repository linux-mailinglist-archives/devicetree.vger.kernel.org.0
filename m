Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA542909CE
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 18:36:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2410852AbgJPQg4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 12:36:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2410841AbgJPQg4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 12:36:56 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D221C061755
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 09:36:57 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id a7so3709065lfk.9
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 09:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WmkPqZjVOnt+PO6/OfriQ8dmNuyxwjpGGyQVkjhisNs=;
        b=uZVWXEBHQTBneEEtljRPV1nwiyWBRW+wmCfKietxc2rp/g0Bozc8TSl5uQH3dnAdcb
         HKc19zHBULscDZFlUZPzShJhaqVxb/waSMsT2hsSd55rZNUC+gBdjmgXlM0yVITOE+fm
         hfUGZP0+AFy74RDfqBRpGOdtHZMlnlGJrG7s4MEZmRRihXUGWy5CcIaOL2LuakeIpT/T
         GBi6IUZinLt+Cj/sYDJbdmR1YFesCvhxHiWKgjDiHLBjPYnVjK//9Tl5sbehOIfRmKF+
         LgW0xM3GTHdVIL6Zqc5TQoKvtsbUpB2W2K88aKG4QmdlFfkxKE2Tey2zvd0eQ9t9sXKA
         6oQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WmkPqZjVOnt+PO6/OfriQ8dmNuyxwjpGGyQVkjhisNs=;
        b=Sley3DGGwkmKXzrcBftQZp4iXFjAl8o2pQS50mO3bUdYN8JMx5Lu3PiNdDrVYflrVL
         mL4Bzfj2JqLdT9EHZxnBhY/iQPXssLaIbayQwTnxhJHL1QmfUXiAHhgxX9xuh9fjZdFD
         +eLW+Xn7PlZC9MP/5tY6EmI0UmdXvScXQrx6USB3wvMTFTOiD2yFLj3hq7UodcfDS1rk
         rnwHh9rsD6IEAB515+iXzOmXFI6fh4sHaOEOIe4HU8yvBd0AQmMhKq2tdOIc3oUskA14
         3WmkjSOoZl3mDnGkVLZx9MeL/Sv58+oe30590d1npYiJDy5D6Kf1VazdqkuB8kqN0nBT
         Q/KA==
X-Gm-Message-State: AOAM532UBgQ1cXzNHW81HbL0erEhNFhuYnJf7bELWVFjsBJyXjaS9Nfw
        au10Yd8Carqnd8jTAwp3DYOrTZmqcNB1E2OFl4GRQGYUQ0YNaw==
X-Google-Smtp-Source: ABdhPJwwVmXv+e1KBN+rs4Cm9f+yYpq0jUFaCN+rAAAr7TEb2ius4jvb33uqSPwO1D4bIXyb5iqQ3Xhy82M3gYeDjvY=
X-Received: by 2002:a19:1c8:: with SMTP id 191mr1635934lfb.585.1602866215929;
 Fri, 16 Oct 2020 09:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <20201011024831.3868571-1-daniel@0x0f.com> <20201011024831.3868571-2-daniel@0x0f.com>
In-Reply-To: <20201011024831.3868571-2-daniel@0x0f.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 16 Oct 2020 18:36:44 +0200
Message-ID: <CACRpkdZDyp83AiGkX9eFe2_w9eK1NXREFG896DZfPUaHboy+0g@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: gpio: Binding for MStar MSC313 GPIO controller
To:     Daniel Palmer <daniel@0x0f.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 11, 2020 at 4:48 AM Daniel Palmer <daniel@0x0f.com> wrote:

> Add a binding description for the MStar/SigmaStar GPIO controller
> found in the MSC313 and later ARMv7 SoCs.
>
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>

I think Krzysztof is working on some generic bindings that
will make it easier to write YAML GPIO controller bindings,
but I don't know the status of them. I would be happy to merge
them early for v5.11 though.

Yours,
Linus Walleij
