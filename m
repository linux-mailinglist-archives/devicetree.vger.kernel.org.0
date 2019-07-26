Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AAED37653F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:10:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726065AbfGZMKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:10:15 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:35359 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726191AbfGZMKP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:10:15 -0400
Received: by mail-ot1-f66.google.com with SMTP id j19so16640612otq.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 05:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JrQTsqOEOykeYsYpjUAu93byMK1KwkPcKibV3U5vnJs=;
        b=n/Tfy/qYbxxPMGO0GtR4PSwWNzJiHr/teYhJWdmOLIQXeIGRhXlrNAOjHxIg44X/c8
         rTMphlu7MEMszPQPE7i0KXL/fg/5WjYEzxco2QaaRD1yrK2bg+KCzZWa39ZRgNTM2LtM
         lCI+/my1YocZGIgiqhq3JHhPYzlOqgYvp6ZdftyiDQSF1s5Nqn4vzv+ZzYEuh31enYTk
         jjQ04X5nn2NicQK3HyVuUjV+toViPvNj+wcJA44R4DusLvIx9mXjaDaZ27VLOEOxPKkn
         k32sNyCUvsUw8nN+h7F+9P8EGFwgzyFqenM4BP1xKx9k2fNKMAwbFIXSWbIArOH/RDFF
         Qdtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JrQTsqOEOykeYsYpjUAu93byMK1KwkPcKibV3U5vnJs=;
        b=RNgL/duut/fZ0QUFxaLGY2h1bsYc6PMYy+2Z+mgY89dQKVYMjRNzYgTESFMq4MnMIa
         P9f8mm6uMtN5HH3UBtKlauO/I5sujiZOrgJvP0fhUkSlVWONiYJLaYv/1uJtkmogEyCH
         97rqICKsBV3mB9nBrCXT2KsH0vPlMev6MXEarJY+N48MOXSzMZqLnVmHgdPXbTUcYw5z
         B8PDjO0FZIjj35wD8ipFCq+Dq8A7NiCi4eoY6/VPxQ1vspcQCkgUxXMZoxtlVXfA0Vss
         CZ7cPxacf4tXaEakj9HHBl5RA+ufZbQ/1/p9b7byDC49xoZx5IdvUgb6QBzOzT2uULwC
         hMrA==
X-Gm-Message-State: APjAAAWw6XBTIqNMYnfsNCdje69NRDdI/4xiz1TRJaC/uqupykerKL/x
        ecp+/CttQ2YNXzjRrKTm6KmaQkjmY7fOZniL4On+pg==
X-Google-Smtp-Source: APXvYqywRN7n6lzmjA5a4KHs4TPzxtEcwP96gaeiFcPkyYj2chffCIcDU5MoSxlTXx3/N/hta8tMsIUOdAnpviY8SDk=
X-Received: by 2002:a9d:529:: with SMTP id 38mr69587609otw.145.1564143014185;
 Fri, 26 Jul 2019 05:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1564125131.git.baolin.wang@linaro.org> <23d51f5d9c9cc647ad0c5a1fb950d3d9fb9c1303.1564125131.git.baolin.wang@linaro.org>
 <20190726112901.GC4902@sirena.org.uk>
In-Reply-To: <20190726112901.GC4902@sirena.org.uk>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Fri, 26 Jul 2019 20:10:02 +0800
Message-ID: <CAMz4ku+3FVOYr7Gvh-Yrdhvw2cfntbnEkhONYGbC71UmCgZA-A@mail.gmail.com>
Subject: Re: [PATCH 6/6] dt-bindings: spi: sprd: Change the hwlock support to
 be optional
To:     Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>, weicx@spreadst.com,
        sherry.zong@unisoc.com,
        Vincent Guittot <vincent.guittot@linaro.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

On Fri, 26 Jul 2019 at 19:29, Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, Jul 26, 2019 at 03:20:53PM +0800, Baolin Wang wrote:
> > No need to add hardware spinlock proctection due to add multiple
> > msater channel, so change it to be optional in documentation.
>
> Please use subject lines matching the style for the subsystem.  This
> makes it easier for people to identify relevant patches.

The subject lines format 'dt-bindings: xxx' was recommended by Rob, so
I am not sure if I need to change the format as 'spi: sprd:'? Thanks.

-- 
Baolin Wang
Best Regards
