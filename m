Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8407E6ADBDB
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 11:27:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230492AbjCGK1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 05:27:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbjCGK1E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 05:27:04 -0500
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com [IPv6:2607:f8b0:4864:20::e2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5D1062B7D
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 02:26:46 -0800 (PST)
Received: by mail-vs1-xe2e.google.com with SMTP id by13so11865826vsb.3
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 02:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678184806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yAifdSfv0qu9/9RmW88ObONMsIk5lXQf5X6sr56a9BE=;
        b=HJP2dq5eXMi9C5VywdM47zJbV2wVa0N9nsZp/eflBdCu8ikIWZJM5r3y3UGBH1Dlgg
         ovaGRHIAavdwMr2Qq7xZieDNL2aXPJBNp1mqtE5DwSN4Gt7Tu1IBjw7nTVEj8ylkFhJI
         G3qzV/86brm1FEBBhZbPlFtVo43BQKrW+Gx+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678184806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yAifdSfv0qu9/9RmW88ObONMsIk5lXQf5X6sr56a9BE=;
        b=XXMdDOpEFsa985YVDWwqh+AU22fldrqI2vrx+Wod0RI91h0Ert6K4WEPS3WiOICwnx
         PQsy1Mu78h6QWAvXiq29yZfmJTLkGe6mKy4qC3KGPJDitd5Xh8t5/1EaLvPxkgYpG/Mb
         EQdSF/RE+/IY+gyUCjwlUwT8f8I9gta32Beem7iT477GeZhcJnbqrWb2/v/kpEIGkxVT
         CHgPS6hga712WDgP0SQiG2PXFBiSVUSXiddNJEzWe+q9BDn6Pi2dO1QzG3yHn7JmWnn4
         lWcDAYKiGT8L+1iOc4xseuzS840QSoIB5ym6i1EWh9Pj3l4cbyJCGjx6CdaHcnUbNv0H
         2oXA==
X-Gm-Message-State: AO0yUKUGURwcWmtF/AV6ijTdee+/c7t7SMd7EElim6GdXvWHsQfrtKgF
        A8eRu6mRYiQu5pXsgBB4AxXalX1uIUxDxgmaqvEBaA==
X-Google-Smtp-Source: AK7set+cFs1AwNyjrHfT4eFsJP6dSFO3pQ1xfcD0fVPi5XjmERq9rViR6hefLiK6x6lPDIOISJKm9Sftmn5yEh7+j64=
X-Received: by 2002:a67:e2c7:0:b0:412:2f46:4073 with SMTP id
 i7-20020a67e2c7000000b004122f464073mr8848432vsm.3.1678184806025; Tue, 07 Mar
 2023 02:26:46 -0800 (PST)
MIME-Version: 1.0
References: <20230228102704.708150-1-angelogioacchino.delregno@collabora.com> <20230228102704.708150-5-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230228102704.708150-5-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 7 Mar 2023 18:26:35 +0800
Message-ID: <CAGXv+5FcnLYZnWGtngkj2y0mozPopT=16X2rApFqNhRYxfMjPw@mail.gmail.com>
Subject: Re: [PATCH v4 05/12] dt-bindings: gpu: mali-bifrost: Add new MT8183 compatible
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
> Since new platform data was required in Panfrost for getting GPU DVFS
> finally working on MediaTek SoCs, add a new "mediatek,mt8183b-mali"
> compatible.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Tested-by: Chen-Yu Tsai <wenst@chromium.org>
  with `make dt_binding_check` and `make dtbs_check`
