Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D766B288C72
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 17:21:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389227AbgJIPVE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 11:21:04 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:45882 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389225AbgJIPVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 11:21:03 -0400
Received: by mail-lf1-f65.google.com with SMTP id r127so11055943lff.12
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 08:21:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9Tdu616n0lfCO7JWMgBa8UgQurcZd5xpo1ViBZWxMbg=;
        b=LgN55CRCrCY+MS75nAhBF3M88AmoAIDFUz1fXLTGP4EsewXiEQA7EGQYFe/ar7ehNF
         z2LgejAXkpgU4bn1QwuiQHSbnv8GvQXPhAZU7/bhrA3NHphyiGcduTcvEfM2mtPhVRJF
         45AazSM+7mm7If9vJfk6GEqQjOmkD1t5tACeqWy8KY7JpE1cBhAysv9uy8i39xLWn3bb
         hc1oYF8sR3EChs6SFdWaCPP+rDwBsvFbXi2mF/rh3Ox3CjaR/q61AjunC8jq3KJ9NCYe
         Fn7wyui9XJAM7nyChoshDuG5BSPEM05sVVAXyjI37hYo9jl1b70a79uVq6DhVZCRA7LV
         U5FA==
X-Gm-Message-State: AOAM532S/2z2/R0buTEJRRWdXrYbglg2MSUd9fskiBaL0eq7IQ/rstf+
        BiGeRCmjZuaGOCvdk4gdn9WVUNJEA3OoXA==
X-Google-Smtp-Source: ABdhPJwvbVc2epvL0Mcpj7YqZ5gdJr1U13zqcTdjcHlONOM/HVPK+512Sk2ZfqzUwh2VoT5cbhccZw==
X-Received: by 2002:a19:dc47:: with SMTP id f7mr4923773lfj.468.1602256861214;
        Fri, 09 Oct 2020 08:21:01 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id u22sm1686381ljd.46.2020.10.09.08.20.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 08:21:00 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id d24so7010831ljg.10
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 08:20:59 -0700 (PDT)
X-Received: by 2002:a05:651c:1205:: with SMTP id i5mr5542285lja.47.1602256859516;
 Fri, 09 Oct 2020 08:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910923.git-series.maxime@cerno.tech>
 <39d2bb3f089f39f57f306679e882816182300e03.1601910923.git-series.maxime@cerno.tech>
In-Reply-To: <39d2bb3f089f39f57f306679e882816182300e03.1601910923.git-series.maxime@cerno.tech>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Fri, 9 Oct 2020 23:20:49 +0800
X-Gmail-Original-Message-ID: <CAGb2v67xu9dsZ_X5cnZkN20Tz6gVFZ4ZLSeZanDUFpk+FKEpBg@mail.gmail.com>
Message-ID: <CAGb2v67xu9dsZ_X5cnZkN20Tz6gVFZ4ZLSeZanDUFpk+FKEpBg@mail.gmail.com>
Subject: Re: [PATCH RESEND v3 5/6] drm/sun4i: tcon: Enable the A20 dual-link output
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        devicetree <devicetree@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 5, 2020 at 11:17 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The A20 second TCON (TCON1) can be used as a secondary output to drive a
> dual-link LVDS output. Let's add it to our capabilities.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>
