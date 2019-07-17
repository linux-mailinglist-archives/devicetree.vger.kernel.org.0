Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AF4C76B860
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 10:38:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726081AbfGQIfN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 04:35:13 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:38730 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbfGQIfM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 04:35:12 -0400
Received: by mail-qt1-f194.google.com with SMTP id n11so22484365qtl.5
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 01:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ry+MzwHDIHpb/9BQL6U47IaqQPJx3BKYqS3CpMjifoY=;
        b=vMLalo+L/IIAOYtRRggYh08gz4EUGIoknTz9dXt0nx1IEelHQMaTKDlgMsLeQr+Ckh
         HUYqpBPeFUUUmUcAh2g+atuM10ImyWztAf7D+0NImSQd/NE65C7oCU4gQnjF5whflX6i
         H50lbswKhrHASrFvTn70By5otCpgLgBNSdMshtHN7QAn8uuVPFjQVdpsuNNLxYmOXd4z
         IPhr3XU2k95v24WvA0j1HZAUO3cK577MwxQbkXAC3yfAnuqA/2T9CDN28/QYa54SFSIH
         3hCaKUiUH7JeBLFKmy0ZLt4LgyP6i+uQEa70PFHc7GLyap662g6pDpzo+jnpZXuo662W
         vIVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ry+MzwHDIHpb/9BQL6U47IaqQPJx3BKYqS3CpMjifoY=;
        b=P5maTc26Rf8mwE+ufN82hfB2SjVbl/3Py1WA30wuxOj8W9A0PY3GpGANfC/PccWHfY
         dgc6O1LY4bG7tuXGaX0HWuaY8zX2ikEGjO7hkoHrNEkkJxC40rX0bthEHqWs94+/WVAW
         2TafVSJfS2dUYp8x/AQ94S2IJPekTwwbiRyUbJtFPxMBuemvjkdamKyKOgr0qnlQP2PO
         ijTjq3/tGwqWUMWUMev/Xs5cWA48O9orsLnZMzIIrPqn5jpP2aciL9XG8Wb6pGmB07Zh
         T6fjXUfL6OqsX1y+5DI1z/8FqimUmbzh7GJvAxaIT7iK90e2ob+n/qvQtAJ+1zrseTzW
         uJZQ==
X-Gm-Message-State: APjAAAU6iHwFoWVeGZJ46Uyd/vsvJfy57wQwbtMqps+yRWhxW7v67iC6
        sOr7xetK1fHB5aoeQPFQagCpPGEz6BJirKCSKxk=
X-Google-Smtp-Source: APXvYqziPJO1KRjHolx5k/4Q2eX8wSDr3YvFQfFnKotTHXYJdSW7xA10kL7Hbc02A83aPhvErcljmU7bWXgKFLHZ+XU=
X-Received: by 2002:ac8:354d:: with SMTP id z13mr27515741qtb.340.1563352512060;
 Wed, 17 Jul 2019 01:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-11-git-send-email-aisheng.dong@nxp.com> <CAOMZO5B=yK_S=2xRFt_1pAJ2iYE7CCCenOKQ3rjOeF3e+=vQtQ@mail.gmail.com>
In-Reply-To: <CAOMZO5B=yK_S=2xRFt_1pAJ2iYE7CCCenOKQ3rjOeF3e+=vQtQ@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Wed, 17 Jul 2019 16:26:16 +0800
Message-ID: <CAA+hA=S=JMZDsbeJdzCRH+pikfy9nry-8UHq9V-75LuM0gxH6A@mail.gmail.com>
Subject: Re: [PATCH v2 10/15] arm64: dts: imx8qm: add conn ss support
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

On Wed, Jul 17, 2019 at 3:31 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
> >
> > The CONN SS of MX8QM is mostly the same as MX8QXP except it has one more
> > USB HSIC module support. So we can fully reuse the exist CONN SS dtsi.
> > Add <soc>-ss-conn.dtsi with compatible string updated according to
> > imx8-ss-conn.dtsi.
>
> Subject and commit log does not match what the patch is actually doing.

What 'not match' did you mean?

Regards
Aisheng
