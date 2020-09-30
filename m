Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44F8327E5A7
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 11:51:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729018AbgI3JvO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 05:51:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728951AbgI3JvO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 05:51:14 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8A00C0613D1
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 02:51:13 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id x69so1375155lff.3
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 02:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wO+8kMzgsuDmMLo7G30wB5sG1xa3BEBZziOy+MymYXk=;
        b=tUtX71vy9tkoqQ62geyvq12wiO77un7b6TRqnG+ENxpQHgnumjwFS1bqF0b8mGULdD
         qInUR3CpLEeBM4dgrl/3ul/9IlRnkO4q9zFRlQNDNSLCVpLi0lZkCrRyGfzHjA5Jv1VW
         jx7ntT36DDdF28gnuPM2gKhPec0JeXdYV8LbDPwv63C+KjoiNrYc/ViOpSQ5XWuxbiRn
         fHeUb0O9TRsm1Ep6K22wzYmpL3ef0WwA2c3A4VsC42k5P52eW1h9nyiwPuae58mZyjax
         /6Km/DXxFYce3s8evh3zagKef08Z7LG9pAzqKPk5O49thHu645PLmf2mEVq+uRdARX3W
         dkKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wO+8kMzgsuDmMLo7G30wB5sG1xa3BEBZziOy+MymYXk=;
        b=dRD3ileKH959B1WjG/uppWQTSAFTjMNX0Y2zJr2ix3tKQBiaZtZk5l5kXneg8g+j+b
         TPwdutZWJYAib4/K9UfThZiO/+Y3XqNCjR4P1wAilxCVMDfMNx0wXzBC23wKf5ya8cHu
         GMOVB+n6WILFX6/VjlZsO7RRsmWTUPmYoF0/CO2yZu/0FkilBhWVyubgJvCQE4sV8/ti
         ph1FP8vwxp/5K39zRAnNtpGpoD8c0FcO6/lpzY8FLwScn40UljPPiAHfnFGrS2cvrnWE
         1j8/A/W4TqAu9Q95vOv0P2PLMzoK+B9K6z9IpZIVe3KcA66VOppkXRAIwCtwfwNQw8IN
         Idew==
X-Gm-Message-State: AOAM531VhxhWCaZ6wcjK2u8lvkiDjesb+lFQmDqU00TFeQQsmFtZmRVe
        1TN79kJHc7oUqqu0r8Hdnd4zrmKFHIBn5zdgv3EtMA==
X-Google-Smtp-Source: ABdhPJwVN/b8vttgt3uOMaBEvUr+oplFF2B0xPQJVcc+yGWSBU4xGd0qF/xKmXqUhsenbuPNWV0rGcf2C9xSeYz4Yoo=
X-Received: by 2002:a19:6c2:: with SMTP id 185mr545793lfg.441.1601459471538;
 Wed, 30 Sep 2020 02:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200930092053.2114-1-mike.looijmans@topic.nl> <20200930092053.2114-2-mike.looijmans@topic.nl>
In-Reply-To: <20200930092053.2114-2-mike.looijmans@topic.nl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 30 Sep 2020 11:51:00 +0200
Message-ID: <CACRpkdbfqGsvHX_O21oLaCWim=A-OpBV-NzvSvbt5SfjxXN+oQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: pca953x: Add support for the NXP PCAL9554B/C
To:     Mike Looijmans <mike.looijmans@topic.nl>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 11:21 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:

> The NXP PCAL9554B is a variant of the PCA953x GPIO expander,
> with 8 GPIOs, latched interrupts and some advanced configuration
> options. The "C" version only differs in I2C address.
>
> Signed-off-by: Mike Looijmans <mike.looijmans@topic.nl>
> ---
> v2: Split devicetree and code into separate patches

Patch applied.

Yours,
Linus Walleij
