Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A143D6D59E6
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 09:45:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233768AbjDDHpA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 03:45:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231767AbjDDHo5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 03:44:57 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F26B8120
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 00:44:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1680594250;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=KPVu/xVyTPL2lLJeVRvlW1mZ4UPcNdLxppLFptaHtWw=;
        b=RPbKeJLbsaMsci3h0UaMvmrjeBZN0LABiZ+D8jT9XPn9jwvOueHZSaPnOawJkmekr16FYz
        EpsKXNpW+DBoxlXqNGoGGBl9tAYo8KZQ2LR2WQVZE8ZBpmPhWfAxroli1soOPF7rVYZAY1
        EGkjYkfQDKtiTiY5EYWdqH0Fi0NhPfA=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-424-qhtaiWB8MOuafgidV8qIbw-1; Tue, 04 Apr 2023 03:44:09 -0400
X-MC-Unique: qhtaiWB8MOuafgidV8qIbw-1
Received: by mail-qv1-f70.google.com with SMTP id e1-20020a0cd641000000b005b47df84f6eso14310858qvj.0
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 00:44:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680594248; x=1683186248;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KPVu/xVyTPL2lLJeVRvlW1mZ4UPcNdLxppLFptaHtWw=;
        b=x/L64RsUCxtp7xFfqDwQITIJ1gpHCmnBSJ7asic7qRAHb4j1yB51NYmTfNj9mDm+OW
         9HbsP9HOfWhC41FF0+1QI/TIuy2JL2biGUIOI3ahEtdFqXc3WW8PiI6XNEFYwVbIICOz
         PBq9MSK62qR7ax0yH5Q6VmJlaGmxb40VYXyCpD1+USqRX9Bo28d/IlCIo5mn7ms3DFgy
         Qsm5Hk+e7p2xKq8JXN11MbHhYMiY6aTc67VzcluA6NtPkAWlpefNhDG2NxssOfBP0/YU
         YMmf5eaqzO5r+mK1V2t02NOYCzXw5BjaYs7qSSwA29L8E/byRS683EJwdDZa5etydmrC
         SitA==
X-Gm-Message-State: AAQBX9eqemWx4R5hVh/qP9LMxdq8WouHB6Xj4eu6Jv3ggDocN0Q8LRov
        OKko/Fw7jjLPjxMGiBD11yuVUHSXOOeTLHpy+YBDdkAosoihsZZ1EY2gP+MfAUxRi2v5okg5VKJ
        JzzUnlZsRfgHpUsXi0jFmIQ==
X-Received: by 2002:a05:6214:509b:b0:5af:3a13:202d with SMTP id kk27-20020a056214509b00b005af3a13202dmr2072375qvb.4.1680594248407;
        Tue, 04 Apr 2023 00:44:08 -0700 (PDT)
X-Google-Smtp-Source: AKy350YNPzgAt4LCli7vsPt8ETdKcZYvIfxINM+yAfP6TYUZEhrps0QrwoT66NgD1VoJtY6LVaQvvw==
X-Received: by 2002:a05:6214:509b:b0:5af:3a13:202d with SMTP id kk27-20020a056214509b00b005af3a13202dmr2072350qvb.4.1680594248046;
        Tue, 04 Apr 2023 00:44:08 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-227-151.dyn.eolo.it. [146.241.227.151])
        by smtp.gmail.com with ESMTPSA id t187-20020a3746c4000000b007468cc74c77sm3432729qka.4.2023.04.04.00.44.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 00:44:07 -0700 (PDT)
Message-ID: <10e9e8dd6eadf68eca55c5742adf18dad23661dc.camel@redhat.com>
Subject: Re: [PATCH v2 net-next 02/10] net: ethernet: mtk_wed: move cpuboot
 in a dedicated dts node
From:   Paolo Abeni <pabeni@redhat.com>
To:     Lorenzo Bianconi <lorenzo@kernel.org>, netdev@vger.kernel.org
Cc:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org,
        nbd@nbd.name, john@phrozen.org, sean.wang@mediatek.com,
        Mark-MC.Lee@mediatek.com, lorenzo.bianconi@redhat.com,
        daniel@makrotopia.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org
Date:   Tue, 04 Apr 2023 09:44:02 +0200
In-Reply-To: <56ed497762b1c031c553210a0e5c7717c6069642.1680268101.git.lorenzo@kernel.org>
References: <cover.1680268101.git.lorenzo@kernel.org>
         <56ed497762b1c031c553210a0e5c7717c6069642.1680268101.git.lorenzo@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2023-03-31 at 15:12 +0200, Lorenzo Bianconi wrote:
> Since the cpuboot memory region is not part of the RAM MT7986 SoC,
> move cpuboot in a deidicated syscon node.
> Keep backward-compatibility with older dts version where cpuboot was
> defined as reserved-memory child node.
>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  drivers/net/ethernet/mediatek/mtk_wed_mcu.c | 34 +++++++++++++++++----
>  drivers/net/ethernet/mediatek/mtk_wed_wo.h  |  3 +-
>  2 files changed, 30 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/mediatek/mtk_wed_mcu.c b/drivers/net/et=
hernet/mediatek/mtk_wed_mcu.c
> index 6624f6d6abdd..797c3b412ab6 100644
> --- a/drivers/net/ethernet/mediatek/mtk_wed_mcu.c
> +++ b/drivers/net/ethernet/mediatek/mtk_wed_mcu.c
> @@ -18,12 +18,23 @@
> =20
>  static u32 wo_r32(struct mtk_wed_wo *wo, u32 reg)
>  {
> -	return readl(wo->boot.addr + reg);
> +	u32 val;
> +
> +	if (!wo->boot_regmap)
> +		return readl(wo->boot.addr + reg);
> +
> +	if (regmap_read(wo->boot_regmap, reg, &val))
> +		val =3D ~0;
> +
> +	return val;
>  }
> =20
>  static void wo_w32(struct mtk_wed_wo *wo, u32 reg, u32 val)
>  {
> -	writel(val, wo->boot.addr + reg);
> +	if (wo->boot_regmap)
> +		regmap_write(wo->boot_regmap, reg, val);
> +	else
> +		writel(val, wo->boot.addr + reg);

Very minor nit: it would be more consistent with the read function
above if you invert the 2 branches, e.g.:

	if (!wo->boot_regmap)
		writel(val, wo->boot.addr + reg);
	else
		regmap_write(wo->boot_regmap, reg, val);

No need to repost just for the above, just take into consideration if a
new version will be needed for other reasons (DT)

Cheers,

Paolo

