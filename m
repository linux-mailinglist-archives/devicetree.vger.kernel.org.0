Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 315684890A
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 18:34:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726292AbfFQQeV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 12:34:21 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:43035 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726248AbfFQQeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 12:34:21 -0400
Received: by mail-pg1-f194.google.com with SMTP id f25so6102102pgv.10
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 09:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ebkO1wyJElJAHhkYmwNP4KJfNQGU6gGWQjT69uRMtpY=;
        b=hFo756otAjIObcVe8/HRn/qZUyB6hF98qOkrhqiNuAHJARyd2c/tEBuji44b5i3WLU
         ZOohDVCX9y4s+FjGAlSl/BqCiWlR6elBk3gRt4KfqwnXMIv6wKBtYkFP6pp8fj+OcDLN
         Z/qsrRJ/zJXBJ2Wbjbh7VXWHUMcYctewkEbku5xlfwbs6HOR9HM/gYRpHqEGANYW25nr
         501fAtA0ETXTXCz3ZOEVHhMh68b0pN6xv9cjtCwJPE+imnLh+FW1aRTI9ncCXK8LTp2j
         8g7JsFIZx+RPHIdSwZVku8lAR4Pt5JNAcvcyK6qUQc3jBUMsVso41Q/MEln/52XeEmDE
         D5mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ebkO1wyJElJAHhkYmwNP4KJfNQGU6gGWQjT69uRMtpY=;
        b=QGIkhE2SFm+9DkMmqLON5KpogvmxiYM2olCsMFyHfmMNpiEAWelLvIuhcpH4gdHugN
         AhZSh88voNa2F3DqdGeZcZBb2i1zD13yXrtPw3jPa3yoWsUG6Yg3PVvIR3+6ynJgXmTY
         e40G96+QY7XqBvlHUS8miYzuk5IFDrlVed3i9af160gDrPG47mjyjKt0HYFpH1kAfkCa
         zRfq1u2x/Qn5RQp/fpANh3lTCHEw3EISoGjriU6pdHfZo0FIAB2ya2IxwuGlA8fPUw1Z
         irnAH/z8++SBfv+klPB+km2e+B+jgWmC8JsgXnmOimTA6/S8Sw/scdpglfA4XOohX6ju
         ecbg==
X-Gm-Message-State: APjAAAWAQ5ANLDgdGJqTtEpqmeZjSmAiqlK5DJA6qoItzWsJbfKJFs3S
        WaA7lG/TUaylR9IZGEhE9+NX
X-Google-Smtp-Source: APXvYqzEOK55wn6wxv3xLz9QGXsTulkPtopaTMHSWzG0osIiTAA5EDU7cMDDPQr6I7aKH7BBeZ6riA==
X-Received: by 2002:a63:b24:: with SMTP id 36mr50408245pgl.439.1560789260492;
        Mon, 17 Jun 2019 09:34:20 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:629b:c246:9431:2a24:7932:6dba])
        by smtp.gmail.com with ESMTPSA id t4sm10401632pjq.19.2019.06.17.09.34.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 17 Jun 2019 09:34:19 -0700 (PDT)
Date:   Mon, 17 Jun 2019 22:04:13 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     lee.jones@linaro.org, lgirdwood@gmail.com, robh+dt@kernel.org,
        afaerber@suse.de, linux-actions@lists.infradead.org,
        linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
        devicetree@vger.kernel.org, linus.walleij@linaro.org
Subject: Re: [PATCH 3/4] regulator: Add regulator driver for ATC260x PMICs
Message-ID: <20190617163413.GA16152@Mani-XPS-13-9360>
References: <20190617155011.15376-1-manivannan.sadhasivam@linaro.org>
 <20190617155011.15376-4-manivannan.sadhasivam@linaro.org>
 <20190617163015.GD5316@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190617163015.GD5316@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On Mon, Jun 17, 2019 at 05:30:15PM +0100, Mark Brown wrote:
> On Mon, Jun 17, 2019 at 09:20:10PM +0530, Manivannan Sadhasivam wrote:
> 
> > +++ b/drivers/regulator/atc260x-regulator.c
> > @@ -0,0 +1,389 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Regulator driver for ATC260x PMICs
> 
> Please make the entire comment a C++ one so this looks more intentional.
> 

Okay.

> > + * Copyright (C) 2019 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> You definitely didn't assign copyright to your employer?

Yeah, that was intentional. This work is not part of Linaro working hours and
falls into my spare time works where I'm trying to complete the upstream support
for Actions Semi Owl series SoCs and target boards which I'm co-maintaining
(sort of)...

Thanks,
Mani


