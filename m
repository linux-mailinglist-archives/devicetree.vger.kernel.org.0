Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78A7E74160A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jun 2023 18:07:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230311AbjF1QHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jun 2023 12:07:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjF1QHS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jun 2023 12:07:18 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A855E2116
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 09:07:15 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-765a6bbddd6so295505785a.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jun 2023 09:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20221208.gappssmtp.com; s=20221208; t=1687968435; x=1690560435;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PRMvRzciheSMPxqEeLs1MPeKatJtRFHaAr3+taJ0H1s=;
        b=X5gRfGpJl0fCNovVOCUFaAjGIjHfoePTMkXXjjRYW34vOUt3n/8GQPpsXdtQAWH6In
         +Sf5LPsUj1SmG8LCkyKwT+1b3hagwRZpAc2z5byGKYR+qj65EdYEgQXw+tXvDdehAN7o
         s8ix2BLcZPRevZJ6kXs4UcAZZC2//59zllWlC4My4ZmhNvVxx+qK7Hh/AsPaVkoS03Xa
         4dX+27M5DeInqVWze4Te4zM1E/xMlIKnHYu1RBaMGqFauneaC3JZ+QgKHFxXd6iEnjza
         n+94w1Id3VfqG7goI8txmM73s8HEc2oHujaE9ceufKfvxnDS1mkRjHsPtphIHnPJspgp
         Y6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687968435; x=1690560435;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PRMvRzciheSMPxqEeLs1MPeKatJtRFHaAr3+taJ0H1s=;
        b=ag8ngg2KjRxobaZooJOwnFtmU7ob8S14WeVs03wZkf6xle6b2a2c1sutSD/m38xTS0
         ZR+qpp4HItAjKVdN4UbaKlu56e31uoRc0PGesJZtd4uWNTw9EuQej+QvpAluKwAN+5nR
         54Mg90OVgHE9eVqb5ANOMI8CxgHmJwZNPANp0eBDiMXTUKgx4KfT/2NxjPDDLwkEKVi4
         5W+LvXZrJsPCEv2146goztmoOFbHVnlYRfLdv6p8/Hg4XyjniEMtmNTgczv4UuvxRm/D
         ThBQC+rAN1EHzKc4OVEaexrnqHmZZzt+eIZBow8TFReq+284LkTVD4oEqW7oS/EmruCX
         PtXQ==
X-Gm-Message-State: AC+VfDxY29dXGlSxgV+3x4g3ffFQghmO/LrTP7uwVRBfJpIhvbbi26Ig
        Dz7o1Fx6PtB2y+kg/ng5g5Dd8g==
X-Google-Smtp-Source: ACHHUZ7tc3t3VaLka2U5MShSYYU35PWuFk9aHK4lZk99Xtvm6W+REG5Rq8KCmhpzyO/ZB3ZAH+BcFQ==
X-Received: by 2002:a05:620a:270e:b0:762:5ad0:59c5 with SMTP id b14-20020a05620a270e00b007625ad059c5mr32001170qkp.60.1687968434789;
        Wed, 28 Jun 2023 09:07:14 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:c623::7a9])
        by smtp.gmail.com with ESMTPSA id u14-20020a05620a120e00b007659935ce64sm3947704qkj.71.2023.06.28.09.07.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jun 2023 09:07:14 -0700 (PDT)
Message-ID: <2cf1d6d7396a9b08b95d2f534c4bf9f7b3117459.camel@ndufresne.ca>
Subject: Re: media: mediatek: vcodec: fix AV1 decode fail for 36bit iova
From:   Nicolas Dufresne <nicolas@ndufresne.ca>
To:     Xiaoyong Lu <xiaoyong.lu@mediatek.com>,
        Yunfei Dong <yunfei.dong@mediatek.com>,
        Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>
Cc:     George Sun <george.sun@mediatek.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Irui Wang <irui.wang@mediatek.com>,
        Steve Cho <stevecho@chromium.org>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Date:   Wed, 28 Jun 2023 12:07:13 -0400
