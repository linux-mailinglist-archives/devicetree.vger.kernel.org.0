Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C9E0CCB03C
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 22:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387407AbfJCUhV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 16:37:21 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:40932 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726669AbfJCUhU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 16:37:20 -0400
Received: by mail-wm1-f68.google.com with SMTP id b24so3433371wmj.5
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2019 13:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=63ds3t73ZrLj3HbV7qUiVgBUuKHqGbWcEjyWgIzskeE=;
        b=ziI1PEzAwuBD/3nwpmQYYXYslTYque2zlEKkMbUyCSw6dlHNV7kB9VAwWgpRurXKN7
         mcDYAmcUhP4bsEqTOLOp0AbA///bwWtKdAP/Z4MthfJQ7kRwHGtBp/lb5UwXguNCgPoQ
         XmUHs1ODk2abTw3MeluecZg+IkWrkJz2mOg6Bqe57LEJevWeEp5tbIi/eMMHn8HSabf2
         YW0j13DLGMF/JF9q0OleDgrOgI+RugOdwOC8B6IAI1lj+J99cQtrssH0cvuTSLNOtufV
         TygGCxlOyWqws2dM4Ux9YWbSh8RVGOp0uKQ7MXo2dt9pqR5oK7lRKvzZmCkPE4o9i2d/
         uo8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=63ds3t73ZrLj3HbV7qUiVgBUuKHqGbWcEjyWgIzskeE=;
        b=ey3bjl/pgqNoROkXX1Tb/zbrD5W5w1ZMEfDi02xo631cfgWcpU/LSxwzXlQOz9OxrU
         ZQPPXiO6Il3XJKxvBiLID0FOetN6SLisuFo13/2X1U3NhIq4Hc+s8vXGXB1adaLqh+vJ
         U14IX+0Q1XGWmE4KgrXEZFdDEDI3VPrLBZe2jt+XyTYg5ilmgSJds67gDs0vsWIrw/is
         c3foXe02z11jiCPHRC/JpUMIfPf6Ry54WM1fiirplMhWcmaOHKlZlKezVl9tT+RSa6qT
         Og/cd6e3LQZibnVX97BUZ2tCUDNird3GD/gmHLou4xSWDYoc9XmqIfXM/oNEdjSCmhhP
         HmQA==
X-Gm-Message-State: APjAAAWLXiI0xwjBF2vusjP6RazRI2WQdYUUrgjLpUAuSNyKZXWC78I5
        mYJpV2kWCxWg9PVGrQUAXzGRwJkn3t9LmqpX/nyXFw==
X-Google-Smtp-Source: APXvYqzVrVcXrzwTGscDiiPv6l+aU2YRfAhMTVv5NfavOPgIBNOF2oVCTqQSyYHsCIQ6dv7jqQDIQMnq8Lmtfdlg0qI=
X-Received: by 2002:a1c:9988:: with SMTP id b130mr8527379wme.164.1570135036923;
 Thu, 03 Oct 2019 13:37:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191002231617.3670-1-john.stultz@linaro.org> <20191002231617.3670-3-john.stultz@linaro.org>
 <2e369349-41f6-bd15-2829-fa886f209b39@redhat.com>
In-Reply-To: <2e369349-41f6-bd15-2829-fa886f209b39@redhat.com>
From:   John Stultz <john.stultz@linaro.org>
Date:   Thu, 3 Oct 2019 13:37:04 -0700
Message-ID: <CALAqxLVcQ7yZuJCUEqGmvqcz5u0Gd=xJzqLbmiXKR+LJrOhvMQ@mail.gmail.com>
Subject: Re: [RFC][PATCH 2/3] usb: roles: Add usb role switch notifier.
To:     Hans de Goede <hdegoede@redhat.com>
Cc:     lkml <linux-kernel@vger.kernel.org>, Yu Chen <chenyu56@huawei.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 3, 2019 at 2:25 AM Hans de Goede <hdegoede@redhat.com> wrote:
> On 03-10-2019 01:16, John Stultz wrote:
> > From: Yu Chen <chenyu56@huawei.com>
> >
> > This patch adds notifier for drivers want to be informed of the usb role
> > switch.
>
> I do not see any patches in this series actually using this new
> notifier.
>
> Maybe it is best to drop this patch until we actually have in-kernel
> users of this new API show up ?

Fair point. I'm sort of taking a larger patchset and trying to break
it up into more easily reviewable chunks, but I guess here I mis-cut.

The user is the hikey960 gpio hub driver here:
  https://git.linaro.org/people/john.stultz/android-dev.git/commit/?id=b06158a2d3eb00c914f12c76c93695e92d9af00f

I'll resubmit again later with that patch included.

thanks
-john
