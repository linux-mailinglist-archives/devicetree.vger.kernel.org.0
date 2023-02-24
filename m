Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEDB76A190E
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 10:51:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbjBXJvX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 04:51:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbjBXJvW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 04:51:22 -0500
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE71464D51
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:51:18 -0800 (PST)
Received: by mail-vs1-xe2a.google.com with SMTP id j14so20736644vse.3
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 01:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+cOUMETYWPj+3zj+V0LZyGIDXw+UlRgZsHTjIWEqX7c=;
        b=OMT/zwGv0rtaA2+O2iliW9lV4XB5TC+1rqUYocI55/ldmQZUOKhPbMapW7AiEsM2pg
         r1fWLwRfGvCc21VrKvUnXrHZ1vgNsAkMkXvSF9hkyjqRwR0hcoS7a+PzlLjTh4W6pAJp
         lOqK3+yXWdtz83RVNOSI3JzNqr64F8a8Mr8B0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+cOUMETYWPj+3zj+V0LZyGIDXw+UlRgZsHTjIWEqX7c=;
        b=vDeh3gMFA0hcob/fhmJYEDauQu/mYIiUeGM35+/pgoxEQZE6Xc10uSTL2ThFt0ePR1
         2P69VhNsoX0/0TF2JEFQnBD5QTRwXXmhd5FAFJKXToSUh2GVc9pzgupcVSOyNv9u3E5J
         Zqe4NFiiu3D8fZQ5VKZWHcV7z42SvQr3o6H6rQOlh7R9V4sq1oEyidgM3cwfUYMOVSOF
         r1SKOBO0431nVJXEzTfg0VommzX/GdtWjWAU2veCHZNDNmxqBfkmsPS40pFNuCNyDWXg
         Z7dlFgwz0bSMBY3Xh/XcEs7nrr352w5VTrTy0kD8yzEjtYcfSC2Bb6rzYF2CQloa7F2i
         C3+A==
X-Gm-Message-State: AO0yUKUMBURa1RH95/32VkKtIIY9msgLLtP7F7lzC12yxUhe1osQKw29
        9Fvd4oXGAsZQv3PNMADvBSVtWY5Ej7As0NHV5/Jpug==
X-Google-Smtp-Source: AK7set/xJ8xCePXsC2JlZPb6XO+wk7EFsOgwgVrZbRKYzXiRy2pllaTaIQHKfgnaTfJvc+Dy3pyqED+k3tlyKGtms38=
X-Received: by 2002:a05:6102:3d16:b0:412:d91:5ef5 with SMTP id
 i22-20020a0561023d1600b004120d915ef5mr2576584vsv.0.1677232277889; Fri, 24 Feb
 2023 01:51:17 -0800 (PST)
MIME-Version: 1.0
References: <20230223134345.82625-1-angelogioacchino.delregno@collabora.com> <20230223134345.82625-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230223134345.82625-4-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 24 Feb 2023 17:51:06 +0800
Message-ID: <CAGXv+5FzzosPhBNFyWu2U8ZBeUg8fHSvEy57LL4gduy6=GOj3Q@mail.gmail.com>
Subject: Re: [PATCH v2 03/16] arm64: dts: mediatek: mt8183: Remove second
 opp-microvolt entries from gpu table
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
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

On Thu, Feb 23, 2023 at 9:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> This was done to keep a strict relation between VSRAM and VGPU, but
> it never worked: now we're doing it transparently with the new
> mediatek-regulator-coupler driver.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
