Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2EA53288C81
	for <lists+devicetree@lfdr.de>; Fri,  9 Oct 2020 17:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388724AbgJIPYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Oct 2020 11:24:01 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:40108 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732056AbgJIPYB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Oct 2020 11:24:01 -0400
Received: by mail-lf1-f66.google.com with SMTP id a9so11086584lfc.7
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 08:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wUN+BhQr2Eta8Yd9jiPJ+JMdhJa3A/naA3AYrAu0GCA=;
        b=QlQ9jK1myTkjXSyHtzE7NZgN5AnaMSovY23SHAPytq95CDX10jKAqrQxv3LQF5dqEq
         5Ryx9531TYoF5xmRGkU2RRjhENMJUYBLYtqFQ5/CifwAs/eabUFQJyFz83vt7WaquaWM
         HsNfuwlZa/Dgv6k4V8OydxLwKKq4DgTjIMAWC/Lqivan9P8NtN5ClLRgGEsgASYJ9Ib8
         njAjejiTJWbiurWqBDwOjpilHPzYJCRmmVtoALHOQVp83FM5swTu8XTFPWMZWe7ngzNg
         IRRHFaLAiZC4mqMTFdq69z1YBGYMKNJfe91X/HBF7iOnm/Vj5cNj7TeR+/u5Otv9DF4/
         SLgQ==
X-Gm-Message-State: AOAM532lLXILPW0yK0yW475/Uin7S4JXB4yK1iFgbKvLBCwp4ERTjoaQ
        Doj83PliTpSJBz6OwUb4bDTBoHbagAamnQ==
X-Google-Smtp-Source: ABdhPJyRRIe3k4H086Djzlkt2CXq+xrtYpAHQl06PwYEdpcBXIjddU360/9DRCiNnDF37CcbePLdeA==
X-Received: by 2002:ac2:41d8:: with SMTP id d24mr4243617lfi.458.1602257036978;
        Fri, 09 Oct 2020 08:23:56 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id f22sm785546lfm.172.2020.10.09.08.23.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 08:23:55 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id 77so886594lfl.2
        for <devicetree@vger.kernel.org>; Fri, 09 Oct 2020 08:23:55 -0700 (PDT)
X-Received: by 2002:a19:e55:: with SMTP id 82mr4166824lfo.571.1602257035395;
 Fri, 09 Oct 2020 08:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.6cdb798a6b393c8faa9c1297bbdfb8db81238141.1601910923.git-series.maxime@cerno.tech>
 <8e63e9092f0fa4690a3fe6d21edd613b1f9c6874.1601910923.git-series.maxime@cerno.tech>
In-Reply-To: <8e63e9092f0fa4690a3fe6d21edd613b1f9c6874.1601910923.git-series.maxime@cerno.tech>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Fri, 9 Oct 2020 23:23:45 +0800
X-Gmail-Original-Message-ID: <CAGb2v656fPmEqQyuXgYf+9q+ybMWotgtbThTxKZosE7v_XCELw@mail.gmail.com>
Message-ID: <CAGb2v656fPmEqQyuXgYf+9q+ybMWotgtbThTxKZosE7v_XCELw@mail.gmail.com>
Subject: Re: [PATCH RESEND v3 4/6] drm/sun4i: tcon: Support the LVDS Dual-Link
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

On Mon, Oct 5, 2020 at 11:16 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The A20 and other SoC with two TCONs (A31, R40, etc.) can use its second
> TCON as the secondary LVDS link in a dual-link setup, with the TCON0 being
> the main link. Extend a bit the parsing code to leverage the DRM dual-link
> code, register only the LVDS output on the primary TCON, and add the needed
> bits to setup the TCON properly.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

But I suppose you might need to change the DT property name.
