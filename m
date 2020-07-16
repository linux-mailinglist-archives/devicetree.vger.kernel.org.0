Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16AF82223DE
	for <lists+devicetree@lfdr.de>; Thu, 16 Jul 2020 15:27:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728087AbgGPN1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jul 2020 09:27:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726537AbgGPN1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jul 2020 09:27:00 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90412C061755
        for <devicetree@vger.kernel.org>; Thu, 16 Jul 2020 06:27:00 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id s9so7099820ljm.11
        for <devicetree@vger.kernel.org>; Thu, 16 Jul 2020 06:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g/vDuN1L2KCEbNuFEXJItw+g/c3pd50/6Ev+anSTygo=;
        b=iczHf7TbyYkMy0BWfgpzsOiVABUoxFhLHlLkbkGc1mGYacGVfxuaNeXRmfY8Tnau+z
         V6Ys4UJQjGsi5JXc/kEe3DFQJDzbxwH550fJ8UxQrLyQO49GGfXKxxwy4obQfa8wWEa6
         g+OpiQcbhTwx0zOLwtOJblk7pD5ppy9+2lXf+PYzptH3GxfZwFiqoIdYiJ1uJXR1ATc+
         NM7xGdxfXPP89AVXgXY7OGXTHN/PUEyibCJ/OdcLUauSg/BUIERlxnxfj61KO2pyt6eG
         ed+RGobQ6iFu0SSN/psr6T78MeBntG+xbb6VaWqOoejleDe3SliONb1B7Xa+fo6XC6o0
         TZQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g/vDuN1L2KCEbNuFEXJItw+g/c3pd50/6Ev+anSTygo=;
        b=BjZTgF12eLjBtGIHm3FgUV3Xwfw21qWjm2ElDnAhy/ZWOz9rVoY3RZd3mJJ4vC02db
         t/HJ4vXm2D0J9RUTNqYEGST6aDYk1f6ENYYhDXM+9B5kq72UY2zrT3BMbMxf8xOoLKg1
         ymtB+A5SXK6EVPXZGGS1cHWxT5HDR/C3icra3JllJu5EsBsoTP8+FGDjCg/JUMbLWEmk
         miFwI0JdXPmFDrGjmRMQ1LsQgIFr1ME/wzkvzYltm1LY6h1zA5Wng9CNpTO3AtaDyKub
         KPjFsV4Op284e1b/C5JfWtoxIBwrfStI1EmnWYrD6iV353oqkL0iClV61JY3Cw5szvME
         FzpA==
X-Gm-Message-State: AOAM530+9bTa2Nc/dJEnJdLhVw6xPi/iSp/i7GNna2mxVpQ1PD8KOaNx
        bfhEFqWISOMzWEFmngqlZjrzlBmO0YdQ5OEclaspHg==
X-Google-Smtp-Source: ABdhPJzTvWzWY7xde2a3Mu6BMB59vLxHOlDAtL09MGxblo1BkRQCPu5O6Gx0M9FWfCAG68RIFcQ0zgAGPIhWb3rjt30=
X-Received: by 2002:a2e:8597:: with SMTP id b23mr1876406lji.338.1594906019044;
 Thu, 16 Jul 2020 06:26:59 -0700 (PDT)
MIME-Version: 1.0
References: <1594717479-8160-1-git-send-email-hanks.chen@mediatek.com> <1594717479-8160-3-git-send-email-hanks.chen@mediatek.com>
In-Reply-To: <1594717479-8160-3-git-send-email-hanks.chen@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 Jul 2020 15:26:48 +0200
Message-ID: <CACRpkdZNL=mnF0dx63bQPpHVLcAHA=oSEiiHzH8vi3+X58y5Jw@mail.gmail.com>
Subject: Re: [PATCH 2/7] dt-bindings: pinctrl: add bindings for MediaTek
 MT6779 SoC
To:     Hanks Chen <hanks.chen@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Sean Wang <sean.wang@kernel.org>,
        mtk01761 <wendell.lin@mediatek.com>,
        Andy Teng <andy.teng@mediatek.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        wsd_upstream@mediatek.com, CC Hwang <cc.hwang@mediatek.com>,
        Loda Chou <loda.chou@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 14, 2020 at 11:04 AM Hanks Chen <hanks.chen@mediatek.com> wrote:

> From: Andy Teng <andy.teng@mediatek.com>
>
> Add devicetree bindings for MediaTek MT6779 pinctrl driver.
>
> Signed-off-by: Andy Teng <andy.teng@mediatek.com>
(...)

Please make an attempt to reuse the generic schemas in
Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml
Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml

See how other bindings reuse them, e.g.:
qcom,ipq6018-pinctrl.yaml

Yours,
Linus Walleij
