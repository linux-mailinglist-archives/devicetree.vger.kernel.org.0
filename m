Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5306B69EF17
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 08:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbjBVHHH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 02:07:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229834AbjBVHHG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 02:07:06 -0500
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6389A31E3F
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 23:07:05 -0800 (PST)
Received: by mail-ua1-x92b.google.com with SMTP id g43so2258995uad.12
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 23:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qlPwPykFYo8rhIVwD6mBB4FPi0U1mYPcwHgebQEUnaw=;
        b=VXIAa7FunJm6q3CeB62nQ167gZdQVEQe2WuW1+KVUVZUKVfVSRrsFHRIuvLcvB+WAI
         BkW2mPJ4C7KTo2uk2BNR5ieJykYAv4X+UkH3enEhjvEHcvm8VjYHwUjN7CBfiAFvp+r3
         S/1r2W9l9+ur2AMr7PnVyAh/q4cfsy1OA2+z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qlPwPykFYo8rhIVwD6mBB4FPi0U1mYPcwHgebQEUnaw=;
        b=qCFhTTaTkqTTibHiEU+E2Wg1NdNzWTLeMbRYuqrGeO3ev5rZDwNjsJppY0weji2S5P
         BCzYQEMCL/AgheQ8Xqak/M9lg7qYgCl1sYHK+1Xs357TYSuYw6UOJVlPw9XaktFuFqIz
         MnfdwgqK626XewAGElll2qqen26XyZ0TZOUYHsYpjhVsojsXsdI1F+ZaPhfG6DqSw987
         aLlNf5qvS6LmWQPsv1liXnujcCKF5lhIMrXGzY31aXNrzud+Zq2L9k35wK5YmiXt8LX2
         IPp7KRkGFM1I1IfGL7rYzrfXHzUdcCSC9D9PLhoQO5M5b0JoFhESlJoCDJLvX51ow/tP
         +Skw==
X-Gm-Message-State: AO0yUKWOQu4ZwCcKi7v9DHqWQHhrWIIR7w0lQPJvfzWta1vX9QJ+Lg0x
        v3xYH0lwf5YR1BYxUsfV7xgFwjJhCj2wb4A3y7y7BA==
X-Google-Smtp-Source: AK7set8LX05PaXjP97oF1G9cF2P3OWsBmaHQhbW//L1C7tUi+Z8JteajDRu6P6E5vLHDtTDlMdm48IpSEsLEbY4UVV4=
X-Received: by 2002:a1f:208d:0:b0:3e8:66ce:a639 with SMTP id
 g135-20020a1f208d000000b003e866cea639mr1283824vkg.2.1677049624519; Tue, 21
 Feb 2023 23:07:04 -0800 (PST)
MIME-Version: 1.0
References: <20230221153740.1620529-1-angelogioacchino.delregno@collabora.com> <20230221153740.1620529-11-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230221153740.1620529-11-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Feb 2023 15:06:53 +0800
Message-ID: <CAGXv+5FqZPXaE8tyEFtejsYpKMLzUt5R_QnkbQrDSBM_u7rRYg@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] drm/panfrost: Add new compatible for Mali on the
 MT8183 SoC
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
> The "mediatek,mt8183-mali" compatible uses platform data that calls for
> getting (and managing) two regulators ("mali" and "sram") but devfreq
> does not support this usecase, resulting in DVFS not working.
>
> Since a lot of MediaTek SoCs need to set the voltages for the GPU SRAM
> regulator in a specific relation to the GPU VCORE regulator, a MediaTek
> SoC specific driver was introduced to automatically satisfy, through
> coupling, these constraints: this means that there is at all no need to
> manage both regulators in panfrost but to otherwise just manage the main
> "mali" (-> gpu vcore) regulator instead.
>
> Keeping in mind that we cannot break the ABI, the most sensible route
> (avoiding hacks and uselessly overcomplicated code) to get a MT8183
> node with one power supply was to add a new "mediatek,mt8183b-mali"
> compatible, which effectively deprecates the former.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Steven Price <steven.price@arm.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
