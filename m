Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E39B4A7579
	for <lists+devicetree@lfdr.de>; Wed,  2 Feb 2022 17:06:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345797AbiBBQGZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Feb 2022 11:06:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345785AbiBBQGV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Feb 2022 11:06:21 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50A8DC06174E
        for <devicetree@vger.kernel.org>; Wed,  2 Feb 2022 08:06:20 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id 23so62423332ybf.7
        for <devicetree@vger.kernel.org>; Wed, 02 Feb 2022 08:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PhE+HHyFpW2DRFHuTlt75S2kEEeDfA0eG+B/I+nmgv4=;
        b=fFh7H+BbaOQ4B+p05GH56raXfaOn8ajgIVdTEPxN9lHFK7SPrCVHpsHplZvXWummPB
         G0p4aJBVAWs9KblSVpZriM1XMf1BE8u8b7bkSCnh269FB61HmvjuckgfiudKUXXEnfTs
         yj5tN50Jpu35k1QkQUQYCtj9jwnSkI5vMTL7yr/FiXn+mY7B3IHxz8E+JdOLWVryNCor
         ERUkmIpd/PZDbx66Urb/7WFvPziTDhA898AtS0CMNI/ZNuQOnt8+fuaZ3+aLFA1E0jrA
         PWVAi6pCHZpB9hVOYgT1/1wMgL1l2jw2xoEL3JlZMTxC5sDTtnVVMuZBwv5J5yPAbRo4
         B0gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PhE+HHyFpW2DRFHuTlt75S2kEEeDfA0eG+B/I+nmgv4=;
        b=yHvyfUYtfrdA0EcW7hAu4QgH9F3y1fot3AnY6HvDkKFbNpahGhTyB1QVWJpSZ2aF3B
         JWQZLpmJyX80h+8truJadWSWX7SOb/g8P860eypj+oNTOpnhXPUoPlA3aZLO8UjgpCBF
         DTEjVCUybeIXF++C8zb8cYuCl6svmp2MW+S0pzd6OBqnLJhm6yg0jpJW6M/PgDVGl+9U
         eFxAJek62c+LPtpiD4cs3W/tVtIo4RKQDXzi0IBuiuHEkARa9py/I6SjL6duMjTv+Vug
         LjaaFc38UU5J8akVRBHK67j+nynyUjQO/2p/iTcuckirUJ2ikZhOVfn0WltM2qTOB7Ab
         33OA==
X-Gm-Message-State: AOAM532ZqnRa0pdhX2e7OC3CGOOriXRrhXUsXNaMKpMyeBD/oSn+YM2v
        QtrkzpGWYR3+t7R5EyX/brgJ8jbXbNdpw12BWL4PGg==
X-Google-Smtp-Source: ABdhPJzafC5pwY46k2rXmjcY5vPjKYi8a7v4ircglXyoNbcuYsGfJNrRsCHGMMK6c6myzjuypdKKvDpQA0n24144LB0=
X-Received: by 2002:a25:8011:: with SMTP id m17mr42060866ybk.284.1643817979539;
 Wed, 02 Feb 2022 08:06:19 -0800 (PST)
MIME-Version: 1.0
References: <20220201144940.2488782-1-clabbe@baylibre.com>
In-Reply-To: <20220201144940.2488782-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 2 Feb 2022 17:06:08 +0100
Message-ID: <CACRpkdbAvexv2bokpqD+YhFpsdfaEGJZbvNBoWE4OQxtRwCpXg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: net: convert net/cortina,gemini-ethernet
 to yaml
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     davem@davemloft.net, kuba@kernel.org, robh+dt@kernel.org,
        ulli.kroll@googlemail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 1, 2022 at 3:49 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Converts net/cortina,gemini-ethernet.txt to yaml
> This permits to detect some missing properties like interrupts
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Change since v1:
> - fixed report done by Rob's bot

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
