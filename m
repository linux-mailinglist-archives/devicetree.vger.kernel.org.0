Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2A1938D22A
	for <lists+devicetree@lfdr.de>; Sat, 22 May 2021 01:56:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230252AbhEUX5b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 19:57:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230244AbhEUX5a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 19:57:30 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1A63C0613ED
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:56:04 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id t17so9190806ljd.9
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 16:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xV/zcZZmjMB2lMxY7tGt9DtNWfH1pvDZsCFKmDpfnOc=;
        b=Li5AXrEfKDYOBoJTHlK4Tw9+1se1u8DJC+ZfzYoKbuijFOqYXLFxJ/9jNn3na7KKw/
         K5v6wWmah+b6WecoQ0NtcXahunZngjXz3QjRv/EAHIuJpYIdZzGtqZIqbikHS5EGRra1
         pBArwZL6fsAERFO+S3E8a2xgfV45imF/Ma1TzYheor/PNjs1p8v82QdLbjTMBZZIaDll
         +Lh9x5zJrhNssBRfG8WDQM5Urfc6ohNMZJbwYpX+Z1uKPnMfjww7p7v2cMkKjTJ+10J6
         nsNgQYJWHeGgl5/pl0OcVUCg2rhzj92vwbfPdR6G1Xzrz4fra1o4W5ytPI1ECqaNFj6i
         Yycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xV/zcZZmjMB2lMxY7tGt9DtNWfH1pvDZsCFKmDpfnOc=;
        b=ZDjfcK/F7Mi1XAPICNX10bIBX8NxKZge+I+fqC2/uFrP6N47Lqb/l3/1+4NCqIUTId
         E7pkW/sPi14gl2Q0bjdGEGtwftYP0zB/tXyr7o1mBbHVpKUwa9kh1cirFhYF1zNQPt7j
         Hfjk9j6E7qoquRhCG+zKZ/UvClfTYPWLMKlHcvWHSaf0nn2F8gDoBFYUxKeqYCOeTPAT
         FISUxNdlx5rYTWHezqcBUg8Bli/38s1j8xkN0firZGIjalXP+I0HT3bMcxaoyWhg81gc
         vXfnq0/Jooy7UNS1Qj5bkdXMCO6nN3FocghVvB93LFKMciWZFLw+wlkd9zKFHQ4M8S6n
         wB1A==
X-Gm-Message-State: AOAM531MkmHpf0CHM1h574s4KXv9A7//hue/CJFb+qTxqP/crHnYGbn1
        mY4FKJ71g1SSvYtkJBvmsTqDY9ecNhJEOdEbhC+Bag==
X-Google-Smtp-Source: ABdhPJzSKTF9N4rFGkkbLa6MruOk7Rzrek6hSegUVpJ6ifSaLKAZ+WHBeQv0qHZgaPFztEgwHjz29RLeg83spwEL0UA=
X-Received: by 2002:a2e:889a:: with SMTP id k26mr8483381lji.438.1621641363241;
 Fri, 21 May 2021 16:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210519203547.837237-1-clabbe@baylibre.com> <20210519203547.837237-3-clabbe@baylibre.com>
In-Reply-To: <20210519203547.837237-3-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 22 May 2021 01:55:52 +0200
Message-ID: <CACRpkdZ9L2xH0vWm5bY_8i4cvdxsBihEf_y-6xY4M6ePumqSvQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: gemini: remove xxx-cells from display
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     Dave Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 19, 2021 at 10:35 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> dtb_check complains about #address-cells and #size-cells, so lets
> remove them.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Patch applied to the Gemini tree.

Yours,
Linus Walleij
