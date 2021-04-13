Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A6CC35E82C
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 23:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232058AbhDMVYi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 17:24:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230346AbhDMVYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 17:24:37 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0C2AC061756
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 14:24:15 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id p16so4981985plf.12
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 14:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Wrolm9Uka0WdrJmXFojnSsyQPM9UJRCVltTGkkPQseY=;
        b=qwu/z3wTrpp5MMaWa7l3cQz4itDaaPHW3JyggVWUDu3sP+rMVEPc7SnPa4fTdHWXWk
         US2+KYZ4o7q6l9qGxwduHbyi5n0IeuW62U3Suibh8TnTfgI0IZOCKOb9aLASA7+pEW42
         ggG9UjpBKBRfvFNiusX16PXpetzhMCieq36otySqrUqD+GMZ/kZDZuDSLhtyi9NRA3xF
         L1zea2cz+qTwKpPP6B/UmmalWKtvDjg5VOLuMzhJrRpIhlXV/3gIYO6Tkf5eHNOh6T5o
         zMcmKvlsqba+0XKpDOephk9dxALnyh2Lf0h0AxtruUZOc6HscSq5KEQj8eDCNlh4mFyU
         iwEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Wrolm9Uka0WdrJmXFojnSsyQPM9UJRCVltTGkkPQseY=;
        b=keablMZ4NEkfkg9s7WaD38PV2RKfNpU2cvVnNENaIKsi74eGed4losaHRtGijcG6Yc
         HpchzjvD/Z80onkVdrGL9kV9Sqk7xq2QDBeoX4xpje/kwL/lWPuTNXjyswg61eZ2zBL6
         6LSR104Jl0fXczTuoi4r9+0XGmNTkA/Qlt/nwJps465ehzTLQi2LoC1nYqF/kM8NxhuH
         6R0AVpQ//U4jXFRvAdvRLBuJTsbK2vGn/eWi+G8txGNFBSYszwWSq9NQgmqAemcCxycW
         6hsYN9gRB+GdZ1ET1+1LgsCBUtmMjNPMkrSOC++OgDruZyQFQ1O+Tv4Imr3aiTl6+RTH
         n+mg==
X-Gm-Message-State: AOAM533uESvVlr2q95ckGFq84fGXAaRA4Khu4bGNVl/MMuP3DOaEsaal
        OevJ7VldhsXIPVhpXU8TNZrAOPulpJFHbAlQoatHIA==
X-Google-Smtp-Source: ABdhPJxORhjMtdH97VTzoYhToT5Sfmca+N6V6zwa7pA3FPVL1L6OGFpc6sJYDeZN7H6NBHUzbo9M08UkzVohS29TCfc=
X-Received: by 2002:a17:90a:ff02:: with SMTP id ce2mr2072837pjb.217.1618349055195;
 Tue, 13 Apr 2021 14:24:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210224191720.7724-1-jae.hyun.yoo@linux.intel.com> <20210224191720.7724-4-jae.hyun.yoo@linux.intel.com>
In-Reply-To: <20210224191720.7724-4-jae.hyun.yoo@linux.intel.com>
From:   Brendan Higgins <brendanhiggins@google.com>
Date:   Tue, 13 Apr 2021 14:24:04 -0700
Message-ID: <CAFd5g452cbyy0Cu=z952X_WMNUoh5TtHvUpDQpA4-APodxZnpQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] i2c: aspeed: add buffer mode transfer support
To:     Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Cc:     Wolfram Sang <wsa@the-dreams.de>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Joel Stanley <joel@jms.id.au>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, Tao Ren <taoren@fb.com>,
        Cedric Le Goater <clg@kaod.org>, linux-i2c@vger.kernel.org,
        devicetree <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 24, 2021 at 11:04 AM Jae Hyun Yoo
<jae.hyun.yoo@linux.intel.com> wrote:
>
> This driver uses byte mode that makes lots of interrupt calls
> which isn't good for performance and it makes the driver very
> timing sensitive. To improve performance of the driver, this commit
> adds buffer mode transfer support which uses I2C SRAM buffer
> instead of using a single byte buffer.
>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> Tested-by: Tao Ren <taoren@fb.com>

Reviewed-by: Brendan Higgins <brendanhiggins@google.com>
