Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C16A440ED64
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 00:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241143AbhIPWeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 18:34:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241131AbhIPWeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 18:34:21 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E24BC061764
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 15:33:00 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id t10so18867744lfd.8
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 15:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C2Pd9oQGhsIAALkBCdNNs3Jk3IqYwXgIkUsJNmKqGe4=;
        b=AFSoc9u3yI+qZzT607V2n1nfEHCXO38yJEtaibfgn8ZEFzLgedJN/Rop5q/SWjAqam
         NExNaUbhkeVgxA/JRNTOLd+QU79s8Y0aRXFaxaTY9UbFHBAAjtNlESlSl/L/dMqas/vG
         +prNUa2EEa2Ft6E1RlwGuxTVLZjNN8Stgh+JZr3AtjtKO62Q/XIs3iS6mNbSSQUw1eCz
         fgHlZx78TKrmNlK/BOZrlviCUFCG3Ip8T8nDqFbZB8w5r/F6h9uu89rWa+upbH3cJpcY
         0wlfA0GY9GgbLoNL4fllS6wGxeD06CTdJZ7HMLfPfpKeTyefnImaRTMjLjJsKql8PrUe
         YBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C2Pd9oQGhsIAALkBCdNNs3Jk3IqYwXgIkUsJNmKqGe4=;
        b=GGZQWQgTfS16SWKIhL7MHb+Q8fWK6P+wg1P3gAMsN68lglAMFpDgMX/WFwxcSdRHOq
         9OGE4p4NaPDEZgg34ZNTweJRSXPVXqPsySaNq2ZxJ87TnUOk0lCDF3FJJ1FkfocwEDjS
         w8cXkBkVGeuSi7KFXj4UHG+PrnzpHh9xa6C6s+/d9MuTmnCgbN7FwfPXeY045F293D3Z
         DiOI+/fr2L97nPX2BhEjaEhp0ohamZIIppVnEJKCISN8wB5OFmnazpnxdenio5bC6cfS
         2ZmLVStVgZj6I61J/jteJrLQWG+x7h38x80A5f2316x4qiL7hVjEBb9GW5pyCdchYzIJ
         1Ejg==
X-Gm-Message-State: AOAM531H9/YG51cPNjqOzHZ7aIaWfxLjT/oz5q5ZZtVb3lBeQfxRTHvk
        UCohn+/4s+F938/M1ixpYFR1Zoftss3bU/RJR2l6fw==
X-Google-Smtp-Source: ABdhPJyxqxvinOj8aMJiZNnMyx2DgvsDEllzpmCWgV30ksZxAhfVIZ1rNGoh75+UjjbXoIY477ApJn6fT4OHdj1weFc=
X-Received: by 2002:a2e:5758:: with SMTP id r24mr6861004ljd.432.1631831578894;
 Thu, 16 Sep 2021 15:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210911071046.17349-1-zhiyong.tao@mediatek.com> <20210911071046.17349-2-zhiyong.tao@mediatek.com>
In-Reply-To: <20210911071046.17349-2-zhiyong.tao@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 17 Sep 2021 00:32:48 +0200
Message-ID: <CACRpkdYim-2xcKux+4M3JTwRuE7SgEH7d2HszPXO3Z=AKdHTrg@mail.gmail.com>
Subject: Re: [PATCH v1] pinctrl: mediatek: mt8195: Add pm_ops
To:     Zhiyong Tao <zhiyong.tao@mediatek.com>
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
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Chen-Yu Tsai <wenst@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 11, 2021 at 9:10 AM Zhiyong Tao <zhiyong.tao@mediatek.com> wrote:

> Setting this up will configure wake from suspend properly,
> and wake only for the interrupts that are setup in wake_mask,
> not all interrupts.
>
> Fixes: 6cf5e9ef362af824de2e4e8afb78d74537f1e3db ("pinctrl: add pinctrl driver on mt8195")
> Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Patch applied.

Yours,
Linus Walleij
