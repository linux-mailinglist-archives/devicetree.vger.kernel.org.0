Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 86B2AB5648
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2019 21:37:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727379AbfIQThW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Sep 2019 15:37:22 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:34951 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726583AbfIQThW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Sep 2019 15:37:22 -0400
Received: by mail-io1-f68.google.com with SMTP id q10so10542824iop.2
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2019 12:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GzfOeM4YXNaVVug/Y9rP6TNjAdcpLeqrMGeWr12jW0I=;
        b=hy4k0YX9Sei1qtTc24MBS5tkfywUQM21yOn/s8yTtxIjcXW2VsWE+oz0lQZtylL4tq
         r4YGSTFoCR86rP7Bd0FUL3U8vXkjaCvM5Kx/keKoxqkohINRaEwCB/Ki8dgFY0zuOhsU
         BlAxabDqdis4f5+7+VchpavHcfLoemewRsVEsJUHEa2VLMsKlsd9f4OBSDPB1XKrmpMs
         fb6KABUtMOAQhfxjI8dYWpTmWaRf5af1fHztfDq7FRQ85nYzaHUbYNMiPy0F2FKbonk+
         3kQE2lVDSnuqlUII5iJGGP1KSUbrbhK0xtSM3qw9PmxsMtFL7a1V0FUj7p4JzrQynaTt
         5Buw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GzfOeM4YXNaVVug/Y9rP6TNjAdcpLeqrMGeWr12jW0I=;
        b=KGt/gX2154mQVql3VTTgwNAikSRtNB0ic4d0Y9qxEzc0TS755iQhuJvy8ikFN/zM17
         NgfbZLfwP0j1trYr4iqdaTIw8q14vGefsY3n+A0wzLQ4h6n85GFY+oCyw3ZLWU53pmA7
         8r0seiWsCNUbPHveRwqEkcAdlN2LZuZG9nSd+bO2FUlbJ9fy42yEBufV5eLt0ZpG7SGU
         TU2kM2svQSTf3xP+GotjqDSz6iO0rlMf4KSYcM1iqr9VV98UpYPZys6iPBgrU0Ay0s38
         K+39f6ciAslFBIkQqnjLn3BAelGGMl/Ag5caczmQP641v/G2OXFQc0PBZLyzQtJ2PlEY
         F7Dw==
X-Gm-Message-State: APjAAAW37SGmQzX7+spbfNIdyWpi9XU3scgc8mg/BWl3I/ilqrdayn+e
        R6fOhAWXJh3m6tngpAIdikuIuhdntweSVto96Rp0nw==
X-Google-Smtp-Source: APXvYqw0e0EFP8ROiwN4xfGdJ9tZBKB7V+WNcs9YTPwyEvUGBNKi/5NnjKvoxZM9PZbNrJ20S6rhUdURAVzLk4J/luc=
X-Received: by 2002:a05:6638:73d:: with SMTP id j29mr163533jad.21.1568749041507;
 Tue, 17 Sep 2019 12:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190913115312.12943-1-andrew.murray@arm.com>
In-Reply-To: <20190913115312.12943-1-andrew.murray@arm.com>
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
Date:   Tue, 17 Sep 2019 13:37:10 -0600
Message-ID: <CANLsYkzhB3OBpLTAR54p771OSLxj+NYF8_kE=aMp7SkdNzaxwA@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] coresight: etm4x: save/restore ETMv4 context
 across CPU low power states
To:     Andrew Murray <andrew.murray@arm.com>
Cc:     Suzuki K Poulose <suzuki.poulose@arm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Mike Leach <mike.leach@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Al Grant <Al.Grant@arm.com>, Leo Yan <leo.yan@linaro.org>,
        devicetree@vger.kernel.org,
        Coresight ML <coresight@lists.linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

On Fri, 13 Sep 2019 at 05:53, Andrew Murray <andrew.murray@arm.com> wrote:

[...]

>
> Andrew Murray (3):
>   coresight: etm4x: save/restore state across CPU low power states
>   dt-bindings: arm: coresight: Add support for
>     coresight-loses-context-with-cpu

I have picked-up patches 1 and 2.  As per the conversation we had in
Cambridge where we kept finding ways to break things when dealing with
an external agent, I have not applied the 3 patch.

Thanks,
Mathieu

>   coresight: etm4x: save/restore state for external agents
>
>  .../devicetree/bindings/arm/coresight.txt     |   9 +
>  drivers/hwtracing/coresight/coresight-etm4x.c | 351 +++++++++++++++++-
>  drivers/hwtracing/coresight/coresight-etm4x.h |  64 ++++
>  drivers/hwtracing/coresight/coresight.c       |   8 +-
>  include/linux/coresight.h                     |  13 +
>  5 files changed, 443 insertions(+), 2 deletions(-)
>
> --
> 2.21.0
>
