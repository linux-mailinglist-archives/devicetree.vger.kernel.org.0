Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3F7F340768
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 15:11:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhCROKb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 10:10:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbhCROJ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 10:09:58 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80B07C06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 07:09:58 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id w125so1615928oib.13
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 07:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5vI3l1ZaiofUPOeQyA6WQKSQOzAMKhrXWWM9QsLR65w=;
        b=oCxKOpUOhoNaFCVZ2wTEC1bnJS5HnQrVr5gPdcSCOYSA1qPNCf4VQlsybRlHXEqQZO
         Ba/TYGas5fqrWKtLqhwjCuS2Tz+rhx5Yhk/OTfH3mNNc7ZSb5bjLZ1PVV9LtzQxEPk9w
         aJ4juCcFJT9qaVQoAtr3YDlmEWjMJQQU3LpT7rk4s5IY5IId98Oe8ZCCR8ImGlal1MGP
         aMczZv2gexYlIm/NF+v3nc7iYUafhcRQcdqM5T7cOOYI+46KVccAWaeZ9aVscYcFc7kf
         nI2xWjA/YNsGPK5P+zS+H0QmRDIZZUcT96IrNna+rRY0Nkt8TiqupAqem8Jf28dT9ch2
         PDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5vI3l1ZaiofUPOeQyA6WQKSQOzAMKhrXWWM9QsLR65w=;
        b=J7JqVQsz585LX0MvPtqf++dbUUg4JdWGXU/fBJq9LkxnSnSzC3TaQ2P+/F5QFKkT7q
         JxDXqhUGbRbU5qmzGY34mKSTf4f6CoyuesTxFay+lPzABn/30hXTdnDv8p1oXa655rTb
         7HxIF+DQY9joEXxgLv1zWSVONHo78Q9cblUjzqiwNREe/HVeE3dR/UesuCXZHl+h8Dej
         ncvMaxhzxWk3jQ/a2EVrqPmAIVx55vrW5HK6N+s0M0uLjg051sGOkw1V4q9iBBLzllyp
         53l+iB2DOENMK1ovA+ZuMXMbth7ukFPV+MGdNETuODWuJo4gdzES7+b2ILUJR9uquAQW
         YsrA==
X-Gm-Message-State: AOAM531f9g86cpiphNd9smFY1zMEur7EhK6SlPGGi3ISkJfiully4But
        FAyH1gZ7cHAUk1hqdCBeQXi2f20nF6JplhE6MT1Vyg==
X-Google-Smtp-Source: ABdhPJzmrCiCYJvHYF4lC635t/eeQUVraKAdQtEzvnzsqBANoOPnTz1O0EOZ/zGfvA7iBPijzUXdNaMKFvDsDQt7zTo=
X-Received: by 2002:aca:ea44:: with SMTP id i65mr3154466oih.149.1616076597783;
 Thu, 18 Mar 2021 07:09:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210212154614.38604-1-sudeep.holla@arm.com> <20210316143429.tdyyulkml4ypdixy@bogus>
In-Reply-To: <20210316143429.tdyyulkml4ypdixy@bogus>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Thu, 18 Mar 2021 15:09:46 +0100
Message-ID: <CAHUa44HdHdN7tES60vcBqRo=afUtxNHx1vnYx5JmX-UocV5PRA@mail.gmail.com>
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

Hi Sudeep,

On Tue, Mar 16, 2021 at 3:34 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> Hi Jens,
>
> On Fri, Feb 12, 2021 at 03:46:07PM +0000, Sudeep Holla wrote:
> > Hi all,
> >
> > This is very basic implementation for in-kernel support for Arm FF-A
> > specification.
> >
> > Arm Firmware Framework for Armv8-A specification[1] describes a software
> > architecture that provides mechanism to utilise the virtualization
> > extension to isolate software images and describes interfaces that
> > standardize communication between the various software images. This
> > includes communication between images in the Secure and Normal world.
> >
> > The main idea here is to create FFA device to establish any communication
> > with a secure partition. This is currently tested with OPTEE(with changes
> > to OPTEE driver adding FFA as transport)
> >
>
> Since you reviewed the last version, it would be helpful if you provide
> Reviewed-by or Tested-by if you happy with this version. I would like to
> get this initial version merged for v5.13

I've tested this in a few of my setups and everything looks over all
fine, so please apply:
Tested-by: Jens Wiklander <jens.wiklander@linaro.org>

I'm also double checking the details of the patches for some further
feedback. Stay tuned.

Thanks,
Jens
