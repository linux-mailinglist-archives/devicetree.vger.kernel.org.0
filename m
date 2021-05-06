Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A14113752CA
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 13:11:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234671AbhEFLMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 07:12:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234672AbhEFLMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 07:12:18 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B58FC061574
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 04:11:19 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z13so7245339lft.1
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 04:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wMFathXdbsaDkowJoU81vrWO0kU+VvQ+Tmhu/CZVPVI=;
        b=bgCNsJYhW0+tuUuY3mc+Rp83PxkwaudgTpOEyZ7upVhDySB2D+rc0FjXEhxn2DdYy/
         CIHPZc1OG++JyD0ctna/+pypf3gxLlTy1g36xtiduhIJPcyQO+8Zrv7FFmw5/9laIfb0
         23F180/6IUwOMm8T+mR02+NBnKmPpS8hhqappwFgu+CXBQTiup0B2I3iKnrk7GVcOlOL
         OeNIyeW/43hcqYCVCWFKV6iq0xDT/ww+n1y279tcnLP7qY6uZiUOCeS82HfxM3YCrbOC
         vgXdLbW1f3qju1XR38L1nYKCv8TFZsVLcZVlbD5MedkNm3r9Oig9N2txhap5M6a2up2L
         U6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wMFathXdbsaDkowJoU81vrWO0kU+VvQ+Tmhu/CZVPVI=;
        b=bW3bNdv6wRrwEOi9TmNksW/oIPeIPH9WYtO+VTdBgOlgNzgtwmI3pbQnez6m5eJ1p/
         JgRcy2bYlw3zls/Dx1/A6eYciGavvGIihK3wBt1IZ6J8JAN+mfE752ahGmr3TSbtweWB
         Z/Nym7A6XgH8Gs3B3eMYWKAxLtheS9wN+s+CmG3yd/ROO4WmH2eXcDb0jlK0Y/DtnKIW
         4knMB7IaRkKF2GKNMGSUxQ23rvym4BF/2nDVw3gT6TZVhP8XyisO5eK/6JW905PkMO18
         NjoqOPWi8KgzpQFT0NFKr/gHCYCghdGBtFnlCD37ulXZm+0qcppEHwdC4NqSnbXN/rg1
         IMwA==
X-Gm-Message-State: AOAM530N3ZJdLoDlluoHm2FnCJoGW9jPrydTQ/MzSW8onqUuxhPU8ox4
        k/h7mveBmqEPhVB/fEZwwnDl30PcKH3Na0N/2L5Alw==
X-Google-Smtp-Source: ABdhPJzsuJP2WMZqZGx1KzuR34RFZ6qLuUWvvsfN2huPdEnPjyrItMtfHwqU/4mFSa/5hfhmJLQ+2fWn1Peuqhxn52A=
X-Received: by 2002:ac2:544f:: with SMTP id d15mr2482110lfn.465.1620299478030;
 Thu, 06 May 2021 04:11:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210426095426.118356-1-tsbogend@alpha.franken.de>
 <20210426095426.118356-2-tsbogend@alpha.franken.de> <CACRpkda7n3VL-EpwdXDxt47azFo8Wkp67-urUy7--3D6TJs7iA@mail.gmail.com>
 <CAL_Jsq+48xVScx87WYD85Ty5CxqO3L8taMeQ7S9QwHew1+TjKA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+48xVScx87WYD85Ty5CxqO3L8taMeQ7S9QwHew1+TjKA@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 13:11:07 +0200
Message-ID: <CACRpkdaftBRUw_m9GjrqMreAF98iNTF4807LwkY9Mt7Ceh6k=w@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] dt-bindings: gpio: Add devicetree binding for IDT
 79RC32434 GPIO controller
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 4, 2021 at 3:44 PM Rob Herring <robh+dt@kernel.org> wrote:
> On Sat, May 1, 2021 at 7:13 AM Linus Walleij <linus.walleij@linaro.org> wrote:

> > Why can't interrupt support be made optional?
(...)
>
> If the hardware has interrupts, then we should describe that. It's the
> OS driver that may or may not support interrupts.

You're right of course. What was I thinking.

Yours,
Linus Walleij
