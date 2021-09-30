Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2350241DDB9
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 17:39:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345154AbhI3Pkt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 11:40:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345096AbhI3Pkt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 11:40:49 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 199ADC06176A
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 08:39:06 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id i25so27039107lfg.6
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 08:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=itbG1ekuBIEb0/GfpKZaQh1cYlvDFGD/ZH0SvfHSVew=;
        b=mw0aWFiS29aPcceoUVLPh3E/6s22lyYpxw41OCKkIaF2gSEeM6Gp5HPdpcz8OHou9t
         sd3WzC8QJVgq0sycSKVjhZInALiCr34KE655vDMBGDh/i2TfY07RJ1gAUyghaOnKjJ1a
         e8IdnuglciQ3jTmoOl5cL+5nniBH2EHRt75RIc6me6Vc4pfwEQJ5AxHbeVbrMKJrHPZP
         47782SaTVV3QyZdG34lW3c0BXPruHuYdDQE8xTP9feCnfx3PsPGEIjXnv1WuQR+SPUZY
         WOsWUO5fWdDeuG+zHRWw5PG+WlzZI+kzfItHXQm8LK2rPj2CF/SXGG//JtvX110pJJhT
         5pwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=itbG1ekuBIEb0/GfpKZaQh1cYlvDFGD/ZH0SvfHSVew=;
        b=Uvgm6Bvceqg19vIIwLEDzinmMx2dYKpqNK5Li2dEjDuLYMnUcSkRUrwQAGDiW3urQB
         EELaMUCewI0Ef1lS06zag2FmfrsdmOKObBtShozMEQ8okWjqmJ2WpDn/rk6HHzf/+o9f
         Co0gKSJxAW8lswjgHmO9jnASVZNQmikCqKbjrKoo3Y0aVUMFLl+WfQ2CHktIa2WBzyTN
         8QX3ckaSOdQhBrMxPiOp/RXLsYi+s/S3+kjuYSeQ+tjviuXc7nmoQPuKmNFdjT0GJO55
         73eJ+T4fllUemMtuGP32TOD5g7xDX9nvOUXtJ2QHlIv/ATuLJtUYEVMl/NzYbfv3do4J
         U4og==
X-Gm-Message-State: AOAM531VwA1XWp+xGLQMKASre5uwyVGRkEYgKyA3fUcDTAUe1EmFxWmK
        d/4eGa/MoQXpJ6in0dpgxQBrok0MNTexI62HSi52vA==
X-Google-Smtp-Source: ABdhPJxGlVSlRnqDTNPKMZ7uXq/9ATNld698ZXtbR374gYRhj4Be2kA9QICDdh6CHDCAWbJzy/h2Ti+75NGrzQaZIoY=
X-Received: by 2002:a05:6512:706:: with SMTP id b6mr6522994lfs.656.1633016341999;
 Thu, 30 Sep 2021 08:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210924080632.28410-1-zhiyong.tao@mediatek.com>
 <20210924080632.28410-3-zhiyong.tao@mediatek.com> <YVTfDJNW5Pe3iAR/@robh.at.kernel.org>
 <37eac06e20d82c0fe37a5d8e5633cbbc48d4af29.camel@mediatek.com>
In-Reply-To: <37eac06e20d82c0fe37a5d8e5633cbbc48d4af29.camel@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Sep 2021 17:38:50 +0200
Message-ID: <CACRpkdYbZi90YAFGBvZ65KD9tu9RaJt312dq5UZ9VYDuLKZOMg@mail.gmail.com>
Subject: Re: [PATCH v14 2/5] dt-bindings: pinctrl: mt8195: change pull up/down description
To:     "zhiyong.tao" <zhiyong.tao@mediatek.com>
Cc:     Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        hui.liu@mediatek.com, Light Hsieh <light.hsieh@mediatek.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Hongzhou Yang <hongzhou.yang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 30, 2021 at 3:54 AM zhiyong.tao <zhiyong.tao@mediatek.com> wrote:

> > > +  mediatek,rsel_resistance_in_si_unit:
> >
> > s/_/-/
>
> Hi Rob,
>
> what do you mean?

It's a search/replace syntax used in sed (stream editor) meaning
"replace _ with -" i.e.
mediatek,rsel-resistance-in-si-unit

Yours,
Linus Walleij
