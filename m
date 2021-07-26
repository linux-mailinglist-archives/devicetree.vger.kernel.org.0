Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3A743D54A4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 09:52:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232349AbhGZHLZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 03:11:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232316AbhGZHLY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 03:11:24 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8F0AC061760
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 00:51:52 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id bp1so13910433lfb.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 00:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tl2Qb0EKguXyf5h8TxK4SArC6xikKxHnxlhb/8NDBjU=;
        b=SJHjCQuZMhGwfSeBQR4L3rLs4VKbZBIccH4gbeOpHW/BVx9udpZqj3o5j4DamFiThs
         bL3DoUZ+QIe+BBc8VIGzcnq9VL9tZwhOFjJQ0ct/oBnk6IBt2m8uNn3ij/V4uVTCbB/I
         a2oKvN6mtEMrrv7I6NDBFPxM6M0GYo6j1AidMxfK/PI2ZHyQ9YTLjQpjb/rVju8Jzlm5
         o4LcynEEzM6JW4JdO7q869QoR6NlATPMYcx+0ry/dEm2tp4+dFJm3XbbuTvudA3x4OoT
         il/ybokPAQM1uspu1uQHrT8Ey5CTSZd6Qy4HULrad+F3jUw7XtoAZOZmlmTuuZzCkzlQ
         pbNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tl2Qb0EKguXyf5h8TxK4SArC6xikKxHnxlhb/8NDBjU=;
        b=Ex8YXUqQKpnqCBGPbkIb6iTf4w9+X7wzAM8eoiBWb44mCEGVnWeBAbKSwXFp6xC6iW
         K2I9jBxP6orKiXrrrv9ZI+eXLSgaCFWWV2zStcng8wM0GB02snLIIb8jwoICRPtIcAIX
         SAKOM4mc3XMttFCtfhudnW3ieKtPXQ28T73t4bYAPXw57Z7BYb2gSswkWZNttel5Y2e1
         aWKim+mqAKlk/DtqqOMLvHpVMbwCulxn2l574q0tGPwO6LUNGyvkQPUhvhcV9HX23+7d
         3pLtsOwaYWvUXL5q6l3samlDuFOCttuNDiNimgpmRoYBsitOzc146smCTMQ84S6Lke6f
         DY1w==
X-Gm-Message-State: AOAM531nS7jQ12bm4Jbd19S9F+SrIwvFiYreCDZloarcGzpmJlMFdsRO
        d2HhwMsftnd6vOkIyveoUWnkd+BSLkXewlvEYakqAQ==
X-Google-Smtp-Source: ABdhPJwFuU0c5xqlk1yTtibDz1IgPDEmmXCYuw65z4qIHjRgBY4Kzw60Mk8OvTtY2M2qeI14uN2CY31KocEm2fVHUis=
X-Received: by 2002:a05:6512:3696:: with SMTP id d22mr12343175lfs.586.1627285910999;
 Mon, 26 Jul 2021 00:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210725140339.2465677-1-alexeymin@postmarketos.org>
In-Reply-To: <20210725140339.2465677-1-alexeymin@postmarketos.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 26 Jul 2021 09:51:40 +0200
Message-ID: <CACRpkdaaQeuVqJbczHndsgmmMv0NycwRDdzFTDwM=BJnc7SseQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: panel: Add Samsung S6E3FA2 panel
To:     Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>, Andy
        Shevchenko <andy.shevchenko@gmail.com>," 
        <~postmarketos/upstreaming@lists.sr.ht>,
        phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 25, 2021 at 4:04 PM Alexey Minnekhanov
<alexeymin@postmarketos.org> wrote:

> The Samsung S6E3FA2 AMOLED cmd LCD panel is used on Samsung Galaxy
> S5 (klte) phone.
>
> Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>

Grr gmail put this in my spam folder, sorry for confused mails.

With Sam's comments addressed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
