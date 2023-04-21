Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF6216EA3F5
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 08:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230099AbjDUGqV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 02:46:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230052AbjDUGqV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 02:46:21 -0400
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2D004EE3
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 23:46:19 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-771d9ec5aa5so5461945241.0
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 23:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682059579; x=1684651579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c8rGJOc85qIlsCEw2pQTROCuUhgxQbJfAVwawiJ5nNY=;
        b=VUlajZafzyZ/QAZ2etTEDkTYnUMuKwu8jBdsx5O8omch76Ox0jh2Cjvu2tY5/cuZo6
         ZUU3MEY7hDyOC9nmKFkojb3FJp2tN1l4SmRCENFxE/RrqM/KB2Orc4bmDjzJ8nrvZ1j2
         I513zQ6Gu/dAOqam4KJCl84lP+hQhRDkdxxbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682059579; x=1684651579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c8rGJOc85qIlsCEw2pQTROCuUhgxQbJfAVwawiJ5nNY=;
        b=TNohkS0OQbc10kIPhdP6f7n1SAE3eudsi28wwlOQ6u+0XxgSKEwrNy0Xs0iJgq6h85
         ZzTFROEvQYZYMXkBWmtKbWDzyaxr1GEksmt0+wZwmgsultPpo9UhKDn8xywFCt6IUESF
         zeYE+N+G34b02/v22W4CLVM5wmjQG5ycji1z5vl2q+ZyuRMji/y0If8iBPn1PrTstKnK
         COd4rW0Jo2nVA2xoy/cucSkCzUOKQf/z1a851OVagaapT2kxITEKO+tFP4Hz6Hqw8KW0
         ws/1Nry0nS/Q3oHpqRZ6tNGr/YB58bPKM3oMnyeELktic5Z9NsnFJsqoHCvH2pKU457P
         R1sw==
X-Gm-Message-State: AAQBX9ebJiay+9wI5xGcoFVKQj65vCJkGgUTCKSuepV9g+/FsBqhI3VV
        q+/WG+TUvxTck/+B2qGH2h6Mg0GgSEUk42gkHGxdaw==
X-Google-Smtp-Source: AKy350br7yCL1OJ1XJzVtNg1OFPeo3p9YhQpUa8cOHRZlJ8ebufKSznYUo1MYTqbjlZM+QmiW/h15w5lwrtnnSAOKp0=
X-Received: by 2002:a1f:784a:0:b0:446:adde:f761 with SMTP id
 t71-20020a1f784a000000b00446addef761mr548850vkc.7.1682059579067; Thu, 20 Apr
 2023 23:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230420094433.42794-1-angelogioacchino.delregno@collabora.com> <20230420094433.42794-3-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230420094433.42794-3-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 21 Apr 2023 14:46:08 +0800
Message-ID: <CAGXv+5EtCdpXtq6q2Cv+QAZPUE6yJiSZhngSc0sftz-_uDrZXw@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: mediatek: cherry: Assign dp-intf aliases
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 20, 2023 at 5:45=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> On Cherry boards, the IP at 0x1c015000 (dp_intf0) is used as primary
> dp-intf, while the other at 0x1c113000 (dp_intf1) is used as secondary:
> assign them to dp-intf{0,1} aliases respectively.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 2 ++

This should be applied at the SoC level. The display pipeline is fixed in
MMSYS, so it applies to all MT8195 devices.

>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8195-cherry.dtsi
> index 0820e9ba3829..918380697a9a 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -10,6 +10,8 @@
>
>  / {
>         aliases {
> +               dp-intf0 =3D &dp_intf0;
> +               dp-intf1 =3D &dp_intf1;
>                 i2c0 =3D &i2c0;
>                 i2c1 =3D &i2c1;
>                 i2c2 =3D &i2c2;
> --
> 2.40.0
>
>
