Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D22FC460665
	for <lists+devicetree@lfdr.de>; Sun, 28 Nov 2021 14:19:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357443AbhK1NWp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Nov 2021 08:22:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242483AbhK1NUo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Nov 2021 08:20:44 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE390C061574
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 05:17:27 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id ay21so28296066uab.12
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 05:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7whuhitVqPnZipfah97TIBIyag3vXAwUvYkJpquBSrU=;
        b=Qut2xFPsrGNP7QzIatUjPh112CGOyBKAFtaiKWt7oknS3e3elMukv8TEerX8+sKXPf
         mJYzduV+T784qBHP2lLUgIaYzdJSsnKE6BiBPYRknHzOw+qlCKEMpnZrrqde/g6V3ZrI
         D/NsTx2ampFgtvcjWZLgyhsdxucTEn3IFIGH8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7whuhitVqPnZipfah97TIBIyag3vXAwUvYkJpquBSrU=;
        b=AxXXEmX2Mb9SnbaF49/ovxzMcN+o8wMX+iDZc3q/TUbb3v0Qq6oZvnjojb6sh5uUXs
         imtI1MtT0wrDhfVM4YzCctzv8MIhC7WbURgXQS+2NQhteG1mM01lbr13J5PQsSnb/b00
         0gOZDO2Z/5eGU61rihu8ckZz+RYGVzwywmCaDhHrpVsxMoP1ubx4dGs52hjQz0huMDrT
         eAzXz0Wxx9VsExDPutKzZCd95SCTkAiJi5Py8T81ubkllpCO8arU1S8CNShKYLSVBIyc
         n5l12f+lnbsnR+36ndNBSrQBnPba9pQVV/eNks0MKCC0MktvJkfL7YX83MtdfZxwrzQl
         xdRg==
X-Gm-Message-State: AOAM530pNSs4Z18QlaQN534F5CEIcy2qXwUQ2x42tOM5aypJc8JwE34L
        IiC8SQj8cYKuOgt1HuO7j54uXCslKBcuPlyTBatPOA==
X-Google-Smtp-Source: ABdhPJyZxe5YIKk6QpWHAe4AORoq3DVeSfu4IYXAhafnMShxVmuFujEF374iQEYwpRHvwBOmiIsTOa1Yeask/tphui0=
X-Received: by 2002:ab0:6ecf:: with SMTP id c15mr45724445uav.113.1638105446637;
 Sun, 28 Nov 2021 05:17:26 -0800 (PST)
MIME-Version: 1.0
References: <20211126202144.72936-1-romain.perier@gmail.com> <20211126202144.72936-7-romain.perier@gmail.com>
In-Reply-To: <20211126202144.72936-7-romain.perier@gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sun, 28 Nov 2021 22:17:16 +0900
Message-ID: <CAFr9PXmpKrcPXL=EdL-uGu0X3nZBrAVcBSDqSbaDEvRhE6Abiw@mail.gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: mstar: Switch to compatible
 "mstar,ssd20xd-timer" on ssd20xd
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Sat, 27 Nov 2021 at 05:22, Romain Perier <romain.perier@gmail.com> wrote:
>
> This defines the real oscillators as input of timer1 and timer2 and
> switch to "mstar,ssd20xd-timer".
>
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> ---
>  .../arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi b/arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi

I just noticed this during testing. I think we should put this in
mstar-infinity2m.dts. All of the infinity2m chips use the same die
from what I can tell so if the ssd201/ssd202d needs this then anything
else that includes mstar-infinity2m.dtsi will too.

Cheers,

Daniel
