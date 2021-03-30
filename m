Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADEE734DE3A
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 04:22:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230334AbhC3CVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 22:21:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230523AbhC3CV0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 22:21:26 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 870E6C061765
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 19:21:26 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id w18so16445076edc.0
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 19:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t+I2LTRrSaD2dqgTJnFDZlqBmSmIDK6EKGUUsBab+3o=;
        b=HLDo2eGRdzM47z7enXblhtI2tqUN4TtD8jk6QPQhFJKesQjp3M7yYrPupBoBSkpP1X
         aO2fEd87vwh83DTc8THjJR9QwqvjUyOIc57BV7Aav/5g1QkWdU4hgGnvHj2zRJFl/bdp
         Bdr/qyZCVkg3XRxhKZVK/UYOeK0/uqNcaeAPt9V4K2ljVwjNZ17Vcqb+UWJjAmF3ORin
         a8KzeHayQhJre0vyCwjuOdDUaRRT/kwqiA34YyR8QazWrpn6fc8uM8TJeMKbaZ6JXCrH
         rPeQZOK3tvFtPQaSBC+TDf8I9mWthsWo+wu22aXM77ViuY8tdH6/k3dNCEc69fxgVunX
         xmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t+I2LTRrSaD2dqgTJnFDZlqBmSmIDK6EKGUUsBab+3o=;
        b=e9GFnTKA1mmeOHtXky8ELcyTt2kjBA+aDEw5Az7PokignnW1y+lTu4LqDq0PIKhqHD
         DcrAqZZBkho9FoOrgKaoSaywXy+4rsP/g7KxOxpLEHREcscByAYx4rSyV8iLgehA77bk
         M/hpLhE6Cs9PCK1ja9lLRZhJ/4dFJAXsZZxgll7WdWWW0wlqOKVviqocrHZdheJ3XAyJ
         zITq5NwJ4h06JugVsv7dLBQ49HjLLVj5p5GSbG6TeQcJ6nAg17cNnpupx+GVeCwJHyNB
         X9Cpz/AYvp4VVVyNTuCrOeoiVoJjLucN8q/McKVnusJfhwDgy2OEI4D2UvrKF5crdcCz
         BF3w==
X-Gm-Message-State: AOAM531WT5XHqdROrppLhNnZID6hcjZ8wzEFXgRVeXsBdINxePyaU180
        XPyztSEpVKjvNNGARDY/A4bbZiB+7LQjVGCfmVd3mg==
X-Google-Smtp-Source: ABdhPJxfqm7YZC2568oVlgVk1D9T7OgNKLSW4S2O8WC4BB56ERwwox1eQbRb3WV8Yh2HTJvLiho2iJMRUKdDm0c9BLs=
X-Received: by 2002:aa7:c3c1:: with SMTP id l1mr31986991edr.208.1617070885249;
 Mon, 29 Mar 2021 19:21:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210329015938.20316-1-brad@pensando.io> <20210329015938.20316-14-brad@pensando.io>
 <CACRpkda78p=aU5xfT+HtC9OCkZdkVEiN64F1jck2FDJB02C+Rg@mail.gmail.com>
In-Reply-To: <CACRpkda78p=aU5xfT+HtC9OCkZdkVEiN64F1jck2FDJB02C+Rg@mail.gmail.com>
From:   Brad Larson <brad@pensando.io>
Date:   Mon, 29 Mar 2021 19:21:14 -0700
Message-ID: <CAK9rFnx+xcbp8hL0Euw4gdZL8_JV8i02S=_VJQ+qct5fn0dg-w@mail.gmail.com>
Subject: Re: [PATCH v2 13/13] gpio: Use linux/gpio/driver.h
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 29, 2021 at 6:44 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Mon, Mar 29, 2021 at 4:00 AM Brad Larson <brad@pensando.io> wrote:
>
> > New drivers should include <linux/gpio/driver.h> instead
> > of legacy <linux/gpio.h>.
> >
> > Signed-off-by: Brad Larson <brad@pensando.io>
>
> Fold into patch 1 as indicated by Greg.
>
> Yours,
> Linus Walleij

Yes, thanks for the quick review.
