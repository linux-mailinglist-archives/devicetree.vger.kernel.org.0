Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F32FE6B83B
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 10:32:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725890AbfGQIcm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 04:32:42 -0400
Received: from mail-qt1-f195.google.com ([209.85.160.195]:43170 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725873AbfGQIcm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 04:32:42 -0400
Received: by mail-qt1-f195.google.com with SMTP id w17so22459535qto.10
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2019 01:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BIWfltDL/abzPRU7Atfv0EyU5DO71798bud3Tmr4p3s=;
        b=psYcszn5hv4rltxz4/Ev/GOedai34OwOzdz2B16oAm2fPbvAd4pqpMNfd6ycItYlDZ
         r2TnrQlI7ErpopGT4EWmKk+9xw4g+LwXsYMlwuWFOoEYaXK+qyJhmViKSQ5vB2TfhPSi
         PRbt5XDbsN0lfUtkRcc+ZtHAD+MkOFQ8XmLFmE30vblOulPs8yf795idaUtbnoBtUgLP
         IZoUegvXA3U7p+dEMm/aWW44DSn3gucxvAMf04tY/p3hQI9f/WB6Eby/QLnmOU/6JUL1
         MCNk9yrDJ/3ohUuzKxuEOIzCk85YGFjD6IawHFqCUpPgvAeDApLHvj8jyV9wck8S78FO
         2vNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BIWfltDL/abzPRU7Atfv0EyU5DO71798bud3Tmr4p3s=;
        b=N801SkY/+fCupWfTnh9tyQdtFaEjWPCnWamq83ltDNYC4OBw8EP+/jmeYeliQkgGSf
         0S0rkbP18TPd4cPtxT1i9AxBRjZSCEYdnYNc/B9F9/2V0NLqOPSQ59LScK/SBnNo/+st
         TcxdGtXRnedeT3geI99/APEV1bVpeivcMIEiczQPPJVHWm6ATP1dlfdv9khvsO5mA+pM
         hbYlYdtXResM5o9OZCxN4NurwWqApJTxhH3rsrw/9Py7yOPohvYcMFzJiLBFPclQ3uoV
         JgB6MhdmaD6EMa+1jy5WghdMFcgXsE2xXvYE84Bs+yGHLlgP9nEHc/YzsynZ1WNqAnZ6
         /HFA==
X-Gm-Message-State: APjAAAVDMUiueC/uC3tvLBa3itpx7Km4cVVSfkQnAqEXGXk3VdTlaCRP
        Dy1N4XhHiqkbMvjg3e+SrAwljg++7/CRmYT8j6k=
X-Google-Smtp-Source: APXvYqyLOKgGcvgTk7FMl5uP0TvLi6bfagmkeXYPc9354Tf7KYVOG9PgTIN239rBDw2dawgE4lBgnVHyBW9lf9GbdYc=
X-Received: by 2002:ac8:384c:: with SMTP id r12mr26561900qtb.153.1563352361429;
 Wed, 17 Jul 2019 01:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-8-git-send-email-aisheng.dong@nxp.com> <CAOMZO5BMxZVuwz0jJ410H9Ey4iWD67mCdQhhrtnQ182DbcgtBg@mail.gmail.com>
In-Reply-To: <CAOMZO5BMxZVuwz0jJ410H9Ey4iWD67mCdQhhrtnQ182DbcgtBg@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Wed, 17 Jul 2019 16:23:46 +0800
Message-ID: <CAA+hA=T33LHpX8ak_eEPPEtSY2pUDQXoQpc=j3GKYOB68=GRyg@mail.gmail.com>
Subject: Re: [PATCH v2 07/15] arm64: dts: imx8: switch to two cell scu clock binding
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
        <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 17, 2019 at 3:29 AM Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
> >
> > switch to two cell scu clock binding
>
> Please explain why you are doing this.

Because we want to eliminate the using of SW Clock IDs.
For more details, please refer to:
https://patchwork.kernel.org/cover/11046287/

Regards
Aisheng
