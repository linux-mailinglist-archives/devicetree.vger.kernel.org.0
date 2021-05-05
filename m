Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38EA7373823
	for <lists+devicetree@lfdr.de>; Wed,  5 May 2021 11:51:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232402AbhEEJwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 May 2021 05:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232256AbhEEJwi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 May 2021 05:52:38 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1F9DC06174A
        for <devicetree@vger.kernel.org>; Wed,  5 May 2021 02:51:42 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id p17so809478plf.12
        for <devicetree@vger.kernel.org>; Wed, 05 May 2021 02:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bNDJPGwrquZJ+gjSDnL9VcoDb165ZhWuJrSq+RVYVfk=;
        b=ctYNEZWB1el/6E/2d5ygQncwiOHKXrTDL1j8NwOTBP8osLWB8VXPmMCr7VViju1jTg
         8VPv3/HnAG7TyVkTXuIAGdGPsS+3Yd8k3oyzw7AZK+3QQSq8U+WXbf+knqOSKd1h3Y7l
         cQLfyAUVp6h6u19r7Z9AY4hg40/SLeSuQcoyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bNDJPGwrquZJ+gjSDnL9VcoDb165ZhWuJrSq+RVYVfk=;
        b=gnTWtwZmmwUxzCYjU+54OohVBmf0XkxBGD+dK/9KNvFLjEU2e/z6tw/lm2sPcu+nKc
         h1Fo2RtwKdtT9awmVadw5qIcY8+e2jKW06dEBhX3ytOy0r9R6zxqJJ13NMBZOPAyrZ90
         lcp0xS3THomjR63f3iiwsyr4gCvRNQL2X8P7uhSwrX7+7xuBgA7co5sUVOS7+RrrqJuh
         3MwAohxh/AAIaPjhcxUHGGNZ+5+DlGDpNlJ/EG+BETqJIp8LRNQUP12FjHP+J4jXq0iV
         1Ut1sa3OA8gllUYtcN5ykfbXk47uQDMIXZCSmoaaJuDxuHkwkLU2GTPx12tfRKBhPUqR
         3aMg==
X-Gm-Message-State: AOAM532vJjcKlenpS0p692RrYowU0UnJKstVZ6WmOM0LkT32cuRn6jgg
        tQBd8i1PXduDTd5lP6lo3W+cfYcLpAl18T9CVH01kw==
X-Google-Smtp-Source: ABdhPJytAVBDYKsW07DVIG1RkxBtcNqsprJkbKLW6RGyTiSonhBpHmC5MH6QSv/ICRd4ybE5enTFCE5sXuHIWc18FKM=
X-Received: by 2002:a17:90a:be10:: with SMTP id a16mr9989671pjs.112.1620208302210;
 Wed, 05 May 2021 02:51:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210415032958.740233-1-ikjn@chromium.org>
In-Reply-To: <20210415032958.740233-1-ikjn@chromium.org>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Wed, 5 May 2021 17:51:31 +0800
Message-ID: <CAATdQgDr0N-ewRrt4V14R72G4VTufmBzqzKka+xwSwkeodx=zQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] HID: google: add device tree bindings for Whiskers
 switch device
To:     linux-input@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Cc:     Dmitry Torokhov <dtor@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Jiri Kosina <jikos@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jiri,

Genting ping on this series.

On Thu, Apr 15, 2021 at 11:30 AM Ikjoon Jang <ikjn@chromium.org> wrote:
>
> Add device a tree binding for a "cros-cbas" switch device of
> ChromeOS tablets with Whiskers base board.
>
> Changes in v5:
>  - Add missing blank lines and change the description property's position.
>  - Add a note to description: "this device cannot be detected at runtime."
>
> Changes in v4:
> Define cros-cbase bindings inside google,cros-ec.yaml instead of
> a separated binding document.
>
> Ikjoon Jang (2):
>   mfd: google,cros-ec: add DT bindings for a baseboard's switch device
>   HID: google: Add of_match table to Whiskers switch device.
>
>  .../bindings/mfd/google,cros-ec.yaml          | 20 +++++++++++++++++++
>  drivers/hid/hid-google-hammer.c               | 10 ++++++++++
>  2 files changed, 30 insertions(+)
>

Can this be queued up to hid.git?

Thanks!



> --
> 2.31.1.295.g9ea45b61b8-goog
>
