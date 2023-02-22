Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4CD269EFD0
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 09:02:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231311AbjBVICE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 03:02:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231271AbjBVIB7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 03:01:59 -0500
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88F4736FFE
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:01:58 -0800 (PST)
Received: by mail-vs1-xe35.google.com with SMTP id g12so9420175vsf.12
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Tlzo2IJo5C30mjLFPDclNhtFd2xIEgosfbXcJe2YvVE=;
        b=MeWMKnUvCa5h3wnNxrVJwgGjMGC7euso+9Epxo9WZnMC3zklZnUMAdZ6JmNt6tv94J
         wnGbHnAcop4UQ5kLLD/AngU8vKm9bLOO7c19mmm5R8uwYNy7xW8gjJozc4V+7pdANJmi
         Me6WFN7P7gptD+fkV3vqzODRL+tt7nUGbDd3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tlzo2IJo5C30mjLFPDclNhtFd2xIEgosfbXcJe2YvVE=;
        b=X40GYBfs5fKVDH4HEK0MHBHrbu5E2pmMLUaPrB/ZMOwwxt4WwGEBkmF0v+4cqqxftj
         62wooxcCJ3KsDsA4MtuPB4pDfc9ojTEXkOpFdnQcqtNzqO+HDagxDMvdFsh1WPTMouAP
         TY7vz+56SXhw/TbikAWUnHGLj9+gcdowRLkIDlmxYh89qKa+stskPnvk2uOQB1qASOmL
         0DtwQ0NFxPjCNkVZrbpkSvSg+Qe1cdV3k7VbJ7hdb63eXiTw2fC744ZVoUGsIIWMo6EL
         ZM4AP0fi9DL3TbA6sLViF3PHxRsW1zJTvWn+aUJgLJfo6g+peXYRK04kknYhslByy2wz
         sAGA==
X-Gm-Message-State: AO0yUKWq0hRkBqv7lWQyeI6dEOPieJXFuWhjSzClGTOQfYqWYqdecr4e
        f9dCx39l5NFcoPRJFP5T42AOjs5aSqXUhTTU7wowCQ==
X-Google-Smtp-Source: AK7set/K733MxVsNaWaZ582QR4RHXcNoi9G2ZoQ2+vNsIwgFsMxrfQGCDYAD5F2km2PqCut/v0ZaIlykDJA2RFfbm3I=
X-Received: by 2002:a05:6102:570b:b0:3fc:58d:f90f with SMTP id
 dg11-20020a056102570b00b003fc058df90fmr1556381vsb.60.1677052917662; Wed, 22
 Feb 2023 00:01:57 -0800 (PST)
MIME-Version: 1.0
References: <20230221153740.1620529-1-angelogioacchino.delregno@collabora.com> <20230221153740.1620529-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230221153740.1620529-6-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Feb 2023 16:01:46 +0800
Message-ID: <CAGXv+5FJ6ze5tECGMoJT3yALDoSkshQPj0dUy_KwLJoWo9AYCg@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] dt-bindings: gpu: mali-bifrost: Add new MT8183 compatible
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 21, 2023 at 11:37 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Since new platform data was required in Panfrost for getting GPU DVFS
> finally working on MediaTek SoCs, add a new "mediatek,mt8183b-mali"
> compatible.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
