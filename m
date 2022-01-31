Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 740004A4BAA
	for <lists+devicetree@lfdr.de>; Mon, 31 Jan 2022 17:18:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349603AbiAaQRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 11:17:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380289AbiAaQRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 11:17:50 -0500
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF5EC061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 08:17:50 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id i17so13229884pfq.13
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 08:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6dW6Paekh2M3q0AKO8Nn9qo5GhbHWr+f3LHux6ppjjc=;
        b=VkKWKKTJ3llEDCuYXX58J/Van2BWr42/g0fFruRyO6A6IJ1Ey0+QdtOAFBk2DvKf+d
         QwGPZP5vklGLbvsxff02lAyYYXg57KkLhSFp1qgxA1R/i0KaH0l55sDniuT/VAHN0h/7
         g01P6xBckDtgxsHOe4IjZ1acKEaK3DZS19iiUm66fcSPbB3ymZcpbPCDXGq/bWne2+Ut
         hDDhXr2qbivYhNkT+P5QqfJq1uGrrcaioLZS2ThSGuZdGdEb/ZeTv1Bl2c0Mgj1v953/
         vL3vt+sypWD/I9GTFPiNqfXdL3qr0LmG2OW6CK02kLsaIQYrI2Iiwecnv+MiyqIDsAus
         V8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6dW6Paekh2M3q0AKO8Nn9qo5GhbHWr+f3LHux6ppjjc=;
        b=LxLGB9gZZ9PeDJrHBmzEsmCqURAXyo9LaeeorgoDyYzBJre9hjeLVWu/E2Al1odlO4
         0Iz7XZwsmAdrdNrrcxpPr2NvA1p/I1dPkb87dicif4M/ItVA7d7aXeMYz5Ijpk5ThBHt
         Pmas3qRCprHcCHKWdXM95qbWH9eClummYE0ggcHFXBlCHX/JHEEITTrQhcdL32++HO59
         jotuSVKZxaBim8au+zg0Ef7oDevwa5buKsi1mMxEPx6OSsRDUUBJa/ZCTKS5Ti0RvRwY
         BNim6JObwh+cf5kBBoY4EmuXSorfsUxs4uqyJiqA3HZ7FnlAnoXnM3AH2A936pipp7fZ
         oMSQ==
X-Gm-Message-State: AOAM5334+vpE7PFxFLolmJ0GT+rz2wKoxOqToX9jn+tlVjO3TjP+kcTE
        IKUMYtZfwbujSdo6xLg8Bx5JF2zV3FkgcNOtPELq7Q==
X-Google-Smtp-Source: ABdhPJyYEfOTlfcPo2Rc+tEKMntaZtsEDls8xaX5GIagij1mfThuKofuLRYN4ivvCrNxgQwweXv2dwSWORZti1M2rEg=
X-Received: by 2002:a63:4a49:: with SMTP id j9mr17019055pgl.178.1643645870158;
 Mon, 31 Jan 2022 08:17:50 -0800 (PST)
MIME-Version: 1.0
References: <20220120224204.773117-1-nfraprado@collabora.com> <29069a98-a839-4fb6-5b83-7877402aaf30@collabora.com>
In-Reply-To: <29069a98-a839-4fb6-5b83-7877402aaf30@collabora.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 31 Jan 2022 17:17:39 +0100
Message-ID: <CAG3jFytzxD9aAFGNhZ5djgqjgU7QmKOei077TYn7t3QpQdMb-g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: jacuzzi: Fix bus properties in anx's
 DSI endpoint
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Xin Ji <xji@analogixsemi.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey,

On Fri, 21 Jan 2022 at 12:46, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 20/01/22 23:42, N=C3=ADcolas F. R. A. Prado ha scritto:
> > mt8183-kukui-jacuzzi has an anx7625 bridge connected to the output of
> > its DSI host. However, after fd0310b6fe7d ("drm/bridge: anx7625: add
> > MIPI DPI input feature"), a bus-type property started being required in
> > the endpoint node by the driver to indicate whether it is DSI or DPI.
> >
> > Add the missing bus-type property and set it to 5
> > (V4L2_FWNODE_BUS_TYPE_PARALLEL) so that the driver has its input
> > configured to DSI and the display pipeline can probe correctly.
> >
> > While at it, also set the data-lanes property that was also introduced
> > in that same commit, so that we don't rely on the default value.
> >
> > Fixes: fd0310b6fe7d ("drm/bridge: anx7625: add MIPI DPI input feature")
> > Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>
> > ---
> >   arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/a=
rch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > index 8f7bf33f607d..e8f133dc96b9 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > @@ -171,6 +171,8 @@ port@0 {
> >
> >                       anx7625_in: endpoint {
> >                               remote-endpoint =3D <&dsi_out>;
> > +                             bus-type =3D <5>;
> > +                             data-lanes =3D <0 1 2 3>;
> >                       };
> >               };
> >
> >

This patch does not pass checkpatch --strict, please add the word
commit before the hash in the commit message to fix this.


Rob.
