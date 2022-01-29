Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A144F4A2AF5
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 02:22:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236821AbiA2BVs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jan 2022 20:21:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352027AbiA2BVs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jan 2022 20:21:48 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9073C061714
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 17:21:45 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id i62so23525163ybg.5
        for <devicetree@vger.kernel.org>; Fri, 28 Jan 2022 17:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iiiVQFPXfz4jDTI+QZ4XfW3c/JTSHVgRiax8KwtTkG4=;
        b=XN0a1f2pca+nURpEbfZbEvMmWxTHbEoyfckz6bppnMNJo/ishoMp3vU1/j2bKOwzHx
         uxizpgV1JyyWLQ1faGrppFpBpFt48bWd17hvWP0u+sCBzaloDSXrncuBHAnkVvSVhnoq
         /bJcJPTuedfXbPhCT1aEJ7GtcJSarPWEqGlyhSFFFQKwjx34Bf3i8vjsHrAYLDUIM22J
         oEcguWT9r720a2W2E2XsjGKBATEMJNbXJ01VLWRBDACRVn8zN87PXAIkkYjrLOfm+crT
         P7s0q0SfteBDcE+THYyddNPO03Z0/zsIswMnM8GDtxToekDun3trv2TGfyOsbBBuUUl+
         QY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iiiVQFPXfz4jDTI+QZ4XfW3c/JTSHVgRiax8KwtTkG4=;
        b=tarCHIVXVPEV6v1l87z2IIhdqF2cZRCgbmMY5J+hEt9w4Oojk3N3xor8mjjsaZgKVz
         FTyRKy7ta1K6hu1QQtV2LbXMi+z6iWP4qcYHpAuiIioumTZ5xYguQs1mX2c7I3C7QEUf
         uab0t0fSkGoRl65UszArZS82iUoWfnGq2xAzKS3t2x5IaZgkm9Wxj/2UT/5nXUoh06zG
         +/2UI9mI5eEjuUj4EYyIkcaJu/ZMQ+4bwcebR/wcZkkbLei/AJGa/VLJ2uaxl7E/JpoY
         92Uh5Jsa7u/WDAh5eY3XetGusHqHhIFdByF0aGjy+3/jYLgt4Bbsol2WP2SSav0Iczdf
         pSqg==
X-Gm-Message-State: AOAM533eyvQP1h8p2rG2uDoyaBlcJyHiGDdVLENWh4FIwZLkRoittix7
        r3DcFvtskiCZ5zlf+Bgonsv4m7R4rFK0unejhgfS5g==
X-Google-Smtp-Source: ABdhPJzv/iVcyq8N84vMQE5oNt6DaVBjlezwo6HZAhw0WMI4b4fNSEvCgMrIexGtkAugHjX5uSn1J5oFu6dPOS0r0LI=
X-Received: by 2002:a25:cfc6:: with SMTP id f189mr15945962ybg.322.1643419304764;
 Fri, 28 Jan 2022 17:21:44 -0800 (PST)
MIME-Version: 1.0
References: <20220115100444.3014823-1-clabbe@baylibre.com>
In-Reply-To: <20220115100444.3014823-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 29 Jan 2022 02:21:33 +0100
Message-ID: <CACRpkdY2jo2f+O4TjRfHenLQcFEyE=Tm1SnmxrS-_H9P9mqqyA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: gemini: ns2502: permit to use gigabit
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     robh+dt@kernel.org, ulli.kroll@googlemail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 15, 2022 at 11:04 AM Corentin Labbe <clabbe@baylibre.com> wrote:

> I believed that gigabit was not working due to some unknown missing GPIO.
> In fact, gigabit worked when REALTEK_PHY was compiled out.
> So the problem was due to PHY delay and we need to use rgmii-id.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Thanks Corentin!

Patches applied.

Do you think I need a similar fix "rgmii"->"rgmii-id" on other
Gemini devicetrees that claim gigabit performance?

Yours,
Linus Walleij
