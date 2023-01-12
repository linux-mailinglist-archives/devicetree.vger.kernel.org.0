Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 68EFF667162
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 12:56:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231883AbjALL4c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 06:56:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235312AbjALLzz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 06:55:55 -0500
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD15B52C54
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 03:47:23 -0800 (PST)
Received: by mail-vs1-xe2b.google.com with SMTP id p1so1978084vsr.5
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 03:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j/p/iE9FkOKMo7gwBFTP4+PfxlZi9hnBSH41zreYTFY=;
        b=SLS2iJF8Cp/L8Htgd1U5Rj5zBINtlHnlv6QMAZ0oGzQW9CY7NA3jttx7MGhbzxOuoM
         IoDMhbuJ4VFqIHMntVaKdORn/KMGHZsZAhARzCWqUEChLZRD8NACJDnl/LWfmVfSq07x
         yAW9nCNVlzAd4MUTuqEUv89eJ+kgDblaTDDRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/p/iE9FkOKMo7gwBFTP4+PfxlZi9hnBSH41zreYTFY=;
        b=5YAOIUVOMQCZogirgf1K9EriuHxwWuSRjmfc5Hauk4LWQbFK2+D24mMrk7uRPo4a43
         NT5tsrhNLMRx7Lmr7IZctk4qHluoKJn/b/D0GHT4Au91qU2sTPNsuC7Hxf1iGj1mrnIE
         6ylSp4sHd15uNio/E5ywYrEvPlrfJ5qxvbl2j60Dsapq1dp+n0b8H9WGA2hy+vpZ5X+9
         dBEPy3TdAZlusQyufgn8Nqy/+zHh0zgFj3pg/Bf4YYfbEsrBWtoYOuj+OnRafW1AA6Xt
         zgCQFqJzFnvniuBwker/DrLEBHtk9fWkH8uguxxajO4E6TuMxAF06UD4s+sJUb9M061G
         rsbA==
X-Gm-Message-State: AFqh2kpamWK0j7eLrPoHI2Uxwhqdb1VxYoR55Tz9wlvSfYZNRXWdo/jo
        fD3c+S6IeRoz9mHNyapD4brALTn1JSwwgBb5QlaTNQ==
X-Google-Smtp-Source: AMrXdXvSajYR9jV6VGsPH7TwZTubfkHmhhX+kXom5wSr5YNKiTnawmEt7PjpbDQCDMbfYdgjqI/uCAYVJWaS0J83yRk=
X-Received: by 2002:a05:6102:374d:b0:3d0:af13:3b6 with SMTP id
 u13-20020a056102374d00b003d0af1303b6mr1897629vst.65.1673524042864; Thu, 12
 Jan 2023 03:47:22 -0800 (PST)
MIME-Version: 1.0
References: <20230111123711.32020-1-allen-kh.cheng@mediatek.com> <20230111123711.32020-2-allen-kh.cheng@mediatek.com>
In-Reply-To: <20230111123711.32020-2-allen-kh.cheng@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 12 Jan 2023 19:47:11 +0800
Message-ID: <CAGXv+5Gpzz-pp+YSQhFkH1cejGB5csNnz_Qwop_7Fkbxm6SHxA@mail.gmail.com>
Subject: Re: [PATCH 1/9] arm64: dts: mediatek: mt8186: Add MTU3 nodes
To:     Allen-KH Cheng <allen-kh.cheng@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Stephen Boyd <sboyd@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 11, 2023 at 8:37 PM Allen-KH Cheng
<allen-kh.cheng@mediatek.com> wrote:
>
> Add MTU3 nodes for MT8186 SoC.
>
> Signed-off-by: Allen-KH Cheng <allen-kh.cheng@mediatek.com>

Tested-by: Chen-Yu Tsai <wenst@chromium.org>
