Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 010073D1064
	for <lists+devicetree@lfdr.de>; Wed, 21 Jul 2021 16:00:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237842AbhGUNUL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 09:20:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238419AbhGUNUL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 09:20:11 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E877DC061575
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 07:00:47 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id f30so3283188lfv.10
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 07:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zsvJRDxyY5UbCVX7sGabd497i4VkHjlUGB0A4qGDBiM=;
        b=blMhE7FHuYJvQ1jjr+eBeAoe0VtX2eu7Ve2CWtDtuuospCBc5iAQLUu0A6jR/ynetF
         SPnplHFagBkDTKPQ7D4dX1CTKIT+Zpq0RGWPMEagc0uYZ66Sd+VQ35EWVZjiRNXHExOn
         FjwJcVQx6m3GkAkZdxYrV1EF0HAKW+t5CI29SFuf5n2wnFPEFo7pgOCzZLaLYJZRPMgs
         Edn645SrSlfVxr4SLzgTjeuM7Frlr+GZ5OFpRZNtLSNy4TCHJfKM0vEY3m2FfgUbP5pi
         5TmpbmrV+zyjRWlnXOYbMXbn93WMk4AWn8PwpwMOCdVj7OFWg9tcDeVD/dOp9o+DDvTM
         dvRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zsvJRDxyY5UbCVX7sGabd497i4VkHjlUGB0A4qGDBiM=;
        b=DHsws30ykl7PheVVoTsbuBP1sUAM/eDFWZ+eldKwySzUtrVYobbAY1YZdxcxCcAEOm
         +6udboxQYU1edKW0S8A6nrfwYlxYMEFb6zwFSTslh3QfPEuzUDy1A3GaysrcaUYoTFGR
         ZtS3eGp1WBLUTi7+ON2dZjo475V8cLjUWtxTG/EbsgXsVhM0j4M/vnPfwpQFgkwURMRM
         L0J9Daom8OnM3BMhOboKouhbzW0FalYxgoK+zxcl2NSOsKB4QeEYPWDekMMBhb3823l7
         8DYY0B4B10guQiVgDym97vEZdvqsEY4ffnbNsaZ0OeJDG6eV0F/Ey+02JhQDbSELxJ43
         Tn9Q==
X-Gm-Message-State: AOAM531xgN6W61lozD4TP9Z6QcS7NOQwyeA6zOm8tRIdMMq3DqnsEHV8
        cbr14lV8CxO9Jcf+5R7u4Y3bTB7SSTDD0z3cEQ1CLA==
X-Google-Smtp-Source: ABdhPJxEOaTZyJ//VL0xm+qjsBbECijs8kafihDiLsk9j4fdAjhS7j5/f6rj7V9/XmHDPmtM1H58IrDvM4Y9VTGHhKs=
X-Received: by 2002:a05:6512:3f1f:: with SMTP id y31mr19471776lfa.29.1626876046329;
 Wed, 21 Jul 2021 07:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <1626853288-31223-1-git-send-email-dillon.minfei@gmail.com> <1626853288-31223-2-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1626853288-31223-2-git-send-email-dillon.minfei@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 21 Jul 2021 16:00:35 +0200
Message-ID: <CACRpkdYerVu_LyNOJoxMTqhuNd9QBSFWTM7bfRnrsOyrxqE_kw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: display: panel: Add ilitek ili9341
 panel bindings
To:     dillon min <dillon.minfei@gmail.com>
Cc:     "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 21, 2021 at 9:41 AM <dillon.minfei@gmail.com> wrote:

> From: Dillon Min <dillon.minfei@gmail.com>
>
> Add documentation for "ilitek,ili9341" panel.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Dillon Min <dillon.minfei@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
