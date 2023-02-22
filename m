Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FF7B69EFA6
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 08:55:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229739AbjBVHz5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 02:55:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbjBVHz4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 02:55:56 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B85D12887A
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 23:55:55 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id e5so8903658plg.8
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 23:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oBgzLfkXpKOGfd/1eNx8Vyt8q2pJnQcGFP33kaJSZLo=;
        b=bKcnv4mE5FYO28aQVhL4l7jvPYfuxRvwJx4aDOMpVX7i7lTxPjZ2zeB/msNGjCoAUS
         9BWfwGlpf4nOVynX5qpqDIcuFnNCx1ZYDUxfE0cP0TsmymLnw467Im4PI/aPWvfGTOTq
         fYnOFo4Nyhdr7Pzf7P3ljnJxv/HDvkXFr7eog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBgzLfkXpKOGfd/1eNx8Vyt8q2pJnQcGFP33kaJSZLo=;
        b=DjbouBqNnFiKyZ6gNTN+2icistoJxArgGUHTBDOK/3r3gob8HwyF/11iL797JjES7B
         N7Lg68vRA4hyFrkXxxmOzZE8f12M1MiyQnDWjkOJ/MVhCgfBhdm3dyye/JgWiI6V4gB3
         vHfKHnzCUUbwFSammnwrv6DGKkweym1LjRFumL0ddAtH81rFwhJuOqynaT64E0FUCsvQ
         Us9LsxTrlQH5dcNgfMdyT+NgqQAn+UXvtEXF9gkgMJDTlMh2IDAvRwAjLLQByrUj6H1N
         onl6gEQiLF324hbtkYZudchtxQ8zja67t1IQAdLBgnUvjxd7NdHgVX+v8uiqRnex9mjx
         BWdg==
X-Gm-Message-State: AO0yUKU2UBvu1u+3RaR3h5oVXXPyQCfG7qHEPFF2xSapX5Wp2eB2K0Wf
        yDCP0pjP5A/9dPgeaENrT9C9CA==
X-Google-Smtp-Source: AK7set+DvRSC/UTE3/Bo65NIi9ejlfvJh5OTnIy8q82XRhMInMhg/LrhSdfTTPAcfKctZav/mMZuWQ==
X-Received: by 2002:a17:903:110e:b0:19c:ac96:223b with SMTP id n14-20020a170903110e00b0019cac96223bmr509904plh.40.1677052555089;
        Tue, 21 Feb 2023 23:55:55 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:ddae:8a07:7ed9:423d])
        by smtp.gmail.com with ESMTPSA id x24-20020a170902821800b001947222676csm5009278pln.249.2023.02.21.23.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 23:55:54 -0800 (PST)
Date:   Wed, 22 Feb 2023 15:55:50 +0800
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, steven.price@arm.com,
        alyssa.rosenzweig@collabora.com, matthias.bgg@gmail.com,
        robh@kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 00/10] Panfrost: Improve and add MediaTek SoCs support
Message-ID: <Y/XKhg+wultVbEWW@google.com>
References: <20230221153740.1620529-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221153740.1620529-1-angelogioacchino.delregno@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 21, 2023 at 04:37:30PM +0100, AngeloGioacchino Del Regno wrote:
> Changes in v2:
>  - Add power-domain-names commit from Chen-Yu to the series
>  - Kept sram-supply in base schema, overridden for non-MediaTek
>  - Added Reviewed-by tags from Steven Price to the driver commits
>    (as released in reply to v1's cover letter - thanks!)
> 
> This series adds support for new MediaTek SoCs (MT8186/MT8192/MT8195)
> and improves MT8183 support: since the mtk-regulator-coupler driver
> was picked, it is now useless for Panfrost to look for, and manage,
> two regulators (GPU Vcore and GPU SRAM) on MediaTek;
> 
> The aforementioned driver will take care of keeping the voltage
> relation (/constraints) of the two regulators on its own when a
> voltage change request is sent to the Vcore, solving the old time
> issue with not working DVFS on Panfrost+MediaTek (due to devfreq
> supporting only single regulator).
> 
> In the specific case of MT8183, in order to not break the ABI, it
> was necessary to add a new compatible for enabling DVFS.
> 
> Alyssa Rosenzweig (3):
>   drm/panfrost: Increase MAX_PM_DOMAINS to 5
>   drm/panfrost: Add the MT8192 GPU ID
>   drm/panfrost: Add mediatek,mt8192-mali compatible
> 
> AngeloGioacchino Del Regno (6):
>   dt-bindings: gpu: mali-bifrost: Split out MediaTek power-domains
>     variation
>   dt-bindings: gpu: mali-bifrost: Allow up to 5 power domains for MT8192
>   dt-bindings: gpu: mali-bifrost: Add compatible for MT8195 SoC
>   dt-bindings: gpu: mali-bifrost: Add new MT8183 compatible
>   dt-bindings: gpu: mali-bifrost: Add a compatible for MediaTek MT8186
>   drm/panfrost: Add new compatible for Mali on the MT8183 SoC
> 
> Chen-Yu Tsai (1):
>   dt-bindings: gpu: mali-bifrost: Add power-domain-names to base schema
> 
>  .../bindings/gpu/arm,mali-bifrost.yaml        | 67 ++++++++++++++++++-
>  drivers/gpu/drm/panfrost/panfrost_device.h    |  2 +-
>  drivers/gpu/drm/panfrost/panfrost_drv.c       | 28 ++++++++
>  drivers/gpu/drm/panfrost/panfrost_gpu.c       |  8 +++
>  4 files changed, 101 insertions(+), 4 deletions(-)

Tested-by: Chen-Yu Tsai <wenst@chromium.org>

on MT8183, MT8186, MT8192, MT8195 with glmark2.
