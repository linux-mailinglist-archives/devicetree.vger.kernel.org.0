Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80BCA3F73E8
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 12:59:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240283AbhHYLAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 07:00:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240191AbhHYLAa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 07:00:30 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24049C0613CF
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 03:59:45 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id p38so52161008lfa.0
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 03:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6OhtRqxuCWyLk1aLabWzxilmd8Ou8PbDbdnIDNsifyg=;
        b=UCe6OdgVEduJpDvUvnAB3x/x/zZNszEyU5ZHOrt4vlHiT818x2be4JzjZm1vnIunjQ
         r1CtUT20ws08Uh6T6/kTMmgQLJGl7oTjRiLcRK6Mf1qYkU30h/xSAMX1K9Bcvswq8lPI
         r6YRJ7p9V8s8NFEGw+nFTtgOeo8brw/PWIhKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6OhtRqxuCWyLk1aLabWzxilmd8Ou8PbDbdnIDNsifyg=;
        b=BhqjBAqa6sVDE1t1DT9kbS56jfY1AReCURrFQdlkreQvv3BZjejKKtrvTY/IbKzwJb
         8OCc3Y8kl2BS/R4+mPhmmfcjBDdjVyaYOpnc8e1N6NFshcWfSRafVcrVc9wgdIF7ABG8
         aV1qsneK+iF+pgcID5IyiL+qJTMs2F5Cqwm/ihPyKtbkYffthj9U+n9OfVhWFjZhWRBv
         irkhJKl0X0TtghnrUBzgOHSiz/Tw5po9NjXgjJaVxBuSLurYfD6MHdvt2kHlULq2jYoX
         HcT2csuwycqZxUWGga1ypejv63zMKazEQG5IchjXzXJJ7KWwa2XTDpio4i/ca2pd2Y7e
         WmPQ==
X-Gm-Message-State: AOAM533u4W9OT1dLpo3jShQAc8CiLU8mzFrXi+mThqMbZ0B5MPkrGLVA
        5229XX0RyM5cBmwWir3URPwAU7ijteeS6A7VQ0JfoQ==
X-Google-Smtp-Source: ABdhPJyw9wcy/vAjWZ534fGWZnouFc2vvtw4pcR/SBh/M85HrKYrTsRz17gVQOJwNERGX7rH1TL7mUrMZyB/6EqcRRE=
X-Received: by 2002:a05:6512:3b98:: with SMTP id g24mr24830249lfv.276.1629889183532;
 Wed, 25 Aug 2021 03:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210820111504.350-1-chun-jie.chen@mediatek.com> <20210820111504.350-21-chun-jie.chen@mediatek.com>
In-Reply-To: <20210820111504.350-21-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 25 Aug 2021 18:59:32 +0800
Message-ID: <CAGXv+5GC=3E_Kzes1QKQtJykvGGugUUwjcO0EeDnmoDG0GHFvA@mail.gmail.com>
Subject: Re: [v2 20/24] clk: mediatek: Add MT8195 vppsys0 clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 20, 2021 at 7:33 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8195 vppsys0 clock controller which provides clock gate
> controller for Video Processor Pipe.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
