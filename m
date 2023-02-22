Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D047669EFC4
	for <lists+devicetree@lfdr.de>; Wed, 22 Feb 2023 09:00:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbjBVIAh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Feb 2023 03:00:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbjBVIAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Feb 2023 03:00:37 -0500
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62473C654
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:00:36 -0800 (PST)
Received: by mail-ua1-x935.google.com with SMTP id s13so2308952uac.8
        for <devicetree@vger.kernel.org>; Wed, 22 Feb 2023 00:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E/ELBQfN+/3lXdDB7LXB4Z2052sqoav27oBRvmxfX5Y=;
        b=AT+IRCu07svzL8m3gIIkCn+JEKk2W/8SCpGDCVA+oSKuwo58MRo4ZcEhc6RxVyyV5h
         SH4xpigfLJChb7OmNwlbmVHd/ccstGcS85QW1xb9r0cVu1WFt+Nf9hV2DweSdhHYdjPX
         0Ij/WbhQi5RvciOPshvUX0SJhh8dn1E+l2nQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E/ELBQfN+/3lXdDB7LXB4Z2052sqoav27oBRvmxfX5Y=;
        b=wQ/8YmRb4TYVBZyqHZSVmHSD9R0tmJduTJZ8No8Es9sldUBVfvtVrdSs6XiZWhTSX6
         K7PgnDz2Ctg5CxpkwoCsebbKo08ZraRFQZmRfMq/bq9kFtbT2GVvYq4knljrzEblmFTE
         xeWdE+oVjwBAsvQayuXSjvtfumNsK7DZ3kL1jBynaj7KJ862KXy5FRDeYhc5gnnUVZu6
         lNNtDHi2uueNyaNNMg750hXFTiV28MwEd+HGRdpVNac0+54JRkbg7EznSdd7/0MNxN+L
         kyR2PB31+I3m76ScljlRvjUJ3p1OrxNJfTjiQceLKPvPFiXsQefFSewyK4ywivWto2I4
         05/g==
X-Gm-Message-State: AO0yUKV8axXRpE10Y4tRGXaMfLWleknBj6sOS/Rm/0LM3FU6t9XO8djm
        Gi44XIEmE/GPETAn1YOtr4xro0F1hYteqcr3SIQaXQ==
X-Google-Smtp-Source: AK7set9gHg9xT1t3caYU+/EH6XDWBjScNBL58kOvjAujH1+xQR8y6JHp+iLrLSPt9BTYSv2avB7S3b74hbnrFiwCMsk=
X-Received: by 2002:a1f:208d:0:b0:3e8:66ce:a639 with SMTP id
 g135-20020a1f208d000000b003e866cea639mr1301210vkg.2.1677052835469; Wed, 22
 Feb 2023 00:00:35 -0800 (PST)
MIME-Version: 1.0
References: <20230221153740.1620529-1-angelogioacchino.delregno@collabora.com> <20230221153740.1620529-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230221153740.1620529-4-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Feb 2023 16:00:24 +0800
Message-ID: <CAGXv+5EhuZ4oqEc-gK+F8fktFra+0MD5pMi_qzDwnFXxgjUsAg@mail.gmail.com>
Subject: Re: [PATCH v2 03/10] dt-bindings: gpu: mali-bifrost: Allow up to 5
 power domains for MT8192
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
> MediaTek MT8192 (and similar) needs five power domains for the
> Mali GPU and no sram-supply: change the binding to allow so.
>
> Fixes: 5d82e74a97c2 ("dt-bindings: Add compatible for Mali Valhall (JM)")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
