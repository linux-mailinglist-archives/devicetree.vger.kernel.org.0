Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86573269044
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 17:42:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726467AbgINPmT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 11:42:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726450AbgINPl2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Sep 2020 11:41:28 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61CB7C06174A
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 08:41:27 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id m12so367956otr.0
        for <devicetree@vger.kernel.org>; Mon, 14 Sep 2020 08:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZELQhGU+/XtL/55nDBDugsi7ueM9gHLCZBficN7FL9w=;
        b=kldHqlgVGZ/L1PYKcsqUtEnMD/Q9aXDKd/gxzvCZ7KQiWwV87i0LUwBn0BrZo8xr4K
         FAAP45tRfhJ9KXuDoUxhjfwwcNO6alrS4tySG00FInO7DLbCqX+7pX/tDsyV5k2SI8xJ
         S7IBlUXutBVAu+M2zfeIH2IOfe1WdG2iNSOpBlqo2YR+ovIP4Lk427LLi70ohF/Ht7hn
         Jl02Kik0j6p5/XYhF/AK59H3zr4ZeAzThOSl8QjXW0ipDwsndDXaoow/H5mpu1yr3wYm
         H8OaA7NZjHv6Mq+h9JurK+57q9o3kbzIPUqme/9WuZut/XtoaemL9D87iVKfOmqNKEIp
         PB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZELQhGU+/XtL/55nDBDugsi7ueM9gHLCZBficN7FL9w=;
        b=Dp5X3DH5JOV4uEZhevkilbkeVSJWQzwwwrhI/IrtQJPAGmaLv400gmRGLxBUhPgbST
         SnXfneSqi4h57NQ47O7MCTxvC8DNXlhPRAJy+khuHBKD8AtYy2kL2SFlb7+Z9nZi20OH
         NBJc6ryuthw7FGEABTgBpxsZlOmigmp/GPaTxzRg+qaq65g9CNNNv2QSDPdckajXBK1X
         prK2qLclEJ7g9VKCAaBskJRIfP5WfpWhDBrOyucZjXyEoeJSGZHodS2eXKBc489D7d0R
         bI9nYnc+M+LswaLS56afWCvJg6iS8jZVX4y3PJj4uuFkly0jH0IRBzzjZDTGOKKSFste
         5MqA==
X-Gm-Message-State: AOAM531JK+z0EhvwfGzxlvi+ibthM4udFZPatqsKS/wnNl8u/4pmg1t5
        5kYB6UNB25YkOhbkX4IKLz1Woh6iQzbWAW+LvxoShw==
X-Google-Smtp-Source: ABdhPJxOXHJTmnoyvncutLUljQZPNcmmjD8ZnonC/r6sp0kl55kb8ZXthIsQjiYohus1Nn/JEPZJ+ZDFIEELZu6L0OY=
X-Received: by 2002:a9d:7350:: with SMTP id l16mr9254540otk.368.1600098086769;
 Mon, 14 Sep 2020 08:41:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200910140000.324091-1-dmitry.baryshkov@linaro.org>
 <20200910140000.324091-9-dmitry.baryshkov@linaro.org> <20200913111544.20a03410@archlinux>
In-Reply-To: <20200913111544.20a03410@archlinux>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 14 Sep 2020 18:41:15 +0300
Message-ID: <CAA8EJpr4JSa9+3K1txbhyw64PgKdri_WNbW3yvQSkYMkD-zKYA@mail.gmail.com>
Subject: Re: [PATCH v4 08/10] thermal: qcom: add support for adc-tm5 PMIC
 thermal monitor
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>, linux-pm@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 13 Sep 2020 at 13:15, Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Thu, 10 Sep 2020 16:59:58 +0300
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
>
> > Add support for Thermal Monitoring part of PMIC5. This part is closely
> > coupled with ADC, using it's channels directly. ADC-TM support
> > generating interrupts on ADC value crossing low or high voltage bounds,
> > which is used to support thermal trip points.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> A few trivial things inline.  Only one I'm really fussed about is
> filling in the rest of the kernel-doc. I raised that in v2.

Ugh, please excuse me. Probably I missed that comment.

>
> With that fixed,
>
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

-- 
With best wishes
Dmitry
