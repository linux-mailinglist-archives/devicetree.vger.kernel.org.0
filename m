Return-Path: <devicetree+bounces-1203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC60C7A54DD
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:10:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 041BE1C20CC9
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:10:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A21128693;
	Mon, 18 Sep 2023 21:09:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA79D450E8
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 21:09:18 +0000 (UTC)
Received: from out-222.mta1.migadu.com (out-222.mta1.migadu.com [IPv6:2001:41d0:203:375::de])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0DD410D
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 14:09:16 -0700 (PDT)
Date: Tue, 19 Sep 2023 07:08:55 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695071355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ZZomkiVeqQePLkvnRcH7LRW8XoaXDjBYaYpZxuuvnrE=;
	b=TM+L0mLmXFJbKLdV3EPOLnnZrMC3GK1swbB1Ci+li00xC67T8F/qnPQsiuTZXStwpNNF2p
	cAGmR05E8PA73llDJajAoXAAjbiHM2xM89Xt6zL0ZxM3gc2yypDt0CN9YH5sGScdc1DQ+6
	VccUkI44OSvCFzn2yneTLKC2mbzTtvempUcD9nbIzqR+A7iGXeTQM8OglEynhZtYqEZXWQ
	qFZTBp9/a9jOGYmMGaNk0qCQnAk/A2BP5RR9tFAGfiAt1hISDdWgZ01H47eD4gqV7rpgBD
	vLgJ1OYNj/SETgEB7CmuwPwG+TmPHCwMBuaMxHNUnBsSJc5QUy8sOQ/+PiUEig==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Paul Cercueil <paul@crapouillou.net>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>,
	dri-devel@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 3/9] drm/panel: nv3052c: Sleep for 150ms after
 reset
Message-ID: <ZQi8Z45VCqr-GqN6@titan>
References: <20230918125853.2249187-1-contact@jookia.org>
 <20230918125853.2249187-4-contact@jookia.org>
 <7fc1ca68-ca7c-59b2-0b70-27bc34d83cee@quicinc.com>
 <ZQi4fFZ0VnsUIiXO@titan>
 <4d2079d66249a7052acded0abf30169a4e95d151.camel@crapouillou.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d2079d66249a7052acded0abf30169a4e95d151.camel@crapouillou.net>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 11:01:15PM +0200, Paul Cercueil wrote:
> The datasheet does say a 5ms sleep time is necesary after a reset. I
> assume the 120ms delay you quote is when a *software* reset is
> performed in Sleep-out mode. The code here does a hard-reset.
> 
> Cheers,
> -Paul

Hello Paul,

Section 7.3 of the data sheet (AC characteristic) says that the reset can take
up to 120ms to complete if the reset is applied during sleep out mode.

John.

