Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D03B318393
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 03:30:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbhBKC3d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 21:29:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229451AbhBKC3b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 21:29:31 -0500
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97FB7C061756
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 18:28:51 -0800 (PST)
Received: by mail-qv1-xf2f.google.com with SMTP id a1so1907606qvd.13
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 18:28:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v/JR6cxBec2OO4AyQr8LqOFJlkaTALkaG4hkaa3+jH0=;
        b=tmRca4PB2kps0fAMgBJNaTQMArARvSx/SfChzgUdm89r1VOxPYGtgjUqVJbGvABQBi
         b1p0l2nSh7eJd4bBjJyqeqxxzLEQMSvO8U2c8yeds2A1CQZbqXlsRAzJKmGHJukytAFJ
         m/GJu+/zc7xAK2nEL38pW+FCnNngPCIIy0dc0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v/JR6cxBec2OO4AyQr8LqOFJlkaTALkaG4hkaa3+jH0=;
        b=iVvJQWkOzw49Y/cypBQNkGlLU/cqyvoZFMyVk2tej4msutKmH46oapqHZtotj1cfLe
         IJ/AOkCdsko8e9a/lOb/3JnDbbV1fhcgcC6qAXWqFIQF5zJNlkK5LeWDR2SfIvkakIXL
         SSqF76o7NtIGxaswhEALOYJGOQ+TbU8TH9C7hML7mhtSBHUgRYAVU0kIlvD6Ze+4w5hR
         r/pf/YvMCKlJPh6XnFe+jkkX6/ebmXBl1+SCoTB8a+WeJmM1GBpCjsxus9GrRTsGYMV/
         94k7vluAHH2n9CN/a7b0m5OqeKFcCkG4zP4w68kRdm+d/wAlww7KndjcQWdpqAtWf6Eq
         jzQg==
X-Gm-Message-State: AOAM530eDpPNVOpQE3oMjhYLvr56KUSLxz/8uCo/rx+/PwNDfGPqaQik
        S9xpV0/xeiSrEH6TlJoljCI6UjVBu0kAdS76yS0Mcw==
X-Google-Smtp-Source: ABdhPJwx4HM5jl8YL/e1RHuGN3F2Bjd7U1tHpztED7tcsPkI5wXPP1SMXIcnSHppZZwsNvyRd5ps9xcpcH8nuzQqmAQ=
X-Received: by 2002:a0c:ec83:: with SMTP id u3mr5631558qvo.55.1613010530875;
 Wed, 10 Feb 2021 18:28:50 -0800 (PST)
MIME-Version: 1.0
References: <20201114135044.724385-1-daniel@0x0f.com> <20201114135044.724385-3-daniel@0x0f.com>
 <160843556037.1580929.13575770228476494246@swboyd.mtv.corp.google.com>
 <CAFr9PX=f=HyHBk4s3e_vnMDC53R1X18m7sKFCLMMjitPm+8oEQ@mail.gmail.com>
 <160848984935.1580929.936824086681978646@swboyd.mtv.corp.google.com>
 <CAFr9PX=oLqQqvykiwOGAGg1H2CG0BTEqn0TuSrijodjxY52LxQ@mail.gmail.com> <161292417080.418021.13416197091150418216@swboyd.mtv.corp.google.com>
In-Reply-To: <161292417080.418021.13416197091150418216@swboyd.mtv.corp.google.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Thu, 11 Feb 2021 11:28:40 +0900
Message-ID: <CAFr9PXkGeFUyGCKZgYF+0uJT1ywad42RvPg39ggO8WRngY8uWw@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: clk: mstar msc313 mpll binding description
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     DTML <devicetree@vger.kernel.org>, linux-clk@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Willy Tarreau <w@1wt.eu>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stephen,

On Wed, 10 Feb 2021 at 11:29, Stephen Boyd <sboyd@kernel.org> wrote:
> The child clks should be using clk_parent_data to point to the parent
> clks through DT. That way the name of the clk doesn't matter except for
> debug purposes.

I think I get it now. I was using of_clk_parent_fill() to get the
parent clocks sourced
from the mpll but I seems like I should be filling out an array of
struct clk_parent_data
with the indices of the parents and using
clk_register_composite_pdata() etc instead.

Thanks!

Daniel
