Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 35A3620717
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 14:41:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727149AbfEPMlI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 08:41:08 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:34440 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726513AbfEPMlH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 08:41:07 -0400
Received: by mail-lf1-f65.google.com with SMTP id v18so2542036lfi.1
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 05:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1X4AgGfxt3hQwDE5huGGHXpI65Z8aUP5RYNXv/j5IHI=;
        b=Joug+VR6S7QUmRqv9ZAHEOFpjfAahMBKgIpazqWYWz6ynTF3C9MOTrTDxr0AB9h3De
         iN/iKELVs3GuPOTdJArPHJVlOeORKsGkyWa71jIYNL9AFu1jk32PTuRNVuAukyLMX30z
         XExeQ3qj4YaSZqA3BbmGqD++IFURL1NTCFTDL07M52r5Lo2514Ufhq2yOv1ldamRybKx
         GkBnXbIck4VxJAz9e3w0RRbL+pTQ8QVI3CSMBf14OImWWJ7UgtWDN+RIcfQ33td2BdCI
         HTJbqItsHImJJjaa3G0de13spI/i3uiePNnydMD0O5eDzH8UmFunSBNJw2RwauyrAmOI
         Er1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1X4AgGfxt3hQwDE5huGGHXpI65Z8aUP5RYNXv/j5IHI=;
        b=bQ53ju0RbScBjGAsthVKCvU0HZB5RbHOd2hl8RiJPtqV4OtlBS9/XBTM8MAoWtyQlv
         Y0BkxjxW+YdPlYptxxrrwsPQiuGpMpegf00WU1JRWP2irQ11tNMVutfusq5SKh2Qg1+5
         dAfFl5326RYSZQ26tXFYFRD+DNR6vId5yEwdUl71UIUGnxFDTVPM/m0rUPthnZ2teqvJ
         YXDXgUl3sdgk1iV1vWXKtRXcMxVOD1VeEhjVjKO1NyB2XkhXEQHkxoOel6AphgMdB1Z/
         f0y3SIz42RHMUWInFqwTtOYVOufIbx6MEiGoV1C9lOLbUojox0bC8qZa5mpE1+S4GTeD
         kJpA==
X-Gm-Message-State: APjAAAXUTG14q3NXiB/p8AiThDebrqDKscgIOLu2Cly0YRYZauu/LUhx
        DC++FboJ96PzMSZUiBb5pu7ohvy2rtZL/qiGtr1uDw==
X-Google-Smtp-Source: APXvYqwL0nOCeQ1S6udzXuh+ghhU4LjIum1XX4LqTvNH88uWDV+w/yIFM1p6yvSYTYxnOgbsBAEGbCkhSzweHbwigtE=
X-Received: by 2002:a19:cd82:: with SMTP id d124mr11996894lfg.8.1558010465952;
 Thu, 16 May 2019 05:41:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190430101230.21794-1-lokeshvutla@ti.com> <20190430101230.21794-7-lokeshvutla@ti.com>
In-Reply-To: <20190430101230.21794-7-lokeshvutla@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 May 2019 14:40:54 +0200
Message-ID: <CACRpkdaEJ_2bmkgcbRW+zWm16+EV9-b77xFVZiBbu_=M2sTt5g@mail.gmail.com>
Subject: Re: [PATCH v8 06/14] genirq: Introduce irq_chip_{request,release}_resource_parent()
 apis
To:     Lokesh Vutla <lokeshvutla@ti.com>
Cc:     Marc Zyngier <marc.zyngier@arm.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Tero Kristo <t-kristo@ti.com>, Sekhar Nori <nsekhar@ti.com>,
        Tony Lindgren <tony@atomide.com>,
        Peter Ujfalusi <peter.ujfalusi@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 30, 2019 at 12:13 PM Lokesh Vutla <lokeshvutla@ti.com> wrote:

> Introduce irq_chip_{request,release}_resource_parent() apis so
> that these can be used in hierarchical irqchips.
>
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
