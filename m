Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D651526BBC8
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 07:26:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726128AbgIPF0K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 01:26:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726093AbgIPF0I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 01:26:08 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1612C06174A
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 22:26:07 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id x2so5331157ilm.0
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 22:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BhiY7Y2GDkmenr3RW8iCKeFZ464yhM9aptv5gXYqCGU=;
        b=iTL5r5EuBx9aGAfOuyJXdtu034fcXzIWs8ucYLZk+fXWI9z0eRNlfFWyZznLYZcV0b
         g8DS+T0jgryHAUTeN4hhM9e4ziCexjJiCmOIWcnV/4p9ddpOxdJXmYb+W9sMK3BlJ1Sg
         qLrGcXRa255k6AhXlk8LJTfft/pVtcDF61LeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BhiY7Y2GDkmenr3RW8iCKeFZ464yhM9aptv5gXYqCGU=;
        b=rtRHu2NbbxhEuWKh5M03sIETemQHE99o5o5sGqy77ICqzR3yofcOnIiwuBsGTOFWCJ
         lfW5N9N4QFLqB1WcFe68A0yZg8fYzz9peexoNBv0R93ApxUtYE0X8jX9qxsniEcA3aXK
         2/1I+wIPdzXd0BTc6c4O0SIt/nK71GFVm6k1J+/DD0Q+7hzZWRU9wJvWAsTpnuviijea
         vyHxpTdUkHO42rZhRW4HD6KPIZisuPjfX51gXX7KZEzBVpBGuh5BGQ0O7EU9dpbiaSma
         Fj+eoqXrJgWGFKUyOTd/ATd5pNi7h3nJ7aePYmutsMtuQ7V67KmUlQvxkUwojurprGKR
         I6Rg==
X-Gm-Message-State: AOAM530lQMzAWK3M/7eQwqb84dZZIKxGfZadZHAtlq6w7YxJEppqItQh
        GDA831aNJ7fr9poizrVOJtXpRsvjJmAfv5ncLoVBXQ==
X-Google-Smtp-Source: ABdhPJxT8z7WIBS7kuiEGh3KSqXqCOJVa+EVNITfmaz6yxcucn99yBZvsWJeomWYLsO8IIK/ntQpfj3QX1Wb/reJfbM=
X-Received: by 2002:a92:5f94:: with SMTP id i20mr672574ill.106.1600233966837;
 Tue, 15 Sep 2020 22:26:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200727074124.3779237-1-hsinyi@chromium.org> <8aedcc7e-fea5-367c-e3a8-8a013cf629c1@collabora.com>
In-Reply-To: <8aedcc7e-fea5-367c-e3a8-8a013cf629c1@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 16 Sep 2020 13:25:40 +0800
Message-ID: <CAJMQK-gA+N16RCeG7Tc+pO04DLNYamqDH_pFj7t+WKww5_M+Eg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: elm: Fix nor_flash node property
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 31, 2020 at 7:21 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Hi Hsin-Yi,
>
> Thank you for your patch.
>
> On 27/7/20 9:41, Hsin-Yi Wang wrote:
> > bus-width and non-removable is not used by the driver.
> > max-frequency should be spi-max-frequency for flash node.
> >
> > Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
> > Reported-by: Nicolas Boichat <drinkcat@chromium.org>
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>
Gentle ping.
