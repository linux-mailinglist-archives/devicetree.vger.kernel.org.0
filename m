Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1977269EDFF
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 05:39:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230449AbjBVEi4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 23:38:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230475AbjBVEiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 23:38:54 -0500
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com [IPv6:2607:f8b0:4864:20::934])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73F532E0E3
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 20:38:48 -0800 (PST)
Received: by mail-ua1-x934.google.com with SMTP id p2so2181080uap.1
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 20:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SjnhtH64eML55ISxgIP0mbjGK87d9wufZ0dMxupwBB8=;
        b=lqrWBFFqj06m2wFc1tGmWC/sZDK+C19hDP4UIu5cVpbUtFfwJOsq8t6KqUwp+puZTM
         xlxcOhBFLwnQEXS/+AJA6bzHgUSP7bhC3Epgdd6YRaOAUCpXfcYDN21kgpjtnuydVfTS
         xmjsDddgoEcBvU3bv1C7mLsikIeNWew45cDD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SjnhtH64eML55ISxgIP0mbjGK87d9wufZ0dMxupwBB8=;
        b=BKPA8Wmc7cVxJjd4TPW5SSa3yqllpFFX3GpoCOoMV5BjzHP4L8Bv1wN6/S/k1r146a
         bpSpAhMe7DEmO3E/2gEEboqWm0vgKXIcU4K/2iEt4QHU3aTXqJlNbpxp/il6Sdn7BuLx
         ZWh7MrZ5rGLGV8kM5+uBj+58c3pJHlA2xEnM9rtTEBU83zgFjeZ5EMjzwiLQhjxE/fVn
         XExXmXH0l8CapSwwQ4TU8/buVXRu+AkMP2e8a6MuBSfj10bL7XDBkMqmadbShEQGpjgJ
         w7MYwH3S5F0p7XztFYh7LwjN1NNQaXtrnHfk31j6nboa+lpYcXQC4g9IgFw6Kl8Wjowe
         9DVw==
X-Gm-Message-State: AO0yUKUYDmrz74v3g4g9NN/pw3SL9eiQwNnPUIYatYfPYhpZFsMxdT6D
        Y6RxUw9BUVL8gWaQFmou2q4yWU2LLkswY+FZoT2gYw==
X-Google-Smtp-Source: AK7set83ZvblSYZh7JNvc7QCFEKUZbLt9LcnNtZrdB1tyX1tEXVX1rHD9xKFOJ5X0MZjFwaqGFlydH4WbQIiF5KY8zE=
X-Received: by 2002:a1f:208d:0:b0:3e8:66ce:a639 with SMTP id
 g135-20020a1f208d000000b003e866cea639mr1238225vkg.2.1677040727547; Tue, 21
 Feb 2023 20:38:47 -0800 (PST)
MIME-Version: 1.0
References: <20230221153740.1620529-1-angelogioacchino.delregno@collabora.com> <20230221153740.1620529-8-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230221153740.1620529-8-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Feb 2023 12:38:36 +0800
Message-ID: <CAGXv+5FuKJ7ce_tPeOt_+yPw+hZwiiePRHp+QsWBm-sf7UD4Dw@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] drm/panfrost: Increase MAX_PM_DOMAINS to 5
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
> From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
>
> Increase the MAX_PM_DOMAINS constant from 3 to 5, to support the
> extra power domains required by the Mali-G57 on the MT8192.
>
> Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Steven Price <steven.price@arm.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
