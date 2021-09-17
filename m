Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E1BA40F49C
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 11:18:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231255AbhIQJUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Sep 2021 05:20:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234064AbhIQJTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Sep 2021 05:19:13 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7F10C061766
        for <devicetree@vger.kernel.org>; Fri, 17 Sep 2021 02:17:50 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id d42so8702887lfv.10
        for <devicetree@vger.kernel.org>; Fri, 17 Sep 2021 02:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U+KFp85eGIg3j+xXBPsUkFDbTysqRdcy9QOXEE3yrfg=;
        b=HrMoVzyJcd8uem8o60ameQ66p1cuF7BYcwBiKZyHg6HzAJ1/mPO6rSYnzXIBpvVJxY
         R2qZN95MAWaF8IFX3HyXyFFzZ793fpgmI5bUUKxyN5DZbdETRAu3TzgyR9wOoVnw9iHI
         8El4fDJwcyQ2EtKMvVzMx6GNaRw6vbPZWwRYeGwtBv9m5oD/kF8FfQtli4kR1CCDzW7C
         jl7SlKPE5mVueGinHLO9S1oenwBMf+J9+1d8PjxRGuY10fOez1jiFZJOK9gNNZ9vOUZU
         5SLTYGDJRhQCAMsLX7fQ7d79quczVr+6RbIIWKi/NLvpPnN5TfqpG3BDzLAM1B1cCIqC
         +KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U+KFp85eGIg3j+xXBPsUkFDbTysqRdcy9QOXEE3yrfg=;
        b=5kZdvcJBVfkiGMejI9okUM36SzP9FyyjQeNDwfPnE6S/vcNMYLV71BU5XGeS5WFNso
         z8g2/j6RKFvVQiWKDbb07xCV+IJVk/er6Dpqx96xf7nz4VhQOEnRH8zzTjJ5wCFPj/gR
         aZZEIo633iOcwF+hQiBD7QY+Sc1THEI5fOdOowSyOq68/baX2EMYvneJPUn+V8rEVe/J
         2bRNwpW6K9sDSvR8UBAdpiWVOKAZhQ1d02fYaF+q5OW9Lnmc84j4Mm+U+gPAbAwrqnYZ
         aNUrbKerP1QvxaIYgLW4LG12BI9GdTUO6QugLThfdGVM217vmw1C6DXvK7og8Y/TQ1+K
         971Q==
X-Gm-Message-State: AOAM532lHTuIZYMUpr3pXKVMt6+aT3iA1X00UgKe+PsdBxd/vFfDJ0FM
        AjfF5EmS+WlmjR4U9yDEmQ7dEDuLpozTBAW2/wvtDg==
X-Google-Smtp-Source: ABdhPJzPCC9qx4Soovidg9FbsVH4UyQFz22TaLL0+9TH41TnoI9FCTSOUyclgROpBvrJXqowZBk/+HvYjM6pCl3Q3mU=
X-Received: by 2002:a05:6512:6cd:: with SMTP id u13mr7227175lff.184.1631870269158;
 Fri, 17 Sep 2021 02:17:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210908013218.29702-1-wenbin.mei@mediatek.com>
 <20210908013218.29702-3-wenbin.mei@mediatek.com> <CAPDyKFqTx3wMm6mMy-wY892Nvu-ukqpRS=TSZxYr7e3TJWgF4A@mail.gmail.com>
 <5d5d49747b748db18ca66b9cf82c0e626f9c7638.camel@mediatek.com>
In-Reply-To: <5d5d49747b748db18ca66b9cf82c0e626f9c7638.camel@mediatek.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 17 Sep 2021 11:17:13 +0200
Message-ID: <CAPDyKFoeiLZwj_uQOc0C-=nAOHqpxU7RmN2iRvdpKbX1oL32ZA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mmc: mediatek: Add HS400 online tuning support
To:     Wenbin Mei <wenbin.mei@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Avri Altman <avri.altman@wdc.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Yue Hu <huyue2@yulong.com>, Bean Huo <beanhuo@micron.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Sept 2021 at 11:47, Wenbin Mei <wenbin.mei@mediatek.com> wrote:
>
> On Tue, 2021-09-14 at 10:46 +0200, Ulf Hansson wrote:
> > On Wed, 8 Sept 2021 at 03:32, Wenbin Mei <wenbin.mei@mediatek.com>
> > wrote:
> > >
> > > Due to the influence of the corner IC and vcore voltage, for the
> > > stability
> > > of HS400 mode, we Add HS400 mode online tuning support for mediatek
> > > mmc
> > > host.
> >
> > My apologies, but I am not familiar with what 'HS400 online tuning'
> > is? Can you please elaborate on this?
> >
> > Is it specific for a Mediatek eMMC controller - or is a common eMMC
> > feature that is described in the eMMC spec?
> >
> According to JEDEC Spec, there is no need to do tuning under HS400 mode
> since the Rx signal is aligned with the DS signal. However, MediaTek's
> IC need set its "DS delay" internally to ensure it can latch Rx signal
> correctly.
> In previous version, We provide an "hs400-ds-delay" in device tree to
> cover different chipset/PCB design, and it works fine in most cases.
> But, with the development of process technology and the big VCore
> voltage scale range(may have 0.7V/0.6V/0.55V), it is difficult to find
> a suitable "hs400-ds-delay" to cover all of IC corner
> cases(SSSS/TTTT/FFFF).
> So that We must have the ability to do hs400 online tuning.
> It is specific for the Mediatek eMMC controller which support HS400
> mode.

I see, thanks for clarifying. Please put some of this information in
the commit message for the next version, it certainly helps to
understand.

[...]

> > > +static int msdc_send_cxd_data(struct mmc_card *card, struct
> > > mmc_host *host)
> > > +{
> > > +       struct mmc_request mrq = {};
> > > +       struct mmc_command cmd = {};
> > > +       struct mmc_data data = {};
> > > +       unsigned int len = 512;
> > > +       struct scatterlist sg;
> > > +       u8 *ext_csd;
> > > +
> > > +       ext_csd = kzalloc(len, GFP_KERNEL);
> > > +       if (!ext_csd)
> > > +               return -ENOMEM;
> > > +
> > > +       mrq.cmd = &cmd;
> > > +       mrq.data = &data;
> > > +
> > > +       cmd.opcode = MMC_SEND_EXT_CSD;
> > > +       cmd.arg = 0;
> > > +       cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;
> > > +
> > > +       data.blksz = len;
> > > +       data.blocks = 1;
> > > +       data.flags = MMC_DATA_READ;
> > > +       data.sg = &sg;
> > > +       data.sg_len = 1;
> > > +
> > > +       sg_init_one(&sg, ext_csd, len);
> > > +       mmc_set_data_timeout(&data, card);
> > > +       mmc_wait_for_req(host, &mrq);
> > > +
> > > +       kfree(ext_csd);
> > > +
> > > +       if (cmd.error)
> > > +               return cmd.error;
> > > +       if (data.error)
> > > +               return data.error;
> > > +
> > > +       return 0;
> >
> > Why do we need to send a MMC_SEND_EXT_CSD command, exactly?
> >
> > Why can't mmc_send_tuning() work here too? What does the eMMC spec
> > state about this?
> >
> The CMD21 is illegal under hs400 mode so that cannot use the
> mmc_send_tuning(). The CMD8 is suitable because it will receive 1 block
> of non-zero data.

I see.

In that case it seems better to use mmc_get_ext_csd(), from the core,
rather than open coding the above. To do that, you also need to move
the declaration of mmc_get_ext_csd() to include/linux/mmc/host.h.

[...]

Kind regards
Uffe
