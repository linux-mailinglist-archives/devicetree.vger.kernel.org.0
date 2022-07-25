Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2830957FA39
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 09:28:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbiGYH2G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 03:28:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbiGYH2F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 03:28:05 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9658E11C12
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 00:28:04 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-31e623a4ff4so100093797b3.4
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 00:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H7epkIx7Bo7OZyKYOv+XZev2GSnfQLkdGLGiZ0LxZ8c=;
        b=WLJPSC4TMjyg8I8soxTZ5c/HaieMRu0ilw/tYRRT3dW0234hNQCaBNsAMTmimcGDym
         gVcVywpiMWRY/hrWOgk+A1jqyaQK58ADdH6mp8Tdc8eGMhccWCQCpwhj7GoeV3boF7Ka
         8ZkuOxODo52fwq1YDMMA0VNVW2Wh//+YXV39E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H7epkIx7Bo7OZyKYOv+XZev2GSnfQLkdGLGiZ0LxZ8c=;
        b=funVzut3B58nu/0Suz54IStQOTC9qG9F+taK2uHYDFG4t0TDihYznCx1eE6Bm2vxJT
         HPdrLOiy6AF0MexO3tzh5buzmW946Fl9dI/bzvqACltlq2q0YC18LQ1CUFMieU7tsJ8j
         1fLUsc/Hhv9YrXPupUI8l/Qyne3aq1BjrVR6rKejrDl5+AN3IhjT3eoQclGH9n0W/DSf
         UHzyZG3l4y07Bc4q4eaIXqTfinH4GuvxdFinMFJIHzztiPHnngsSpSUr6u3bBULMw0z7
         gtH4TV6CHACY8SZ2GYNhJvilRfoKShQKaOkcyS9QmCH8AC8tudTivU3Sd+8YuI8dSW46
         SVwg==
X-Gm-Message-State: AJIora90IP2Mk8JmF8Kp6gBCoNaopFp7qju7sy1RQ6AoybOoKs2DGe9S
        W4TuJk5OUufECrC/0rrdtzZ1lshJu5s0EFmN3hxmvOxP7rc=
X-Google-Smtp-Source: AGRyM1sofK+ZbAm2wHz6/PMlObpSJxFDTP5gSmhP92Rp/Kt616QZhHpvv/6xAWxzGOgw9UhR8Behll/ww824d2IHfE0=
X-Received: by 2002:a81:816:0:b0:31e:acde:8726 with SMTP id
 22-20020a810816000000b0031eacde8726mr8600976ywi.195.1658734083888; Mon, 25
 Jul 2022 00:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220721145017.918102-1-angelogioacchino.delregno@collabora.com> <20220721145017.918102-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220721145017.918102-6-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 25 Jul 2022 15:27:53 +0800
Message-ID: <CAGXv+5E5+i3eG-04JAqN4wGmSd276FFE5KRDK5hUv+wK5vJT4Q@mail.gmail.com>
Subject: Re: [PATCH v2 5/8] arm64: dts: mediatek: cherry: Enable Elantech
 eKTH3000 i2c trackpad
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 10:52 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The Cherry platform uses an Elantech touchpad/trackpad: enable
> probing it at address 0x15 on I2C1.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>
