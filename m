Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 108248E62B
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730451AbfHOIYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:24:20 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:44292 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730480AbfHOIYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:24:19 -0400
Received: by mail-lf1-f67.google.com with SMTP id v16so1106927lfg.11
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OQ0EE8KBKUB2wnGR7WI4DHIvan4LQMsfKVjPNCbJp30=;
        b=BtMASVRwCxEESb39swhUi6eKRj6LJ+hlNA4zpwGR2CrCnj90lLF4XUtzeSbcFnkIeH
         Rua8own1u82bzcCfXFA2g1OhlZ09we6lALghTOQaf28IZJU+IPkngEhprVhE11a/ALd/
         FuPpbfhwYsCQ3+XtIUgBR2+NG0zT8OR8sq4KMqI6xllCpkCgmH+NjXOfcYu1jRvB5m2t
         zy7HTL11dzTNin51nsoF+SKMm9VCxW4mlbsGJqLxFdi4VqZNclku0cU3xi/43cIPB0u2
         BjqKpwqDoRkDO4NFdAkrngy7sLiHI2K27UgsJ3yGyv+9WI/hB4kP+K7lDNZOSCG/kSyb
         jKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OQ0EE8KBKUB2wnGR7WI4DHIvan4LQMsfKVjPNCbJp30=;
        b=JmyTNx8/51CBk8F6g/8skJNdZ0WFfMzjNhsFTMFYlMQKZ/7NYHFAbbAD2EKCl1M6QI
         eU9tAAFaxd9H94vmzeprfDAp48c2z3oNbBoVjTecUr3du0wSXI/EQX+6bb48CEybh5vD
         YPpUw5ja6WC3nbeOoU7QQ11MehgiTwgLKIAJuVQt2/GS4mZq+tXDg6+9H6mZpWb/bnUM
         Uug/0BXcrihf0WcdWFd6temtbfbldqCq7NiZb/3COtJLah4S7vhuVcOFg2T3nU0ZUJJ3
         PHqQkIYmoyLaLzsrcL8KJ8vEAz6+j5vSNkOJJ/wtntCB2CLsOe014bVbk2A7LYhBpGwI
         mnJw==
X-Gm-Message-State: APjAAAX4y4y7JhTDJpZ7/oRuyNbHA57WmO3CEc2x9ncH7zo5kTcCNxVc
        d8LjWJnGKAiVA4Cn4iFYXvXDf4wBzLjIBiMnxN67IQ==
X-Google-Smtp-Source: APXvYqwLnc3C4Y4Uj9ggAwakGzpIWkkpLBmK9Z2FcyUqoiL21SA+0DNibnPbsKNQqp+zQbxvlbBPxLQn3oxhDsqLDWY=
X-Received: by 2002:ac2:59d0:: with SMTP id x16mr1894686lfn.60.1565857457973;
 Thu, 15 Aug 2019 01:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org> <20190815004854.19860-6-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-6-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:24:05 +0200
Message-ID: <CACRpkdbZ09+pS+AchWLcxyA9MHgQ2ytL2qN77V3_gKmtw9yFog@mail.gmail.com>
Subject: Re: [PATCH 05/11] drm/bridge: analogix-anx78xx: correct value of TX_P0
To:     Brian Masney <masneyb@onstation.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        freedreno <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 15, 2019 at 2:49 AM Brian Masney <masneyb@onstation.org> wrote:

> When attempting to configure this driver on a Nexus 5 phone (msm8974),
> setting up the dummy i2c bus for TX_P0 would fail due to an -EBUSY
> error. The downstream MSM kernel sources [1] shows that the proper value
> for TX_P0 is 0x78, not 0x70, so correct the value to allow device
> probing to succeed.
>
> [1] https://github.com/AICP/kernel_lge_hammerhead/blob/n7.1/drivers/video/slimport/slimport_tx_reg.h
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
