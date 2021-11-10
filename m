Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCA1F44BEAA
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 11:30:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231270AbhKJKdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 05:33:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231229AbhKJKdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 05:33:15 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CBB8C061766
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:30:28 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id o6-20020a17090a0a0600b001a64b9a11aeso1270491pjo.3
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BL/ijtIxlYFTdIaPRxg1NuofUxGQzYinoPWGFB9zPEs=;
        b=oon4kKhSj7merVzvPBZvRplsjLDFbY6jj7MxoEEpCv5XCaxgftMX9iQSg2wZgT5bmh
         5GSs8rWijTpI31ovFFuakG9K9AAZdhQBKS1mhPi76SPrvNr+SNCoiyCWyIrU8CSCh2YC
         ip9t6JVaopp4KmCDK4b/pAWLlCqzs36IVlHxjuyGxtMmNzUws9ccTj38yd3EviK+6dsE
         puAwS46GaQ5dzqgphAdiIf/mlSnqbrFXyBbKZmcpXOuiVC8ectlztG/GN6cOGvUCHqdV
         qmXeEnMckfRwc1Fhe/svZO5BHI75kgDk/5rOCHY+BuwjUvYMBL6gOCfLMi3NO1r31Dc9
         k4Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BL/ijtIxlYFTdIaPRxg1NuofUxGQzYinoPWGFB9zPEs=;
        b=owbU6ZNWHcu7kvJYcCdZXlQBDkd27e+/r8xibi4OyDWFGe3Q481h0AY3KheSK26tpR
         cQpFuLw2Cdt/2UwiMG2K3GNZCeKF+njb+0qj5n0huN05TdyS6HcM8aQZS0aTuyH842G7
         hAE4v0o9dAhcSGG9QcUB12EwDWZunAnPcrlZIp3ogVIbQZS4V/dJKR0BoagtLAgPSr9B
         A4YC1jJnyX0pds8SiZflL6Ezao7dOor4psUXw75yC5whF8UBv3cq3Am3kihX5xSKan+1
         5IeH4IKOJZc0o7y9R52F83SvPKote4joFYyk2/faY8Au9KX2be/Z98de62j/wna6FrgI
         8gJQ==
X-Gm-Message-State: AOAM5318vOg6KN9TjZWCSkqU3t+QrxRL5knORjPSgSHAHTXrij1HuN22
        C3o3MA2vAdJApWGIvTucAw3JQhfGpqJBqW+arP46BA==
X-Google-Smtp-Source: ABdhPJwVgFxj/vjgnycu/+1rEWt9aVPNT6j63gpsvXFnkemxO+5cDmd7zOvOIUlgeIO++x6gV0UCGw/o6pLmfakrEQs=
X-Received: by 2002:a17:902:7289:b0:142:805f:e2c with SMTP id
 d9-20020a170902728900b00142805f0e2cmr14242448pll.42.1636540227601; Wed, 10
 Nov 2021 02:30:27 -0800 (PST)
MIME-Version: 1.0
References: <20211109125030.26299-1-yunfei.dong@mediatek.com> <20211109125030.26299-6-yunfei.dong@mediatek.com>
In-Reply-To: <20211109125030.26299-6-yunfei.dong@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 10 Nov 2021 18:30:15 +0800
Message-ID: <CA+Px+wWiFDB9rqOzsTjjXAyKF9+AfEmC4ZrnYQTCi7ePuCUGXg@mail.gmail.com>
Subject: Re: [PATCH v9, 05/19] media: mtk-vcodec: Support MT8192
To:     Yunfei Dong <Yunfei.Dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Irui Wang <irui.wang@mediatek.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 09, 2021 at 08:50:16PM +0800, Yunfei Dong wrote:
> Adds MT8192's compatible "mediatek,mt8192-vcodec-dec".

The patch adds a new compatible string.  A separate dt-bindings patch is needed.
