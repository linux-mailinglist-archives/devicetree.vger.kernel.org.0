Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4B54C22B0
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 04:52:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbiBXDwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 22:52:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiBXDwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 22:52:31 -0500
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72E3B14344D
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 19:52:00 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id e140so1356180ybh.9
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 19:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=C3V/dtxV15Mn7k63x16wvKI7YuLTRLAtDoW+UZHVNSQ=;
        b=JpTyQ9fwmnCkQTdb4pTZ4OG7pAZVm7gwL2969nPUypAx3k22so+gM3I0W2ci/jvCA5
         BDPZMmcHgO3YLsB+3wl8ORdfR8CU0QCz0p728ige4gFTPcamGc/2PpHz7ciUiyqBI3Tu
         X9cjP50jWu0UKjTUkHmEzjal1OhvJNpAH3BzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=C3V/dtxV15Mn7k63x16wvKI7YuLTRLAtDoW+UZHVNSQ=;
        b=PIpRONISZHXTe4uJ6UFU6xyMSx4sytOfs555xwldVEQ4AFafuUElk49Yw6nE3dFRw6
         ZeFWKImuR7uZW9StImYfOR/6/7a2nOnant+QZpquiic7ddYQy192u3hUdO4AjxqVeUBA
         DZ5kxLjP+MLq6vxuhWW05eC6g27JcWBI2PBv/ckbZ/rhGYnSoAL39GkmtMd3XCY9+Xsn
         vAYKBrVq+iDYSh+NroJP/W8iTMLEv01GBFqou+gcoG4t3iYQzwvxMZnGqI4VVQP/7//B
         Offmq29n8Z+y/sRdlYxeJcdpmeTlNQlmWNovNM6dc8RXZPr/RFi2XVYwbF9hWw8/6riP
         9Dmg==
X-Gm-Message-State: AOAM532J1pr1IQE5PAXnBMu30Z3Pr1mv+qdx0+Uf3k37RYpt9Qis9KKL
        DHxBbD6T3lfjc/tnh/T5qfUUESLW7x3swtSsWD+95Q==
X-Google-Smtp-Source: ABdhPJyiaPY/OEbo9lDvhKxowTvqVlkhYSSAXktn3qviviBrH2qstZAw3K9LBrLE61G6q3rwWoSQxKBMDVgyXk0nark=
X-Received: by 2002:a25:a486:0:b0:61d:a523:acd0 with SMTP id
 g6-20020a25a486000000b0061da523acd0mr753461ybi.203.1645674719716; Wed, 23 Feb
 2022 19:51:59 -0800 (PST)
MIME-Version: 1.0
References: <20220201174643.843102-1-nfraprado@collabora.com>
In-Reply-To: <20220201174643.843102-1-nfraprado@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 24 Feb 2022 11:51:48 +0800
Message-ID: <CAGXv+5HbBroWkR4gLA2EXOcki4wgZ6XahO1J-VOctgKX5K9k7w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: mt8183: jacuzzi: Fix bus properties in
 anx's DSI endpoint
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Robert Foss <robert.foss@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Xin Ji <xji@analogixsemi.com>, kernel@collabora.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

(CC-ed DRM bridge maintainers and the dri-devel ML)

On Wed, Feb 2, 2022 at 1:47 AM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
> mt8183-kukui-jacuzzi has an anx7625 bridge connected to the output of
> its DSI host. However, after commit fd0310b6fe7d ("drm/bridge: anx7625:
> add MIPI DPI input feature"), a bus-type property started being required
> in the endpoint node by the driver to indicate whether it is DSI or DPI.
>
> Add the missing bus-type property and set it to 5
> (V4L2_FWNODE_BUS_TYPE_PARALLEL) so that the driver has its input
> configured to DSI and the display pipeline can probe correctly.

Don't people find it odd that this is setting the bus-type to "parallel"
(5) for the device to use DSI? Instead of "MIPI CSI-2 D-PHY" (4) or even
"MIPI CSI-2 C-PHY" (1) which is specified in the binding? It's completely
backwards.

Would it be possible to fix the binding and driver at this point?


Thanks
ChenYu

> While at it, also set the data-lanes property that was also introduced
> in that same commit, so that we don't rely on the default value.
>
> Fixes: fd0310b6fe7d ("drm/bridge: anx7625: add MIPI DPI input feature")
> Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
>
> ---
> v1: https://lore.kernel.org/all/20220120224204.773117-1-nfraprado@collabo=
ra.com
>
> Changes in v2:
> - (thanks Rob) Use proper format when refering to commit in commit
>   message as pointed out by checkpatch
>
>  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arc=
h/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> index 8f7bf33f607d..e8f133dc96b9 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> @@ -171,6 +171,8 @@ port@0 {
>
>                         anx7625_in: endpoint {
>                                 remote-endpoint =3D <&dsi_out>;
> +                               bus-type =3D <5>;
> +                               data-lanes =3D <0 1 2 3>;
>                         };
>                 };
>
> --
> 2.35.1
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
