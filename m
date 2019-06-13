Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A595944828
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2019 19:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729485AbfFMREu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jun 2019 13:04:50 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:34275 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729478AbfFMREu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jun 2019 13:04:50 -0400
Received: by mail-pf1-f193.google.com with SMTP id c85so12237221pfc.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 10:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EnPkPuY0upC8b7jCW297iBQZhVtXmFo88c6fyE9w1Gc=;
        b=h2WsuVwVp36pqc7BZuctAOn63cTvP51Hw5w3oBdwJeES1hkGgRdqnS1YcuZ9P6YTA6
         fql65HAXNTeXWN/IB5NZAanRhhSXXwsapVsfFEZSfBcTFjPiLTlKYxZaHQxK19qDxyG3
         BhxVvxEucyUVpsqCwKw2P5XM3VM2gap37ZMYMnrGGSrxaSF3DE2CZSL374Gl4xDUFwhn
         37Ckn0WqGBuSFv+XOeqwbZjPy2lVp/nEzM1f8s8zr42ZUemBl7XcEfwbWdf6xtatu0kj
         h4OI3FyHV6L39toMChIwFos8XNcAu7LekDrbld3atSp0grnI9lm6Ztoq4HR9aHcEzzVB
         +jIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EnPkPuY0upC8b7jCW297iBQZhVtXmFo88c6fyE9w1Gc=;
        b=FRE3YLLVDJ0vNxTqgYvU+zSePVc7gotmMDW5DLv9GrcP7v+5eQcJXnWZ2E7bqaeeUW
         o/OV1OF9w5DqA+xeRzxLZ2GnGg3kRNJftyo3+Xi2kYd/6UrbNzSBYyX5JbJvgFUnsOoJ
         GqvTjTN/+ZrEse5ZvNKJXLa75tLG5zixpkdfqEek4W8CdrrG7AJqWLnfTjcNLiTE91rc
         4/36N8nWQeuY8QB1fbmVAPHEPCMPq1oKN+x/x8YMax7qsQDyccQiwC2tVtVmPylbLmOR
         h3a3G77Yrto7oBq3O461OS8nGlJf0CPE0G0dMT3A9vhwfaZzT0xzPnA+koQViBM24oAj
         EoPQ==
X-Gm-Message-State: APjAAAVvYVuF/z9NRtuVvuxsZh2QHETI2idhObAenKEkNpEDCCNaXiF9
        sWR0zEs5890dC4iSxe1+IDY/C4wEiE+SXjS7NjmrrUCq
X-Google-Smtp-Source: APXvYqxcMn+Xp7KK1rDTtjbiF/s9/qMAS0Od0rblM/JIyaXggdbRc5s5/qqZIPwozR39yiq+kN0sCF0Q4lr+B/T1BU4=
X-Received: by 2002:a63:158:: with SMTP id 85mr32252700pgb.101.1560445489065;
 Thu, 13 Jun 2019 10:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <1556736193-29411-1-git-send-email-Frank.Li@nxp.com>
 <1556736193-29411-2-git-send-email-Frank.Li@nxp.com> <20190613112320.GA18966@fuggles.cambridge.arm.com>
In-Reply-To: <20190613112320.GA18966@fuggles.cambridge.arm.com>
From:   Zhi Li <lznuaa@gmail.com>
Date:   Thu, 13 Jun 2019 12:04:37 -0500
Message-ID: <CAHrpEqRZ0YL9SFk6o7iebJ+diJVMTtyba_9GtujL7H7e4G8qQA@mail.gmail.com>
Subject: Re: [PATCH V12 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
To:     Will Deacon <will.deacon@arm.com>
Cc:     Frank Li <frank.li@nxp.com>,
        "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 13, 2019 at 6:23 AM Will Deacon <will.deacon@arm.com> wrote:
>
> On Wed, May 01, 2019 at 06:43:29PM +0000, Frank Li wrote:
> > Add ddr performance monitor support for iMX8QXP
> >
> > There are 4 counters for ddr perfomance events.
> > counter 0 is dedicated for cycles.
> > you choose any up to 3 no cycles events.
> >
> > for example:
> >
> > perf stat -a -e imx8_ddr0/read-cycles/,imx8_ddr0/write-cycles/,imx8_ddr0/precharge/ ls
> > perf stat -a -e imx8_ddr0/cycles/,imx8_ddr0/read-access/,imx8_ddr0/write-access/ ls
>
> I've pushed patches 1, 2 and 4 out with some minor tweaks to:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf
>
> I'll leave the actual .dts change to go via the soc tree, since last time
> I took one of those it just resulted in conflicts.
>
> Frank, Andrey: Please could you try to run the perf fuzzer on this before
> it lands in mainline? It has a good track record of finding nasty PMU driver
> bugs, but it obviously requires access to hardware which implements the PMU:
>
> http://web.eece.maine.edu/~vweaver/projects/perf_events/fuzzer/

Okay, how long should be run generally?
I need make sure it can pass without my patches at our platform.

Best regards
Frank Li

>
> Cheers,
>
> Will
