Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CBB13E8BD3
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 10:32:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235849AbhHKIcj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 04:32:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233112AbhHKIcj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 04:32:39 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06536C0613D3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:32:15 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id x27so4053676lfu.5
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=T9aF/gnHHaozYj2J+OBaspaiiV6uiEkY/GBIP7m0gEg=;
        b=z4zPOj2oXB+m27UeJcQn5BVLsxsB4z1KOcQYkV7Zp4KvMRcbXTwGaQYgvfjzMX/nBU
         +zmL0eQOyKOXcbZUzpKCJJfPmbA62iwzKwBm+4YtiuzZjzMDYUtdFO0Mz87QkQPr38YJ
         fggNcHhRGF/BagSG37jlWaIkXwYqR0dnF13GLl5azCiqyXmrLFlj3Tzz5mag8r20A6HE
         pZ7rAO2PUBHurc0seOXsZIH1lLrsbGPHPpF9eFSVOwVG8GzQQjJDJ79SKGk+YdBFO9Gx
         3MZeVhJt+5R2p2mJ8v9vcjavRhrjmWHrZ+uhVc8cVKFVyzaTQfCwk2AHhFi9e1n9y8UE
         jwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=T9aF/gnHHaozYj2J+OBaspaiiV6uiEkY/GBIP7m0gEg=;
        b=qqvZjBGd2tVfqai10LRfIqCGySZRggDPO3ox9BlGxRExuAMiA5vi/V8dtq+2ZCdOGg
         Zw0/7eNRNL1KlqzZ6lBH6d8GMqRzLSLR0DJgM1dl9hAeOkCY50JjKwQ7o6tlZwXk4KPy
         qrgf1ATThLvupUirPrmKyxBWr/9TiRwukQ1G6UWKgCQFHVpKOoQ1yU+gb6xrTJBPiyYv
         6DEcv/4FXR2ZrKmdEA2Qx4zWsx5X7zEkIQ0NSG5FB4d6VXb4ghqUocZUckPizH1UhtTO
         BhuR8GifuNImhIxmI5zPHOuCCbKTLpCkrhJqPc8GOo74y1rCyny6QV9UM0HIuDzVsd0k
         3oqQ==
X-Gm-Message-State: AOAM532pqokzhHfWqvBMqriJsoq3c2aU4iPYTTaVVXoUSyXnh5fywCLZ
        FuB5QGIQZnXQNptrc+QG/C3BgoSR2iIuPntxN43E1A==
X-Google-Smtp-Source: ABdhPJx8KOnvL7KNjPPz1PGddRFRscqa0/aQu7hNC6SM9IIiyOqA7hHEP9AiCoar+a37Et8CsHj/YEfe9PFf6cIfeKQ=
X-Received: by 2002:a19:c7cd:: with SMTP id x196mr24373795lff.465.1628670734307;
 Wed, 11 Aug 2021 01:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210726013345.1634442-1-jay.xu@rock-chips.com>
In-Reply-To: <20210726013345.1634442-1-jay.xu@rock-chips.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 10:32:03 +0200
Message-ID: <CACRpkdbU+SXCaJ5N65zKw-btn_CQisp+rhozjtCaZ7y59mvTtQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/9] gpio-rockchip driver
To:     Jianqun Xu <jay.xu@rock-chips.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 3:34 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Separate gpio driver from pinctrl driver, and support gpio v2 controller.

Mostly looks good, but waiting for a respin to address Bartosz
comments on patch 5.

Yours,
Linus Walleij
