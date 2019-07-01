Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 069895C345
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 20:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726509AbfGASzq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 14:55:46 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:36330 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726307AbfGASzq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 14:55:46 -0400
Received: by mail-io1-f65.google.com with SMTP id h6so31277172ioh.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 11:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=RJ0nEuxA5ZfGEtI2ORfLwcWi8vWMBFVOAlEHomBChyQ=;
        b=HbzLSATlu0bOPE6tk/xnT9HDbbVtyy45AYUGmkUYAX6YsI55Lpn71MXmredYkGWMbq
         1VDR9JEMs83A5H6kwLxkMrdr44fypQJHUNuTDthZLSWTaTyEibYd0g2IUL2UbrIo1tcN
         vXYVBHOzPTaZlFut6jN8aNqd4M2DQbXo0H2btfX9eCdhG1WbruSR2gRKWR38BsjypdHc
         2sLzgCevrNW8pEQM6BKC4Fr9c+vwXxv6Lw202eSNQgMQB4RNLkGrVAa2JfAzn6+a1oND
         fX186svC9PpMypUq4VhzVOmMN0oIsPB/0BdKcPV2A9uIUyNo+FksHyv5Qu0Sl/eP4FUs
         L9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=RJ0nEuxA5ZfGEtI2ORfLwcWi8vWMBFVOAlEHomBChyQ=;
        b=jpxIaQb76cXDOROVzlGv13ds8GQ/iODJOUj8jSQ+kKPFnvPctN4H8VwSIKrrORrMI6
         ni6Oiw8qXtlBUi8Jdf/8Dl14nV0auQRhD1jHBYcTAHa0ZUM61dl47+8jafaM0xFjRGpK
         Dr4oOcH3mzYqf0gxGimDnl6i+mijmfjie/xr6rMCz+GJ1wMXlmtPtVrYvcqKm8Y4/lIc
         d5fZYZ/Fn54yA9NicKPGEbsBZTjlUJNjdBs7f4GCJFj16QgDGbkNmxqJ74CXywoBws+d
         miEEzRSn4iRe1399jToalfqmI2pDp4xDgCFamgZn3gt4e7kkksqRoLQ/NbN3kLtCs8Mc
         6GTQ==
X-Gm-Message-State: APjAAAUtwG5lAN8f0QrgBtZl4kKkRUDDZq4Sdi6Fk0LHPoepaSmQHfKI
        esWezBk2tvq6xpNMjd3T3SjafVD/apE=
X-Google-Smtp-Source: APXvYqwL+eY8ECnhe7jn5wjvS3/54CfYE6LIGPJ7PbOYEamcU5iLZxD/gx7lxHGv1GuBLS9usOFDKA==
X-Received: by 2002:a02:bb08:: with SMTP id y8mr2038974jan.51.1562007345538;
        Mon, 01 Jul 2019 11:55:45 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
        by smtp.gmail.com with ESMTPSA id r139sm24862445iod.61.2019.07.01.11.55.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 01 Jul 2019 11:55:45 -0700 (PDT)
Date:   Mon, 1 Jul 2019 11:55:44 -0700 (PDT)
From:   Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To:     Atish Patra <Atish.Patra@wdc.com>
cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "tglx@linutronix.de" <tglx@linutronix.de>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "palmer@sifive.com" <palmer@sifive.com>,
        "mchehab+samsung@kernel.org" <mchehab+samsung@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "jeremy.linton@arm.com" <jeremy.linton@arm.com>,
        "mingo@kernel.org" <mingo@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
        "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
        "morten.rasmussen@arm.com" <morten.rasmussen@arm.com>,
        "ottosabart@seberm.com" <ottosabart@seberm.com>,
        "will@kernel.org" <will@kernel.org>,
        "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "johan@kernel.org" <johan@kernel.org>,
        "peterz@infradead.org" <peterz@infradead.org>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
        "rafael@kernel.org" <rafael@kernel.org>,
        "anup@brainfault.org" <anup@brainfault.org>,
        "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v8 0/7] Unify CPU topology across ARM & RISC-V
In-Reply-To: <5f31cb3c576bdbd89665614582af66d04ece8f29.camel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907011154310.3867@viisi.sifive.com>
References: <20190627195302.28300-1-atish.patra@wdc.com>  <alpine.DEB.2.21.9999.1907011143520.3867@viisi.sifive.com> <5f31cb3c576bdbd89665614582af66d04ece8f29.camel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 1 Jul 2019, Atish Patra wrote:

> On Mon, 2019-07-01 at 11:44 -0700, Paul Walmsley wrote:
> > 
> > Looks like patches 1, 6, and 7 are missing your Signed-off-by:.  Can I 
> > add those?
> > 
> Sure. 
> 
> Is it a common practice to add "Signed-off-by:" the sender even if the
> sender has not touched the patch at all?

Yes, see section 11(c) here:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n418

The main factor here is that you collected and resent the patches - thus 
you're in the patch submission chain.


- Paul
