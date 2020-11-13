Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 592732B2913
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 00:18:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726039AbgKMXSf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Nov 2020 18:18:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725885AbgKMXSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Nov 2020 18:18:35 -0500
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com [IPv6:2607:f8b0:4864:20::b44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22D0CC0613D1
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 15:18:34 -0800 (PST)
Received: by mail-yb1-xb44.google.com with SMTP id 2so10161855ybc.12
        for <devicetree@vger.kernel.org>; Fri, 13 Nov 2020 15:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=v7kgX2auy1+sgGVQGjn/ba6xKB+SShCyP+A3+64Iivo=;
        b=LSVn12PeNYXRypxZ9HAFDQHZilkjgRRQ9s1XSMqwncNdmirDLMl1TyXD3zVocIIoig
         dc+cw3zmIPLCYSMLgZgdyh4V9w9gmuK35T5HUEjOvFNpRbfN7lPfVzGEGZ3jvV8LNge5
         ifS9RSygJQ45hon4rz4oTIiX4wla1Rbsmdxy/f66elKDV7SF+GsnuBSFNiV2CZ1eDuWU
         TbqdHe+irFh2GAesl4LfAiXyW8OqF0bkG3pwXaqeZbK3SFUzmf1O9IAns3tlMW2QarMe
         J/SM2ZaldfDLgrUY9Ddp0GiBhSUw1uh3aDyquWhiJiVvo3tr6oOm8lFZyaRn68gdhN/P
         pkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=v7kgX2auy1+sgGVQGjn/ba6xKB+SShCyP+A3+64Iivo=;
        b=l7AsAYJuTb1KYZgi06rqSH1eSg2ZylaUk2z0CsfOtVFCozxhFmKswefrQkMsdZfgl9
         /MoyAdjlBfCPMYBowYp4EH1xylXbWgZ3J80szgW5kHK05qUXOzk+jD0qbi78Zxaq5AyS
         Zdkd7yKT15YxJpwuAQga3j6HKo2BxJ58RxCx4XXRoP3vagZXGufvj3B8RkAIWPfAulRy
         m2J0xc4KcheLkiYGAn1nLLi/Kj6ka7OMhMl24ur8unyCnmVH+yWBwzhMZVdL3AeuwsSh
         cGQhtiHupTvACT0WTXFfiN+kAsMCcsd/KTLzDH5K/KPpMMy/Jfaou90DsuHCbfVtk9/G
         htiw==
X-Gm-Message-State: AOAM5312KcRkxL2jYXDUPMvr0WiZBHDxY7Zlr/dXCciOc0e4xKk6ptMn
        h2L+5CbDL4cTmX0Qa28DZqqaxIr+jrWeaxmXC8s=
X-Google-Smtp-Source: ABdhPJz9L2+Ai22ycGvQgn1bUBOP/Q9gOgXT9RqrTofqI1ibGVTxTsw5mZvWSG256B+TUBi0goW3d5jbiYYCikks634=
X-Received: by 2002:a25:db0e:: with SMTP id g14mr9903688ybf.314.1605309513402;
 Fri, 13 Nov 2020 15:18:33 -0800 (PST)
MIME-Version: 1.0
References: <20201113095012.22422-1-zajec5@gmail.com> <20201113231229.1632656-1-f.fainelli@gmail.com>
 <43f4a152-6e05-ee3f-d0ab-645b09e79258@gmail.com>
In-Reply-To: <43f4a152-6e05-ee3f-d0ab-645b09e79258@gmail.com>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Date:   Sat, 14 Nov 2020 00:18:22 +0100
Message-ID: <CACna6rwQA2LKXXdKn9U6ZmQzGC99bCM3Ue59YezH08kmXpQ3Uw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Enable USB 3 PHY on Luxul XWR-3150
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 at 00:17, Florian Fainelli <f.fainelli@gmail.com> wrote=
:
> On 11/13/20 3:12 PM, Florian Fainelli wrote:
> > On Fri, 13 Nov 2020 10:50:12 +0100, Rafa=C5=82 Mi=C5=82ecki <zajec5@gma=
il.com> wrote:
> >> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >>
> >> This device has a functional USB 3 port so PHY is required.
> >>
> >> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >> ---
> >
> > Applied to devicetree/next, thanks!
>
>
> After fixing it up so it builds:

Oops. Sorry and thanks!
