Return-Path: <devicetree+bounces-1023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACE27A46D5
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:22:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15A9D281A9D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDD51C696;
	Mon, 18 Sep 2023 10:22:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67CA01C2BF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 10:22:21 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECB6A128
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 03:22:14 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2bf5bf33bcdso72750241fa.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 03:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695032533; x=1695637333; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iX6Za3zyMvqmXctAk0a5Iwv/WZyf9mXODoigV6qCMRo=;
        b=ZGApVSmVoU5dsPak7V2A+WWxPOXQHT38YTpcdkRXJqP0sIe2id4VnHMT2usiMKq44u
         Iz+zyerWrb9CTjN0T+oh18hoX1kQRDLLyHGuYQEYzDvpf7/Blm7EEeOb3kQcG0JXALQL
         qPw6bTvQM/lJa3H9aTKMuMvwhtwQ7BYBhgPNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695032533; x=1695637333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iX6Za3zyMvqmXctAk0a5Iwv/WZyf9mXODoigV6qCMRo=;
        b=hxQteGwvyxMAxC2Vo07ktjCNVf1O2YcKFo9jq8egMQdvR2A9+XWhSc5qRxlH+iR5b4
         qaom6sYhQ9tNJGOGV0vducsk43PXb1CRNAm6Tdzcic2fye0Q/ChopllTQsHp5iI8j0+b
         DYRlsVA4vSmEweTtHXn5A9MVQunWticguPQRg2ORHJXfN9QznqU53ae6Fj/zLRro2mC1
         Yk9VqAmWrKn69klw8nGaY/RNlrJDe/6tOtI3nxPZ8lW5NeyMaj7v0TvH9cwgHi6ByeXg
         cIeU7ZkHym455KVPcPkptrnNCGQxPOcI5H1mK2tAyWI4fjDPFxRchhM3sFjr7aHyFJJD
         ktxw==
X-Gm-Message-State: AOJu0YyGxzxLId4uAwlbJnw0aPfBBwJCDVsnaf4zqCO+cM5By6l2o2lH
	OtLEN8SYYb1Dy11w3lHCxf2MG9q666zlo5heD8b80g==
X-Google-Smtp-Source: AGHT+IGrOZ01cn2qw0qI6mUsa0BPS8suIqLpCLQSaooT4447KAkiTjntIXrQMcMfujDWXRNpeNDPG7ExNaXoGbZJW2E=
X-Received: by 2002:a05:6512:1115:b0:4fb:9f93:365f with SMTP id
 l21-20020a056512111500b004fb9f93365fmr8180795lfg.38.1695032532962; Mon, 18
 Sep 2023 03:22:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230822084520.564937-1-wenst@chromium.org> <20230822084520.564937-3-wenst@chromium.org>
 <7f743fba-6cba-cce0-d499-0a9d95e3b026@collabora.com>
In-Reply-To: <7f743fba-6cba-cce0-d499-0a9d95e3b026@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 18 Sep 2023 18:22:01 +0800
Message-ID: <CAGXv+5FgGtpY697e9-Dnk=1Ro0dM7C6qmtdXkWHb5EtocU+t_w@mail.gmail.com>
Subject: Re: [PATCH v2 02/11] mfd: mt6358: Add registers for MT6366 specific regulators
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Zhiyong Tao <zhiyong.tao@mediatek.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 15, 2023 at 4:55=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 22/08/23 10:45, Chen-Yu Tsai ha scritto:
> > The MT6366 PMIC, compared to the MT6358, does away with the VCAM*
> > regulators. Two regulators VM18 and VMDDR reuse their register space.
> > There's also a VSRAM type regulator VSRAM_CORE thats' split between
> > the VCAM* register space and other parts.
> >
> > Add register address macros for these MT6366 specific regulators.
> >
> > Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>
> For ease of applying to MFD, I think it's ok to have the header changes s=
plit
> from the actual user; so:

Actually that doesn't help, because this is a compile time dependency.
Merging this through the MFD tree and the rest through the regulator
tree would mean either creating an immutable branch, or Lee giving an
ack for this patch to go through the regulator tree. We would be doing
the latter if we squashed the patches together anyway. I think squashing
them does make sense.

ChenYu

> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
>
> Cheers!
>
> > ---
> >   include/linux/mfd/mt6358/registers.h | 17 +++++++++++++++++
> >   1 file changed, 17 insertions(+)
> >
> > diff --git a/include/linux/mfd/mt6358/registers.h b/include/linux/mfd/m=
t6358/registers.h
> > index 5ea2590be710..d83e87298ac4 100644
> > --- a/include/linux/mfd/mt6358/registers.h
> > +++ b/include/linux/mfd/mt6358/registers.h
> > @@ -294,4 +294,21 @@
> >   #define MT6358_AUD_TOP_INT_CON0               0x2228
> >   #define MT6358_AUD_TOP_INT_STATUS0            0x2234
> >
> > +/*
> > + * MT6366 has no VCAM*, but has other regulators in its place. The nam=
es
> > + * keep the MT6358 prefix for ease of use in the regulator driver.
> > + */
> > +#define MT6358_LDO_VSRAM_CON5                 0x1bf8
> > +#define MT6358_LDO_VM18_CON0                  MT6358_LDO_VCAMA1_CON0
> > +#define MT6358_LDO_VM18_CON1                  MT6358_LDO_VCAMA1_CON1
> > +#define MT6358_LDO_VM18_CON2                  MT6358_LDO_VCAMA1_CON2
> > +#define MT6358_LDO_VMDDR_CON0                 MT6358_LDO_VCAMA2_CON0
> > +#define MT6358_LDO_VMDDR_CON1                 MT6358_LDO_VCAMA2_CON1
> > +#define MT6358_LDO_VMDDR_CON2                 MT6358_LDO_VCAMA2_CON2
> > +#define MT6358_LDO_VSRAM_CORE_CON0            MT6358_LDO_VCAMD_CON0
> > +#define MT6358_LDO_VSRAM_CORE_DBG0            0x1cb6
> > +#define MT6358_LDO_VSRAM_CORE_DBG1            0x1cb8
> > +#define MT6358_VM18_ANA_CON0                  MT6358_VCAMA1_ANA_CON0
> > +#define MT6358_VMDDR_ANA_CON0                 MT6358_VCAMD_ANA_CON0
> > +
> >   #endif /* __MFD_MT6358_REGISTERS_H__ */
>

