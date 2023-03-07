Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5D896ADAF9
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:52:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230250AbjCGJwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:52:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230300AbjCGJwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:52:46 -0500
Received: from mail-ua1-x92c.google.com (mail-ua1-x92c.google.com [IPv6:2607:f8b0:4864:20::92c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20BBF3A98
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:52:43 -0800 (PST)
Received: by mail-ua1-x92c.google.com with SMTP id f17so8445255uax.7
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 01:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678182762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rUGE4NLp1dzlaCpuRsuoXh7GQOmh7Ex8Ez1qpO97Cww=;
        b=BVAJ05WjjYYe15giRYYRnN18GQChdYZf706gda4lAbHnGoRJe8RXTaG0wJnnwOcLEG
         hNR6rzX5zoi5OXDO+2A00TzCqWW2vx2T8li26kEjNl7rEAaVmTYnoUvQjtIKPAbVu3vh
         ZhEqsZL3FF++lT86RJGglOGZl/4WljehR4z6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678182762;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rUGE4NLp1dzlaCpuRsuoXh7GQOmh7Ex8Ez1qpO97Cww=;
        b=ADE7rhseR+v9M0ipyZo+aKvlv5JVUC3aMgVzkqjrGdxv8COpibXyGymee53TKaZljM
         fmRsM1PieF809Aup/MKN+adwbaIUaEPmaJ++cjaFnWj/PSBbhbx7IdFVYMfcrRNnpnjU
         ifmb2Wi+uEdxCTi6o/958PGBu3W5/Uer6FN9ZABSsc+/ga3uAkWMgnZXuypKX64idpkY
         YmFYirsUgHZNaex5/dA3oeghBhnjC21CQPml5F9bd35ZGYsZxM/+gf/sqHPn9G6YC5jT
         xua/G6F/S5L7gw35DtQFwv6HeiHzyZ3fDnAxNxxjrhSLDVeFS7h5ELIWrE5w0bMh0dgA
         KrDQ==
X-Gm-Message-State: AO0yUKXaH1R7FyrAB6sbXDY9I4SOhlU1SnmyonuDnyli/DeLd0JVJS/a
        n+dj1Znk9ElJXm2sbmUMsKireNO1iMBX3bw2RY/G2w==
X-Google-Smtp-Source: AK7set99pajDzF78Cn1Ybb/FJD0puSgRBTD5C6iX7PfjJMAHS1OJ7pSRgHhIKA1sI9K6oLm73zy7R2g+hfTT8VQSDKQ=
X-Received: by 2002:a9f:310a:0:b0:68e:33d7:7e6b with SMTP id
 m10-20020a9f310a000000b0068e33d77e6bmr9296190uab.1.1678182762200; Tue, 07 Mar
 2023 01:52:42 -0800 (PST)
MIME-Version: 1.0
References: <20230228102704.708150-1-angelogioacchino.delregno@collabora.com> <20230228102704.708150-12-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230228102704.708150-12-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 7 Mar 2023 17:52:31 +0800
Message-ID: <CAGXv+5F9afH2x=yioheatsaWvf9y8XDSdXCs=R3eM_1GRDieEw@mail.gmail.com>
Subject: Re: [PATCH v4 12/12] drm/panfrost: Add support for Mali on the MT8186 SoC
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
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 6:27=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> MediaTek MT8186 has a Mali-G52 MC2 2EE (Bifrost): add a new compatible
> and platform data using the same supplies list as "mt8183_b" (only one
> regulator), and a new pm_domains list with only two power domains.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> Reviewed-by: Steven Price <steven.price@arm.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Chen-Yu Tsai <wenst@chromium.org>
