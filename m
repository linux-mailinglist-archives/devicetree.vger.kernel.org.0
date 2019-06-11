Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5661C3C6F6
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 11:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404811AbfFKJFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 05:05:21 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:33599 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404619AbfFKJFV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jun 2019 05:05:21 -0400
Received: by mail-ed1-f67.google.com with SMTP id h9so18948921edr.0
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 02:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PASnnopO7T/n97vN91v+qyJWOS2KsO1RcpQqKw02sVo=;
        b=hKJ2KC6xZjCmH41h834KL9DBOKssuku0pkXd4y8LIUW+dgG8fzTRprMaW/jw8En3+E
         HubSnI4sKFaiMyrY/RWIo8CVwTCUAcz+BL7I2rOOBdmGaIKMAdSpdUuKCaAmQyfjWw+y
         XuE0Z3fbV6D3xsDJnfp9sCTE7bDzy+5JPjK1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PASnnopO7T/n97vN91v+qyJWOS2KsO1RcpQqKw02sVo=;
        b=GQe2vKs49i3GzVOq9nPxes2Yiilibkk76uNgtL7syX16T/fLPCxug1JUi9cGE3fTuy
         yCH9U6nh8VOuoNldGu0DErbOrHGi3+JFOnR79FA1EYEGRlV5Kz5Ef0qtaJvw719G8LED
         mAIMrUL0DGBwETGUjX/88ggnut2pTP+vElHAan0ZBXC9p7nrtyh8WCyrPtiOVc4NAriV
         GYl9saYh/tsou60w/KzG2oOqwZvvScqd4XYA6mGZEyccsLhXvLIxs8jZvwecKXYLV5kc
         R5SkE54cvFI/yqiW2+C4lO4Uxulf1a6nfgqobCZpk+xbw5rz2ncpQbcRbyM3iY4QTN2j
         9DFA==
X-Gm-Message-State: APjAAAXB4yI/6XA7YfgENOm6CisaCAg/WOXVltU75vhMZLJ6mAZhtqtQ
        Iu/XPWnWaL89dtTdnfsGUVUPOOHL+wiNPA==
X-Google-Smtp-Source: APXvYqwVPIvTBR1AAomb6X2+l9T+EwXeyU1rLliTQP5rA0NRLLmate9n0gYajlRWVAkqckYoHYubGA==
X-Received: by 2002:a17:906:19d3:: with SMTP id h19mr13233025ejd.300.1560243918714;
        Tue, 11 Jun 2019 02:05:18 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id k62sm3596991edc.70.2019.06.11.02.05.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Jun 2019 02:05:18 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id a15so2014929wmj.5
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 02:05:18 -0700 (PDT)
X-Received: by 2002:a1c:407:: with SMTP id 7mr17983312wme.113.1560243588440;
 Tue, 11 Jun 2019 01:59:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com> <20190509094846.GA65444@google.com>
 <1558466055.15388.342.camel@mtksdccf07> <1560242886.23799.13.camel@mtksdccf07>
In-Reply-To: <1560242886.23799.13.camel@mtksdccf07>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Tue, 11 Jun 2019 17:59:36 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CReiPOySyk-eFkgiQMDMoqB3Uhd=bcho2Qtsv74y8fmg@mail.gmail.com>
Message-ID: <CAAFQd5CReiPOySyk-eFkgiQMDMoqB3Uhd=bcho2Qtsv74y8fmg@mail.gmail.com>
Subject: Re: [RFC PATCH V1 6/6] platform: mtk-isp: Add Mediatek DIP driver
To:     Frederic Chen <frederic.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        yuzhao@chromium.org, zwisler@chromium.org,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
        Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= 
        <Sean.Cheng@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
        =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= 
        <christie.yu@mediatek.com>,
        =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= 
        <holmes.chiou@mediatek.com>,
        Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
        =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
        =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        devicetree@vger.kernel.org, Shik Chen <shik@chromium.org>,
        suleiman@chromium.org,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Hans Verkuil <hans.verkuil@cisco.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 5:48 PM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Dear Tomasz,
