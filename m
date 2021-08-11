Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3214F3E902B
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 14:07:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237448AbhHKMII (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 08:08:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237589AbhHKMIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 08:08:07 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8A7C061799
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 05:07:43 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id h9so4155358ljq.8
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 05:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ObQ5OAEUd0+X1eMi1qcnnAwRcSYfFxDtxdcEgN6ufWM=;
        b=OMRmvbDwPkn8fEqA2OPAXWB6I+etzg1ysA5y8KNf4rT5LZO3Wpb0CgwaWeFQuvXgmd
         4F0zctL9WdpflzYh9lDHUKC76WIE12Cny8oKlyB9tHB5HqTaKylIYEm1adesWNVGZBIG
         JU5JGbz5cUrkgeHli4AKOSJBeyoqid4nfOFRCRHT0JQnnFjTq/NIhcQZL50CkoIAtuyy
         hsTVeI0+nh5h0NLmHh5q1IQQsK+YYsJyrkx5kGMv8CtLZIlnS8VG6Tf5OlvbtFgtQs41
         hcW0vlYj1PO6GDwdVCabM0+xze+vKZFVUJMIsR9diuC3pTtNqBBOeKia0ieLbqD/hSkV
         7q6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ObQ5OAEUd0+X1eMi1qcnnAwRcSYfFxDtxdcEgN6ufWM=;
        b=Qh3GCok4aVu2MOId7sd3dA8QO91ilPpxp6I+NR3DtujEKMXL1QaNY2sBX8VRcDqAaP
         9BHLtA6dkjJTsjLzmYeUDJmjK/iIFMKsn6TyxvfqKGTatOlBhhaj8+S9aVwbTalnv2OY
         jXAPpv6n1MKjBqR/l5JK/vOACuZrJpJ34MrianR9YlGLoCyFJ27+fJR4qFbATqu+Sl8/
         7d/ziJXFzY6b673LKWWO4Hbc/n31HdWimsEpjlWQ9D7faEfVUQqmBA+OGJFbYPFBl99r
         nCDZuaD0KFQVPdDzyUf5Qt1LY2IB+27+6AZNf8RVPKmeRFZCXz0Jyh4YXKCGvq0lODYb
         8IVg==
X-Gm-Message-State: AOAM532pi4M0Dp1qjyW5S0lHg+sVmvdmOO7itCimTa7h/n4rD8Amkth0
        /tmHiN019seRzPP5TIlLxfzevDgNzcbeFCkvzr2nbQ==
X-Google-Smtp-Source: ABdhPJzY2UMetNipVATu+xcWql5w7ucY3+3H1SvB5mkMuZDL9wTMQKa9NEl1S74qvlbCJIHPSpWeiReYNbTevn2LyM8=
X-Received: by 2002:a2e:a4ab:: with SMTP id g11mr526868ljm.273.1628683662147;
 Wed, 11 Aug 2021 05:07:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210803175109.1729-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20210803175109.1729-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 14:07:31 +0200
Message-ID: <CACRpkdbEPsRUUxNTfFoAghFiRur6eG9BbXqzXdWWnSZGuOreKQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/4] Renesas RZ/G2L IRQC support
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 3, 2021 at 7:51 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:

> The RZ/G2L Interrupt Controller is a front-end for the GIC found on
> Renesas RZ/G2L SoC's with below pins:
> - IRQ sense select for 8 external interrupts, mapped to 8 GIC SPI interrupts
> - GPIO pins used as external interrupt input pins out of GPIOINT0-122 a
>   maximum of only 32 can be mapped to 32 GIC SPI interrupts,

This looks good to me but I count on Geert to do final review, merge and
send pull requests for everything Renesas.

Yours,
Linus Walleij
