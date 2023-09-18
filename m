Return-Path: <devicetree+bounces-1208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2066E7A5520
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:35:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFABB281FD7
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B127428DD3;
	Mon, 18 Sep 2023 21:34:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A071450EF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 21:34:56 +0000 (UTC)
Received: from aposti.net (aposti.net [89.234.176.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 429C18E;
	Mon, 18 Sep 2023 14:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1695072893;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xBjUrTB1h6HTKFJu/vUBibZ6e10SxFFPD/tWImLBD8M=;
	b=aQOTQq7w9HVWKEl0ATGzAh6PQ68Fgak1vuBqlFH2PMpa73jk/hz3ktOCyM6KqF5vPaQVDD
	T6WzM8kGPKD3VyhTy/yiueGnkmcvCz7ayvx/2IyJrx3Ju0jTaZirSFgcSwh14GGtU1Lc5R
	h1botIamZ9WUbqAXcIve+PAvDpwEJos=
Message-ID: <0d6b0159552b10548391a9bd88449d12c13fdcd6.camel@crapouillou.net>
Subject: Re: [RFC PATCH v2 3/9] drm/panel: nv3052c: Sleep for 150ms after
 reset
From: Paul Cercueil <paul@crapouillou.net>
To: John Watts <contact@jookia.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 dri-devel@lists.freedesktop.org, Neil Armstrong
 <neil.armstrong@linaro.org>,  Sam Ravnborg <sam@ravnborg.org>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Heiko Stuebner <heiko@sntech.de>,  Chris
 Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>, Christophe
 Branchereau <cbranchereau@gmail.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Mon, 18 Sep 2023 23:34:51 +0200
In-Reply-To: <ZQi8Z45VCqr-GqN6@titan>
References: <20230918125853.2249187-1-contact@jookia.org>
	 <20230918125853.2249187-4-contact@jookia.org>
	 <7fc1ca68-ca7c-59b2-0b70-27bc34d83cee@quicinc.com> <ZQi4fFZ0VnsUIiXO@titan>
	 <4d2079d66249a7052acded0abf30169a4e95d151.camel@crapouillou.net>
	 <ZQi8Z45VCqr-GqN6@titan>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Le mardi 19 septembre 2023 =C3=A0 07:08 +1000, John Watts a =C3=A9crit=C2=
=A0:
> On Mon, Sep 18, 2023 at 11:01:15PM +0200, Paul Cercueil wrote:
> > The datasheet does say a 5ms sleep time is necesary after a reset.
> > I
> > assume the 120ms delay you quote is when a *software* reset is
> > performed in Sleep-out mode. The code here does a hard-reset.
> >=20
> > Cheers,
> > -Paul
>=20
> Hello Paul,
>=20
> Section 7.3 of the data sheet (AC characteristic) says that the reset
> can take
> up to 120ms to complete if the reset is applied during sleep out
> mode.
>=20
> John.

The driver is guaranteed to always reset the panel in sleep-in mode -
as long as the panel was off when the driver started.

What I'd suggest if you really need to support a case where the panel
was enabled by the bootloader, is to read the 0x0a register after
enabling the regulator to read the mode, and sleep 120ms if it was in
sleep-out mode.

But that's only if it's a case that you can test with. I won't accept a
patch that makes sense on the surface if it addresses a corner case
that nobody ever tested for.

For what I know, this patch just adds a huge delay to panel boot-up for
all existing users for no valid reason.

Cheers,
-Paul

