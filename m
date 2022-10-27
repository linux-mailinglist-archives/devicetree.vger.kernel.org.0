Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9BD60F173
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 09:48:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234193AbiJ0Hsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 03:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232679AbiJ0Hsl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 03:48:41 -0400
Received: from mail-vs1-xe33.google.com (mail-vs1-xe33.google.com [IPv6:2607:f8b0:4864:20::e33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 958B1168E78
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 00:48:40 -0700 (PDT)
Received: by mail-vs1-xe33.google.com with SMTP id d187so673077vsd.6
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 00:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xnaQxq4zW3WZzSqM25BbNrtB1N5IWA5AMAsRHR50yN4=;
        b=bYLbijAJWss6zP7ofBHhhYKUyYrea4Q3yucApFWFriiEgG9slFrpsOkfxIkKSqi7wc
         A0x6gfD0vZyeKVNHXIs4K9pgIEWqAd8iGEOO/yJH1djXQymMFEnUGcPGDuhMTXJy55cX
         MVnnYjVkYdrnbFOO3Fp+N7cDKnSJkKJsxds0izdydhP05zEBEOi/e7dq72xNO/mLq57P
         yScmBeByj0+CHY7hf6C+OaupABOuvO9acFWWAtsGyT1CYyh4cY+MWXYIbFRIKD0Gjk7H
         45/eWa9Q82zgQ4kiMFGCWSZhBC4PzbYSTYBUgGpK0dju6lz3TTan5uidG+2uFshEkkkP
         kwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xnaQxq4zW3WZzSqM25BbNrtB1N5IWA5AMAsRHR50yN4=;
        b=fPSFtOZt9gIOQQX1fkfEoZ4BhmiK05r/0XpdBsm9Xl8BRz+fHgKv4LLh9cHpOEqcdU
         Ny68xicAOQ6eDd3AsmfoiTokgDKskBUzQTvE+/QOtukCJ/AguLP4obOtt5rca84Ujs4w
         xWocjHdlZ4D1hNpj53vIDbUVRTU53s3CRLRnEf5xwE91yDwv04k/jyi40jGTzW+lHyYM
         oZYWl21/YFxwk3vtcSNPvkXa9mKKNm7qwqsLdYaYaz0BV/H2U2xppMaYkcHaG2ZgsYmW
         jaf+b3PaxdV1rj/XT3dze1JFaRm1Lue6XZR/MympvP0faLqcIDAXxF3vrFg0Uwq4/VG4
         l/cA==
X-Gm-Message-State: ACrzQf3fSWERcPphQIwdFl0nse2FWWIZVxkD7NA/Pj0rScOgf8ZpJ580
        GtbRrkuYeSMlgkWS5rGFSfGJQ0yzOp9nMwnZ2D5xAWoDl0c=
X-Google-Smtp-Source: AMsMyM4eUETdCQVNnAWhs8FgtdEirvF+3iu+ChthwgS9Eb2Zc9R3aFI7gkCHoHtwaoMZsiBitdYmBY0NxBZ6+tGX0Fg=
X-Received: by 2002:a67:ac0e:0:b0:3aa:86c3:e6fc with SMTP id
 v14-20020a67ac0e000000b003aa86c3e6fcmr27706vse.9.1666856919718; Thu, 27 Oct
 2022 00:48:39 -0700 (PDT)
MIME-Version: 1.0
References: <20221026151543.20695-1-shubhrajyoti.datta@amd.com>
In-Reply-To: <20221026151543.20695-1-shubhrajyoti.datta@amd.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 27 Oct 2022 09:48:28 +0200
Message-ID: <CAMRc=MfcsKA1V8O6LLZ+uGw6oas5JvXEA_S+VgFtkX__K=0jzQ@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] gpio: pca9570: add slg7xl45106 support
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc:     linux-gpio@vger.kernel.org, git@amd.com,
        devicetree@vger.kernel.org, linus.walleij@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        geert@linux-m68k.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 26, 2022 at 5:16 PM Shubhrajyoti Datta
<shubhrajyoti.datta@amd.com> wrote:
>
>
> Add Dialog semiconductors SLG7XL45106 GPO expander
>
>
> Changes in v6:
> Fix the bisectablity reported by Geert Uytterhoeven
>
> v4 and v5:
> Resend as the patches were mangled.
>
> Changes in v3:
> Add ack
> split the new patch
> Suggested by Andy Shevchenko
>
> Changes in v2:
> add alphabetically
>
> Shubhrajyoti Datta (3):
>   dt-bindings: gpio: pca9570: Add compatible for slg7xl45106
>   gpio: pca9570: add a platform data structure
>   gpio: pca9570: add slg7xl45106 support
>
>  .../bindings/gpio/gpio-pca9570.yaml           |  1 +
>  drivers/gpio/gpio-pca9570.c                   | 49 ++++++++++++++++---
>  2 files changed, 44 insertions(+), 6 deletions(-)
>
> --
> 2.17.1
>

Reapplied, thanks!

Bart
