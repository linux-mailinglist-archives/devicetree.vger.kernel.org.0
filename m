Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D80E53E10DE
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 11:09:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232756AbhHEJJT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 05:09:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230407AbhHEJJS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Aug 2021 05:09:18 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32F14C0613C1
        for <devicetree@vger.kernel.org>; Thu,  5 Aug 2021 02:09:04 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id y34so9682141lfa.8
        for <devicetree@vger.kernel.org>; Thu, 05 Aug 2021 02:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8fY/oxeThB23V+9UG1Edzhasn4C+9ragDJgqZ7k9gIw=;
        b=H49voNK1g+G8urIyGYiAgsJPEAbkGA6DS0f+onn3MiQT2Su6rWS4gKB7NCYVSHsRsr
         dl1CGmKWiTmd9NPn8MdOp6Hfb4ghau3PWU4670rnDYv0GuqdtX91YasNnuxoQRdbNE+0
         O3FXuc8lVPWMvg00OyZkUCg7LFHpMW+eZvOL2Z0nzI/aXYslgWuJbXDtR+P76dcTxMF8
         rdRDG74oSWg/O05nwExHu4GoAoSgkcfIhx3pmDGh9L6aY364AaF1ROfpoU1KauKVULjf
         FmrxPhVj4L17We+I4zMT19/47onr4iF7btZGkwb54yYmD9y23RlPcxKp31vopw7oA8JC
         8JNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8fY/oxeThB23V+9UG1Edzhasn4C+9ragDJgqZ7k9gIw=;
        b=Ox1DhizwuTqd1UZjPfFR61aErffnTC/IxdrKuvGNEvLLnAmcvmrFCzpc1t/4I52CoX
         AGMr2VtxySioYRTeZczpQQPUS0pkxIu/V52zQInX7D0Tj8ca1+Xd8vZk+rljLCIyC3RY
         hSC6Wsg19aVXeWN8HHpDf/NkdqkIorxHmcBj1LAQ/2/jXysDWW6H8Sxyhzfklsw1oTJ8
         MJfgrFXo8zJIDo9rHetP8Py2BLVa0dxbG+N3Q44DNJXS8jhUSBhQwIz6YrV+56CK70vk
         C6uA06V5ukfF6i4AvrYer47HMqd4r9gJZvtYCIPBW9sTuPD6HSjykJIejJlPS2rSf2qx
         twRA==
X-Gm-Message-State: AOAM533oBViZu5Y+HaYRaKkEpFBTJHHGNx26Z0e9nfLv7FdDp1JXE53x
        RBs0GBvAIjJFmJvogL7tHDi8CW76MlGEIqa5L50vQQ==
X-Google-Smtp-Source: ABdhPJxqty0NGuXhYp4Sy3H2W5aZNxbWZCoi8hI7ymIGAcMh8xNGz6zqsExVUV5mnZ5ZSm+iwxpYBLFqDqCMYi8/beg=
X-Received: by 2002:a05:6512:1084:: with SMTP id j4mr2991518lfg.586.1628154542193;
 Thu, 05 Aug 2021 02:09:02 -0700 (PDT)
MIME-Version: 1.0
References: <1627098243-2742-1-git-send-email-dillon.minfei@gmail.com> <1627098243-2742-2-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1627098243-2742-2-git-send-email-dillon.minfei@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 5 Aug 2021 11:08:51 +0200
Message-ID: <CACRpkdYEWDKrcUGcnDLKrx7+cGH4BvKLC0du1wYpkXTiJwn8_g@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: display: panel: Add ilitek ili9341
 panel bindings
To:     dillon min <dillon.minfei@gmail.com>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        kbuild-all@lists.01.org, linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jul 24, 2021 at 5:44 AM <dillon.minfei@gmail.com> wrote:

> From: Dillon Min <dillon.minfei@gmail.com>
>
> Add documentation for "ilitek,ili9341" panel.
>
> Signed-off-by: Dillon Min <dillon.minfei@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Link: https://lore.kernel.org/lkml/1626853288-31223-2-git-send-email-dillon.minfei@gmail.com/

Patch applied to drm-misc-next.

Thanks for working on this!

Yours,
Linus Walleij
