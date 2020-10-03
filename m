Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 270612825CC
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 20:11:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725818AbgJCSLf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 14:11:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725804AbgJCSLf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 14:11:35 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBF3EC0613D0
        for <devicetree@vger.kernel.org>; Sat,  3 Oct 2020 11:11:34 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id 67so1620273iob.8
        for <devicetree@vger.kernel.org>; Sat, 03 Oct 2020 11:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/11Kqej7x+AmPwY4cEbRQS+S14W3PzccQu0xqXXpXzE=;
        b=FoVwY3Vyu0Q1y/y3dlKhjejO418QVRDT3/ThgZfQGEifvSUg4T1ZU/+k3ErtRgS+YM
         t+9YhmAiQFKpBZNPx694vR5lPliqDHZA1bhlmtbWNTPX/WETNZUR4T1oZ42ueNDPyo03
         5vLt9rsV/0B7IKWcgcfJ6/Cnors+F7Uem1oYXcRcEfwp//G+geW99YDYQtlH7F98kf1/
         fhOjD9FCdPH1Y6AtfL9V+f/7T1/wMYfN0EuIz1St4LCqdZWDl0eSuMuk97nbC8w7zR5o
         Deu+AKPhLmtsx9W4ZIBQNoCuCwLwzkRf0AwaulEnbMyadxTs6+fm7iigtWsuVlty9+RA
         DVUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/11Kqej7x+AmPwY4cEbRQS+S14W3PzccQu0xqXXpXzE=;
        b=XVH0QDeZlBOC4BujuebapazswGec1kmO741hkNvHtycv8jLClGVc9xgZbf/ycRsVJB
         it0poFVTLPaIpaT0+oclAxo9SLqDZ6JHZTQLO/tMjm7muT09c3zqaHqfNzMck04zPhZ0
         u28M1ePPlOuK3rKhAENqXLqq0CC0+9YDLNriu8Jysx77l1yZAyD2OHevRehqCE/RvScv
         /4S+Ho9lkAP1VWhEqevZOOycvg70xuzERAXxrIa+rn44VD6mIL4iC9CHc9IWo94rtwuj
         3NI6lOH+HpPaAPb0kc8vcpCVeo3oG+FD5w0x+H+fRb8p/SSLfPpwyYnaKiIpwWKWshYW
         +W2Q==
X-Gm-Message-State: AOAM531HqRAjHjlezmRIgcGbwbAOQ2jPTFOn+E5Hs/AwdJA/FP6IdJdk
        iikxLaKqdOnzttW5JRzOKuU84l6p/y82y1LtbAs=
X-Google-Smtp-Source: ABdhPJys0Q0FK6Ad+R2rbHC9RcfrCprWA/PsQ+bsv5DuunOtB842ChtrybCmDM/Ql3GQic5DrW0culf9Tjt0Sschxq0=
X-Received: by 2002:a5d:8755:: with SMTP id k21mr6180505iol.142.1601748694174;
 Sat, 03 Oct 2020 11:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <CAHCN7xKjWEwQr9y0QLrR6KVT=ut=v=coqt4beAvrz1kQSGbX1g@mail.gmail.com> <ae0fcb5f-3df3-aebd-c239-6683438ce374@denx.de>
In-Reply-To: <ae0fcb5f-3df3-aebd-c239-6683438ce374@denx.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Sat, 3 Oct 2020 13:11:23 -0500
Message-ID: <CAHCN7x+fYfxVUaAQjBBWJN4CJ6OL6KV+=vRpjVV2cW+ZVv9dPw@mail.gmail.com>
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Marek Vasut <marex@denx.de>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 3, 2020 at 1:08 PM Marek Vasut <marex@denx.de> wrote:
>
> On 10/3/20 8:01 PM, Adam Ford wrote:
> > On Wed, Sep 30, 2020 at 10:50 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> >
> >> Hi all,
> >>
> >> this adds power domain support for the i.MX8MM to the existing GPCv2
> >> driver. It is not complete yet, as it is still missing the VPU and
> >> display power domains, as those require support for the BLK_CTL
> >> regions of the VPUMIX and DISPLAYMIX domains. A Linux driver for
> >> those regions on the i.MX8MP is currently under development and we
> >> plan to use this as a template for the i.MX8MM when the dust has
> >> settled. The changes in this series have been made with this in
> >> mind, so once the BLK_CTL driver exists it should be a matter of
> >> hooking things together via DT, with no further changes required on
> >> the GPCv2 driver side (famous last words).
> >>
> >> Special thanks to Marek Vasut who helped with testing and debugging
> >> of early versions of this code.
> >>
> >>
> > I fully support trying to get this done.  I tried to push something this
> > before, but I was turned down by someone at NXP [1].  I have both a Mini
> > and Nano board at my disposal, so if Nano support isn't there yet, and this
> > driver patch gets accepted, I'll gladly work to help and/or test
> > functionality.
> >
> > [1] - https://lkml.org/lkml/2020/4/30/540
>
> Note that the [1] is using poorly defined and buggy SMC interface to
> TFA, I agree with Lucas that is not the way to go for MX8M. This
> patchset is not using that SMC interface at all, but rather lets Linux
> do the power domain handling, which I think is much better.

I hope you're more successful in convincing NXP of that than Lucas and
I were before.  Our pleas fell on deaf ears.

adam
