Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04A283E5A4F
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 14:46:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240752AbhHJMqb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 08:46:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238768AbhHJMq1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 08:46:27 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78ED9C0613D3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:46:05 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id l4so14201688ljq.4
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 05:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DHQEcn/L096FZeElaexXhPEBfdCO+soqV1fEHutjPfc=;
        b=pVCY8pXO8WZx60AuIWSpSjnrcNn+QdvfI24iCIcoeKiyqzYL01tnKGNifhcSVirEx5
         7vh/G2qT+6K3GKYp1q7HMmh5N6KlRb3uar6xoKqYDMvgdXnR5HbYktcemK1Y0ShEOqpm
         H+aMr+oDEE/A2vPtYnC3GD2aRu/O2HkQdTuEQ0ywmhtGNPAi6T2ILQkTZ3HwCv/RsJn2
         pOrdSEVptFsrNuQ34mdGGx8cQBvY4eCGerDZUcGMQ9ZpH4GEdgvm1IztsvM8Ejf+xnob
         LDGd6Xkt+8WLzcQ91LGk2sW9tFP3+zHZCgfp5fhBvcuxHxtM5z4d7PYhtH9l79yR4vRp
         9V+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DHQEcn/L096FZeElaexXhPEBfdCO+soqV1fEHutjPfc=;
        b=m3qYQI3BnyhRqRvo0XyADDLL5ggd52qlDxOQBI9+V4qc2MqDEL/yEvhRqq8ADQBIdS
         aegRIoqkoabb8knsdzT7cfKpwMuxWR6KXlYFwBCFUFWreeQKcFQLnZ86I3ma0sPteyeT
         p7edNwz8UEqQr2PRrFMFmOiS4QmtXMhEVCUSjZEkeyghZdrIZ149v4zhLhnXWIIjM9AK
         P0U282keWtjQBK9mUrv3f3X/5tJ96FqeEwc9oTcyUhcM907So520xneZluaGBe8zsMA6
         8SyfSH9QFq96QZUIQh3jv0qodcCZpgZlWv9W3UT2Bzl7Pf8cfwz9OUz3NxfYBFtWmSqg
         cAzw==
X-Gm-Message-State: AOAM531ajowPNVT0UGIWuvhzDfINW5k24aSZ1YyAOgMg4UDKWPY09KVF
        xzqbwED3I+NQLgTIkzNncTsJnNBhz+YhE27ZHztgSg==
X-Google-Smtp-Source: ABdhPJx17ikL8rd0Vw6gtWQ3wKu8CkLkaqj4zrGseAsmSHW46dcdTBrLGmh9BIf/ZKcRCwT80y6mnZJMPToeK/DUAjM=
X-Received: by 2002:a2e:b819:: with SMTP id u25mr19278050ljo.438.1628599563886;
 Tue, 10 Aug 2021 05:46:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210723132810.25728-1-alexandre.torgue@foss.st.com> <20210723132810.25728-3-alexandre.torgue@foss.st.com>
In-Reply-To: <20210723132810.25728-3-alexandre.torgue@foss.st.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Aug 2021 14:45:52 +0200
Message-ID: <CACRpkdb2Wvr510Oc-cbN4GHaNBoMvnobB6dUJiCMg=vo3SeTMA@mail.gmail.com>
Subject: Re: [PATCH 2/7] pinctrl: stm32: Add STM32MP135 SoC support
To:     Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        Jonathan Corbet <corbet@lwn.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 23, 2021 at 3:28 PM Alexandre Torgue
<alexandre.torgue@foss.st.com> wrote:

> STM32MP135 SoC embeds 9 GPIO banks of 16 gpios each. Those GPIO
> banks contain same features as STM32MP157 GPIO banks except that
> each GPIO line of the STM32MP135 can be secured.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>

Patch applied!

Yours,
Linus Walleij