>
> I'd like to elaborate more about the tuning_data.va.
> Would you like to give us some advice about our improvement proposal inline?
>
> Thank you very much.
>
>
> On Wed, 2019-05-22 at 03:14 +0800, Frederic Chen wrote:
> > Dear Tomasz,
> >
> > I appreciate your comment. It is very helpful for us.
> >
> >
> > > > diff --git a/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > new file mode 100644
> > > > index 000000000000..54d2b5f5b802
> > > > --- /dev/null
> > > > +++ b/drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > > @@ -0,0 +1,1384 @@
>
> [snip]
>
> > > > +static void dip_submit_worker(struct work_struct *work)
> > > > +{
> > > > +       struct mtk_dip_hw_submit_work *dip_submit_work =
> > > > +               container_of(work, struct mtk_dip_hw_submit_work, frame_work);
> > > > +       struct mtk_dip_hw *dip_hw = dip_submit_work->dip_hw;
> > > > +       struct mtk_dip_dev *dip_dev = mtk_dip_hw_to_dev(dip_hw);
> > > > +       struct mtk_dip_hw_work *dip_work;
> > > > +       struct mtk_dip_hw_subframe *buf;
> > > > +       u32 len, num;
> > > > +       int ret;
> > > > +
> > > > +       num  = atomic_read(&dip_hw->num_composing);
> > > > +
> > > > +       mutex_lock(&dip_hw->dip_worklist.queuelock);
> > > > +       dip_work = list_first_entry(&dip_hw->dip_worklist.queue,
>
> [snip]
>
> > > > +
> > > > +       if (dip_work->frameparams.tuning_data.pa == 0) {
> > > > +               dev_dbg(&dip_dev->pdev->dev,
> > > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > > +                       __func__, dip_work->frameparams.frame_no);
> > > > +
> > > > +               memcpy(&dip_work->frameparams.tuning_data,
> > > > +                      &buf->tuning_buf, sizeof(buf->tuning_buf));
> > >
> > > Ditto.
> > >
> >
> > I got it.
> >
> > > > +               memset((char *)buf->tuning_buf.va, 0, DIP_TUNING_SZ);
> > >
> > > Ditto.
> >
> > I got it.
> >
> > >
> > > > +               /*
> > > > +                * When user enqueued without tuning buffer,
> > > > +                * it would use driver internal buffer.
> > > > +                * So, tuning_data.va should be 0
> > > > +                */
> > > > +               dip_work->frameparams.tuning_data.va = 0;
> > >
> > > I don't understand this. We just zeroed the buffer via this kernel VA few
> > > lines above, so why would it have to be set to 0?
> > >
> >
> > I will remove this unnecessary line.
> >
> > > > +       }
>
> After confirming the firmware part, I found that we use this field
> (tuning_data.va) to notify firmware if there is no tuning data from
> user.
>
> - frameparams.tuning_data.va is 0: use the default tuning data in
>                                    SCP, but we still need to pass
>                                    frameparams.tuning_data.pa because
>                                    the buffer contains some working
>                                    buffer required.
> - frameparams.tuning_data.va is not 0: the tuning data was passed from
>                                        the user
>
> Since we should not pass cpu addres to SCP, could I rename tuning_data.va
> as tuning_data.cookie, and write a constant value to indicate if SCP
> should use its internal default setting or not here?
>
> For example,
> /* SCP uses tuning data passed from userspace*/
> dip_work->frameparams.tuning_data.cookie = MTK_DIP_USER_TUNING_DATA;
>
> /* SCP uses internal tuning data */
> dip_work->frameparams.tuning_data.cookie = MTK_DIP_DEFAULT_TUNING_DATA;

Perhaps we could just call it "present" and set to true or false?

Best regards,
Tomasz
