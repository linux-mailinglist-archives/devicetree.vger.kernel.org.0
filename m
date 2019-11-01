Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91DE3EC75D
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2019 18:18:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726957AbfKARSx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Nov 2019 13:18:53 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:36869 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726866AbfKARSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Nov 2019 13:18:52 -0400
Received: by mail-io1-f65.google.com with SMTP id 1so11685686iou.4
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2019 10:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gsPQETmgTl7NAIWAe0p+amO0Xpuf42Sg5sA03PkK6fA=;
        b=DHuiYqjtLEwqyLc8KBlcA9F87Trr8KlR7lQJupob2JvW1qt4IaBr8dS/t93oO8kXMx
         rBldwNzx5Bfy/DNuhhr5XthFjVwEy1vHvByiPxaQDAzxGzfTbhAaVl0tuYACCY0WONO3
         jXIPHzTezjByu4wkcAQNK+Yfgf0uGL8aewFnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gsPQETmgTl7NAIWAe0p+amO0Xpuf42Sg5sA03PkK6fA=;
        b=t7ag0XuJFBCv7NyujnNslh/MfD06xPFzEs2bh44vst2E75sY0iI2KKhzMakZHX4vHe
         PxN+OQumDkcuI8XiYVFZRnNXGPcPoRXN/EIRVA8y6nmu4ETS6y5nDzTETxE8lNZCLqJo
         aVzkMcbqWjVt2B5OQCW1sHu2GqdJE9j0MRm+QADhfVDkHK1voMAAlaroqFiITgWhNcDK
         UZinRLycRnaQvqffh3pltM6aHbe2W9IRRwgEd0yV43buPfoGLThVe6zojCnHn9UVnfkP
         eh+u9Rw+sq74v9sTpEZQmH+NoHbdz871uiRsDNJeZG4N0mBCHK/+dFcuFxiCvppblNSm
         2oLg==
X-Gm-Message-State: APjAAAVuVwAsViMCnLOaPJuJZMGCMZqvtJnmK0QRjEPhUTBBhqYiY0dA
        uqd5hTAZqK4Twd2NRMsXTI/B3BH0laL+W0ikvdw/bQ==
X-Google-Smtp-Source: APXvYqzXiC7EL678+PXm0OrA280csP8J0SZXUGEUAnJ/ik++qiGdw5SRlWYaLOt1/bpVHe7UCsf7VcAlx4eKOCsSzv8=
X-Received: by 2002:a5d:8d95:: with SMTP id b21mr2294351ioj.61.1572628729457;
 Fri, 01 Nov 2019 10:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
In-Reply-To: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Fri, 1 Nov 2019 22:48:38 +0530
Message-ID: <CAMty3ZDSK4mJk0bkQ_e3m1=Ar+NnGZS7q8zFYJJHtZY3HeBkfw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To:     Markus Reichl <m.reichl@fivetechno.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heiko Stuebner <heiko@sntech.de>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 1, 2019 at 10:24 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> POE interfaces. Use it with a separate dts.

Thanks for the patch. Indeed have an impression to go this via overlay
rather than a separate dts since it is HAT for base board, does it
make sense? or is this the way it is handling in rockchip dts files?
