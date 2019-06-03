Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DAED032AFF
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 10:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727776AbfFCImK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 04:42:10 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:38615 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727720AbfFCImK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 04:42:10 -0400
Received: by mail-ot1-f67.google.com with SMTP id d17so1117462oth.5
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 01:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v07iYjGp5nWV9CSxAvLDHJlP76eeAiLKXDinb2hN/Lw=;
        b=nHkL5geTJxbfuQTgK6/8G88ruDwULcnsHmwJzcmvL2oHp0myFdfE1FhPnKasmXKmIC
         Wfd3WTWIxsd+dUj98ycDxuRSzGLYPqt/VQNY/7pH+/qeqPhHcOI7KGX/GJ5FajyXLlW1
         cwF76Go8yIl0bRyDwUgpJp9tHHczY09bKqLsVeOfr9OrUvp6aHIjWYi3ldceuTVP2inL
         WZE18/rqHWgtq98O/eF6M9w5rWQWMDjCuZcQQtCrEn+iRPN0fjfXIXKdH9E0CUcthvzE
         kxxLecILJ6UbOTzN0sRITkxwwx6iP1LqU59LacFnojwKM4GslL38Fj+SBrn6mSIKkWV9
         F3FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v07iYjGp5nWV9CSxAvLDHJlP76eeAiLKXDinb2hN/Lw=;
        b=fdJU8pH2949v7ffiIlL5GNSs5FEYsFjbWUll2uQ0eXMuJY9+c5e/MKz/XU/unBaz3C
         bSKFgtqhiPRl/bTaJwv4rwvbWNmIy0dAuxisw+/D9NL8fVlvVTCNJE61o6SNsF46Ktvo
         UxG/yGIrpMi6JUAtoaEyLvc9f1tn0n6sWrLJIQ8no+sV5lQkEgDqpo2dni5nQOrnXBl1
         JiJm/pZrinDL26qjPGMsQO7/M5MMmBFPxC5DS1dFerPKgVtGxLqCqHKIJ/nfC/7LlnFC
         1PaUs2NYr9xTHDnS/3iDDPweRQ+HF/xcWRv0LAvFRhUxWVbL2YNmWnDg7OwJxIIeeRAX
         mOAA==
X-Gm-Message-State: APjAAAWnIeWZoFhd3CImoG2p7tGZQWue2RoMpRIcTmcSl/Ade0zHzyDK
        ShM2pKK0gDeUD+P5Z12M6MN0jZsGUrsDEdBTspLr1Q==
X-Google-Smtp-Source: APXvYqwYLd2dpHu6nvkvw3MVvAzbMJxHXUfJpurp+73sDV/UA282/GSNQJj+tD3erUPCO+itTcUjCH4KgWdFE0lty5s=
X-Received: by 2002:a9d:529:: with SMTP id 38mr328019otw.145.1559551329341;
 Mon, 03 Jun 2019 01:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
From:   Baolin Wang <baolin.wang@linaro.org>
Date:   Mon, 3 Jun 2019 16:41:56 +0800
Message-ID: <CAMz4ku+E=kFgWrvm_wzM2XQQUyYZhc5uokcGEAEbEKpNAYZQ7g@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add SD host controller support for SC9860 platform
To:     Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Chunyan Zhang <zhang.lyra@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        arm-soc <arm@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adrian & Ulf,

On Mon, 20 May 2019 at 18:12, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> This patch set adds optional clock support, HS400 enhanced strobe mode support,
> PHY DLL configuration and other optimization to make the SD host controller
> can work well on the Spreadtrum SC9860 platform.

Do you have any comments for this patch set? Thanks.

>
> Baolin Wang (9):
>   mmc: sdhci-sprd: Check the enable clock's return value correctly
>   dt-bindings: mmc: sprd: Add another optional clock documentation
>   mmc: sdhci-sprd: Add optional gate clock support
>   mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
>   mmc: sdhci-sprd: Add HS400 enhanced strobe mode
>   mmc: sdhci-sprd: Enable PHY DLL to make clock stable
>   dt-bindings: mmc: sprd: Add PHY DLL delay documentation
>   mmc: sdhci-sprd: Add PHY DLL delay configuration
>   arm64: dts: sprd: Add Spreadtrum SD host controller support
>
>  .../devicetree/bindings/mmc/sdhci-sprd.txt         |   19 +++
>  arch/arm64/boot/dts/sprd/whale2.dtsi               |   35 ++++
>  drivers/mmc/host/sdhci-sprd.c                      |  171 +++++++++++++++++++-
>  3 files changed, 217 insertions(+), 8 deletions(-)
>
> --
> 1.7.9.5
>


-- 
Baolin Wang
Best Regards
