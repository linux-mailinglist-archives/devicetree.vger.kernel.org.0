Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F30E6B1A79
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 05:40:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbjCIEks (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 23:40:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbjCIEkr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 23:40:47 -0500
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 600BBBF8F7
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 20:40:45 -0800 (PST)
Received: by mail-vs1-xe2b.google.com with SMTP id m10so564751vso.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 20:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678336844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1HfEhdsNHcbX3MgYanmt5oONyvC5m572GacJct3ywv8=;
        b=OY4ZWjxAKzzEe17t+/omd8pzCo16GDs+lISGaBNc7ARvCqvIDcXrBWaMz3KPUKAFAx
         MKYjJMlijA0oiag/o9ltWgAulpb5GN7ubgXmPwvO0JcS+CHLTYBkBOAm+jnAVTiSj+dP
         C9gs1nBW8msTqbWyP83xeXc2dm8SJOQ5ZteXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678336844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1HfEhdsNHcbX3MgYanmt5oONyvC5m572GacJct3ywv8=;
        b=sTBq7N5AsMQlcOvN+INZEft4PFJILR+DpCrTDapNwZyEEhwFhsXL11ROtQamSsL9KH
         G7bUYYfHr/JZOPEkaDXIcX6OW37ZrnrI2+9G0GRF5VBQH6cfxftVf0M/JzxA42v9MoTI
         gJkSDbSa3t7qYLFa6iI4iDM+6Jq78Xq38mZ6Xf8xJGojjInraACBTgHFykDGqLKlmSqz
         AbU16qPU6krAqpxpn4Xs8oGEfY4ZA3HNrBqkBMxtJmMtVrW5xQ32QAbkk8d6hbjtvGnn
         M3h71Bj9YqqbboZCm1SKPPPjAi/ZPp7xEnmdIGZPVOjUTnoTBkMzssYJgBlbX+AjFlNH
         iWPw==
X-Gm-Message-State: AO0yUKXdGa3Lld0f5BZQP2O0JtqDxpBIZmV/cS1k+kXrdja7QXRCql8y
        UDK65rbIBwGNxNqLoiZqk61sVpRKkU5LIvIOLX+5SQ==
X-Google-Smtp-Source: AK7set/qz7AXP379kXCwXSGP7qW4SxN2fHK9WOBBCqjE7wujg+HjwD4MbiqD6RrlzvCfV93hp0pdiEJhzThyfyxm1e0=
X-Received: by 2002:a05:6102:21ae:b0:412:364c:68be with SMTP id
 i14-20020a05610221ae00b00412364c68bemr13182027vsb.7.1678336844113; Wed, 08
 Mar 2023 20:40:44 -0800 (PST)
MIME-Version: 1.0
References: <20230307154524.118541-1-bchihi@baylibre.com> <20230307154524.118541-2-bchihi@baylibre.com>
In-Reply-To: <20230307154524.118541-2-bchihi@baylibre.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 9 Mar 2023 12:40:33 +0800
Message-ID: <CAGXv+5FUrWEF4SZ6DKjoF8Oai--JGFffzQ3_DyzQrUrThVEQ7Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: thermal: mediatek: Add AP domain to LVTS
 thermal controllers for mt8195
To:     bchihi@baylibre.com
Cc:     daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
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

On Wed, Mar 8, 2023 at 12:46=E2=80=AFAM <bchihi@baylibre.com> wrote:
>
> From: Balsam CHIHI <bchihi@baylibre.com>
>
> Add AP Domain to LVTS thermal controllers dt-binding definition for mt819=
5.
>
> Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
> ---
>  include/dt-bindings/thermal/mediatek,lvts-thermal.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/include/dt-bindings/thermal/mediatek,lvts-thermal.h b/includ=
e/dt-bindings/thermal/mediatek,lvts-thermal.h
> index c09398920468..8fa5a46675c4 100644
> --- a/include/dt-bindings/thermal/mediatek,lvts-thermal.h
> +++ b/include/dt-bindings/thermal/mediatek,lvts-thermal.h
> @@ -16,4 +16,14 @@
>  #define MT8195_MCU_LITTLE_CPU2  6
>  #define MT8195_MCU_LITTLE_CPU3  7
>
> +#define MT8195_AP_VPU0  8

Can't this start from 0? This is a different hardware block. The index
namespace is separate. Same question for MT8192.

ChenYu

> +#define MT8195_AP_VPU1  9
> +#define MT8195_AP_GPU0  10
> +#define MT8195_AP_GPU1  11
> +#define MT8195_AP_VDEC  12
> +#define MT8195_AP_IMG   13
> +#define MT8195_AP_INFRA 14
> +#define MT8195_AP_CAM0  15
> +#define MT8195_AP_CAM1  16
> +
>  #endif /* __MEDIATEK_LVTS_DT_H */
> --
> 2.34.1
>
>
