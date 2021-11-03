Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4512A444AED
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 23:45:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbhKCWs3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 18:48:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229698AbhKCWs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 18:48:28 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C889EC061714
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 15:45:51 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id gh1so4046400qvb.8
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 15:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nfe3D7clHGl1YZgkT5Ms1GXNSAPyz9/B35wGZ6BRdJA=;
        b=euRqBpHe7zof/gB/pdWm00nUw8LAFIzWvENcia2nOQMD2qz1YnuiNRezwdzo38FXUo
         2q5KmkChXs2ZtGgnd9wZY/P9FTU3Zfc9V2/i3nTZFGzyHp6gU9v4SJqv8grVvOieatZX
         pvCloJ6RcCSdwejgGZXUiGz6W5m6hReIcmig8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nfe3D7clHGl1YZgkT5Ms1GXNSAPyz9/B35wGZ6BRdJA=;
        b=yk+M8BEdiYbWcwV/IzfIu/Q+yibDjpDw8Iu/yeKqAGn4nR+bPCoFZbbs5HMQywrV8p
         9ffmyhZJh7EENUH4azOpS8BRg0XsQ8zSUMpgMmWJdzmh+RK6gO430vf29pISt2hSgeCk
         GvOEZsEofuGNsJZf6vg2az0Gnquz7V5zqu6PmSXurc3VwEt4obwfK8cw0OeygQo+oVQ0
         Ui92v7H9X6jkBHnYoCaCli+DGRUZ/nhA8igL+YcR6va3pZ3G6ZFo40amfyf9IPZKaOqe
         adj7jsLQyPtWv7vWJkpSvZIHlIs8T6+URH3dywns9Oj8JB/8OLu9PhHGghww63bg6ARb
         R+Ig==
X-Gm-Message-State: AOAM533xB5fmmVn7KURB15d5VBciKthcc8WavU2wwo99tGQ4Q5i+NZXF
        HrXUpPmxLKU04rERfWHzxvHj+zyF3GDBiDPV8+s=
X-Google-Smtp-Source: ABdhPJyBiuFpsngJvByWOWn/hd5diNY6ZjO2cLNra4+McwuXCw/CxnR55yD0wt8Ff3yfRdCVM6/BkLr0XUpHaiHuzhk=
X-Received: by 2002:a0c:c784:: with SMTP id k4mr46084501qvj.43.1635979550880;
 Wed, 03 Nov 2021 15:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com>
 <20211102203717.96794-6-jae.hyun.yoo@intel.com> <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
 <8db279c9-4c76-91a5-3617-a17effb2d103@linux.intel.com> <CAL_Jsq+SwCqFycKz4+agRsB3qr4Rbfra55Q6tNbMH2bNtoX+hA@mail.gmail.com>
 <796e0c02-5bca-e8a9-a17f-898aafec237f@linux.intel.com>
In-Reply-To: <796e0c02-5bca-e8a9-a17f-898aafec237f@linux.intel.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Wed, 3 Nov 2021 22:45:38 +0000
Message-ID: <CACPK8Xcwkz1QLOvN0MiSkX+jj2NZY10--1qo7M8UMyEmQQtYmA@mail.gmail.com>
Subject: Re: [PATCH -next v2 5/6] dt-bindings: ipmi: aspeed,kcs-bmc: add
 'clocks' as a required property
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Rob Herring <robh@kernel.org>,
        Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
        Andrew Jeffery <andrew@aj.id.au>,
        openipmi-developer@lists.sourceforge.net,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Cedric Le Goater <clg@kaod.org>,
        Corey Minyard <minyard@acm.org>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 3 Nov 2021 at 17:27, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> wrote:
>
> On 11/3/2021 9:29 AM, Rob Herring wrote:

> > It's possible that 'clocks' was always required or that it never
> > worked without clocks, then this change is okay. Looking at this
> > patch, I have no way to know that. The commit message has to explain
> > that. A commit message needs to answer WHY are you making the change.
> > You don't really need WHAT the change is as anyone can read the diff.
>
> Then what would be better? Would it be good enough if I add more detail
> commit message including a note that dtb recompiling is required? Or,
> should I change this series to treat the 'clocks' as an optional
> property? Can you please share your thought?

Make it essential. It was only by accident that things have worked
without this change.

While keeping backwards compatibility with dtbs is a goal we strive
for, in practice we use the dtb from the corresponding kernel source
tree, so as long as the patch to the driver is applied in the same
place as the patch to the device tree no systems will break.
