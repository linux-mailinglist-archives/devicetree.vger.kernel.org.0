Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1D9D27C774
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 13:54:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730496AbgI2LyM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 07:54:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731448AbgI2Lxh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 07:53:37 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED53AC061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 04:53:36 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id 77so5186989lfj.0
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 04:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m+yh+REYRPMcFWtJ3KK+XsHdGyY7hnWZIctqk8m2S+s=;
        b=VT/oGcVQmGQSWzXQGnh9Q8nwkg452FJ/Kqx8DZo6FfhR3uXJmRSqon6aAslOWXIKSn
         D7SlUhykMoyl9CJxioa721Xs140UK2tP4ofTjy7DOwvC/cqIQmKfEOLSP+WaqhjUZ5vl
         Tn6f6CpHh+ZQYBl2lfRCkSEo11WwQjXApOAO67cigwlCdvmqcUmzMdyasAXmsZVNHEkG
         OiqfRKhSwDLDvLzy+2dxnSpS10m9BS1y5tqoH/xKY6LPh6OfvTCiiJKlAsMDGNSx4/LQ
         ZlC5aYBInroIu84UFo3HMUHlJPE7mJK5Bw9FKZu8FjhFiri70btaN9iaWmr5zObI8Xxa
         dBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m+yh+REYRPMcFWtJ3KK+XsHdGyY7hnWZIctqk8m2S+s=;
        b=mfLzmwRm0WH+KilWVvYILx2rVX57UYh6EoQwgKG77y+bCrAwKbp8BsE7IA4O/sP0/Q
         EGVo47n6RwplH6dsiz+5vYrQWcAUb+dIIsARe6/EcOeaJBoaGf3aRNqCZNQQyY9WQjcK
         aNzBog8Bd0eux1PjwFSARBcZb0Z3fmV6kBF32QggejxWhHsH2kMIruGYTRUBQS4Dwt3a
         O8De05jRzvB1lnR+ykyrSadhBEL5BgvgGKy2vQwzgu2V/iQfZpH4u1RVHdgn9gP04ExA
         UxasvDzeIR9N/e7cnomENoIWtUN+jJJIVAMjvkq9EeKuiYfpVkM4RFvPCqYFoK95gKbz
         KDng==
X-Gm-Message-State: AOAM530aohbhWkK0yhVbpNcCd+yEVmOIFIoVgHXE5Kockmr9X7eDI/8q
        HCCRrZR9k7yj26cAfa5/+fKgQmRntqF1EccS07d2Yg==
X-Google-Smtp-Source: ABdhPJzrPGaDe6JkQnZ2xHPfeDuHb8Ee//4u/1XcASchJMEnyACNvTm296mEjIBGcXnAzRgM845nhA9/UaqAfWnFwfQ=
X-Received: by 2002:a19:6419:: with SMTP id y25mr1008807lfb.333.1601380415433;
 Tue, 29 Sep 2020 04:53:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200920195848.27075-1-krzk@kernel.org> <20200920195848.27075-3-krzk@kernel.org>
In-Reply-To: <20200920195848.27075-3-krzk@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 29 Sep 2020 13:53:24 +0200
Message-ID: <CACRpkdaLB4deB-vNoEc7qubxP8NL6HgBU60-vCCQ5yvS5inJyw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: gpio: fsl-imx-gpio: add gpio-line-names
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 20, 2020 at 9:59 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Describe common "gpio-line-names" property to fix dtbs_check warnings
> like:
>
>   arch/arm/boot/dts/imx53-m53menlo.dt.yaml: gpio@53f84000:
>     'gpio-line-names' does not match any of the regexes: '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Patch applied.

Yours,
Linus Walleij
