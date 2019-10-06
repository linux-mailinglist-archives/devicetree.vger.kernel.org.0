Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE367CD1E4
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2019 14:33:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726330AbfJFMdX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Oct 2019 08:33:23 -0400
Received: from mo4-p02-ob.smtp.rzone.de ([85.215.255.80]:23171 "EHLO
        mo4-p02-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726291AbfJFMdX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Oct 2019 08:33:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570365198;
        s=strato-dkim-0002; d=fpond.eu;
        h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
        X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
        bh=+jNs+aIhzCrlui+txGTHIfOIsQHf0wQLk5jIMpzux4g=;
        b=ChOWgW7HGUo71MDAgWy+8Qf+arI/5qglTHL6L3VsX9HBCG53eZBNoLSavkOg18XMN/
        9x5D6EdGf+tKfP7rg1WprH8EMeMM7ju1ahqvvasCF7WxRRFXiUbxSwrxAcD/eBDs0lNa
        L+GS7AkK41s5TgYCipqCanFGHlzxdmppxpSoLn5bFI1OavJzNY1x3zbnFkHOdt6VHEag
        hRwicwwFCvaCCQohUi3dQJcdN5VpHzvHm88CBMIrp+0Bbl5da0rGt6Ce5rA3u1K+trxT
        0UL+lpp6anAyEaex2c9LnMSIKvvdS1dVGMjMMwE6wtYLjYt5o67KCzsy3HajSfFVUtxf
        gXdQ==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzmt2bYDnKIKaws6YXTsc4="
X-RZG-CLASS-ID: mo00
Received: from oxapp01-01.back.ox.d0m.de
        by smtp-ox.front (RZmta 44.28.0 AUTH)
        with ESMTPSA id i07086v96CWqeEb
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
        (Client did not present a certificate);
        Sun, 6 Oct 2019 14:32:52 +0200 (CEST)
Date:   Sun, 6 Oct 2019 14:32:52 +0200 (CEST)
From:   Ulrich Hecht <uli@fpond.eu>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org, jitao.shi@mediatek.com
Cc:     mark.rutland@arm.com, stonea168@163.com, ajaykumar.rs@samsung.com,
        architt@codeaurora.org, vpalatin@chromium.org,
        cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
        ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
        devicetree@vger.kernel.org, p.zabel@pengutronix.de,
        pawel.moll@arm.com, ijc+devicetree@hellion.org.uk,
        inki.dae@samsung.com, robh+dt@kernel.org, seanpaul@chromium.org,
        eddie.huang@mediatek.com, rahul.sharma@samsung.com,
        kernel@pengutronix.de, galak@codeaurora.org,
        enric.balletbo@collabora.com, andy.yan@rock-chips.com
Message-ID: <218822936.516770.1570365172065@webmail.strato.com>
In-Reply-To: <4df984a5-a917-753e-5870-7453f3d5438e@gmail.com>
References: <1570216148-22802-1-git-send-email-uli@fpond.eu>
 <4df984a5-a917-753e-5870-7453f3d5438e@gmail.com>
Subject: Re: [PATCH v19 0/2] PS8640 MIPI-to-eDP bridge
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.1-Rev20
X-Originating-IP: 85.212.38.149
X-Originating-Client: open-xchange-appsuite
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


> On October 5, 2019 at 1:16 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> 
> 
> Hi Uli,
> 
> On 04/10/2019 21:09, Ulrich Hecht wrote:
> > Hi!
> > 
> > This driver seems to have fallen by the wayside because, while otherwise
> > fine, it has a firmware update feature that requires a blob that is not in
> > the linux-firmware repo.[1]
> > 
> > Whatever the cause for that may be, the update code is entirely optional
> > (my chip works fine with whatever firmware is currently installed), so I
> > have removed it in order to get this merged after all. I have also
> > followed various trivial API changes that have piled up since 2016; see
> > the individual patches for details.
> > 
> > I'm using this driver on an Acer Chromebook R13 ("Elm"); see
> > https://github.com/uli/kernel/tree/elm-working-5.4.
> > 
> 
> Thanks for your effort to get things upstream.
> I just tried your branch on my R13. I had to do a trivial config change I had to
> do, as I don't have and care about the bluetooth FW right now.

Thank you for testing!

> But after that my screen keeps black. I was able to build and boot
> elm-working-5.3 and elm-working-5.2.
> 
> Unfortunatley I don't have a serial console on the Chromebook, so it's difficult
> to find out where it hangs. Can you please double check if your new
> elm-working-5.4 actually really works?

No, it doesn't. :( It seems I forgot to run mkimage/vbutil_kernel when testing...
I have pushed a fix to the elm-working-5.4 tree, and I will send a v20 tomorrow. Sorry for the inconvenience.

CU
Uli
