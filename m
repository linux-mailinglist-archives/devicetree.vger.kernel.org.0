Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C9BD264053
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 10:46:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730299AbgIJIqS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 04:46:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730223AbgIJIpI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 04:45:08 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8506FC061786
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 01:45:06 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id u6so6187919iow.9
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 01:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Vc9DogxoLgngfubJ0u33iUTXXgPBqlfWnxisJuHVigk=;
        b=M7wdL6CNysKj2I2uFNxFP98crOR6oki0Kv9eRzGJ/PUHBswh1K2Yef8UbV955S99ID
         CtqGAsbh6F1xTWPhc6/mzKjL8BLWEH41oqA7SEHhpbQr9ftZ+z7DZWEIjmkFp1Ft+YVc
         k8p/nOP2BaHgcfiFrb0kKX0UeiprgHQqBSDwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Vc9DogxoLgngfubJ0u33iUTXXgPBqlfWnxisJuHVigk=;
        b=h/+F1R6UPmPnyFwVhBZlNLKVyc9WL4zAQ9P/sd51EVigiYqvfuoF1mMSlosUVExJX7
         sxfZu5bO8CEuU2cz7tbp1LrTY8ALOkG1//I8OmLgWAxp6aIKLXnHvkuab0F8LKmvXNN9
         dRFwSTP9MFgvswo02+DTEaANjB4nzlDqzOpOufR6DJJyXWrH0Yw+WCMeIFzBuT4tUB5K
         85QxqzFx/aVafe2nGp/t+A2o4AunTr2NDHepwerVjf3rjP1VWGLwHsdP4IBzi9L07rmN
         RejeDJ14H41jb5U0k5GB8Yy+o/HKPt3U1Auc74KBf7YXkCXMTHf4KAsqkCP3Roj+sICg
         GBLQ==
X-Gm-Message-State: AOAM532K6F21BMsBpgveCTAA60l4tU2XS6iUPv04OzUptg50cfvQcBV+
        UPU0C8FL2lHGHdzxS+2hRY4I1Bp0iM7wwCpCzXjmhg==
X-Google-Smtp-Source: ABdhPJz/GqbhJlGBoiOlJ5GNckLlLrZXvPr+cXRexeJo/NhSRwi3XrdA0NDkw8Xgcs52YM7DxFPmui+9bnlO4Y0Zf7w=
X-Received: by 2002:a5e:930d:: with SMTP id k13mr6689385iom.40.1599727505770;
 Thu, 10 Sep 2020 01:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200910054635.3337487-1-hsinyi@chromium.org> <ba77586c-7902-9ce4-0f4f-ad1743596d85@collabora.com>
 <CAJMQK-j_Syejw1Bc53fN8OuRYppns7g_=EQW+PUDkQDhnwxvSw@mail.gmail.com> <944325c1-818e-934c-907d-7ff0493446b4@collabora.com>
In-Reply-To: <944325c1-818e-934c-907d-7ff0493446b4@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 10 Sep 2020 16:44:39 +0800
Message-ID: <CAJMQK-gVO53a1SnsjsJPu-ZR-NoNb4TGXrOpb-naD71pmjExCw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: mt8173: elm: Set uart0 to mmio32 iotype
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 10, 2020 at 4:16 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Hi Hsin-Yi,
>
> On 10/9/20 9:57, Hsin-Yi Wang wrote:
> > On Thu, Sep 10, 2020 at 3:20 PM Enric Balletbo i Serra
> > <enric.balletbo@collabora.com> wrote:
> >>
> >> Hi Hsin-Yi,
> >>
> >> On 10/9/20 7:46, Hsin-Yi Wang wrote:
> >>> Set uart0 iotype to mmio32 to make earlycon work with stdout-path.
> >>>
> >>> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> >>> ---
> >>>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 ++
> >>>  1 file changed, 2 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> >>> index a5a12b2599a4a..d54e62f72c65d 100644
> >>> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> >>> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> >>> @@ -1160,6 +1160,8 @@ &thermal {
> >>>  };
> >>>
> >>>  &uart0 {
> >>> +     reg-io-width = <4>;
> >>> +     reg-shift = <2>;
> >>
> >> I am wondering if these properties are common enough to go to mt8173.dtsi
> >> instead of here.
> >>
> > Since stdout-path is set on elm.dtsi (using uart0), so I add this
> > attribute here.
> >
>
> Why needs to be defined in the same place that stdout-path is set?
>
> My guess is that reg-io-width and reg-shift are SoC specific, as they define how
> the IO access to the register is done. In fact, I think that these properties
> should be added in all the uarts, not only the one that has defined the stdout-path.
>
Okay, I'll apply them to all uart. Thanks.