In-Reply-To: <20230628054111.8967-1-xiaoyong.lu@mediatek.com>
References: <20230628054111.8967-1-xiaoyong.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38) 
MIME-Version: 1.0
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Le mercredi 28 juin 2023 =C3=A0 13:41 +0800, Xiaoyong Lu a =C3=A9crit=C2=A0=
:
> Decoder hardware will access incorrect iova address when tile buffer is
> 36bit, leading to iommu fault when hardware access dram data.
>=20
> Fixes: 2f5d0aef37c6 ("media: mediatek: vcodec: support stateless AV1 deco=
der")
> Signed-off-by: Xiaoyong Lu<xiaoyong.lu@mediatek.com>
> ---
> - Test ok: mt8195 32bit and mt8188 36bit iova.
> ---
>  .../platform/mediatek/vcodec/vdec/vdec_av1_req_lat_if.c    | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/media/platform/mediatek/vcodec/vdec/vdec_av1_req_lat=
_if.c b/drivers/media/platform/mediatek/vcodec/vdec/vdec_av1_req_lat_if.c
> index 404a1a23fd40..420222c8a56d 100644
> --- a/drivers/media/platform/mediatek/vcodec/vdec/vdec_av1_req_lat_if.c
> +++ b/drivers/media/platform/mediatek/vcodec/vdec/vdec_av1_req_lat_if.c
> @@ -1658,9 +1658,9 @@ static void vdec_av1_slice_setup_tile_buffer(struct=
 vdec_av1_slice_instance *ins
>  	u32 allow_update_cdf =3D 0;
>  	u32 sb_boundary_x_m1 =3D 0, sb_boundary_y_m1 =3D 0;
>  	int tile_info_base;
> -	u32 tile_buf_pa;
> +	u64 tile_buf_pa;
>  	u32 *tile_info_buf =3D instance->tile.va;
> -	u32 pa =3D (u32)bs->dma_addr;
> +	u64 pa =3D (u64)bs->dma_addr;
> =20
>  	if (uh->disable_cdf_update =3D=3D 0)
>  		allow_update_cdf =3D 1;
> @@ -1673,7 +1673,8 @@ static void vdec_av1_slice_setup_tile_buffer(struct=
 vdec_av1_slice_instance *ins
>  		tile_info_buf[tile_info_base + 0] =3D (tile_group->tile_size[tile_num]=
 << 3);
>  		tile_buf_pa =3D pa + tile_group->tile_start_offset[tile_num];
> =20
> -		tile_info_buf[tile_info_base + 1] =3D (tile_buf_pa >> 4) << 4;
> +		tile_info_buf[tile_info_base + 1] =3D (unsigned int)(tile_buf_pa >> 4)=
 << 4 +
> +			((unsigned int)(tile_buf_pa >> 32) & 0xf);

I'm not clear on how this works. In the original code, it was a complicated=
 way
to ignore the 4 least significant bits. Something like this would avoid the=
 cast
and clarify it:

		tile_info_buf[tile_info_base + 1] =3D tile_buf_pa & 0xFFFFFFFFFFFFFF00ull=
;

But in the updated code, if you have 36 bit, you store these 2 bits in the =
lower
part, which was originally cleared. Can you confirm this is exactly what yo=
u
wanted ? And if so add a comment ? It could also be written has (but this i=
s
just me considering this more readable, I also prefer | (or) rather then +,=
 and
hates casting):

		tile_info_buf[tile_info_base + 1] =3D (tile_buf_pa & 0xFFFFFFFFFFFFFF00ul=
l) |
			(tile_buf_pa & 0x0000000F00000000ull) >> 32;

>  		tile_info_buf[tile_info_base + 2] =3D (tile_buf_pa % 16) << 3;

Is this the same as ?

		tile_info_buf[tile_info_base + 2] =3D (tile_buf_pa & 0x00FFull) << 3;

>=20
> =20
>  		sb_boundary_x_m1 =3D

