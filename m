Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C78682D44F
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 05:38:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725828AbfE2Di1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 May 2019 23:38:27 -0400
Received: from mail-it1-f193.google.com ([209.85.166.193]:36126 "EHLO
        mail-it1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726008AbfE2Di0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 May 2019 23:38:26 -0400
Received: by mail-it1-f193.google.com with SMTP id e184so1325048ite.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 20:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mIbWrLxXAUE8DdyCUYuINo2mEcBTR51/ocvmSZbFSDw=;
        b=lcHDc2Op9T8SoWV1TcTU9MzPj1yUXZKCIdo2qqKUeKkLApgMEYjVonwfqLSxyI8jUr
         dutzBgiBuJt/RUNJqMJHifw/vSAqE9DuDbryE6gSznXK7pHOVR5vgSrMKXYWJPlFOpls
         VzVfrKJwU1ySbtqwH+I71n0GF+r1wIXnbJxRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mIbWrLxXAUE8DdyCUYuINo2mEcBTR51/ocvmSZbFSDw=;
        b=fPlB5Opeoo8QGmJtshPWW66FveT7Dxr42idDRr6STCIcYEcliVupb7PYper8X8IvJl
         JuArLZ/et4htJobgRT3s6ztYiPf4PlohDECUBsPR3K8S+vENqBwbnz/YVK1EcGhNkyQZ
         6a0bR5eGZeUcNJTepGkKdNpeVKVIeUqjAgQBs0xK3eamGI7IR8Y4J+5vuSBgt2CqR92x
         2ifF/xti0RW4742aZf1xEsYjZWyrMwgwSwJy96JqXzx5PJ4SQ1+s203egRr8x9FR2MgZ
         ERqRDbT4ICns0ndJpwGcoXx78mPMTj4R/G61DMxDtcaR5I4cEyzWCPFISoWcfevGCL4l
         GU9w==
X-Gm-Message-State: APjAAAVek4fPRp1vyztIBlb2NwYtVuwuSdtPkvIYN8UmpVeYEnjwVLjH
        Phl/uab0djHcD/4XHYY1kLyHG4amvun7SIN5
X-Google-Smtp-Source: APXvYqyodGT7A2FYTo8CCLy6eyL4M+Zc0izwV0gL9TqALnqxyPAs0FelPSh1pBcCThv0jm8ifUYGFA==
X-Received: by 2002:a24:4c4e:: with SMTP id a75mr5597552itb.42.1559101105657;
        Tue, 28 May 2019 20:38:25 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com. [209.85.166.42])
        by smtp.gmail.com with ESMTPSA id 199sm510561itk.21.2019.05.28.20.38.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 May 2019 20:38:24 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id k20so574377ios.10
        for <devicetree@vger.kernel.org>; Tue, 28 May 2019 20:38:23 -0700 (PDT)
X-Received: by 2002:a5e:db02:: with SMTP id q2mr308707iop.306.1559101103189;
 Tue, 28 May 2019 20:38:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-7-frederic.chen@mediatek.com> <20190509094846.GA65444@google.com>
 <1558466055.15388.342.camel@mtksdccf07> <20190522102514.GA218991@chromium.org>
 <1558619189.7995.27.camel@mtksdccf07>
In-Reply-To: <1558619189.7995.27.camel@mtksdccf07>
From:   Tomasz Figa <tfiga@chromium.org>
Date:   Wed, 29 May 2019 12:38:11 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BbrfhjGbKaUi4p6fJJNOKvkZb4_47gw-W8n5fEmaf5XQ@mail.gmail.com>
Message-ID: <CAAFQd5BbrfhjGbKaUi4p6fJJNOKvkZb4_47gw-W8n5fEmaf5XQ@mail.gmail.com>
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

On Thu, May 23, 2019 at 10:46 PM Frederic Chen
<frederic.chen@mediatek.com> wrote:
>
> Dear Tomasz,
>
> Thank you for your comments.
>
>
> On Wed, 2019-05-22 at 19:25 +0900, Tomasz Figa wrote:
> > Hi Frederic,
> >
> > On Wed, May 22, 2019 at 03:14:15AM +0800, Frederic Chen wrote:
> > > Dear Tomasz,
> > >
> > > I appreciate your comment. It is very helpful for us.
> > >
> >
> > You're welcome. Thanks for replying to all the comments. I'll skip those
> > resolved in my reply to keep the message shorter.
> >
> > >
> > > On Thu, 2019-05-09 at 18:48 +0900, Tomasz Figa wrote:
> > > > Hi Frederic,
> > > >
> > > > On Wed, Apr 17, 2019 at 7:45 PM Frederic Chen <frederic.chen@mediatek.com> wrote:
[snip]
> > > > Also a general note - a work can be queued only once. This means that
> > > > current code races when two dip_works are attempted to be queued very
> > > > quickly one after another (or even at the same time from different threads).
> > > >
> > > > I can think of two potential options for fixing this:
> > > >
> > > > 1) Loop in the work function until there is nothing to queue to the hardware
> > > >    anymore - but this needs tricky synchronization, because there is still
> > > >    short time at the end of the work function when a new dip_work could be
> > > >    added.
> > > >
> > > > 2) Change this to a kthread that just keeps running in a loop waiting for
> > > >    some available dip_work to show up and then sending it to the firmware.
> > > >    This should be simpler, as the kthread shouldn't have a chance to miss
> > > >    any dip_work queued.
> > > >
> > > > I'm personally in favor of option 2, as it should simplify the
> > > > synchronization.
> > > >
> > >
> > > I would like to re-design this part with a kthread in the next patch.
> >
> > Actually I missed another option. We could have 1 work_struct for 1
> > request and then we could keep using a workqueue. Perhaps that could be
> > simpler than a kthread.
> >
> > Actually, similar approach could be used for the dip_runner_func.
> > Instead of having a kthread looping, we could just have another
> > workqueue and 1 dip_runner_work per 1 request. Then we wouldn't need to
> > do the waiting loop ourselves anymore.
> >
> > Does it make sense?
>
> Yes, it make sense. Let me summarize the modification about the flow.
>
> First, we will have two work_struct in mtk_dip_request.
>
> struct mtk_dip_request {
>         struct media_request request;
>         //...
>         /* Prepare DIP part hardware configurtion */
>         struct mtk_dip_hw_submit_work submit_work;
>         /* Replace dip_running thread jobs*/
>         struct mtk_dip_hw_composing_work composing_work;
>         /* Only for composing error handling */
>         struct mtk_dip_hw_mdpcb_timeout_work timeout_work;
> };
>
> Second, the overall flow of handling each request is :
>
> 1. mtk_dip_hw_enqueue calls queue_work() to put submit_work into its
>    workqueue
> 2. submit_work sends IMG_IPI_FRAME command to SCP to prepare DIP
>    hardware configuration
> 3. dip_scp_handler receives the IMG_IPI_FRAME result from SCP
> 4. dip_scp_handler calls queue_work() to put composing_work (instead
>    of original dip_running thread jobs) into its workqueue
> 5. composing_work calls dip_mdp_cmdq_send() to finish the mdp part tasks
> 6. dip_mdp_cb_func() trigged by MDP driver calls vb2_buffer_done to
>    return the buffer (no workqueue required here)
>

Sounds good to me, but actually then simply making the workqueues
freezable doesn't solve the suspend/resume problem, because the work
functions wouldn't wait for the firmware/hardware completion anymore.
That's also okay, but in this case we need to add some code to suspend
to wait for any pending operations to complete.

Best regards,
Tomasz
