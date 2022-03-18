Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EA894DD6C6
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 10:03:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234171AbiCRJE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 05:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233059AbiCRJEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 05:04:55 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67D0F165BA7
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 02:03:36 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id h5so6511320plf.7
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 02:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=odQm7JC7x6Af6z1xpDrwW1/gihmZD1Kc4UPnG+M8gbk=;
        b=Eadxx9IjG5BtCfRNZOsVfpiUvgX+GSL8Aib5ZyUV9lgIHPkzS++xIEPd8SQvD7dr4O
         lRMCKC3+HcqKnSO+owRwtnjwu+Szmu/11TRJ3PrQzIq5zE1TNLmIreTHFWMS5JFJw8+O
         paZrWzVmW1F4FOVuOGfDieu2E/8E8KMDToCKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=odQm7JC7x6Af6z1xpDrwW1/gihmZD1Kc4UPnG+M8gbk=;
        b=KR2gW7kgEuTfukV9tE6F2Nfi1Db8g/hhsd61ITxulheSr9f4LK0iMQr+t3674b+apD
         2bPkzoen+bQ23ynETtHlXDDjFnkuEbDmfHmCyD3LmoJQN+x1dTWUCyaEghigS3qL5u1W
         dN5+EAC7xsBEcfCJ503LG8gK2B39n7e9W56+e5G6xkggW2tSwvCDqHzUvtCECYA/rglh
         fWKogrKJHYwAba5D7iwN7pU3zR7SeAI9OJ3B7A9ZVGbgXqmboqrGIH2E0xo3H0aYWSHU
         5++ZRyFfvZ4W58BGHOxPMUfYNSKp5Efy7awUZFOZG17hLG8kGO6KtVst2CmXp8obFaZM
         JPBA==
X-Gm-Message-State: AOAM530+YAsvV7mK570gxi0JYMJFeRxUCThDyywqr0CGNSwKsVs9fi6e
        kght3c+a88zZhnN+xgqdy6uuyiaXCTzrvSi5Gp8EFg==
X-Google-Smtp-Source: ABdhPJypgGRBlo6a3uR28YkQzfvVWixDNkdtCp94bBE7F/dwhU59fOqpvNDP+GJghMH+n/vIuAJsfN6r7kejo1jOdfM=
X-Received: by 2002:a17:90b:4c08:b0:1c6:40e4:776c with SMTP id
 na8-20020a17090b4c0800b001c640e4776cmr9989598pjb.237.1647594215955; Fri, 18
 Mar 2022 02:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220218145437.18563-1-granquet@baylibre.com> <20220218145437.18563-18-granquet@baylibre.com>
In-Reply-To: <20220218145437.18563-18-granquet@baylibre.com>
From:   Wei-Shun Chang <weishunc@chromium.org>
Date:   Fri, 18 Mar 2022 17:03:24 +0800
Message-ID: <CAPrDo5ht246dgPJmJBx7Xc6e1kqdw54C1eDDqMA347ZwRtAO7w@mail.gmail.com>
Subject: Re: [PATCH v8 17/19] drm/mediatek: add hpd debounce
To:     Guillaume Ranquet <granquet@baylibre.com>
Cc:     chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, matthias.bgg@gmail.com,
        chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org,
        deller@gmx.de, ck.hu@mediatek.com, jitao.shi@mediatek.com,
        angelogioacchino.delregno@collabora.com,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 18, 2022 at 4:49 PM Guillaume Ranquet <granquet@baylibre.com> wrote:
>
> From: Jitao Shi <jitao.shi@mediatek.com>
>
> Implement the DP HDP debounce described in DP 1.4a 3.3.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

Agree with Rex. The code is fine but I suggest including Rex's info in
the commit message for clarity.
