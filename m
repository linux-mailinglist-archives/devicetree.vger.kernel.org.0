Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF7026A1981
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 11:05:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbjBXKFx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 05:05:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbjBXKFd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 05:05:33 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FEF165325
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:04:03 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id o6so21028429vsq.10
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 02:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0u8VmJumLQNtV9/ARtd+o+9mpGq0aOZ8ZCgtdjL5v+w=;
        b=EgsPh7aSD/co6nKbOhDHsb3KMpAIMysgVMJfaHHYHNPA073DiSs2ERsYTUzdL3kVko
         eMmyJKRblWg9LZ+22ANmwLaKQWEaYMv1WoM8T9j/5/70vpsyoiD+5RfSO0QIGFAO/1wB
         JeO5cdxPNefTYF9xqcMpZPLRc8jy9sDK34+l8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0u8VmJumLQNtV9/ARtd+o+9mpGq0aOZ8ZCgtdjL5v+w=;
        b=a5dVqC08qBdIHFMmJKyEdoKxJfAShJ8XPLNDDf0W6ZOJpbZ++Rke1FmzmF0/cBjZf9
         /amNpq7ufHn5RTLDNXwQU06uApQ4i0bBXC7g53VbLoMoJKgQ2/2hcerGWEZaz0PWyCsG
         6xJ05K2RG2iZhcw8Qkzm3MSnj77/s3fa+qDGt44CnCvWoNq1wHbMd1Zg1cxPV6/5ZnjW
         mk+mgHSJ3hl9KlrMAaBgzWMGZk28mPMyW16SFulIJGjtQXDL2T4FnbQlxglIC0jG/CYU
         QnElo4RLYXcg5wmiBlGh8/PARqJXzKx5srRSgjocT91+HtP78dRNnsQHSHaq8cTqhana
         gWAw==
X-Gm-Message-State: AO0yUKVb9jWLNPB5eMxDzkK/ksWg/Sfz8dDDU7juxyliM760WhscfWmm
        0YbQGl/sBqYTs3aq8bMlpCbcWu2EJMuRIhSl56usCzCBdF9NLXf/
X-Google-Smtp-Source: AK7set/EfMTEye/Wi0OVyrpkCCmfX4ds+u4ezKh/3ZXapSRgu/h6EFpnsSXhr2sXtUcVxibs89nG9mgSVoo2QY9u5Bo=
X-Received: by 2002:a67:d21c:0:b0:402:999f:51dd with SMTP id
 y28-20020a67d21c000000b00402999f51ddmr2209797vsi.3.1677233041527; Fri, 24 Feb
 2023 02:04:01 -0800 (PST)
MIME-Version: 1.0
References: <20230223133440.80941-1-angelogioacchino.delregno@collabora.com> <20230223133440.80941-11-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223133440.80941-11-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 18:03:50 +0800
Message-ID: <CAGXv+5Ekx0NNf349qYsJXXXpNSFnT6Qq1zved9peBpn1ybVfKA@mail.gmail.com>
Subject: Re: [PATCH v3 10/11] drm/panfrost: Add new compatible for Mali on the
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

On Thu, Feb 23, 2023 at 9:35 PM AngeloGioacchino Del Regno
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
