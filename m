Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 614BB3B7E0A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 09:27:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232812AbhF3HaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 03:30:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232785AbhF3HaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 03:30:10 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68DA9C061766
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 00:27:41 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id d16so3323038lfn.3
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 00:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PqChqbCdyi7I3z8ajBtnm4crKLtFjV3f+EdiX7z1gfA=;
        b=jUr7gIdpi/tS//Cxavgazy26slgxlenoY/rYuBZMS2ddK3JRhqdExl4YEthPBGhICK
         fOkzphay2TG+9GeCjQmi0rQFmeSuQpoAdedd5f3yGg3Bf2z49YdsPst0opNI99Cg/XER
         aMbmzWgpadDHUOAW+GlV0oh7XiUJAVKdxrQhs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PqChqbCdyi7I3z8ajBtnm4crKLtFjV3f+EdiX7z1gfA=;
        b=XYV2nqEGh5T1pWV3ppfa9bCQoZtJ1DJC81x6sj68a9FQblZhjrDEMCG4+Byxo9QEk5
         zWxI/kySCMYdEwJ3xFlUnLIEBaELgN/q2FPpi58IvjiRDeGBv2SJIa2RIdV/PeoCL5XW
         GvhfuNzxw+qbof5cDnNCH5UMVZ47hG8l0+eQe8yohOgPVKtnPVJDWK/HYQHE6ty/3o9B
         qzVxKYCdHL4CENqUBR3Of/IjD6F5yzsYJuWpICvGDo2d57tnainxX56iAm943rtC82bj
         t0W8R9OIkzDj/gj3XQv4DsqkCBx8i5QarEi2W+JnS420c1LqHf7IxE3+t+W+7UzKbbc4
         dKSw==
X-Gm-Message-State: AOAM532ELEf3f6a28D54HcWA8qocBSr97JTXIg3I5mmFur6qKWd6sm9P
        jWt1NJo4W8ZA6mihgeZolcneMlj90wFs9xlFUcpPrw==
X-Google-Smtp-Source: ABdhPJwXTLvf7WkEdKH0kiRYx7KjKKymzqJOW8pf4v4ankygH2rmshV2ToQvOyzTvFQ05hkpl8KgHD/m3A3riEJ7Rts=
X-Received: by 2002:ac2:5a11:: with SMTP id q17mr26529672lfn.479.1625038059798;
 Wed, 30 Jun 2021 00:27:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210630035443.2144958-1-hsinyi@chromium.org>
In-Reply-To: <20210630035443.2144958-1-hsinyi@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 30 Jun 2021 15:27:28 +0800
Message-ID: <CAGXv+5ERomKaid2wQ5Sz9CB-q+DVLMzWq08b+rkkh5=3WnG5Vg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: kukui: use generic pin configs for
 i2c pins
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        zhiyong.tao@mediatek.com, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 30, 2021 at 11:55 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> mt8183 i2c pins don't support PUPD register, so change to use generic
> pin configs instead of let it fail and fallback.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

On a side note, the `mediatek,pull-up-adv` property probably should be
merged into `bias-pull-up` with an argument.
