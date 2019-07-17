Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 178316B83D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 10:33:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbfGQIda (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 04:33:30 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:37519 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbfGQIda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 04:33:30 -0400
Received: by mail-qk1-f193.google.com with SMTP id d15so16804836qkl.4
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 01:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tIm4KlLOoNVt9Pt6U/trSBmscVAnv1Ig8wWdGFQn/hY=;
        b=Gc2p+YiBGXCJnt1XJPMRd37VRMz9i9aEmp0M74zhniTKsjfTNV4cAC0ce27H/H+OED
         m/sD0e/q92iRLFlM3+ydWCz8wgiFbEDb/e8QnpHjVEyGafhl1BFjOGNLOVXMPF2Tk8CD
         viM42PTWZi74tlZHt9CTk7VI1yTtFxwBzn0agz7D+EcfOk0C/PBh5unBxDp2RXiy+nFf
         LGz/yypuclxQTdhBBemaEjGItkO6VLtXaqCVKVARGvo4W7ciFR5Bsc3L/XELIXWJ1h2+
         TLVGVgeX///EBiaOCE9TMgjrKSQOxqCh/rCJG+bKJU3pqi6wZrDqPOk8RRWun2eK9Bi+
         tXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tIm4KlLOoNVt9Pt6U/trSBmscVAnv1Ig8wWdGFQn/hY=;
        b=l+IDqzRCctmsSI9YnONeJMoMvAW6z2u9LR7db9RNPobpvHXxHVPMP2vHFL/An6OLCj
         CtErjSX2jU2nCreZfkG59ccajoVcZw2L8vx7DrPSV11XMORELqyBRD8p0qqxMZlWsYSV
         wGfXuzThk1LL1ieBCu/rLXz+mcfCKQCuFv+Zw4pXR1xVWcSkDmeakkqmkMh+EHdv9/59
         Y9t61oP7uABi3Kq9WorwdU90dl7uurozYMVghUFwaWXwwL0G7rvB62H+c3cGT5ObS4WP
         5CQpDUHjGRl4mzeiG4z6Enf7+ZYYEpqjT93krfwja0ZmooI+P+U1cmTuyOwGceqxUmX+
         QBbw==
X-Gm-Message-State: APjAAAXRICmS4Tk7bWZVtq89QsmbJN/cu5mQKc1f6Oe2Z4bklX77FiPc
        GUwi1gU8WNZoiUvi+QPtKzqp+zqeN8JhJ16In28=
X-Google-Smtp-Source: APXvYqxuYM6/C+OX9eNQbUfcLHpDXFqZ1XBtFE9lSmnzU48LoWDVyYEmqZVWCU/md+siv1MluEqAIxuKDWVy5k3Wrho=
X-Received: by 2002:a37:4f16:: with SMTP id d22mr25526429qkb.307.1563352409491;
 Wed, 17 Jul 2019 01:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-10-git-send-email-aisheng.dong@nxp.com> <CAOMZO5DZDX4hGmLLT0+5e0VDhws-DknhAwyKyAxva8x5F2BYjw@mail.gmail.com>
In-Reply-To: <CAOMZO5DZDX4hGmLLT0+5e0VDhws-DknhAwyKyAxva8x5F2BYjw@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Wed, 17 Jul 2019 16:24:33 +0800
Message-ID: <CAA+hA=Sy3=6VF1eZJ-g_nhqbpCy+td+VEOUUK2pLrZAQpbAcFA@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] arm64: dts: imx8qm: add lsio ss support
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

On Wed, Jul 17, 2019 at 3:30 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> > +&lsio_gpio0 {
> > +       compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";
>
> fsl,imx8qm-gpio needs to be documented.

Yes, as documented in cover-letter.
Will submit in a separate patch.

Regards
Aisheng
