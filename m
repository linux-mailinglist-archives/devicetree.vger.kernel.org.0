Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0214149030B
	for <lists+devicetree@lfdr.de>; Mon, 17 Jan 2022 08:45:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237622AbiAQHpY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jan 2022 02:45:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237621AbiAQHpW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jan 2022 02:45:22 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48C13C061574
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 23:45:22 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id b14so35824405lff.3
        for <devicetree@vger.kernel.org>; Sun, 16 Jan 2022 23:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nVojK749fmbikJ8Ylv61w+rfH9eMOuHdf6x9SWu9cSY=;
        b=SUwsxZsxjvlQaEwoE7XT7C+KHZ9jGQQayZYDeXg5DlUCjdR5AwuUOSqu5Vnxhj5hfU
         cZct8MLYPqEIXtyX72Hymgmw/UKBQ1+Skmdl8fCeXQDsuDDeIpc+chJKRuX7BUddxkgp
         I/CiGnBzl6R++Z3e4nfaDlKGmOZMTWnoQWeYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nVojK749fmbikJ8Ylv61w+rfH9eMOuHdf6x9SWu9cSY=;
        b=SCnpbUw05TnmLBPKEvGPqk6C4VBvPZbm0nnUznFQCrbfSveQxyKnyR6hS/m1a/0Spt
         BJsAwSGXzOiQyRhKm9XZnilkv1yu75n5grttDxb5llK1VARPWU5WBJy6u+7QvPYwEFU0
         P3N4H+8VlPd6rXJbngaFg8nN1xe2ERyrGdNHROvBVMMrxk28F+xLNCDgrRPtkm4QYvk/
         M6oc2KMW7coVkWGlxMSK39QOWubXsr8q9KptxMXanxPQbyZljxoyIyDcyN0bb0R2xdNZ
         L+CxGMfPwtL5w5nX6bF/RsFZ8YTYUR9KwqdFJ4aSS0KgBWmTgp3lzhicF1CHa+Plj5au
         sDbg==
X-Gm-Message-State: AOAM533GFMbVNDfWQwUzITcWzlQ0ExnVyNrHOmsY1QuE3iKpOcPi932c
        yO4ahUvsGZ6djaRMyyKwb7l7jqDD9Cp41D554uIt5Q==
X-Google-Smtp-Source: ABdhPJwG9NvWR9p35lcYW0jwX/k5v4481qRKalDO5NxJSEYxWGLzootcvrIELTsY/GzSoLCDQfiA7L3OWsPgQKfrGNM=
X-Received: by 2002:a2e:2285:: with SMTP id i127mr4064849lji.414.1642405520722;
 Sun, 16 Jan 2022 23:45:20 -0800 (PST)
MIME-Version: 1.0
References: <20220114230209.4091727-1-briannorris@chromium.org> <20220114150129.v2.2.I20d754a1228aa5c51a18c8eb15a2c60dec25b639@changeid>
In-Reply-To: <20220114150129.v2.2.I20d754a1228aa5c51a18c8eb15a2c60dec25b639@changeid>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 17 Jan 2022 15:45:09 +0800
Message-ID: <CAGXv+5Gm4ru8m5bZV_zm10U+FQRBSw7qq1eiL+hh+Z=5pZ7pYQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] drm/rockchip: cdn-dp: Support HDMI codec
 plug-change callback
To:     Brian Norris <briannorris@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jan 15, 2022 at 7:03 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Some audio servers like to monitor a jack device (perhaps combined with
> EDID, for audio-presence info) to determine DP/HDMI audio presence.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
