Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A20E4FBC1E
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 14:32:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbiDKMeV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 08:34:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346068AbiDKMeR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 08:34:17 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B7093EBB9
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 05:31:59 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id bh17so30501353ejb.8
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 05:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jBDZOUj40UCKpbLB7bFx1yBWu6QPK94DCYQV33996m4=;
        b=j+A5ccabaUeeM3416rNwxeOecPOSkjCNrxnFAXpzerKo+LUtJ8+0sbgHxV1y1df7th
         4tOgEILYkjiBedfexIvLZ3cgdeJhRbfOeXS2MpyJp1JNMkfSKWiIOK9JpGom6TGPhtBz
         ilgZIqZCvGhSJGw6EwRNmAzDp77wy6FQ38oAI4IAI3cZi064EYq7c5WewoXrXZ5+OFP6
         q1+VyVnGcX4NmukImCPV6WGpEr2P0i3EkAz/AGmBVn6kPjNq8dFeJ+SkDYyNEVgFbfKz
         fJyrbXMc6RgNDrcopLi9sCoLOVeico0nmBL0blW9iUe8PUClcQePHmtnxfDL06wm4DxQ
         EKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jBDZOUj40UCKpbLB7bFx1yBWu6QPK94DCYQV33996m4=;
        b=6UenQUtYxTcLwOyAPYHeK8gZWuiSxUOyAShFIL8G7VCuaNL2fiiYaf/s8IKh68zLQ2
         DupTKarhP6voaPiCl1PsSI6WNOmAVCnuT9/+tqBNLeh9svQhO7KX8M8n8JGWvaPCXl9L
         cfYZvPVfQX9OegoXnhni9o1I1BGoxGkeenXhAsuJpa7AAICW5roZo7KHu7ilm1VQp/8b
         T7EnwDLPBBKb5mhzUDahYzF+syiJ7G5WssFqQlo+Tr2KwsLWAUhcTXjG30bLsrcFcJpq
         Zy9lzURxRd3M5uegDN8Z/nFVJkxiX94EaKVc0KpvVcHhHU6vKUToRacHtCA3BNxRN7Jq
         VZjQ==
X-Gm-Message-State: AOAM5318GuzF6BPmBWqDqzvKTAYnDvMSd0ODlkUMcG8JHLeT3RYfTtB8
        beRU+o4lWjX2Z67ygAePtYF7U3wBTimtj58MsiWD7A==
X-Google-Smtp-Source: ABdhPJwNZv8N7FgL9z4krJ3g7caKEsfemJcG4eROygWQm1CPb3gR15iupplZRtc05YRM0cnB2/1iXvgiGp99Aaz/Qmo=
X-Received: by 2002:a17:907:10ce:b0:6e7:116:10d0 with SMTP id
 rv14-20020a17090710ce00b006e7011610d0mr29415404ejb.101.1649680317762; Mon, 11
 Apr 2022 05:31:57 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1649533972.git.sander@svanheule.net>
In-Reply-To: <cover.1649533972.git.sander@svanheule.net>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 11 Apr 2022 14:31:46 +0200
Message-ID: <CAMRc=MeRMtm84ZyRgs9nxqWQ-LhkL0kejJA5UqrP1VHogFrccQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Support for RTL930x/RTL931x GPIOs
To:     Sander Vanheule <sander@svanheule.net>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bert Vermeulen <bert@biot.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 9, 2022 at 9:56 PM Sander Vanheule <sander@svanheule.net> wrote:
>
> This patch series adds support for the GPIO controllers as found on the
> RTL930x and RTL931x SoC families of MIPS CPUs, used in managed NBase-T
> ethernet switches.
>
> The RTL931x's GPIO controller behaves the same as the one in the older
> RTL838x and RTL839x series. This controller is trivially supported.
>
> The RTL930x's controller has a reversed port order, and supports CPU
> affinity settings for individual GPIO line IRQs, thus requiring two
> additional changes to implement these features.
>
> Sander Vanheule (6):
>   dt-bindings: gpio: realtek-otto: Add rtl9300 compatible
>   gpio: realtek-otto: Support reversed port layouts
>   gpio: realtek-otto: Support per-cpu interrupts
>   gpio: realtek-otto: Add RTL930x support
>   dt-bindings: gpio: realtek-otto: Add rtl9310 compatible
>   gpio: realtek-otto: Add RTL931x support
>
>  .../bindings/gpio/realtek,otto-gpio.yaml      |  34 ++++-
>  drivers/gpio/gpio-realtek-otto.c              | 137 +++++++++++++++++-
>  2 files changed, 164 insertions(+), 7 deletions(-)
>
> --
> 2.35.1
>

Queued the entire series, thanks!

Bart
