Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E48CB416779
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 23:28:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243241AbhIWV3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 17:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243303AbhIWV3c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 17:29:32 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 116DDC061756
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:28:00 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id u18so30501185lfd.12
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MBp78sUp/qq/D779imVL/Lbu9PeK78HM+BQnZD0lhMg=;
        b=dLMhZj2ATeDg8EvJemQy9FgJwq6XJChaKvKVxiGKZkC2ahFw9Fj48hgwfEnHh8VTef
         TPL7I+ezTKRF/ZnHsecdGreaLOpCu8Z4Iq2flgSFnWBx39Stm3/MizG30uwnXp10JvHU
         Cc/GeNUwVTlu8iRXXc+jwCAQNtjjys3yKN9BNkFiPzxpZcscgwBVyk+wLxbsOCYd8tfd
         zk8EWPQq9CWphTdO0mDwAtI5Lb/Z0wTSpWf2Q+xhaDytJQ1+SYAXty63wDD4enzYh5bu
         IOvHcfpoXXdmzKzH/EIyw6evK8wMqMqHAZoc0BnAJXBxbNiptwN0J2NMw8fwVKCaXwyl
         S9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MBp78sUp/qq/D779imVL/Lbu9PeK78HM+BQnZD0lhMg=;
        b=X56t/XD0yvgcJQYHsjgbGqeczq1PwM68tP8rk+0vCTCnxyoZ0u4/df0on5gelnsbu+
         +e5W6wlfHS3vdfY4YrCMIieEWmWIktgJAk7ojw0iyBB8Iz+89mAXcxMCF28jNEiDxR/N
         Ec8uKbePaQ6s3wOmK4mXFCpBT833XJzAU6knOEyqLJuvmU863xVz4QieCDIPjqBVIo3N
         D71tNMoSBILHdTfsWvFKA3XJK1fVaE8p65nLNEj/ngK+opiow0vo5IkfkJN009HFC7zy
         23otyu/yTq6yVQpPo+wYHubddR8wnGB3oPorQboP6I33/BJJUvl3Tm8f61WJqInb3y6e
         Uqhg==
X-Gm-Message-State: AOAM532g22nnsrteod3tSKIirwtUmxe/aczXAPqjYyCQXGKW42FyQNAy
        Wi1JIdhz0G25ZD6b7V0z9f9PZephOlj1qN0aRoO+Zw==
X-Google-Smtp-Source: ABdhPJxk9+92vir/6aKWvwZZqvrn3BXSHMFDTsYMgToDbdsDjjA4j0yBdIAENXKur/GrAjTKej3PrD+TXbGhxxaMH2M=
X-Received: by 2002:a2e:89c9:: with SMTP id c9mr7430895ljk.288.1632432478448;
 Thu, 23 Sep 2021 14:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210922025640.11600-1-zhiyong.tao@mediatek.com>
In-Reply-To: <20210922025640.11600-1-zhiyong.tao@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Sep 2021 23:27:47 +0200
Message-ID: <CACRpkdYASy3KMm4VXPrMyvVpONK78gwRn6kthK534pjWb5mhvA@mail.gmail.com>
Subject: Re: [PATCH v13 0/5] Mediatek pinctrl patch on mt8195
To:     Zhiyong Tao <zhiyong.tao@mediatek.com>,
        Chen-Yu Tsai <wenst@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        hui.liu@mediatek.com, Light Hsieh <light.hsieh@mediatek.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Hongzhou Yang <hongzhou.yang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 4:56 AM Zhiyong Tao <zhiyong.tao@mediatek.com> wrote:

> This series includes 5 patches:
> 1.add rsel define.
> 2.change pull up/down description
> 3.fix coding style
> 4.support rsel feature for common ICs
> 5.add rsel setting on MT8195

It appears we have consensus so I have applied this patch set for v5.16!

I had a problem with the bindings patch because the context changed because
of another patch but I think I managed to fix ut up, please check the result!

Thanks to you and Chen-Yu for working this patch set out in close cooperation.

Yours,
Linus Walleij
