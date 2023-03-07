Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A5136ADBB3
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 11:22:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbjCGKW1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 05:22:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjCGKWZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 05:22:25 -0500
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com [IPv6:2607:f8b0:4864:20::931])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBBF551F9B
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 02:22:24 -0800 (PST)
Received: by mail-ua1-x931.google.com with SMTP id n4so8455745ual.13
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 02:22:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678184544;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OWiG787S02DtKSWxIcqlG+KIKtzAOyTFykUvF4kfhVw=;
        b=N5qvRVjsAdwkNSwUwDqtgDHZU/0wk3LSCRFuNQsOm3JBDr3OBRtcxbyTkGmTGB/52F
         hW7VLvNTROUl3ArDgWOt6P6FY+tKgbL0RsdWv+WZGU7Ay6uQww5qFn720RswFnh0Miqf
         dw77/ZBUeewZwaqCkQrr9y8K3t8GEAEe9Cd4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678184544;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OWiG787S02DtKSWxIcqlG+KIKtzAOyTFykUvF4kfhVw=;
        b=cDTbM5IThKUAWvAzcSsPaY2uDX21K1fZ44Fu1ROyUqEtEBZe7BO4a3QhI848HtBTGu
         J2nkL628t4/MCBQ1nUw/CAuoQe18Q1XeSGqLHwsDzP2Mq3p73/jhKcT8crlWiXeYdndT
         KmV/pM55e8eKh4lgsHAwCEv+XGpsF/R1L1bUYEqcfABhM0eqD8DBQTKUJRRgxEcfLnLb
         DNCjKcht1wSrtUt/FAI1pQHlxpazaDxdG+ft25jyRZjBxUdgIaLsbeBT40VqGfWdTb44
         3ME+kR1F/iIT42LHO0JzSFayLJBGnisi2a916t7akH3CC91sFOo3zI2Fkhfu8mEZ2BWd
         +mCw==
X-Gm-Message-State: AO0yUKV6p2XCubyoP7SLseUMXE2pMWcLK8uX4RoTx2XJL6e61bo7nyHd
        uqjHMcD/Kdt0n7tpeISBgtnPxsPDpFSHEqHr3HhS1rMmCWiifMH71yw=
X-Google-Smtp-Source: AK7set/cEE7A/fuEMWY6hxSLCJ3Mj28ipk4/B10pbN75eznTO0WQXN7YYB5vTg+N78zcYAoZyPErpNjf82NVfx6pFwM=
X-Received: by 2002:a1f:e584:0:b0:413:1498:e843 with SMTP id
 c126-20020a1fe584000000b004131498e843mr8568332vkh.0.1678184543768; Tue, 07
 Mar 2023 02:22:23 -0800 (PST)
MIME-Version: 1.0
References: <20230228102704.708150-1-angelogioacchino.delregno@collabora.com> <20230228102704.708150-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230228102704.708150-6-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 7 Mar 2023 18:22:12 +0800
Message-ID: <CAGXv+5HDd-KuDEvPXCxwMtGTom+J=rOYHPrat7Pku7wPCU3zkQ@mail.gmail.com>
Subject: Re: [PATCH v4 06/12] dt-bindings: gpu: mali-bifrost: Add support for
 MediaTek MT8186
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
> MT8186 has a Mali-G52 MC2 2EE GPU (two cores): add a binding with
> two power domains (one per core) for it.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Tested-by: Chen-Yu Tsai <wenst@chromium.org>
  with `make dt_binding_check` and `make dtbs_check`
