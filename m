Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 924B03E945F
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 17:16:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232894AbhHKPQx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 11:16:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233106AbhHKPPe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 11:15:34 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2830C0613D3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 08:14:32 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id h11so5134475ljo.12
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 08:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/0lDg+NImY6s6wrrkXig40C8tKxVtluzWl+MqfNgFF8=;
        b=Ce6JQNzC9o3guXHmwPdAlP5mDp+4HOxpqLsiszR2taDsyHd5aZaTtsEiOYzxcA/Euo
         m54gnDiSAMUsefUpZmERfYaICrSTLWJnss4J6jqUP28MsYD/M/bsudMDrwWw1drgF+11
         nOaf410iZooybX//Wf08Ka8ZqhmrlLQ8L72boSQnqHy2Ib+K43FyGyfhpWGUj9x2tHJC
         L5Z3j69a2LgLORqEKz40DeaNSjfU8XuH3+JNL9keKcASIm0brFhxaOML27UvakZ4w2da
         IZjxzmrnezYfxVthIm88z0AuFFggizbyH/OCvs1HHNsD59HEtXjUK6jkxAQGeotT/7Nk
         ULdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/0lDg+NImY6s6wrrkXig40C8tKxVtluzWl+MqfNgFF8=;
        b=GC5mXwCnWtUAP3Bi0FuuUcB93SXPlYPNwShZDLCDHBLki2cPzsWt65S9gcnvumzlAU
         AefhFOAA9mBeFhrjTeO3TO82LxVoyEnqsuE7d9iDQS5opZhPNJcpPvKTL51/aIs2qoHG
         UfgjmF/heqFHQhhUADf1Yjn7w+4jSYQoz9NPsGXr1iCjgrvCMhG9x99kCnxcDJj6OPcZ
         v1cVBICKl2TOGM90bJ2MKQj+wxokYPnHi4LlcxmYIbdMqQfimO7TPo9Sa/PSZwJkPhet
         wpZ9Ra3ZG0lnXNXt55aIguAAmWxWeEdmazp3uA8x2aXjKBfG8gA7N16iwecmbWhckjqs
         TQAg==
X-Gm-Message-State: AOAM533ZicBYDurS5vxZ/W77lalv/4hzMKs5cy9h5FfRCak3hGNCvzSU
        +WA3blI0t85l4GRqJ8eZIGVGdU8WW8rittHnpkNNBw==
X-Google-Smtp-Source: ABdhPJzTOffu1IZaK0MrBftpMq2jJlt6JJb23qCbDVtCTwDCSo3HOeEpRFGxSmZshFxUvPMqYO7T98iaggWO6yENtRI=
X-Received: by 2002:a2e:a231:: with SMTP id i17mr13187319ljm.467.1628694871026;
 Wed, 11 Aug 2021 08:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210805174219.3000667-1-piyush.mehta@xilinx.com> <20210805174219.3000667-2-piyush.mehta@xilinx.com>
In-Reply-To: <20210805174219.3000667-2-piyush.mehta@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 17:14:20 +0200
Message-ID: <CACRpkdbZouNdL43=nVLZd3hOeVQTLOZT=5FHGuM+3q3Ah2M9yQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/3] firmware: zynqmp: Add MMIO read and write support
 for PS_MODE pin
To:     Piyush Mehta <piyush.mehta@xilinx.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Zou Wei <zou_wei@huawei.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Michal Simek <michal.simek@xilinx.com>, wendy.liang@xilinx.com,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, rajan.vaja@xilinx.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, git <git@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 5, 2021 at 7:42 PM Piyush Mehta <piyush.mehta@xilinx.com> wrote:

> Add Xilinx ZynqMP firmware MMIO APIs support to set and get PS_MODE
> pins value and status. These APIs create an interface path between
> mode pin controller driver and low-level API to access GPIO pins.
>
> Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
> ---
> Changes in v2:

After Michals description of how this is controlling USB
PHY and misc resets I'm OK with the concept.
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
