Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C96B930950
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 09:26:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726724AbfEaH0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 03:26:04 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:43321 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725963AbfEaH0E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 03:26:04 -0400
Received: by mail-io1-f68.google.com with SMTP id k20so7337387ios.10
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 00:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HMhkc6QKxghdSk5QTco54OGClXC9USq7mw8yEKC/dZg=;
        b=rlIw17SjQk8R5gRB5MCzkRmy9anIFsuVUiXk7m/NZFMBdboDLKm3UC/EtGvlvNcdZK
         qGrwLQGq2rW4HuRgbv+9cGw863TKwsqhFQ3op+bLbVrW+KqFhhIyI3Y7hEUaUbG4Zmu+
         +Nc3l161TPzewsb6ry+g5GAJ4yqIHiWfjEm/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HMhkc6QKxghdSk5QTco54OGClXC9USq7mw8yEKC/dZg=;
        b=mOnUMe+YdtpFxyYoRJmPf9RtRvMdCEZWotgPDorK4F+GzL+KY1meoFx9eHRMSDaOJE
         WInO6apasxYBZ5eVbnOkCTF00sxaHviFpAacwSztWZomScQIdu2QwV0JqsHEzPNbm+CD
         pHhaW2AF3BGwpn78tmjfZmZzlZxnj66SaCg6Y3xeoKForV9QFVgeV/SjnRn55kxIrgvT
         /hpOQiFMvu7XDrBtOPB8TgsVy9Ye1rnPF/hnGKPwfH9+TOY0o42z1E707vLp67OX7x/1
         8F99PJr3sHZ5Po2pCTOTSFMfCWW/+64EFuhxK6FMa9zpbrzhAx+z22BWs5ZX8DiZIPoG
         ekyg==
X-Gm-Message-State: APjAAAWibp4xKCvy5Y1j9pDgF1HxYEJWJOTe8D6j1bPTfcxjHUuiUrwG
        xfq0QMuJC6qim4lYcTOTLLktq9MKHhPXen8v+rcXnA==
X-Google-Smtp-Source: APXvYqy8YqHxgOmJ3DOFMi+1eQvArvIpx0esRPLJUvkl/uppnke9kcE464HrgsrNrktbD8QP8cudbV/NYCsIQU8jwCw=
X-Received: by 2002:a5d:9f46:: with SMTP id u6mr5396749iot.297.1559287563830;
 Fri, 31 May 2019 00:26:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190529105615.14027-1-jagan@amarulasolutions.com> <20190531065806.fl4y2kex427qtysz@flea>
In-Reply-To: <20190531065806.fl4y2kex427qtysz@flea>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Fri, 31 May 2019 12:55:52 +0530
Message-ID: <CAMty3ZCfc=xh1cZrM0PST-=QNT8qFRLkjWb4B=7YtLitXo6MGw@mail.gmail.com>
Subject: Re: [PATCH v9 0/9] drm/sun4i: Allwinner A64 MIPI-DSI support
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Chen-Yu Tsai <wens@csie.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Sergey Suloev <ssuloev@orpaltech.com>,
        Ryan Pannell <ryan@osukl.com>, Bhushan Shah <bshah@mykolab.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 31, 2019 at 12:28 PM Maxime Ripard
<maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> On Wed, May 29, 2019 at 04:26:06PM +0530, Jagan Teki wrote:
> > This is v9 version for Allwinner A64 MIPI-DSI support
> > and here is the previous version set[1].
> >
> > This depends on dsi host controller fixes which were
> > supported in this series[2].
> >
> > All these changes are tested in Allwinner A64 with
> > 2, 4 lanes devices and whose pixel clocks are 27.5 MHz,
> > 30MHz, 55MHz and 147MHz.
>
> I wanted to apply this, but it wouldn't apply, can you send it without
> dependencies?

I can do that no problem, but [2] has dsi and dclk divider fixes that
would require A64 MIPI-DSI to work.
