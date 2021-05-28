Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB7A93940DC
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 12:27:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236377AbhE1K3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 06:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236344AbhE1K3X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 May 2021 06:29:23 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1905C06174A
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 03:27:48 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id h12so1405355plf.11
        for <devicetree@vger.kernel.org>; Fri, 28 May 2021 03:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=heitbaum.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hcEHP5lbyUaIDoAJdZRGuAuvH9SN0j6HsI/OD+kTgf8=;
        b=Ern2TC5DD/zOgm1HTsmKET7+vQygjHf+XZmiWrvA3JZWIP3Gal6cQiZBInx3/enbTB
         yWRcq0jwzlWK5BS8LBAECwZ9+AH5TJY9l1Z5BeqiLRTdd96BaPkkv6pw7qPw5obglH9A
         zPaifVDJqu0OlnEt2vciqn7HOESVDgpaefUSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hcEHP5lbyUaIDoAJdZRGuAuvH9SN0j6HsI/OD+kTgf8=;
        b=NKUSHJbEIvW8AiND5awhclicTJsZQ7EcpGAiZwAZkWdlCIjDaahuiY7K7TVs6sSJ4N
         XgG5XbFY8RDeJcQ/dGQRSYRd1yGAx3uAT8B9YERY7t4flS+SqZw8v/O9SUW+kqXSge+x
         rPqsO5XeykMaHUvcucA16rONp7Xfpw7WNlMg9x2V/l9YHsam2OC+vizu8w8uiDIQ1mBM
         A7KayK3wQjXl72Wx3uLHD78ZYRkeBfYODpsze6itl13Zwne2s8aXN1mOD8iKjABjaqVh
         lSJlF+EXmHU+ljae/TeEzqWGiLNxnZEbnKItDPPwttFNY2ruTv3l2LBDuKYwiZ4wOGMr
         IL/g==
X-Gm-Message-State: AOAM533qcd8R7CfTW9Ov977/0jvRABTIxBCxR5Ic/qfH5a6SjucttdCq
        hDYquTnObqOQKLqhjhqFZEsdPA==
X-Google-Smtp-Source: ABdhPJyrvHQGd03xFvYWWLFEZL7c/6jXwPw7GphxisL5MQyYC79GqmhFLOh0ltDvn6Y6bGidAy+NMA==
X-Received: by 2002:a17:90a:5b17:: with SMTP id o23mr3578804pji.14.1622197668237;
        Fri, 28 May 2021 03:27:48 -0700 (PDT)
Received: from 96e513df87d1 ([124.170.34.40])
        by smtp.gmail.com with ESMTPSA id c16sm3965550pfd.206.2021.05.28.03.27.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 28 May 2021 03:27:47 -0700 (PDT)
Date:   Fri, 28 May 2021 10:27:41 +0000
From:   Rudi Heitbaum <rudi@heitbaum.com>
To:     Mark Brown <broonie@kernel.org>
Cc:     Ezequiel Garcia <ezequiel@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        chenjh@rock-chips.com
Subject: Re: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <20210528102737.GA418788@96e513df87d1>
References: <20210526162342.GA20@8bbba9ba63a4>
 <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
 <20210527105943.GA441@7698f5da3a10>
 <462b8d80447efb6c00e93704914169bceb5adc4d.camel@collabora.com>
 <YK+ZMdD+7uqQwCow@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YK+ZMdD+7uqQwCow@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

I have submiited the v2 patch. Thanks for the feedback too.

On Thu, May 27, 2021 at 02:05:53PM +0100, Mark Brown wrote:
> On Thu, May 27, 2021 at 08:51:27AM -0300, Ezequiel Garcia wrote:
> > On Thu, 2021-05-27 at 10:59 +0000, Rudi Heitbaum wrote:

> > > +       /delete-property/ operating-points-v2;

> > Removal of the operating points kind of makes the gpu regulator moot,
> > don't you think?

> It's still better to say what the supply is even if it can't be
> changed - that stops you getting warnings about substituting in a
> dummy regulator and allows the consumer to read the current state
> of the regulator in case that's useful.

I'll look into this.
Thank you all for the feedback and direction on the dts.

> > > +???????????????regulator-compatible = "fan53555-reg";
> 
> > I can be wrong, but I think regulator-compatible is deprecated.
> 
> Yes.

will action

> > > +???????????????regulator-boot-on;
> 
> > Just out of curiosity, is regulator-boot-on really needed for the GPU?
> 
> It should only be used if it's not possible to read the state of
> the regulator enable from the hardware.

will do further testing
