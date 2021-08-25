Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 668913F73EE
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 13:00:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240232AbhHYLBA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 07:01:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239054AbhHYLA6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 07:00:58 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 176C9C0613C1
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 04:00:13 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z2so52119492lft.1
        for <devicetree@vger.kernel.org>; Wed, 25 Aug 2021 04:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IMU+pM2QBZzK/mBgD18/2ldTcz6xSYAlm4VwhZW8Xds=;
        b=ZxFTXedcdzgllV0BdZVAIOcwxqUf0UzSNt0l9AgbF7OR686cjSpK+aNfAaHRtMelvk
         yUfJPVebJxXrzWgcVmO85ibd7OEJT1lw3qtrjt58s4CRZLvKL5IFje38BqnLzn3VxGbv
         eums4LevWEoHBjGmer+gWDYX6gm6FxLIvVpYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IMU+pM2QBZzK/mBgD18/2ldTcz6xSYAlm4VwhZW8Xds=;
        b=SKF3A1OzaIOxuY195DD4gwueKnoE7XAC/iaI32PZteFUmozOGAUPrRri/fqdp7L3ds
         ezxbPq/sQV2+jrCJw1nxm4q+THDq7NSzVXZwwFFmvEPK2rCuNJfivbjSWj6W0whNK+uY
         /fWo9YJWiCvFwVmactLVtQEBwxCJgP72q7ZP9JQnGM0kWxU41JAivfJaLHfVtJ/bAWrz
         UTJjvq9ZJpvOBv+OX8rrnQlfQOJoR0w42GPzBW5TSVojKVJZeD8KxpTq/aajOmpANyhn
         ZTGvH/vqqrhLqYLgtcL6DXwbT8+wKFHu7f4BoT1emcHq8Mxo3V2qLwTvl2ecvq6RmnTA
         gMwA==
X-Gm-Message-State: AOAM530/5pVPLAlNXjM39VfIbt93Hnu5e4T2clZEXqlipmIf5tVEKGUX
        fVhma5aPIsY2mV6cIep2JjgKNLkyG4gBONqWEDYysg==
X-Google-Smtp-Source: ABdhPJz0Tnwq+6r0A94ST8UOV01W0Dny2Y9nLZLBesdNACuORbZBRKjlyxU3vEMbYXzhNU3c/9h+wD8v+Hnzoymsh68=
X-Received: by 2002:a19:ca09:: with SMTP id a9mr17326764lfg.342.1629889211438;
 Wed, 25 Aug 2021 04:00:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210820111504.350-1-chun-jie.chen@mediatek.com> <20210820111504.350-22-chun-jie.chen@mediatek.com>
In-Reply-To: <20210820111504.350-22-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 25 Aug 2021 19:00:00 +0800
Message-ID: <CAGXv+5G6wKOZhBRq9J-Jesd1_vHn7Tt4eYo3acTK8-wK8-KjVw@mail.gmail.com>
Subject: Re: [v2 21/24] clk: mediatek: Add MT8195 vppsys1 clock support
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
> Add MT8195 vppsys1 clock controller which provides clock gate
> controller for Video Processor Pipe.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
