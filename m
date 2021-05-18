Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0556388255
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 23:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236052AbhERVqK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 17:46:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352569AbhERVqJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 17:46:09 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04026C061573
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:44:50 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id m11so16026725lfg.3
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 14:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gDa4WHcFdueIrXi1rhrqppN7ZdRyzonqmDM/tclsxk8=;
        b=Lozegdgl3LLaiS0DXMtRyh+aYAHSn61Q/FZlftfF4LWfmAT2SnDWl/kDnCvxJ0+HCg
         C/UczA06CvIaQwdsRrA0MRbAP18/vKmY3tp8abR4BWTx9vExf4998RxT+wY4EjVlgIA3
         P9dMcEWNlvtU8tJps7PF1fbPzPLKjRrQZRlLFdFw6rcl1zMBoUuEMfuET28VQgrrUP5a
         zwmFBQhStoj5cxp+N77Qu61+4FJNBwaqNjqQzeHhjNFz4RjCmNxRDaZv4ycSqK8WFUq3
         oCwDwaGi5gelGVkpHyD7wSJJNXcQbKeOxVM/azsA+biQ6dJ+wa7qS1e7YAxhFKyjyM/X
         1QWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gDa4WHcFdueIrXi1rhrqppN7ZdRyzonqmDM/tclsxk8=;
        b=NjMtYNT89YyDI1lQZeuF0jCuZbhnJ5wt2jwX4htcW7/fVILtn+B8BB+UpPv7vEm/um
         gDM1ZMJYqq0gVqkaweUOah/NblvZm/7zMjzOT0G54l4bSANaeyWN12m+ftZsEgRrQft2
         diDhHJZBiEUyUe3gEt0SxmJmL3YsB44vAv+svlkUWDFQCngQbYQQWzVmXkMBjDnlhJFt
         miMGG2AWwkZF2K/ng6hah9FMbqHQLb0kLkD8qT5a1ey/N11neFCityVl23/g0/3sSL97
         LBq9YobDc2/vSUQVgK1AiqxXaoTU5VNULJJWX0Q1tUvBtVFT+CDmG+9IPSTP34k9Riy/
         Eg4w==
X-Gm-Message-State: AOAM5326v/P7/iMRFf90SzvbymZ86/SBWypmpkV78ojLFO7ds7FwmXPi
        JS9M5WPMs2oV2hdkqdPn9Y2Idar3S/625yFGyZEXRw==
X-Google-Smtp-Source: ABdhPJyv4BLDM+5oyevoFet2Ve5mvZ0YIVLNRIwIVT5044vGftDZlD8yee6eNLuaQFvmk1PTZxkoGk+fLfCys6C7K6o=
X-Received: by 2002:a05:6512:49b:: with SMTP id v27mr5678712lfq.29.1621374288547;
 Tue, 18 May 2021 14:44:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210518151655.125153-1-clabbe@baylibre.com> <20210518151655.125153-5-clabbe@baylibre.com>
In-Reply-To: <20210518151655.125153-5-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 18 May 2021 23:44:37 +0200
Message-ID: <CACRpkdaP5eGe+afaDd29hYy=_drH-245OTcdUFgq0Sz8nZxajw@mail.gmail.com>
Subject: Re: [PATCH 4/5] ARM: gemini_config: enable sl3516-ce crypto
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Russell King <linux@armlinux.org.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 18, 2021 at 5:17 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Enable the crypto offloader by default.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

I'll apply this once the driver is applied to the crypto tree, I need to
update the defconfig for gemini in some other regards as well.

Thanks!
Linus Walleij
