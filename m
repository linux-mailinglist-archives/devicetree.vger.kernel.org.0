Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFDE044BE9D
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 11:29:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231172AbhKJKcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 05:32:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231169AbhKJKcp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 05:32:45 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBBD9C061764
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:29:57 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id u11so2651955plf.3
        for <devicetree@vger.kernel.org>; Wed, 10 Nov 2021 02:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gSFvUJLaZR+mAVPFBcPx1oudAViqkL4IwyGNB8LdK80=;
        b=eZ9Whpt501+2K7l26U4wtjldeo6V0MKg+IPh8nJFxzg+klzAvlhvUlX5uL9FGT/dEK
         ojkFp0NnQHczMBoADFUXVAU/qQyUOXo+5+KLWMv8gABEsMPWVDyurFkliVDOH9YEvoc9
         4QebnxuMUulAfKSS2P7FsdGLV2EGOTowxGCKkcDVKp76t0Hu0boOwos3GlvDg48jOxzC
         cbtKSl55U8seclKFJsrrZiKepcOuv2XvwmCmExMnFSekL4Ejhh0VN6fddzdRVLdxzJJC
         zEScDfB9Uwz7QGYIXR5l60zIehXlOZNSan/aU1SZpgLVK3zo/GK1e31s8jAjTxx449DX
         1XTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gSFvUJLaZR+mAVPFBcPx1oudAViqkL4IwyGNB8LdK80=;
        b=jIvPIzhkWL9hqmzfNIwa01W2CkiJMfVU6Yh/6TWtRZzWZZA2CkQ8mVCHl/cm2LZU7P
         wlrUUqvoyf73frdspaD5QLn/t5wbKa9CZ+I1gc5aUz8tlix1kfnfjXVz1Una9QvoT5Li
         XGOMQfrnrlTUmtHJYZYVi2t7vseHDid3Pzw+gdbffgHeP+XVSRB8q3XMnHlkr1IcZFwH
         XIVOHHCwRhfeQWFAzGyXicVSlwsisz4cvWI/8npl+YZV5JYnzPz9BfDAIJjEUhg4X+ZD
         TXlAMwZwTpFC6gvOCUQuYsdXx1LnzxOX/F1Q5P+1shtmZ4xuD5PgIrBB8Wb5QttgirYc
         nh4A==
X-Gm-Message-State: AOAM530nyut6NxAaW3Ugn+3ZAo5zGE2/dxu2oTTFtk22pVxw7K2PGpnw
        PZ7AQSe46BWht/pXsQ3xd5c1DX/31Len0nje4fw/Dg==
X-Google-Smtp-Source: ABdhPJx+7Gq0bm/h5nRmAWFRad83G/chU5WO/BoJHnti7WjK4AP/ZWkCcRzV6CRZ8T8FumyHzs27HMxGy7nk1YEJlzM=
X-Received: by 2002:a17:902:7289:b0:142:805f:e2c with SMTP id
 d9-20020a170902728900b00142805f0e2cmr14239605pll.42.1636540196956; Wed, 10
 Nov 2021 02:29:56 -0800 (PST)
MIME-Version: 1.0
References: <20211109125030.26299-1-yunfei.dong@mediatek.com> <20211109125030.26299-3-yunfei.dong@mediatek.com>
In-Reply-To: <20211109125030.26299-3-yunfei.dong@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 10 Nov 2021 18:29:45 +0800
Message-ID: <CA+Px+wWNg060xNcBSnu696OHPcp5Mqy=ovbAW_dtBTnoVXLMmg@mail.gmail.com>
Subject: Re: [PATCH v9, 02/19] media: mtk-vcodec: Align vcodec wake up
 interrupt interface
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

On Tue, Nov 09, 2021 at 08:50:13PM +0800, Yunfei Dong wrote:
> Reviewed-By: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

s/B/b/, the suggested tag name is "Reviewed-by"[1].

[1]: https://www.kernel.org/doc/html/latest/process/submitting-patches.html#using-reported-by-tested-by-reviewed-by-suggested-by-and-fixes
