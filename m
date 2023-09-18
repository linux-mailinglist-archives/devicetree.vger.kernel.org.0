Return-Path: <devicetree+bounces-994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CECD87A44AC
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 10:29:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8748A280FD6
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 08:29:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8905214AA4;
	Mon, 18 Sep 2023 08:29:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9BA14A98
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 08:29:23 +0000 (UTC)
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22EE48E;
	Mon, 18 Sep 2023 01:29:22 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1a28de15c8aso2761588fac.2;
        Mon, 18 Sep 2023 01:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695025761; x=1695630561; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D2KLHxUvH1e9UbdSzFKgZ7dGDdou3BHugEdao4BYMGM=;
        b=Qi+T2e6SAp4akNeMhEYFHINE3CT7gufns35z/AofeKOIgi2EDqo2BfGO0EdAEXB1bh
         UEVySUBqrTXW8116qYJJWfHJk6ojDjP/zx65dU+C66ueeqMYBXKlngxPdKEdHVBi0Ugv
         XGdXU0zfVmKro0y/46pJPuerINQ0kd9y6N4SWiw20YVV3oM2qOdrae0Vc2rqXyGrGSAT
         70FTHX3QTa51cJRw63NBhiMbqUmDTBAsQFsM+yWr64nADkb5IAVqjSmOI3cqxZubQkxR
         dRoiDy29ILQl/3kq2lX2Ye/giXcnagiYd7tuCJztSnI4NwfoRZs+d2cHHpzb+Q9Nb5gq
         p8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695025761; x=1695630561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D2KLHxUvH1e9UbdSzFKgZ7dGDdou3BHugEdao4BYMGM=;
        b=xK4jYEO1pJaAb0+gB3DCAsanK/Bkrv/ZKszQdvXhKAGBgwZNh+V1VMjN6qBPOAdl3a
         hk7hQB7nT3tST7wwZd+zdVX5F6q3/eWm5SWh9LfbLvhsnLrtMOAGVP+xhzwRQleB/kR2
         A9Pvq5ImNPGXfPNfSPqYNJu/A+dHr9yZz2Du9oHs7uIb4aBTz8DdXKKG5C2dlaULiLu8
         sn5ATUE0sWV1CG4k0vM4Km7A6ALQVjvSSadGbrXMt39lzb3udeqYfzqqLByz8v2GxZ0M
         ncm9b99FOHLwDX2lomeVPLdItnEhB3cXN9BURXupmRpW+AwwGJpyIqKOV3FewB7Vy5j4
         O96g==
X-Gm-Message-State: AOJu0Yw5u1f2x7xX4l7LXv4YbSRnOJxQflwXMKhkLPkb5pJzTTOeCDIk
	ZB+t3WEmmoDcaG8Hipy53nqZlRoCfK9WNl/m2eDmZi8cnOI=
X-Google-Smtp-Source: AGHT+IEL+QB/e61Xbx1MH5Fw3wpt10ePZoSoRShIiMWwnl4oYmopgX9CjPD/wm6sw4txYnkei3J74yBAixsu36G+RQI=
X-Received: by 2002:a05:6870:1604:b0:1d5:d8f0:7d7e with SMTP id
 b4-20020a056870160400b001d5d8f07d7emr10719259oae.53.1695025761373; Mon, 18
 Sep 2023 01:29:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230917103753.52644-1-arinc.unal@arinc9.com>
In-Reply-To: <20230917103753.52644-1-arinc.unal@arinc9.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 18 Sep 2023 10:29:10 +0200
Message-ID: <CAMhs-H8Em_ZKzuewLJ_0krwpXUr5u4Df5t=2V5-Wk9iviJW4_A@mail.gmail.com>
Subject: Re: [PATCH] mips: dts: ralink: mt7621: define each reset as an item
To: =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-mips@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sun, Sep 17, 2023 at 12:38=E2=80=AFPM Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.u=
nal@arinc9.com> wrote:
>
> Each item of the resets property should define a reset. Split the item wi=
th
> two resets on the ethernet node into two separate items.
>
> Sort the items of the clocks property to the same line as a trivial chang=
e.
>
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
> ---
>  arch/mips/boot/dts/ralink/mt7621.dtsi | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Acked-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Thanks,
    Sergio Paracuellos

