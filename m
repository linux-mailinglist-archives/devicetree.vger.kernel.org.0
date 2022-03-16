Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A4A74DB193
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 14:35:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244037AbiCPNg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 09:36:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241579AbiCPNg1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 09:36:27 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F3BB47054
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 06:35:13 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id l2so4426616ybe.8
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 06:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WNRIm2snhOLrjHDrRT45Al18e6yX+6IjtBw2hvIFtuc=;
        b=bl6xXHfUk0jza37f3JJNngv7+hb+rNkTVteG8qFGpuWSZHFNpW4/ck2144lMbppgke
         VedQEh+UgY27QEqhYUahKxZl39G0PAUbDtvPwRPCvG2MDO02K9a0KFdCt+8/lRSGUOHd
         lzT7xMJd3npkRtbQq5icH4pCvllCLjPtlpTzw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WNRIm2snhOLrjHDrRT45Al18e6yX+6IjtBw2hvIFtuc=;
        b=HM9FL0pw/S2XKNyWDwAS4x5z0hQki5sLrpnqdtucynGxmTOQtlnYd+ATFCVt5pm8Gc
         y3lazZ6jZX3ssn7rgRTu5l/4ssSu12cFxiuH3oVxo7R+H2iAcQVM2ux+Vsd1sUakerfw
         Oo7A4cLLrNBMNsw9NMPjsqEhAScV+DGzfnE8oX/4oJSMpplKBi8nVwN5VHSt4BuO/iwa
         kSqg7DkV0Dqxz1Di5m8CaZvT0PFrCEFHLzFq8z+W4kS2SiJU50gx9D6VXwVLe+P0F826
         K+K8dLBm0VyrJdtxX7H6VRL1zRc8ctmS6fVfTgMhixzV1010XCxWRbs9cJXz3dzh091M
         +6Pg==
X-Gm-Message-State: AOAM532CTEiBGUZ7TDAWkaXp+sbqM+33JA5DQoDXNU1RLNCjkJ6TfkbY
        pn+8ngdt859XDdp3QieumCXhTbM8wMwizKDmSMNyvg==
X-Google-Smtp-Source: ABdhPJzBoD2Jj2tGf6FiQyu4qnE17Z74AigshCqdfSdH9Nn6dOvJw3Guj90WJtvPBJPDHtGui5i1uCXGBcxMlWg7L7k=
X-Received: by 2002:a25:3403:0:b0:628:a2e4:ae8a with SMTP id
 b3-20020a253403000000b00628a2e4ae8amr27494313yba.219.1647437712360; Wed, 16
 Mar 2022 06:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220218145437.18563-1-granquet@baylibre.com> <20220218145437.18563-19-granquet@baylibre.com>
In-Reply-To: <20220218145437.18563-19-granquet@baylibre.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 16 Mar 2022 21:35:01 +0800
Message-ID: <CAGXv+5GfiVhK1cvgjnnxHxHnL7rQnUyQJD93d9NHNmT+txfgcg@mail.gmail.com>
Subject: Re: [PATCH v8 18/19] drm/mediatek: change the aux retries times when
 receiving AUX_DEFER
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

On Fri, Feb 18, 2022 at 11:15 PM Guillaume Ranquet
<granquet@baylibre.com> wrote:
>
> From: Jitao Shi <jitao.shi@mediatek.com>
>
> DP 1.4a Section 2.8.7.1.5.6.1:
> A DP Source device shall retry at least seven times upon receiving
> AUX_DEFER before giving up the AUX transaction.
>
> Aux should retry to send msg whether how many bytes.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
