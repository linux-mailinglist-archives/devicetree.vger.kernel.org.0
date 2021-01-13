Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73AF62F4A29
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 12:29:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728389AbhAML3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 06:29:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728386AbhAML3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 06:29:03 -0500
Received: from mail-vk1-xa36.google.com (mail-vk1-xa36.google.com [IPv6:2607:f8b0:4864:20::a36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78330C061786
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:28:23 -0800 (PST)
Received: by mail-vk1-xa36.google.com with SMTP id d23so431241vkf.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 03:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SBYo6W/p5JZvDAn/qFQUoh+980h8QORlUqiOC9iDQIw=;
        b=F97GImsPv7LovRmqDSB0+LmGy8/qg5nuYKbrVVbTOmKjLBVlJGr3xHiQSy9dZwiiZx
         8z1ClPYmkK1R4FwWocCAqAAhSENQi1nIc26a+wYqXyHEqpXaRCvCRO2RlW54PJD2oJS8
         ECv1DAX9E+eseL8/HfGTI1fAksoGC6WF/8HmdefH3Ebkc/+GWiHmiPT8SRnUE82F8r5O
         ybP9j1AzOPFVUxYeXcnhFlxOXe3hNtQMNKA00ljGsHKM+C7b5/l/6pGNcUxc9QdJgXlE
         GBMsawzmK/eNTp9K0KNcvBZk9YC6kK3GKWPG+v/uhTjckwsLEdc/FudCd1V23omgWwQl
         kXYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SBYo6W/p5JZvDAn/qFQUoh+980h8QORlUqiOC9iDQIw=;
        b=f0sHb/bS02C1B3faW0g6uQQF6hyquZinNsrJI59c8nerTS8HgteII0CqIiNxV/xCnI
         uBXI/SxuXydAn9SatqOvhdxNjOfQjUrgjbudBOhofjARZ/YZP3NheOb53xhPFb/mUoBq
         LR8oXFcZDwIRLdJZ26U81nKdAVtT9dtHF/H/6KOCYLFSsKPy6TeHNcN6wyBAhBXcjC0m
         D/icdsIzHw+FfTdL260j9sYmjKd+TmFSwpIdf6oxfLYVq/vhFwKGrzmRRklVVIAp6vY4
         vsiGvzYpFwInLVkjR6W0OxagQZ9Uy8hByGyf98+r4rTp/pUR6LchjS77X3i05Qq/Toiw
         0u7A==
X-Gm-Message-State: AOAM533fmc+9ZpyFmKRwcL6ML20YzVDxiCLNPaLUgp/QVz82x2RezGue
        7wmWgY1MRAu4Q2sJ+x6WebYeSS8Oa6YNhFtWGNZkuw==
X-Google-Smtp-Source: ABdhPJybCIKTJASUutX1qGCq7mRxFP1jaeKd4zmFJeMiCkz2FmVuxo081IaEVXn0JDNL1EvE8aRX8tzZuazzfVsTeZI=
X-Received: by 2002:a1f:4582:: with SMTP id s124mr1483220vka.7.1610537302692;
 Wed, 13 Jan 2021 03:28:22 -0800 (PST)
MIME-Version: 1.0
References: <20210107055457.14948-1-a-govindraju@ti.com> <CAPDyKFp89zPwr-SS9wgR6C5RM+KhSLWbkXivxAttRqTxtiVGDQ@mail.gmail.com>
 <9ad5f3a3-2175-8f43-2481-7bef17828ce2@ti.com>
In-Reply-To: <9ad5f3a3-2175-8f43-2481-7bef17828ce2@ti.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 13 Jan 2021 12:27:45 +0100
Message-ID: <CAPDyKFpTSME=NTZdDUq3+tLpKNdzoBKFZ-B_WDyWzLqNOsx0EQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mmc: sdhci-am654: Add compatible string for
 AM64 SoC
To:     Aswath Govindraju <a-govindraju@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Sekhar Nori <nsekhar@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Jan 2021 at 12:20, Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> Hi Uffe,
>
> On 13/01/21 4:26 pm, Ulf Hansson wrote:
> > On Thu, 7 Jan 2021 at 06:55, Aswath Govindraju <a-govindraju@ti.com> wrote:
> >>
> >> Add compatible string for AM64 SoC in device tree binding of AM654 SDHCI
> >> module as the same IP is used.
> >>
> >> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> >
> > Do you have a corresponding patch for the driver as well? I would like
> > to apply them together.
> >
>
> Yes, I do. Here is the link to the patch,
> https://lore.kernel.org/patchwork/patch/1364589/

Great. Can you please re-submit them together to the linux-mmc list,
then I can pick them up.

[...]

Kind regards
Uffe
