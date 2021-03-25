Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33B05348D0C
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 10:36:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbhCYJgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 05:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230041AbhCYJfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Mar 2021 05:35:52 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E80EC06175F
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 02:35:51 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id f26so2245181ljp.8
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 02:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lnKGY/6ZO5EZRmW+zz0mJjR5jOE8EDHSLr7ZWUE9PkY=;
        b=QCf02xfZoRY77Lzb4pRtECrjKjsrjfypt4uTlhSrnB+Qv7fpYU/0fMZeNOywk9Fbe6
         7VBOsYKrEA7QWamzz0x58Td2jGLzLlEsZgHRQUYpYTRSFtgjgU9RROJCT7AZv1pqaedE
         uF4oEA/VakeAxNrMcBF7X+gA86K5eUTRt3hmrNk2Fii00HIJMuPfSMTIYzYN9uJ4zZRy
         cR0SgYb95NKk4EMcKKs1+t0BTuLAq63PsVbxyWkocMMqexrsBJYz/vHnYtruySV26pAL
         su6GUXDWQKvYpzVwq3ZnZ1Fr3TY700ZKm1Wj2MHWsXe0xg3t2taf22ocn9NZ94X6ocuJ
         I5/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lnKGY/6ZO5EZRmW+zz0mJjR5jOE8EDHSLr7ZWUE9PkY=;
        b=Jy6idaeppjMJLlPndPesSim57NBGtrS2cz/G413S36mHiK9ecxYyiAGmWU1CZX9c3w
         VsgWpIt8wmrlArLw2u+GNEp2m/xZG6oMqB7EvkAuL4aP47ECNvTt8yGumOzSXlgF4ezO
         1oj0K0PvI64mPTjKRVV7CfjxUZr9Q0VW0h9f/8IhrXuFhWAOVMzDoSFoPQRQF3Hg4pRN
         rdiSaDHCzGDlNog0CpxLM5fxfTu4zC8S69B8KmQnE45Xqo+5zdkt0ysOAvvDq3k7JpbA
         Z95x3eM/TBbawwpu1mf5qpzWz+kiRUWMO0JU6dRWP7IRIFDfPOLKEo60nnJMb7At8Ci6
         t40w==
X-Gm-Message-State: AOAM532pGO+XH6yPWk/5meDse+wJoYpW2yQ/kPKmkSH7PQC8D3+DUSSg
        XSIL5pD4n+4tM0UylfFgyAvt8hYWLO1G0VCTkohUJw==
X-Google-Smtp-Source: ABdhPJwprC4cA46dk09VgjsQHeEIOFT5FCcA1k5f8SACsFUHb8+TjiwhQT0lP/fa7ZoYuHTMNWyOV/tAFrWco3l1i4I=
X-Received: by 2002:a2e:9004:: with SMTP id h4mr5090269ljg.326.1616664949901;
 Thu, 25 Mar 2021 02:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1616566395.git.matti.vaittinen@fi.rohmeurope.com> <b2164e5965218f270e17bf29e00ad5c5a0b54bcf.1616566395.git.matti.vaittinen@fi.rohmeurope.com>
In-Reply-To: <b2164e5965218f270e17bf29e00ad5c5a0b54bcf.1616566395.git.matti.vaittinen@fi.rohmeurope.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 25 Mar 2021 10:35:39 +0100
Message-ID: <CACRpkdZnrkiYGaOTZLvCnp72WYiV0+YhCe+TbMjN_3CLyJHvgA@mail.gmail.com>
Subject: Re: [PATCH v4 09/16] gpio: support ROHM BD71815 GPOs
To:     Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc:     Matti Vaittinen <mazziesaccount@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        linux-power@fi.rohmeurope.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 24, 2021 at 8:29 AM Matti Vaittinen
<matti.vaittinen@fi.rohmeurope.com> wrote:

> Support GPO(s) found from ROHM BD71815 power management IC. The IC has two
> GPO pins but only one is properly documented in data-sheet. The driver
> exposes by default only the documented GPO. The second GPO is connected to
> E5 pin and is marked as GND in data-sheet. Control for this undocumented
> pin can be enabled using a special DT property.
>
> This driver is derived from work by Peter Yang <yanglsh@embest-tech.com>
> although not so much of original is left.
>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
> Changes since v3:
>   - No changes

This looks OK to me:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

It could potentially (like the other Rohm GPIO MFD PMIC drivers)
make some use of the gpio regmap library, but we have some
pending changes for that so look into it after the next merge
window.

I.e. for your TODO: look at the GPIO_REGMAP helper.

Yours,
Linus Walleij
