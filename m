Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC9F92F890C
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 00:00:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726869AbhAOXA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 18:00:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726224AbhAOXA0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 18:00:26 -0500
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com [IPv6:2607:f8b0:4864:20::932])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A228DC061793
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:59:45 -0800 (PST)
Received: by mail-ua1-x932.google.com with SMTP id d3so936179uap.4
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lBeHYBPs8O+PuMBSXIDj9EGHakvLyVLX6sC/5Rr17Uw=;
        b=ND4BhA6Nr8vjqjBtdcIkQkMJzPTFPMG+L9xCmvlLIbeVS/TMzcLLcKSWxLVLWFh+zl
         KW3OjtmjZjtir71AO6GCHm9ejeO1o9+wshl3qk/RKumMzQQc1/Nr3yxA/JhFbk/gu0F4
         E4Qe8P6iLBuy4RzA4+JoUtE9xsTKt7+a8wsr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lBeHYBPs8O+PuMBSXIDj9EGHakvLyVLX6sC/5Rr17Uw=;
        b=hrzUX5BOJpw+zON2xcy6iwvVD9r+DblzpAG9NogPhtgHMNnDcB3mXWwck3lOsJEDqT
         ygswP9DrbuTZqDGjcrUHtOBtFF7JHgLTu1eWvFTB2pEyZ38cC0csV3xS70Wex7Jf4M5I
         y+Ace4VxfTNEIxyFYlIvkhJkr0pLqbasGA3bWVFij4S8l0otN1+aLwzFBl78IlLlnXrH
         LjBW6RPx1QMrzh+qAHVFxZMJVJHvuB1I/jXeHZsP6reYi0Vnqy1eYUWt83YifQ9LWHqz
         3W/Nc0X+TifcEdtvpVAK1KlJJG2HAp5P5IL3SIwny54YM8ZQEPiWOfbbb5k3fm/WwBwJ
         r6BA==
X-Gm-Message-State: AOAM532uVlinKk1Npp6mc8AvIFHPUbJHumjN7oEvr4Axd46wN1gxnEg4
        QWHA0e8KdPGuOJ0NCejFJ/TFRHjkKWL1yw==
X-Google-Smtp-Source: ABdhPJwi6/n5tUc+SSZSb6D+22C1guQKU8CPXXDm4iFJl2AWcEMR3tTV0zLD9a4U3udHGvhfPrY6nA==
X-Received: by 2002:ab0:35d1:: with SMTP id x17mr11207687uat.26.1610751584409;
        Fri, 15 Jan 2021 14:59:44 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id i4sm1451277vkc.16.2021.01.15.14.59.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 14:59:43 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id w7so3425903uap.13
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:59:43 -0800 (PST)
X-Received: by 2002:ab0:5a70:: with SMTP id m45mr11259619uad.121.1610751583152;
 Fri, 15 Jan 2021 14:59:43 -0800 (PST)
MIME-Version: 1.0
References: <20210115224420.1635017-1-dianders@chromium.org> <20210115144345.v2.4.I6889e21811df6adaff5c5b8a8c80fda0669ab3a5@changeid>
In-Reply-To: <20210115144345.v2.4.I6889e21811df6adaff5c5b8a8c80fda0669ab3a5@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 15 Jan 2021 14:59:31 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X3LgTz1x_C_y3u1cypa80qikOnvmo-v2sETkfaDd_ChQ@mail.gmail.com>
Message-ID: <CAD=FV=X3LgTz1x_C_y3u1cypa80qikOnvmo-v2sETkfaDd_ChQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jan 15, 2021 at 2:44 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> Another simple eDP panel.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - ("dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1") new for v2.
>
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)

As per always I find my typos right after I hit send.  ${SUBJECT} has
one too many copies of the "dt-bindings:" tag.  I will assume this can
be fixed when it's applied.  Please yell if you'd rather I spam a
repost.  ;-)

-Doug
