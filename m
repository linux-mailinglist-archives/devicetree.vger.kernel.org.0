Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84AF8513EC6
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 00:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353093AbiD1W7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 18:59:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353064AbiD1W7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 18:59:21 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E00B2AE36
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 15:56:04 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id y76so11656712ybe.1
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 15:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AZ8/ZHQt0GRQpJww4lct7d21fcaHvDESbeLqhd2I1bI=;
        b=ucuXnzehNcoNaIFz9y++2PCcsmNoxYh67Y2KFZNW1unHKW3FnmC4jzYOewXM8Y7g4i
         RCw2dTbN99FjrpiObL5fMg0NrgNqjjIxJ5Po0XBvbzx6JzwvnJ8DVM1zIs5zlD74E1q0
         m1O/Hbi6ojuQ+0olAjqTdPvqAkMZ9yZUPWgFNvaDvkofZjKTwao9BpU8U58p7Ha3ctLs
         Myce8HelYJRSbfctgbvNmZpVc9HR27CkzBi+prypXnuk44E85VVpxCQxnGUTA5Ry6iWf
         5XGDUTo34p7wqyxHe6NPQzmfgS+/lpiLoDsVYKk0dhjZWwIDojmNRq91DoVwj1LdSjIR
         axBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AZ8/ZHQt0GRQpJww4lct7d21fcaHvDESbeLqhd2I1bI=;
        b=p5QT4xgoZgc9ZqrodFgEAFudOe4+83Atas0dFs5EjkbiKC6Piz8rd3AAKkwjelusOA
         CFFV+PKzfXgdWMZkG/3TnfI1PvH6wBkafYkBqOmd5slgltATRpRUiFXlzeDx/gxT2vNu
         2snIfN5VZR2CBP4rAshdRHHYSB9Mjli5aGceh4QGtU075yQhfk6wFcc1X6pESe1zQy5K
         GabiJ9maZxUox1+mp6TgrltT2P3k/Q4+SLDbWdKiD9U+XMuL1y1Stkqtb4lW7hqEqZrS
         swP35N35dpOq965QXIcuAEzZLDi/mQhOPA4wYLQTTW2pcdP56E7F19a/9wcKBlwYh2t1
         nNmg==
X-Gm-Message-State: AOAM533GXeLjNLfbiq4DqHd3qTWUUDLwEMqELDqvoPHFzUK1v/yBPEfa
        l/8c688mtIM70vYL2eycsg9pmxrMHgBd5hQUxjWe4A==
X-Google-Smtp-Source: ABdhPJyhJ2SNA8+s8ZqNAY+1RfMSxJ4alux7Fu+Nxl0Epn8PePLV4XNSQZmCWxbE/uh/DAjUC1b9me8wZwZ/ybZMEvw=
X-Received: by 2002:a25:aa94:0:b0:648:62f2:ef4e with SMTP id
 t20-20020a25aa94000000b0064862f2ef4emr21465149ybi.626.1651186563960; Thu, 28
 Apr 2022 15:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com> <20220422170920.401914-14-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-14-sebastian.reichel@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 29 Apr 2022 00:55:52 +0200
Message-ID: <CACRpkdZXuLPpgKcM_OU+Xewuuq6zGJek0QXAT1Xxn5fcZofJvA@mail.gmail.com>
Subject: Re: [PATCHv1 13/19] pinctrl/rockchip: add rk3588 support
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
        Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 22, 2022 at 7:09 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> From: Jianqun Xu <jay.xu@rock-chips.com>
>
> Add pinctrl support for RK3588.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> [merged in downstream fixes, simplified register lookup logic for better
> maintanence at the cost of a bit more static const memory and fixed some
> incorrect registers]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Patch applied, unless Heiko does some loud protesting it stays
in the tree.

Yours,
Linus Walleij
