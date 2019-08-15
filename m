Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C5B878E663
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2019 10:31:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731003AbfHOIba (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Aug 2019 04:31:30 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:34773 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730988AbfHOIb2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Aug 2019 04:31:28 -0400
Received: by mail-lj1-f194.google.com with SMTP id x18so1589476ljh.1
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2019 01:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i/yfx5NeV3piU61gQdhfpnzlq/6GHBCfJ8yX0HleDDU=;
        b=rild4YlbRJU5wL1IgqlE2vanKqYTSRQWlpn+ut7lNDUUlySGDV7+Y8nqmVm+tCwfxP
         fF1pS/jvkhsXhDQfovqqUYoMMEuBrEOoaEvG9VehZ0mOPwEwFthyG/8t4T9NhYyj+9z7
         FzROK9y8F90mbOlCBpBB3Cs0Wsy2z2VXmF2A6AIthCV1UjCJy3cWW4NUevVl6c7gzRFE
         lhuLhtLiW5z6R3PgaVYhzlPmCe/GYpAoE3SKp03R8Th06dkcUEhoaSCZMhVg87OOSPKi
         C2YXbDeXfFo9O6FWqdUSAYbCNXAkpH48L0fivxYoziaZy8TFVo0Sel5vSyvt7y6cgRW6
         L1UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i/yfx5NeV3piU61gQdhfpnzlq/6GHBCfJ8yX0HleDDU=;
        b=Sd/JVH7K1KBImXEcRS1/6UImy4lnGXlBz4L1d7vPI2mBBhryKzchORKz/8KgR9Su5S
         ztcYxhQx+spxU/LC7aGQ8PR4vCvJOVA1lwx3WjR1JORyyO41HRLoURLmli4+sddaV5p+
         xTHvjOSIwvyBUEi9BTJMNLTQYDfiKkXei4mz1ZTh6Vd+WOufbNiI8dc8Feg56x2Orj4J
         +Q3Up/BdY2lJvI8feo0Xt29Op6I3DVWQOpP1unOhvuRcF/fg6QhrKVOQnL57uW8mTggb
         TN9hYdSzXoWDRVH801QYSxQ77E9powjMPe0IfBCftWrsCbnlh07CmUT+FseOt3q3Id+/
         4M9g==
X-Gm-Message-State: APjAAAXuDztAMCmut/9T9zcAJJ0lyHEHj86f/g1r07JuumJD2QSdqpl6
        rReE/XSbV3ABOOknQQXTu6W1MtQovNLit9472zXp8g==
X-Google-Smtp-Source: APXvYqzsrobqE4nMFnjhW6qVN2v/WuS6+a4azs9xd0z0wQrNczcpbiWvts190l19juTT3G+lBBGs1PS8c9qSK1SDMvQ=
X-Received: by 2002:a2e:3a0e:: with SMTP id h14mr2084652lja.180.1565857886156;
 Thu, 15 Aug 2019 01:31:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190815004854.19860-1-masneyb@onstation.org> <20190815004854.19860-12-masneyb@onstation.org>
In-Reply-To: <20190815004854.19860-12-masneyb@onstation.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 15 Aug 2019 10:31:14 +0200
Message-ID: <CACRpkdYSHHqY50=3yo0QDinTaXbO9GzHoOFqMS4K3SiNghssGA@mail.gmail.com>
Subject: Re: [PATCH RFC 11/11] ARM: dts: qcom: msm8974-hammerhead: add support
 for external display
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

> Add HDMI nodes and other supporting infrastructure in order to support
> the external display. This is based on work from Jonathan Marek.
>
> Signed-off-by: Brian Masney <masneyb@onstation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
