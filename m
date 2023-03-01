Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0A3B6A6707
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 05:40:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbjCAEkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 23:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbjCAEkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 23:40:08 -0500
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87F253864A
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 20:40:05 -0800 (PST)
Received: by mail-vs1-xe31.google.com with SMTP id f23so17917547vsa.13
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 20:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NwsREfLzKNuoHKNJGJ6iVvjj/6dxpXa/wWiq+aOws3Q=;
        b=X9NKtJL0IJE82T7Th8Dk6OnTlE5QS9XjUMbMbMjCtPKJScjlgzMi9tRe9haNk5I/bp
         a9RvGAstNTzMucSeHKPPx8MvbmVGQGR1s+LPQiX5jkKZ1ObsOwdQPM7QJwwkqXqXun4D
         Mj6sb9oTp0PTfWd7kvnK46taN4Ed/rdZOW7a8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NwsREfLzKNuoHKNJGJ6iVvjj/6dxpXa/wWiq+aOws3Q=;
        b=Va324ogFnW0fiMJcjegsKWzwhwEZxDyDdk5jwRKT+9RO0RJo2I3GZ27D/QOyw0E8hr
         TddlPmdvOVCocsh3GHB2gaPEuNEisRJxXFgpjNbUt4ACwikR/HbqSmDgYVi2Yxd+T8Hh
         Cs83/jeZhEszqECW8hY+JRwa4eRupGbMPqvZFn5ZvC9x6AjmUconAZSLtrAs09gOUcvl
         wAvA/0T0NVNeZCGocql8a4hE3eaizkK/HAqodEV5OSemnMMte4OXwn6faWWTwFMUyFLj
         0JF4JJZ4RAY7dFzNHASg7M/N8xZgR/HLFZZhSgDfKsLDIToAn+KE8Ov/Yofgyx48qG2o
         /u5Q==
X-Gm-Message-State: AO0yUKVD+5AswZvKmrOE3oju6wfhTEoNRSqMJ/siZYzO9BTHcj6ouWVP
        FR8LyhqK6uwDRT/zyea5HOjlYvR4D6Lg5up2Kz6oOw==
X-Google-Smtp-Source: AK7set/20vPvgEB8su2PX/3Zm906cvBref6o6YCdNAAccIVwSoFTAxjK0qhveIlYt8n8nLOyXZEv8bdecjorFvsqMyQ=
X-Received: by 2002:a67:f9c5:0:b0:402:999f:51dd with SMTP id
 c5-20020a67f9c5000000b00402999f51ddmr3423652vsq.3.1677645604447; Tue, 28 Feb
 2023 20:40:04 -0800 (PST)
MIME-Version: 1.0
References: <20230228104741.717819-1-angelogioacchino.delregno@collabora.com> <20230228104741.717819-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230228104741.717819-6-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 1 Mar 2023 12:39:53 +0800
Message-ID: <CAGXv+5HF59-QFK-CTb=JLLDb8_J-JrgbzWHpmNWKR4JqF2O0bA@mail.gmail.com>
Subject: Re: [PATCH v3 05/18] arm64: dts: mediatek: mt8183-evb: Couple VGPU
 and VSRAM_GPU regulators
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 28, 2023 at 6:47=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add coupling for these regulators, as they have a strict voltage output
> relation to satisfy in order to ensure GPU stable operation.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
