Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 620223D3D32
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 18:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbhGWP3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 11:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhGWP3D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 11:29:03 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1887C061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:09:36 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id g13so2847494lfj.12
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CUZub6tYMC5rdH2GsxFohlUBAJBqmcxB+r6GGbVLSQI=;
        b=jDcmGZqh5+TCG4aW8YRE7eHDVom1uRP1PjSpQYjST6gGZfVqMs/Kjk2L64i30vA1mt
         hCADMD9+8FknjB3QrSDx8L3AkP8jguROpDDeyh5Q6hSg0tqAY7OJmnyXscXNke8n3Nzp
         CnuDn3AoeGdPYHvUUhMH14y9Ri4GhyKV1r+nUdNMiWwLL9VY+1lb+loi005d51jaPrDb
         QGm5CV2jo2YLD1Q1SrcUwUOjXnn2+axtONqxNUMIRqM53/XKraWIULcSau3yXWU48wSi
         neMbTsLg2McH8GmBCnBFvhK3JTib0phAX+8LjpbFD92a/7m6iTSlWrSgktWjuGCTd5fc
         IvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CUZub6tYMC5rdH2GsxFohlUBAJBqmcxB+r6GGbVLSQI=;
        b=TnXERNzspU3TkcUmQKF/7AfeKlN6SiKzg+dcHI1mruZ3GwWITn6sV+biEZIEx1gqk7
         uCM0Z+BQAsJlfmRvlMcv8vcYlWPkOXwdINTtILdpUGRMz38lpEJlpFLRmgMD+Ft0PzHH
         z4fSG/LzBdMwp9eCPoOgJm58hXZxUGAs/12P/vopSWIu0oDJ+lIJO52hR+M0m1zOPWn2
         yBvfwCoTQd8WTrcwZ8gHoHUqvV7smYpoReGYl1i1Gis8KRi0JQ3XwU5jAeBCGfWrOXo7
         cL07K3gCynU7CI8KDkQN3gS0J9M+cahmV6VLFqQsJHLaJLqmXst1K5R8dFG3Cg7BtYpi
         atvw==
X-Gm-Message-State: AOAM532FSDGcBp0bB0dVwXrxB72sMt9Pej06/eKP2SswvLjYtQsgNVnC
        Ep1xLdEcliI5F60g4nMeWBQX8HTGM13/xLoeQ9GcfA==
X-Google-Smtp-Source: ABdhPJyGZM4DpxYoi4G/uaylBWCJNwRIGO7fkTktk0W9ZePKQef+muQvEXOnibA8DVz68yRY+B1BXqD87s4k8HGuhAw=
X-Received: by 2002:a05:6512:2603:: with SMTP id bt3mr3597638lfb.529.1627056575160;
 Fri, 23 Jul 2021 09:09:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210624214458.68716-2-mail@david-bauer.net> <202106251253.ajNPgHe1-lkp@intel.com>
In-Reply-To: <202106251253.ajNPgHe1-lkp@intel.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 18:09:24 +0200
Message-ID: <CACRpkdYH=UVnm379f2CyFJyO3eGyy9HCqaOW-=saYqshUO-M4Q@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] pinctrl: Add driver for Awinic AW9523/B I2C GPIO Expander
To:     kernel test robot <lkp@intel.com>
Cc:     David Bauer <mail@david-bauer.net>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, kbuild-all@lists.01.org,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 25, 2021 at 6:51 AM kernel test robot <lkp@intel.com> wrote:

>    drivers/pinctrl/pinctrl-aw9523.c: In function 'aw9523_init_gpiochip':
> >> drivers/pinctrl/pinctrl-aw9523.c:812:10: error: 'struct gpio_chip' has no member named 'of_node'
>      812 |  gpiochip->of_node = dev->of_node;
>          |          ^~
>
>
> vim +812 drivers/pinctrl/pinctrl-aw9523.c

I haven't even seen the patch adding this driver, is the problem on my
side?

Yours,
Linus Walleij
