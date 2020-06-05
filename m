Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9AC091EEF35
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2020 03:42:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725601AbgFEBmk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jun 2020 21:42:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726016AbgFEBmj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jun 2020 21:42:39 -0400
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com [IPv6:2607:f8b0:4864:20::941])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BB3CC08C5C3
        for <devicetree@vger.kernel.org>; Thu,  4 Jun 2020 18:42:38 -0700 (PDT)
Received: by mail-ua1-x941.google.com with SMTP id v25so2755817uau.4
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2020 18:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C5ypsurKn6EPPW0g1fbnIZOkTknD4rOPJcEpT9vTQck=;
        b=HffCxMdymASad9VyvMn/2LNf5v56Dj+53oolcX6jkBuJFGkFou2hGGiXSQfqGBOmNm
         HVEWDNLljg2ISFqqel2e/W5bnjMEvy3YskA1uOcGblTVNrCvGqzmgYhvPPo9mdMM7heK
         SLkKGObs2MrKOK4IxHgkDx7gnhF7q1R+N2MBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C5ypsurKn6EPPW0g1fbnIZOkTknD4rOPJcEpT9vTQck=;
        b=ozMww11cfXuH1j21vMZ3xsxY+pTLz3bZvEa6z315lvzAkUHZAa+h5fjSZ/DYNJYOFy
         BAfOdr4+BA77ygFC0FSRmx/yrZ183koALeT1Mq+G134AQGj4DJJHKya7WcAUBGXm0m9W
         xn/ugHH2ntE/gdRzKcHjPd/d+g9/ody1mzkp8u4LyXdQI3U23Tm3uWiGbpk76rbQvmaL
         /J11ewCWFJzUHTC3MxFJMBGyz4Fb46vK5phIA9qkgWUStxZVxMtHQ75jwgyQR5OQ4wrO
         djGPNskZIsrHQEs1hbjIHUszBm3TpOiPMKGTrF3WajPBlhzsqj0DwS0NHWbNZ2uZZMN8
         83Tw==
X-Gm-Message-State: AOAM5302h6E90uTXPpqWuF1y93hB6/oLfZnFFBKT9j6nl1w/T676PcXe
        B144We7936+yXVuIpPtFOTOMPwf70YQ=
X-Google-Smtp-Source: ABdhPJzSm1c4oTgjcnWN5S5XaIgRE3pTQRHlJzjTpLiqxbaie/OMIJSlf69JUoOH+nSMjV8ti34thw==
X-Received: by 2002:ab0:7619:: with SMTP id o25mr5291497uap.109.1591321356997;
        Thu, 04 Jun 2020 18:42:36 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id l2sm779161vsh.21.2020.06.04.18.42.35
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 18:42:35 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id d22so1838889vkf.12
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2020 18:42:35 -0700 (PDT)
X-Received: by 2002:a1f:5e51:: with SMTP id s78mr5587128vkb.59.1591321355196;
 Thu, 04 Jun 2020 18:42:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200602052104.7795-1-lukas.bulwahn@gmail.com>
 <828311d2-61ea-42cb-1449-a53f3772543d@roeck-us.net> <CAODwPW_oxDxF_5-icRs0eaRVLgtP+bDc_OSKa=EcfeSp=c6Fag@mail.gmail.com>
 <CAKz_xw0Tqr-idoZbNzg_didSCr5L+L1=76xjF=Sqj4DgpL9g7Q@mail.gmail.com>
In-Reply-To: <CAKz_xw0Tqr-idoZbNzg_didSCr5L+L1=76xjF=Sqj4DgpL9g7Q@mail.gmail.com>
From:   Evan Benn <evanbenn@chromium.org>
Date:   Fri, 5 Jun 2020 11:42:09 +1000
X-Gmail-Original-Message-ID: <CAKz_xw3KuWFSkcz-9hLHGZ2=S7nJ=K=AN6j2FJ6afZBFowJO7g@mail.gmail.com>
Message-ID: <CAKz_xw3KuWFSkcz-9hLHGZ2=S7nJ=K=AN6j2FJ6afZBFowJO7g@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: rectify entry in ARM SMC WATCHDOG DRIVER
To:     Julius Werner <jwerner@chromium.org>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Joe Perches <joe@perches.com>, kernel-janitors@vger.kernel.org,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

AFAICT this has now been merged upstream, I'm not sure what action to take:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5c24a28b4eb842ad1256496be6ae01bab15f1dcb
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=72a9e7fea5866fc471fda78f05f166595c8c6ba6

On Wed, Jun 3, 2020 at 9:22 AM Evan Benn <evanbenn@chromium.org> wrote:
>
> Apologies for that slip up.
>
> Reviewed-by: Evan Benn <evanbenn@chromium.org>
>
> On Wed, Jun 3, 2020 at 6:16 AM Julius Werner <jwerner@chromium.org> wrote:
> >
> > Reviewed-by: Julius Werner <jwerner@chromium.org>
