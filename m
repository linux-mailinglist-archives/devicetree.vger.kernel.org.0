Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2B783416F6
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 08:57:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234023AbhCSH5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 03:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234267AbhCSH46 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 03:56:58 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D127C06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 00:56:58 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 31-20020a9d00220000b02901b64b9b50b1so7693462ota.9
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 00:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wKLDlhxIRmQDfaYHrkzF6lP07Hoq0etlvj8YZ+tMFUY=;
        b=t9AFpqhrO7yibnxTuuF+1EaucOklRGoqoNi7aLr0dcqaIZ1U5xcwcprdas6SQDFJai
         HpryM94huCuIp/QGnmzNcotYmO2p0o/wsK7Gfb2mDtd28yrpgO56I/HUsyBKGQ2lwIfT
         SF9HV1G3aQnyGhpWIapGROwcXqIfayKM9viiLSel+mrccgYzu9kEhS3/vimKJiZ1AWJH
         4/BApaSvim0LD7IrH80un2OfTgYGJqQF9+QVzOGi7kgC1ahheJDQBvBq0aBSDw8XIJ9/
         CXuzHasC41ADGVeGy2w7fA5K+eTCx+mq1lYBbbVbFQFX+D3dncCS9ANCERYzJjyi6Ono
         +yfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wKLDlhxIRmQDfaYHrkzF6lP07Hoq0etlvj8YZ+tMFUY=;
        b=q6O91REDeatzssxTVuyCYsKu2RXYiizqgNDE2eUGLRBvmZpsvZ7JiPcgR2h60WWBTj
         cPNb/SCg+vknf6jsT9QFlKCHR2+X2t2aoTbSOdDiyvNemy+zYeInr18n57JYjBurVarb
         HUFUKTRba+5aWMYZX9K27i6YAZU4hP7bDpkrN3+cvzhHK79SZLOcL4Jnd4wwAuTwmRuu
         If9qvtYMHkPLcEw05brKtyShElSXPY4TXTRN15Kq1eHtkrcQcpZJ3MtIZFBWyv172Czo
         NsRKusTLdF82nNAQI8cUJmI2VjP7sgi6IebAi5PdhM45woMvMxQJ7AD/qMFyZHGXyXbG
         NAwg==
X-Gm-Message-State: AOAM531opmuWqyhh2NxKMetz3lbAEK4e17BwowXKxRTKC/aFhBtXJJmB
        LQYuZEjQs3LWU6y1dffxiWJZSgTzlJC4sCEb0XkYdQ==
X-Google-Smtp-Source: ABdhPJzeCdl1/RBLyUCwTe6EyBOOE3ePCeoQEaUMRUr1SSxHvuhC9Ilw+F4ytyNulEB3u0lsp7idrYwaWv3PWHg1C10=
X-Received: by 2002:a05:6830:1352:: with SMTP id r18mr57884otq.283.1616140617798;
 Fri, 19 Mar 2021 00:56:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210212154614.38604-1-sudeep.holla@arm.com> <20210316143429.tdyyulkml4ypdixy@bogus>
 <CAHUa44HdHdN7tES60vcBqRo=afUtxNHx1vnYx5JmX-UocV5PRA@mail.gmail.com>
In-Reply-To: <CAHUa44HdHdN7tES60vcBqRo=afUtxNHx1vnYx5JmX-UocV5PRA@mail.gmail.com>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Fri, 19 Mar 2021 08:56:47 +0100
Message-ID: <CAHUa44FKdj0a9Zd4Kd__J400Z9bvAKgN2bSOKeqHYO1_C1zr5g@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] firmware: Add initial support for Arm FF-A
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 18, 2021 at 3:09 PM Jens Wiklander
<jens.wiklander@linaro.org> wrote:
>
> Hi Sudeep,
>
> On Tue, Mar 16, 2021 at 3:34 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > Hi Jens,
> >
> > On Fri, Feb 12, 2021 at 03:46:07PM +0000, Sudeep Holla wrote:
> > > Hi all,
> > >
> > > This is very basic implementation for in-kernel support for Arm FF-A
> > > specification.
> > >
> > > Arm Firmware Framework for Armv8-A specification[1] describes a software
> > > architecture that provides mechanism to utilise the virtualization
> > > extension to isolate software images and describes interfaces that
> > > standardize communication between the various software images. This
> > > includes communication between images in the Secure and Normal world.
> > >
> > > The main idea here is to create FFA device to establish any communication
> > > with a secure partition. This is currently tested with OPTEE(with changes
> > > to OPTEE driver adding FFA as transport)
> > >
> >
> > Since you reviewed the last version, it would be helpful if you provide
> > Reviewed-by or Tested-by if you happy with this version. I would like to
> > get this initial version merged for v5.13
>
> I've tested this in a few of my setups and everything looks over all
> fine, so please apply:
> Tested-by: Jens Wiklander <jens.wiklander@linaro.org>
>
> I'm also double checking the details of the patches for some further
> feedback. Stay tuned.

I'm done reviewing this patchset. I had a comment about a TODO in
"arm64: smccc: Add support for SMCCCv1.2 input/output registers", I
suppose it isn't very urgent with a 32-bit implementation.

Cheers,
Jens
