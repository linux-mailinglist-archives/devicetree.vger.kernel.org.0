Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80A5B25D411
	for <lists+devicetree@lfdr.de>; Fri,  4 Sep 2020 10:58:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729901AbgIDI66 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Sep 2020 04:58:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728205AbgIDI64 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Sep 2020 04:58:56 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0A99C061244
        for <devicetree@vger.kernel.org>; Fri,  4 Sep 2020 01:58:55 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id e11so7058632ljn.6
        for <devicetree@vger.kernel.org>; Fri, 04 Sep 2020 01:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=e5bqL5TjHbwBbQQx08EWcQb2A9xnNxuFA36RwtHgwZA=;
        b=vj9H27nYx9c3BTGbF47tdYeEfxFGyDB42r8FcChdlsq2Q/QAmh2XtJIHlpQp6swIoj
         RMTZradXBRiPloHad/p0tj+CYFxCd0KLPu1rFIQDkAxZu9MvBT/H442q8ck4tszxddMW
         FnwBQP08jLIPGtH9wX6JuEtRTf0htM/DhYKhe4TENRq7RI/4j2kFwh8YvydLBowPhWbO
         tLXx1ZqjUnsur2XK8NUt/Y5qGRjIUPkEm0SKV8wa2QuRDfaK1aELXTFEaVa9NNaXEv87
         f93oUQoAdT4bEQTpgSMejicznc2/XIjrvOG9WxQjK/3IwPnLOtbVXC1QNZALiagXtIma
         mzyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=e5bqL5TjHbwBbQQx08EWcQb2A9xnNxuFA36RwtHgwZA=;
        b=hYAwZEPY/L64fKxw9AVMi41YLRlSyY4yKT0fKPqZkyM8nxHporEN17CpVcBPnde3+s
         4jDf2cycKa9LUMjH3MxiK6lDzWISOe3/jwwixMwm/80R/EUgc7vzkwmRbhHIp6RdhGdy
         AZB0JbPjf2l8WC8690rHjH0ORqqSqkKKnaMGHjEBKR91H+699hZnTrZ3JlSEoerq/eoT
         E3bn/JvBKG9KmyDe6aHB4aBS/So8n6nL1HXgneR/BEGOVqtCE5pQUKATGKACkRq9RozW
         gH57m3MQU9Ox6NRInXkTe2C1XGeSqzWdEBAu1r96kfFTA+d3MUvXcpJ4aJnN8NkpozQI
         LsMg==
X-Gm-Message-State: AOAM533bNEkhcvb3DegkPsytI5uwtCIqM9oCHsT2Mc4sMH59YV5p2SRM
        R/eVrD171rZk8BQAKv/kZ33DkKZcreNDBDToNhB9aET5HLk=
X-Google-Smtp-Source: ABdhPJwBOG7Hh44q1D63QCcRhYO5V5+LCYkolaEWM8gLEkK+7LP+gf9P/+1WSp243uMeKZNw+XTvVtxuRO+q8WQ14gM=
X-Received: by 2002:a2e:9988:: with SMTP id w8mr3563728lji.286.1599209934290;
 Fri, 04 Sep 2020 01:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200828130602.42203-1-andre.przywara@arm.com> <19c6a67e-48f0-c0b6-3653-32a5a1f09e07@gmail.com>
In-Reply-To: <19c6a67e-48f0-c0b6-3653-32a5a1f09e07@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Sep 2020 10:58:43 +0200
Message-ID: <CACRpkdbMbNd87145iwdL7=x501cvgU7wiZXNLF456sn6WvoodQ@mail.gmail.com>
Subject: Re: [PATCH 00/10] dt-bindings: Convert SP805 to Json-schema (and fix users)
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Viresh Kumar <vireshk@kernel.org>,
        LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Chanho Min <chanho.min@lge.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Wei Xu <xuwei5@hisilicon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 28, 2020 at 9:34 PM Florian Fainelli <f.fainelli@gmail.com> wro=
te:
> On 8/28/20 6:05 AM, Andre Przywara wrote:

> What is the plan for merging this series? Should Rob pick up all changes
> or since those are non critical changes, should we just leave it to the
> SoC maintainers to pick up the changes in their tree?

What about Andr=C3=A9 just send a pull request to the ARM SoC maintainers
for the whole thing?

Yours,
Linus Walleij
