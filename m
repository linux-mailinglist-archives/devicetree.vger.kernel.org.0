Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B203A2A04B9
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 12:52:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726318AbgJ3Lwv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 07:52:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726240AbgJ3Lwv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 07:52:51 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63121C0613D2
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 04:52:43 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id f6so2886979qtc.7
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 04:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=+5h8uGAWLKMJPxsKSBHFnKRvgJ1/8UrMiZ99ArnMrJA=;
        b=T5PMxHHhKjVVOAZLZj9tznmOgO5a8RNT6nFtO79RdHLj0Pg+Qhg+XzBx2y/gYFOMyr
         Q9qtgI37UAo5dbmxjtVCym0gSW8haDG4CPDCYdf5srLDok4MCvio1sbfARmihoq3rsuv
         oYoXnXfJTcsF6mnX2jHUpd8Q51fPUmDJqA97E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=+5h8uGAWLKMJPxsKSBHFnKRvgJ1/8UrMiZ99ArnMrJA=;
        b=gCoLD9zOWDhPOHCILfYDRtZd2YZkmX8zdHzgO2YfICs/Tv0BevDqnhrDRV5nE/9wvU
         wCDwPnyOUJ+ISmDM7w6jOuIe0RpiU7q4TPZvhqwaGa9NOPCbE0pWsmVwieMvowEs56qp
         hrz5UxGvUSBAuf9nywNZYN3hOlhwNedRbjRDSasYZ6Jk+q+Wc42XMzvPAYuTs4zioFAF
         KYnSq78ZGoj/6BA2tcgW3GTKSeoNv6VNA2pi0lUtYSmyPV/M42GH5vXTYMmMsF3oy80D
         yC/HzCQFB+Y4hYYGYxS2xTzpx729zTeeC/vWWJyiCkrNs0OjGKCX0E6paQPtZU6AsGSQ
         4RDg==
X-Gm-Message-State: AOAM531MnPVyswTc/N6gPifQZhr8bCrkyG474+UUcocp7CxB+BpDJ/sC
        W0AywUcSfjqG+VmpigiImd/Q2SLGpxQFHuuJ1SG9WQ==
X-Google-Smtp-Source: ABdhPJwLO2y7F/la84e25j+8RAOK24xd1w93sjXGQQQ5Lt0KhcSrOTGTUA1lk6O6/uaREE7b2D38qQfMsLpESwGNPkU=
X-Received: by 2002:aed:2125:: with SMTP id 34mr1670365qtc.249.1604058762193;
 Fri, 30 Oct 2020 04:52:42 -0700 (PDT)
MIME-Version: 1.0
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Fri, 30 Oct 2020 20:52:31 +0900
Message-ID: <CAFr9PX=Ac6yzR31uzK=6WmnbznUm_FzVRs+v2D3ONfX4UCY_QQ@mail.gmail.com>
Subject: Acceptable format for clock cells.
To:     linux-clk@vger.kernel.org
Cc:     DTML <devicetree@vger.kernel.org>, Daniel Palmer <daniel@0x0f.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi all,

I'm writing a clock driver for a PLL unit in an ARM SoC that I hope to
wrap up and send the patches for in the next few days.

This PLL unit has one PLL and then a series of dividers. Then each
divider apparently has between 0 and 3 dividers coming off of it.

As there is no documentation for this thing and I'm not sure what the
logical output numbers are or even if I know all of them I was
considering making the number of clock cells 2 and having the first be
the first divider (i.e. the divide by 2 output would be 2) and the
second cell the chained divider or 0 for no divider.

If I should just decide the order of the outputs and come up with
indexes for them would it still be ok to nest them like the first cell
is the index of the divider and then the second cell is the index of
the chained divider?

Thanks,

Daniel
