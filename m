Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DF6C3D6D83
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:38:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234865AbhG0Ei1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234909AbhG0EiZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:38:25 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82C74C061760
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:38:25 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id b1-20020a17090a8001b029017700de3903so1900771pjn.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hCM6aDqQlj672QNNN33XxbB1KA2gsQSovUNFK/0sjFg=;
        b=DrDU/26Z3jIjjNMzkvdGR9rNb1RDbCZPotepcGCH0snHc/AmzgHXAzzH0SdjaQ1mPy
         GY84SAdyMr7tNwk6wdulckqzhOojnOhPlp/dW/054ErgQUwYUzUSNHZfm7Pks2+gHnFQ
         klizi6BgKspN3ulK9gCMxeE/OjsQa4b5VJpiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hCM6aDqQlj672QNNN33XxbB1KA2gsQSovUNFK/0sjFg=;
        b=aGVpgxte3tda+jIJu8q6fZt7a7SdMMtKDOepZH4Z57M5AErRBAZX+wzEfNnkU5uX27
         ZBqy6cDZ3dsIDcasRLyJEAD8sqFB+02e56IV54LcmwnWERw+GYyvSPle4U/GNLCsBiDz
         0LULrIKcWtM7vnuzvohO+I5fG2CcwuHtVoKirA7qZr89QDiGhBSMqCJ9+T55drW5lQTf
         pLHUu/5fgYCmpnH5hPOU4LGNaJdTpjXn74XEbd3DyL0uAWz+eHqfgsa+NLCl8MtZlchy
         9NMWFHyKyPbxSH3HcakX3Sa8QEu+MK2zwyV3yWWBJy9JdDWDGw9Ui8dM5TLgPqHHmNHs
         GLNg==
X-Gm-Message-State: AOAM532oDY2Xe2OM5szj9M8Bcr55hqwfLndCE7KklNJZNJxYxu6CImua
        +VRQd72pQaRRQ1KLr125eBq6ykQXGrLHTAWfhihWgw==
X-Google-Smtp-Source: ABdhPJw1I0ipQcf1mUHF8PpOYbrM0NpOo6vsm3gZYflpD3/0aDHJFNjYHGyNJztuit7nHdXSI3z60HYGFeYYm9x7nKY=
X-Received: by 2002:aa7:81d8:0:b029:308:1d33:a5fa with SMTP id
 c24-20020aa781d80000b02903081d33a5famr20861701pfn.55.1627360705046; Mon, 26
 Jul 2021 21:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-9-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-9-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:38:13 +0800
Message-ID: <CAATdQgDxBeDCHKy52XCk8bGNA=fcMFMMf9Q5SZZ4L5SZO9xdYQ@mail.gmail.com>
Subject: Re: [v14 08/21] clk: mediatek: Add mtk_clk_simple_probe() to simplify
 clock providers
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 7:00 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Most of subsystem clock providers only need to register clock gates
> in their probe() function.
> To reduce the duplicated code by add a generic function.
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
