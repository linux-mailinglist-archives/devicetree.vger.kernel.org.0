Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C25833FF4
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 09:21:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726742AbfFDHVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 03:21:18 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:36982 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726697AbfFDHVR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 03:21:17 -0400
Received: by mail-ot1-f67.google.com with SMTP id r10so18618942otd.4
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 00:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ij+iH+M/8ZGiIrnkdLwppmtGhbFWZZmZrQ33Tj+/Mrc=;
        b=yDQg+Hbw5mvBGb4xUoz1ag1VKA420B8yfXatcUYRBXoujf5xxVROodAkEMzm8vGAC8
         +5K8jcn4Ao8NvD4JFJ30tPa4FxPLtsvjTiDEc4A6xr1qls6+yHGTl34nS3GGXTRNMG1a
         QuLGgwjRM6Qz0d5ZSf4t9cRe5xrRzXB3PNGSy2KeYeNMwJp63r9fUy+g10j49J6JSvXU
         c9Zq14VEyHF4ckszQM1axPb9e/84ZtxZo00GDS7DPGq1MNkOklXhVUMs6jXt630id1xi
         tdmTAjKLSKqQCkw9nT+f/agp+b09xGNzMKcY1pXM7JoxiZDTXAbAf3QLH18CdX6IBmNm
         mWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ij+iH+M/8ZGiIrnkdLwppmtGhbFWZZmZrQ33Tj+/Mrc=;
        b=D+ajmRQvY29JW9BCyiFC22wqIznaC3wh0A8z/Ze2Mv/8I/7U+P3f55160HQnR9vM7X
         IoIwxYGxytByCzovaRuxTBPDi7UyoXCnXuVEvNeOXk8Hq4BzLjKli8UvS6uKS9nm4LLX
         djYgzHi1Uebdzc7fLd68yGK6OzVn5VKjxQz27DeDza+FhL41sdBSWvI6l2xT+qcXTKJw
         qyQJD9nePBoiF6/dm5msaFexIa8Oi1ZCoSo483f37HCv9pkIC6TBY37rxs90gS6kOa41
         xluQ6h3abfSPAWEIyHz2bcX+lO8PsOL8F9as2w6jokTdGQCwKV5EiHinDO89w8V4LCx4
         2cxw==
X-Gm-Message-State: APjAAAUYn29c0h2Ku8n4fXcUON3zBwfurqyFq+zpuAtIi/iSX40kg9hX
        h2ZFeOiQd2zGPFsL/kVszFIyi8ToiSProQh+4lB13A==
X-Google-Smtp-Source: APXvYqzBUAiuGQ5CCX7L+dnJzxsTgp2SrfkxqeAprdFIag5gSPpDu3rBRcC1fZzqHqLByA5H7ue4e092aXkMKuv1KJo=
X-Received: by 2002:a9d:10c:: with SMTP id 12mr4258825otu.123.1559632877063;
 Tue, 04 Jun 2019 00:21:17 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org> <CAMz4ku+E=kFgWrvm_wzM2XQQUyYZhc5uokcGEAEbEKpNAYZQ7g@mail.gmail.com>
 <CAPDyKFoZmxmRYwL_m60=DK9J5+beshEsLw5D=FySzRfYFdsb3Q@mail.gmail.com>
In-Reply-To: <CAPDyKFoZmxmRYwL_m60=DK9J5+beshEsLw5D=FySzRfYFdsb3Q@mail.gmail.com>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Tue, 4 Jun 2019 15:21:04 +0800
Message-ID: <CAMz4ku+7W7LOxr_+utuN5-B8z=xGkrgdVWnmeNJrnFb_VWfF6w@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add SD host controller support for SC9860 platform
To:     Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Adrian Hunter <adrian.hunter@intel.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        arm-soc <arm@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 4 Jun 2019 at 15:14, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 3 Jun 2019 at 10:42, Baolin Wang <baolin.wang@linaro.org> wrote:
> >
> > Hi Adrian & Ulf,
> >
> > On Mon, 20 May 2019 at 18:12, Baolin Wang <baolin.wang@linaro.org> wrote:
> > >
> > > This patch set adds optional clock support, HS400 enhanced strobe mode support,
> > > PHY DLL configuration and other optimization to make the SD host controller
> > > can work well on the Spreadtrum SC9860 platform.
> >
> > Do you have any comments for this patch set? Thanks.
> >
>
> Seems like the series is almost ready to go. However, due to a few the
> minor comments/questions from Adrian, I am expecting a new version
> from you before applying.

Okay, I am preparing the V2 with addressing the minor comment. Thanks.

-- 
Baolin Wang
Best Regards
