Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A64C745F90E
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 02:23:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345342AbhK0B0H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 20:26:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344519AbhK0BYF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 20:24:05 -0500
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com [IPv6:2607:f8b0:4864:20::a2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EC17C0613F3
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 17:19:26 -0800 (PST)
Received: by mail-vk1-xa2a.google.com with SMTP id s17so7022758vka.5
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 17:19:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a8k8YIl0KwxKAbv7lkp1/Z1CPAjwJPHGhn37WWS+cww=;
        b=pAsmF4AZe+zj7BVgqLeISZmMILka+uPd6s6bh5BGMJbBV137R21fLSn6wnMCCJUBKw
         95s7resYPHBMAwnfgP6NXtH9NKDSxlNqSvWJYGVOPKGwaK6rcyr1yfutS9XdMi57bPJJ
         hfmwXKEOk/wXaTZM7hMs3wP/D0Jlb+DaoHKKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a8k8YIl0KwxKAbv7lkp1/Z1CPAjwJPHGhn37WWS+cww=;
        b=MTZtMecyOxklLormLDHvC4cIbNF1zoo5nGbH0V2nyevb0/QBqNOHfL8nuU9sRgE+iN
         JuPOAlhKUpVJsCeRPUDBHHP/qOCx6y11hgsQPyTqdiqydrkW59HLXqFmqwXOgtDad/tj
         yoqBu1facZSNJ+M5uy0p+WIyqIUg7+1cXpeZ+qUgsm1nMZWab7ZGxbOMioGvrVPUFpiI
         F/8GiLJcJrEces0gd/WxPLRRkdqF7Ra7hIAMgQ9H3OMp0pboWuUDCArY8VNNyv7t8wOC
         LwYHFP5qPr0cPklU8f5x7m4XwHDmVWGrIG42fzo7RSHPHm8A/h0MfJcYNu680BKr2CBl
         SBFg==
X-Gm-Message-State: AOAM5326X+KKOoIKaWNAqyeNJBkSs77yAt6tFanAz+ZhCuP/yuD/b2Fm
        nPT9dJ2mAkb+t/kvLHC0VJCoTxdtz8PXLAP2LU2tpg==
X-Google-Smtp-Source: ABdhPJxRgc3fAgj4dzNgKTVTLJ/FU1/6MfnUJ6e2LyF0pw0WKfhsJzGdYT06JFaQrPnCg2sqUg2R+rJ0BQZG4DlTojU=
X-Received: by 2002:a05:6122:2ca:: with SMTP id k10mr19238644vki.39.1637975965759;
 Fri, 26 Nov 2021 17:19:25 -0800 (PST)
MIME-Version: 1.0
References: <20211126202144.72936-1-romain.perier@gmail.com> <20211126202144.72936-3-romain.perier@gmail.com>
In-Reply-To: <20211126202144.72936-3-romain.perier@gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sat, 27 Nov 2021 10:22:14 +0900
Message-ID: <CAFr9PXntRoxcJJThtxUGs-_URXr_LHwC8-FPDBzWehRKfuC5zQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: dts: mstar: Remove unused rtc_xtal
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
> The rtc device node use an oscillator @12Mhz right now, namely
> xtal_div2. rtc_xtal is no longer used, remove it.

Drop this one. We will use rtc_xtal eventually.

Cheers,

Daniel
