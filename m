Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3C838D20E
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 01:40:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbhEUXlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 19:41:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230174AbhEUXlc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 19:41:32 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DD79C061574
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:40:07 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id c10so11032429lfm.0
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WlVQ19ISRCpscjuNlAD4cWT0Svz2bcNKZPYIjMUXu1M=;
        b=aX1k9mRZcKVRXtR1fUzhOuJtGunx82/uhrILnRXElnoUtFojyFtfh6lKbXkKyAOQkm
         eCG9HEmcv5RFT0cmTvqKgGTwpgaUxW8HHxAMZjRYL+pj7yc6F5PiAXL2GlLYOCABMuwe
         8TpqU+dd6C0Wooth5OjLW6PoS8E8PcPFnL9YYBUd7Eakg67tvTvpilydshRA4EW5HjdF
         iVwisrwXYLSmKUqdALwYa1yTqN33NvgizZvl5E7zDLH9ndaFyLe18Zuu0Tazau6rV4bD
         V3CzJELMn7uqbz36Yvj/8OI4csslshgPR+sJ3wyeH+ZtKgMJnYCGyWknt7x0P6udQ/WF
         eO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WlVQ19ISRCpscjuNlAD4cWT0Svz2bcNKZPYIjMUXu1M=;
        b=UL+8uLQF0oSYuRsx1NpMfc165VTB17URdajsjsaz3AUC3OwwQ3xSuQ/5Jigt0pM1sW
         iu6UQbCUIuhKDDz8RmmsAaZY0wWRCiXqKmQ6P5upMLC47o/j0Q0sS9yKuMVByRQPCDL3
         3oQZI550B5Z1ZOnVh5TzzZ1wOqRVS8mHq+8ITTbIgS1NRv8PvSsbnOx+4pv50xjTUn1C
         zB/ObIYPDKk4LPYgTgB0xSIuG97RjlDKDZvAvSUobgdcjidjb3Lf/HT+cdryr5gcKzcz
         YSZ1h1MCUaBYGnEKcy41cSnpf3NfdJlVXNM6pWATZy7RM8ACJcvZK/nEJkwvnc03QfrW
         lI0g==
X-Gm-Message-State: AOAM533Zij9U6iFHs7qzxUiIK+FcyrYV/NptS7m0YzOdTbpkSWjHj0VA
        AvgkmVy5Dmh7q8cYKzqWtknPjVi+5tPubU9kkZBKsQ==
X-Google-Smtp-Source: ABdhPJxvqTjEXujANJ0Q5EyvfpuNItFf1XQR9pdTLGePX4mVVjEnb0im2IRaX+dCIMf2w+qj2uRWQqY0J6afZcgtelg=
X-Received: by 2002:ac2:544f:: with SMTP id d15mr3624563lfn.465.1621640405652;
 Fri, 21 May 2021 16:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210521193540.16164-1-clabbe@baylibre.com> <20210521193540.16164-2-clabbe@baylibre.com>
In-Reply-To: <20210521193540.16164-2-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 22 May 2021 01:39:54 +0200
Message-ID: <CACRpkdaF6bOR7dkL2dhDy12XaKOWH6S8x-YyCOREopZ-KxeU_g@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: gemini-dlink-dir-685: rename gpio-i2c to i2c
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 21, 2021 at 9:35 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> gemini-dlink-dir-685.dt.yaml: gpio-i2c: $nodename:0: 'gpio-i2c' does not match '^i2c(@.*)?'
> From schema: /usr/src/linux-next/Documentation/devicetree/bindings/i2c/i2c-gpio.yaml
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied!

Yours,
Linus Walleij
