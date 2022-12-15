Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77A2864D994
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 11:31:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229967AbiLOKb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 05:31:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229937AbiLOKb1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 05:31:27 -0500
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBA112CC9D
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:31:25 -0800 (PST)
Received: by mail-yb1-xb35.google.com with SMTP id b16so3030358yba.0
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 02:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XX+3f9Jwxgm3fjxBqATipqiQtxv3ULa91+RK1dgyvd4=;
        b=mnyoMdbCUmTDjkmawt7QqTqrMzsjNZ/ai3V09PmVKmsPN8oL3uV/Fd4knI4BRJTUDZ
         Gk5zOHiV7SN+O+FlIhfn2f5brBs9iYe6Q71atAGtMCXjhsOz10aj7geupTCeE/CtCAP9
         oX7sT386pIsxG0Lp+yKCL6DRhPKPxY2biz907OS7dTAI/TDGPz7I6SoCLWGRVOx6qgIk
         Z5cajGTZWyVsmhtOgTJRpnUmIyKqaG4R3oVl6fILz0UvL+zpUgnFxThjs1eDs0yCFOkH
         5T2hdvbsU7SavDXJnqOsv0EbGn0LxQaqFhnvEEqvLOuRruEsmXzdhQIbyepsnYT3ySZV
         DLRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XX+3f9Jwxgm3fjxBqATipqiQtxv3ULa91+RK1dgyvd4=;
        b=dRvX7C1jwy8grKPczLbbmBjgwYXijCk6nGVljs4RZkzVh12j3baEjZAxqyBrh1hzA8
         Uqr5H9HHP0kjG2Vdonzr5tJZDCSqko2ZyVk7ElwTonnqYd7p0+Kv488luNyeMhO6qP96
         7UQ+QM2Q7NPuz2C0Xi9u0fkE0pMw8wnczdijxs0IxAFNdBKWn0BU4fUzlfVPTKY32YFF
         l/49lsXjF818f7UC3HsYq8pWr6Pk4O2+aO0dFcbD3HYNkv5L5LEJxa5OE1bV/9Wylh05
         I8nL4c6dBIkIy8dEs2OxjWMluWAhVHiQxz4x+xgdtWGh/kvac4F6myaR6oNCk2+cg7pm
         y7VQ==
X-Gm-Message-State: ANoB5pk864OMDpYcC2/4b+gVtZqLPXSfHg9u0eoHholY4uFPfG4zhPtO
        c9f64PJcennE/bb85D5xja0fHu25Q/5JrvUyk/PzmA==
X-Google-Smtp-Source: AA0mqf5b5gXSrumgFf+LRtQ7Yw+51BXrZHF4HFnHjq32NHSqJWHcYXvRt9hSzYIHzy59WoULmiUU6LkvMV1uJ8FLBjU=
X-Received: by 2002:a25:6b51:0:b0:6c2:4ea5:fc95 with SMTP id
 o17-20020a256b51000000b006c24ea5fc95mr79059064ybm.619.1671100285097; Thu, 15
 Dec 2022 02:31:25 -0800 (PST)
MIME-Version: 1.0
References: <20221214180611.109651-1-macroalpha82@gmail.com> <20221214180611.109651-2-macroalpha82@gmail.com>
In-Reply-To: <20221214180611.109651-2-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Dec 2022 11:30:32 +0100
Message-ID: <CACRpkdb_yaJSH0+RcEXh8w-48uCpdUS12TrGAD96pFyODKvetQ@mail.gmail.com>
Subject: Re: [PATCH V5 1/4] drm: of: Add drm_of_get_dsi_bus helper function
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        tzimmermann@suse.de, mripard@kernel.org,
        maarten.lankhorst@linux.intel.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 14, 2022 at 7:06 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>

Nice, exactly as it should be IMO.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
