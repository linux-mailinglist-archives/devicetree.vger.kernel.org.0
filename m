Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6144C388357
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 01:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239349AbhERXxG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 19:53:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231409AbhERXxG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 19:53:06 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 599FAC06175F
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 16:51:47 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id j10so16280580lfb.12
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 16:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9edfP7byxvK0U61EA/wSfyi78oOGqh1Vam8gAK6iPTs=;
        b=qBLQUbOhrNIqoPvFcPylhSjRcgJSbYYE/U9GIqwEedomt/tfWzA85r+bbVrKAwis73
         id2JCF8EsvI9ww1M4ucaVaNAw2gXh+Nzc3lr7EVrJdRRKtpaYavMppRMiaTVw6sU5bwe
         LWT0Esl2qD0Ups8rO/RbSSyKF2jOVrLKtXAUup3Y9/3/YsvHt9IyGfScBsl+0JZDQhNf
         6AM54mGvvp9VSIarEyfB8qSx0C1OJDJt9fmcZ7pZocKk1fNik/whA/Gna6vQgRTYKZTK
         ZRqWdr/Vgp1cR9t90PXvENWM/xpuDfJvoImwCgJaz50DF/E0iVQkYuWwqSdCGZdZzQhN
         GgTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9edfP7byxvK0U61EA/wSfyi78oOGqh1Vam8gAK6iPTs=;
        b=tbZLo9QqRBc6VRdU0hMRNdcW6O/EUi5L+9dgvMcK40XaietkQ6UaAmCpzyC3ovcMm0
         x8gx+eF/Z6A6TFfGSCyBWWraUih93HAtmXRPKB83pOA8Sb+8egdqSLF6XFNOdBRkythS
         JVYj/akH03ueSt3dCqcPfag72alEQ+kq5vXwthan7Ba3YkpV3pBHw2+82CTtpHA6gA0g
         RXsff6z3cFhZHm7OqtgCM/dQItAjB3ZbgOM2JSesJr8BvPpS6bAM5DTq59l9wpqbLWly
         IW2rD7gw360Gd5CGISjRbbmXe4cX3nL80qMmRmsTMk4D5x6vecGycCPa4IU1RCoGF8T9
         dnhA==
X-Gm-Message-State: AOAM533Bs0QIci3KM5EQK9VUJSASSoZmNHpI9bYrqAniX5yYo2Bme/LI
        o/QXEdjozNU+p1VT2YNFtajq+y8lEiZTs2lx9IccR8DSePg=
X-Google-Smtp-Source: ABdhPJym9GoeL27+IEeJYYnnReVKRL2eKM1qmzRgU3YRPz12gHL8AdcQPEWAsVeSGo+ydu3yWcnvyvzdoCxUgZkGdko=
X-Received: by 2002:a05:6512:49b:: with SMTP id v27mr5967475lfq.29.1621381905714;
 Tue, 18 May 2021 16:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210514123309.134048-1-tsbogend@alpha.franken.de> <20210514123309.134048-2-tsbogend@alpha.franken.de>
In-Reply-To: <20210514123309.134048-2-tsbogend@alpha.franken.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 19 May 2021 01:51:35 +0200
Message-ID: <CACRpkdbhyvMt=e-ne50Vb3jbCbcPCdhFw6nov4Gxge3q1fo5_g@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: gpio: Add devicetree binding for IDT
 79RC32434 GPIO controller
To:     Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 14, 2021 at 2:33 PM Thomas Bogendoerfer
<tsbogend@alpha.franken.de> wrote:

> Add YAML devicetree binding for IDT 79RC32434 GPIO controller
>
> Signed-off-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> ---
> Changes in v5:

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
