Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C96A96B81D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 10:23:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725992AbfGQIXc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 04:23:32 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:42201 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbfGQIXc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 04:23:32 -0400
Received: by mail-qt1-f193.google.com with SMTP id h18so22439543qtm.9
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 01:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TwgvgwFAr9ZbQyJY7OLlrukFEYAp4mCTYSJJ8JLqJDI=;
        b=LqN/2tU7/8cN6JIMAfFFhaNTFqe+tnHiecppE1yZpQYHqyUZs6w7PtqAVb9/wYk/DJ
         Hw/P3qO0ZJVGfNgBuBk6uo3jshv+LhvpPWUYMfp1IXxQzEapsQzDgFmwlHIFT2oLmIBF
         oyvjcWSD0BYEqkAo1SBqP+RpM01tuQWnxjfS6Prol/I42c65szJI9OTGnlxrneHDZGzw
         KAMJh3jhtDtBQH/Pkf08SsUyP0YbNo8vCG3EYMpxZHlmqfsEX9j0KOZilAtJJ2ckYWKH
         ZwZWymxn7ua/IvTKh704LOQmKeOhjLqmwkksCaqfAFaMEQ9pCSUfbYPcy1xWmYOb49wA
         Acxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TwgvgwFAr9ZbQyJY7OLlrukFEYAp4mCTYSJJ8JLqJDI=;
        b=Wyt36uYMSgmVAp2DCW/DFlhgMbtkY2cAQQVq332o0TOB0nTLanZOgbrblHRNi/MP1b
         bJ0ITlvaae/iih0FPeNFkFuaGTUCJOkvGOhd9HP4HVQxB7Xjvpc4DIOfdSIIFSV10kk6
         EGS793xrRGAtluKMRYyFqyWPj6UarQv0kdRBujaJ/bivW8E/jiYfteJtPGM9HMIlGWxC
         HjhZJK92oegbuK32YRO002W0feNi/wOhVic7CnylPdqlhTGOTyhxL1+Scdcdj5l7L+yM
         MzIXCx4al3NYdss0pJg2pCWDA4yQHldXuleveezPbViVwRLyEJBx5pHhRf3Wj1oEyfoJ
         SarA==
X-Gm-Message-State: APjAAAUxCX88m+dQKU1J9V9Id74S+yClxpIzubXJCea2dgzzH6wkX+ZN
        wItLDESm9emRSwtG2H9bVfJyCw6HsyGb7S2rsDPOiA==
X-Google-Smtp-Source: APXvYqz4uw+BGfWaRI1pKAcWBiBCJ/F+kVqI+JVx9Yb6o8jGx7Ac6x2yJWAUJGKhx7FGXMrX+H6mpEe+Xh9h5nHDjeA=
X-Received: by 2002:ac8:f8c:: with SMTP id b12mr27121586qtk.381.1563351811577;
 Wed, 17 Jul 2019 01:23:31 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-3-git-send-email-aisheng.dong@nxp.com> <CAOMZO5CMM94rAOryvfmHpuAsJnCRj-98kX3rfiZSn5EZt_c0kA@mail.gmail.com>
In-Reply-To: <CAOMZO5CMM94rAOryvfmHpuAsJnCRj-98kX3rfiZSn5EZt_c0kA@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Wed, 17 Jul 2019 16:14:35 +0800
Message-ID: <CAA+hA=RknQ+EbZ258t-X_VktBFKs1Y7vBn_KTMkbyQAFW5k-Mw@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] arm64: dts: imx8qxp: move scu pd node before scu
 clock node
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
        Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 17, 2019 at 3:26 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
> >
> > SCU clock depends on SCU Power domain. So let's move scu pd node
> > before scu clock to make it probe earlier.
>
> This looks like a fragile solution. Shouldn't this be handled via
> probe deferring?

Not like a normal case that there may be only a few devices may get deferred,
for qm/qxp, almost all the devices (~100) may get deferred without
this patch. e.g. scu clk, lpcg clk and all other devices which depend on clk.

So i think it's really unnecessary to do that.

Regards
Aisheng
