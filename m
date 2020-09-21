Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACFC2271B22
	for <lists+devicetree@lfdr.de>; Mon, 21 Sep 2020 08:54:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726265AbgIUGyp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Sep 2020 02:54:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726011AbgIUGyo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Sep 2020 02:54:44 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6DFEC061755
        for <devicetree@vger.kernel.org>; Sun, 20 Sep 2020 23:54:44 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id j185so7494804vsc.3
        for <devicetree@vger.kernel.org>; Sun, 20 Sep 2020 23:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mtQqkf0DOg7SDhcAIXUbdE0JhrrbIB/Y7A8QqESS0bc=;
        b=YBxfWLO9xyiBxANQCD7TGEWzgQnCUtV/3967x5NsoR9xd+xMaC5dtXLtLl5dA9JR4e
         HrNSMTXNiwdIR1l1WPg3Z6LYpMdLk1dnXRJvSEBcnilzj696HtkRuH35V8kl6cD9xoMV
         IWBWYH69TRpKUnGsnuBl8MCPPLhODstYnLtqk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mtQqkf0DOg7SDhcAIXUbdE0JhrrbIB/Y7A8QqESS0bc=;
        b=MdnL+ut9jodvuGyd14VSLiO/4HaVZItcQtKWXFX7jqPY9K2xRuya4UdnXksHNhImCv
         0sR8+CmtvU7vI8E7h5YMHQPqdsgtrRxnn1pKew+cvRHN7DlPdDtexKqf7TUWXVhoMsaq
         hhybOXvJgIwp0QloNHBUmWkmrZuvuOGWjjyEU5EO3Wjss8P2tZWaWpgZ+9r47K+6l/W1
         4IqcxeWPe9/nBATMKLINOhZTh5l0EOyuDeXzMJq8fXN0r//xX02mV84jwOLrYIIyoY4/
         Qpgbv8Y+YTNAwrJkvaNb+1TO9FAU/nzAfNfCC5bqiBCWfd56Kfhd3rZHZhY/tHNK+fVd
         ozUw==
X-Gm-Message-State: AOAM5319+wPipY9GAkgNeYzCxEZd7hDqyt69yNpxuRGsaJ452yGqTtWQ
        U4N1kIazkPSA5dxuXmAeElNh4ZuynG6spJkNWPee2A==
X-Google-Smtp-Source: ABdhPJxJMZSII0e7AryQCVgZiyLLcBbUBiHsQPI0JYgGmO2/Nidf+iXorrmdf5Tda6KXV0TQQMPb75c5vYVzyh7WnqA=
X-Received: by 2002:a67:db87:: with SMTP id f7mr17600470vsk.31.1600671283955;
 Sun, 20 Sep 2020 23:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200918083124.3921207-1-ikjn@chromium.org> <20200918162834.v2.4.Id1cb208392928afc7ceed4de06924243c7858cd0@changeid>
 <1600529204.7002.0.camel@mtksdaap41>
In-Reply-To: <1600529204.7002.0.camel@mtksdaap41>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Mon, 21 Sep 2020 14:54:32 +0800
Message-ID: <CAATdQgBOdEAFvsf-mukzmU0Z9MevMzPvtnuX2mJjLGU9VivDUQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] spi: spi-mtk-nor: support 36bit dma addressing to mediatek
To:     Yingjoe Chen <yingjoe.chen@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-spi@vger.kernel.org,
        linux-mtd@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 19, 2020 at 11:26 PM Yingjoe Chen <yingjoe.chen@mediatek.com> wrote:
>
> On Fri, 2020-09-18 at 16:31 +0800, Ikjoon Jang wrote:
> > This patch enables 36bit dma address support to spi-mtk-nor.
> > Currently 36bit dma addressing is enabled only for mt8192-nor.
[snip]
>
> Do we need to set sp->high_dma when we have >32bits DMA?
>

Yes, to do so, you need to add new compatible strings if there are
more SoCs support >32bit other than mt8192
or just ust mt8192-nor for binding.

> Joe.C
