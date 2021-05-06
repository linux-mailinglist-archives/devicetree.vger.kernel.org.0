Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8D60375100
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 10:41:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233770AbhEFImp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 04:42:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233765AbhEFImp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 04:42:45 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A98B0C06174A
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 01:41:46 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id x20so6666079lfu.6
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 01:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vqoqqwG/Sm/7StgZJFZzPWzpMUimMU/fZ4yBiGhx1bU=;
        b=lyzebzklAgUpuJEr2Z4nZzaqEiO3LAfi5JsJfB0R6bBQLR35qmIDQh9zSxuSnHbyCp
         eLkefy3UQF+/VZbkyyv5cx7gRtBB/m8iVbu/hBBlneq4fcJGzoPAbumxhR1EKrUUYK2A
         LfNCwDeG+0Gt8ULhLKh6O5Oe1+/zaa7pbmUIGyefaVBePre/XWKma88cqYzw+5s77aDC
         y7caWjLCUPfPrHPj78cHXdXoSU0a41LbqSUWt/nUPc4RbcxqdynW6k0nbJTSigcLtpzq
         bd2gPOf3bseZfwm0wYAcyD5gCv/ByJpRBAmT+SIG5h1Lq4lSc1XwpSrsH+lpYe/Beg4o
         XBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vqoqqwG/Sm/7StgZJFZzPWzpMUimMU/fZ4yBiGhx1bU=;
        b=DRRGt5JHkJRPcBHtwidddYZkX+auNh95uR10sG65jmN7OE85rzz2eL5wQ2DtbTUCr8
         j+UojcLE2zNPCfA1v+R5fPlM/ns0Cj5cA0F5HvyZWaj1VYAXT5wIGVNNMxFQUG78DwpI
         7Jx6+bpdm0O+C3idwoOVtCIWsqnKiT1cmAJEA71xzmOb0uvBwTshXaGryLwOPac2oUfM
         ZQQXAMxaA7FD8vhxpXCAdh4Pq34QKJWH0cGWatRwcuL9iZiDeLmSwn5cnoWQcOJRdqVB
         c+9yPG4gmlow+kI5fWXr+hUnddh+81lCoQI0UGVOfbFXL+ubMOpmRhkQybasF7XBNoVA
         470A==
X-Gm-Message-State: AOAM530qXJd3vI6oY5/1e0cDi9t6rx8kCjTSgx601u9W3maCW9o+9Jff
        Nhwzkz/gDI/gN5J0rOkQ2gvpFA+otYN9QbptStT7/Q==
X-Google-Smtp-Source: ABdhPJwpbPqssKuUoKhLJ2Oxg5Y9MSO0cU6Ssng9STHq/8W/zGsIgP+MVZxC4Aj8oKr6eiPaX8kqmim4zEJkNJNvy+0=
X-Received: by 2002:a05:6512:149:: with SMTP id m9mr2045704lfo.157.1620290505124;
 Thu, 06 May 2021 01:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210429192326.1148440-1-clabbe@baylibre.com>
In-Reply-To: <20210429192326.1148440-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 10:41:34 +0200
Message-ID: <CACRpkdY7dC=QXdnshHK7ByTE8NkThiDm7sZSZrH07F7GBiMM5w@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: net: Convert mdio-gpio to yaml
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 29, 2021 at 9:24 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Converts net/mdio-gpio.txt to yaml
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

This v2 looks good to me, I suppose you will need to wait for
net-next to open and resend it with "net-next" in the subject
though.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
