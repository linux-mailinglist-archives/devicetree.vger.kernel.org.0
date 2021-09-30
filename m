Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6657D41D205
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 05:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347992AbhI3D6P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 23:58:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347977AbhI3D6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Sep 2021 23:58:15 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EA79C06161C
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 20:56:33 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id j11-20020a9d190b000000b00546fac94456so5638018ota.6
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 20:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=pbICwdgUqYk+MY3CjajdFyZDTldPCutWBH9nPk1NU9M=;
        b=dYYg+xr2qgVzVQpnw1vKySEYeTZUMyLCO3IjCFtkwCbD9pKzqZBm0wXSYwHIqbVnZB
         j6j/az0gTXbKp/PPg7uz9Ed09jHYplqn0gK7ylwDo/7ULm7qTckwzVEwAQxTaMQ02IEW
         qPujZVK/wt6fs6hmVDo6J410aSqfL7yzXjTro=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=pbICwdgUqYk+MY3CjajdFyZDTldPCutWBH9nPk1NU9M=;
        b=ZO1AA3DX4e84jklghdX0Ns4OUt7terdYQIp11RayyJBdWxlO2Hqzo47HyjX5nZit+g
         lGH68w9pELTkLRAq268hSXANnrqgUhOypRDK5quJobiArYsHHFBH3pN5TtsxQ5d7h9ck
         8L6YyxybPJPdRPYYdBi+0qFtzSe26xlnYZjuIG+VnbNwmi+e56I7Yc4jX7Xbh8y+5oat
         1elN8+bqfVjx3VxF9Wkidjx6vW88iR7r2P/HRkP09HG9zKf+HOpMtwyElq9B6uUaWaJB
         Uv4yfdCBSa4wyj5dzvdv0/yJOqukEGNAoBdkx3P21quxQYaLOpfLD++ISf+BHbqS4fGn
         Jb3g==
X-Gm-Message-State: AOAM531yzcFAP6NWmNBblWaKS0kN+ke440S+UamZsbSmPGTsD1Vad9M4
        ELfePxkaQPu/DK+i5DReBZPlDJoVBF6+4LnFTt0fjA==
X-Google-Smtp-Source: ABdhPJyg5d3ErOcJIXToSHSHSONJcSYacRkFBefewskavVwKz804P1gLqh9+QSY2AHtW62MgsT4klS34ZxzhA+GxzKA=
X-Received: by 2002:a05:6830:358:: with SMTP id h24mr3010200ote.159.1632974193021;
 Wed, 29 Sep 2021 20:56:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 29 Sep 2021 20:56:32 -0700
MIME-Version: 1.0
In-Reply-To: <20210929173343.v2.2.I6050ba184b24d887e92692a72ee3054d643d6091@changeid>
References: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
 <20210929173343.v2.2.I6050ba184b24d887e92692a72ee3054d643d6091@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 29 Sep 2021 20:56:32 -0700
Message-ID: <CAE-0n51sDbBfS82K7pY_yvWEQYdBVheqtzZcNVm16AZxaFMTng@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: drm/bridge: ps8640: Add aux-bus child
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>
Cc:     dianders@chromium.org,
        Balletbo i Serra <enric.balletbo@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lee Jones <lee.jones@linaro.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-09-29 17:34:57)
> dp-aux-bus.yaml says we can list an eDP panel as a child of
> an eDP controller node to represent the fact that the panel
> is connected to the controller's DP AUX bus.
>
> Let's add it to the ps8640 bindings.
>
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
