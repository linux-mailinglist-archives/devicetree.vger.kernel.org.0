Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E5D43D55EF
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 10:56:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232120AbhGZIPi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 04:15:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232048AbhGZIPh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 04:15:37 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B6CC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:56:04 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id u20so10118288ljo.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 01:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vfGOANo6TojxjSyUtBk+c/yyOvQBgYLoVpO4rN8lOu8=;
        b=Wo+D0NDi9dCxo6BkePhL3/dXKXwvkD2kVC2GJFC2gJSO3EZLYYYxJQkokJCoepYYXN
         zKDrD9uf5JXkZU5sUlphcVcLPYw2DbuALfhCpYCr16P0sLCoBjVnmpJ4+bkbbZsY+6Ae
         aePG/1QMSSWkKXv1jQoz27Sw0QoS12K/1w8X0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vfGOANo6TojxjSyUtBk+c/yyOvQBgYLoVpO4rN8lOu8=;
        b=DBQuz4+/BlyQxbN4Pqeiv7ZuRt99/MiVKh4x9SYLZrKmM+MIPheOam9WgPpN+cH1IX
         mIovoxetP8hpQQXg8g92Yxj7BojjJQOLwO9ZUT79ljc2GVQNprZDjUneFgaQKdp6Q+gH
         rd4tRyeQaUpR8pRUkxY+Pg6z5vl/C1832M9SBtNXs58nbfaSoUBXR9S73Cqj4e3FNOSC
         ax++6Iqvb1BCB1fWnxdwCy6ubwCWs/chNl9BybpBXbXd3SH26vP77DoHyi9/BsVL+kOV
         v0ZKCnGSbr1CpOBy/a8Uw3cm2hvXB1phTstE5CCTL4O7vY1v6oRPy3XTzZLZyChdWZgD
         kDpQ==
X-Gm-Message-State: AOAM531Sp584ETijqOSEfUHi2opx1F+GDbZzm2TiNvIgcx7fkRRK7+I1
        6d3oO0hp98rYpaaTo4WJe6Y9lVr1gcO/HzOJv2eT8g==
X-Google-Smtp-Source: ABdhPJw67P1wau80aeqooMy907ZYAzpnAEddZ9DMaEPCUCA9XANLeDaDFjZlvhvqn/e4V3NvNlGzJuK3q9X0z2yIpCo=
X-Received: by 2002:a2e:a417:: with SMTP id p23mr7799929ljn.23.1627289763011;
 Mon, 26 Jul 2021 01:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210726050831.1917982-1-hsinyi@chromium.org>
In-Reply-To: <20210726050831.1917982-1-hsinyi@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Jul 2021 16:55:52 +0800
Message-ID: <CAGXv+5FmKHft-s9u_G0aEXuK2x5p1+unC-35ksaS_D=52JRkYA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: kukui: Use aliases to mmc nodes
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Eizan Miyamoto <eizan@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 1:09 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Use aliases to mmc nodes so the partition name for eMMC and SD card will
> be consistent across boots.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
