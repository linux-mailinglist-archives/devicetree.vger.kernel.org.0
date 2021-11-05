Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9752E445CF9
	for <lists+devicetree@lfdr.de>; Fri,  5 Nov 2021 01:16:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232370AbhKEAT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Nov 2021 20:19:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232531AbhKEAT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Nov 2021 20:19:26 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08859C061208
        for <devicetree@vger.kernel.org>; Thu,  4 Nov 2021 17:16:48 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id v11so24649485edc.9
        for <devicetree@vger.kernel.org>; Thu, 04 Nov 2021 17:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hW9j4fRXjsypK2LBZZotu05pU22OkQcuc/ncvw3x6RI=;
        b=pbIJjLoXkL+canYdkoXsZCKefEFoq5u/2hu4PbFu0Z9ulwm6TbIKZS+7llSC6UkqPT
         fAGdAVF6yuqhnjlUtumqpTgwaLZ05FTlUmuly04laT8N6TIDlkZocXSWC4iP4AqRF/Uf
         lMagwJa1i/DnzdIoXkkVKMX1YN1vJN27FrebxqykazSNJm3hWbKtB1eHHDaRnM/BH/1Z
         VK7oMhV4/NQCNjWyrLI8AXwH/Ye8iY2RHuyCrVreO6oFFozIGopvZgvGTGYi5zg/RNDz
         731xqF16tC5AT8TzfC2lxTEjpWPd72lIWjIpTY9j/JbD6ttGUyne/jfGQrHTlhITQujj
         31aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hW9j4fRXjsypK2LBZZotu05pU22OkQcuc/ncvw3x6RI=;
        b=EgM8GVVwhGmBDg3FYi74eFsACGsMt+ZlzRXV3aKXEZq2zL/RhIKG30hEB5UrllEkH8
         uVdmpt0oGfpjNOBYKlGVHxplviwyhJ2svsLQouXqz0kyaFvIMck0eKXoZKIOToVJfPCR
         dMRs8lrRZY6Ue/zVT/mHAFPKn2Mrd29SYGkn7MLlJ8iklvosa7eenBDPkB7zlciiTT3P
         ai6qttvnvZrAdh/XSLY2FNB38grTklAlQTRuQmr404I7DN/W13Skd8RuRqjNEaesZmnX
         klLj0ZfVEbnXUhlkuxyoBqGgEMxIovqRVyEpLlq+xrpWsyRg/ZL/uyM2I0Nn/5pfrBDn
         jaTw==
X-Gm-Message-State: AOAM533aDH4QVz892IghL7VwfTHwkGEa8zQbbQ7Zq3qskMmaZ6/pUoxs
        OT05yP+ZG8NgFFkxufpluoLT2EHUvfJmIiczgi8YIw==
X-Google-Smtp-Source: ABdhPJz8yDJeZ8Q0sgfBTWu3SvmDy7lzOQpVKbpjk+LSezMt+JHLrZz0I/msEWacixVpHsKXSMOg6bcbbeR3bcnzBbw=
X-Received: by 2002:a17:906:a3c4:: with SMTP id ca4mr64932317ejb.529.1636071406508;
 Thu, 04 Nov 2021 17:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <20211025015156.33133-1-brad@pensando.io> <20211025015156.33133-3-brad@pensando.io>
 <YXnG10suyQYqYv5T@robh.at.kernel.org>
In-Reply-To: <YXnG10suyQYqYv5T@robh.at.kernel.org>
From:   Brad Larson <brad@pensando.io>
Date:   Thu, 4 Nov 2021 17:16:35 -0700
Message-ID: <CAK9rFny1wHxuRa0uZkmsSoNncYV4V-6wsHdo10QXZnrYYmGtUQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/11] dt-bindings: Add vendor prefix for Pensando Systems
To:     Rob Herring <robh@kernel.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
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
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 27, 2021 at 2:38 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Oct 24, 2021 at 06:51:47PM -0700, Brad Larson wrote:
> > Add vendor prefix for Pensando Systems: https://pensando.io
>
> This should be before patch 1.

ack, will order this way for re-spin of the patch set.

Thanks
Brad
