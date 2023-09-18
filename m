Return-Path: <devicetree+bounces-1209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CF07A5527
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:41:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84735281F9E
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1481028DDF;
	Mon, 18 Sep 2023 21:41:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619A9450EF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 21:41:15 +0000 (UTC)
Received: from out-228.mta1.migadu.com (out-228.mta1.migadu.com [IPv6:2001:41d0:203:375::e4])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2A998E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 14:41:12 -0700 (PDT)
Date: Tue, 19 Sep 2023 07:40:58 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695073271;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OKF5pL6j1FaLIvd2+LW2+OTS2g0SVXD9k2NzY4oj/+o=;
	b=eAJF0wJ6X+530eG3LxNkM63PN7qnRhh/PzY1ZTLxsu03jkiohE+49ByAC21ZDo4tPqDmtD
	Utn+P2HHAWUCvdC82d1DJZj0HWLlFu7mjzqztVYJuCuS5sYcUXfbGos0zKvYfKnhR7Z5qA
	qsZyeZ553i9kSJquTAxHnKvwFOqfq7ojHi4OXupJ5Ksrc+skSooeb1y5IKQ9gRlRxHPlBd
	Gq+2ryiO6nAieBGVdorZt/bQxqNXWh2iM5PgGV7fJTiz2Y6F3ZwH7oPw7iAwLBvrwWlW9+
	mD/6OBOASGm4iSvTSmfKC45Yy3MNMGO/0KHhvpuKeDWRO5DGQMM1wyjRIxgOyA==
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
Message-ID: <ZQjD6gCEo62gMBX2@titan>
References: <20230918125853.2249187-1-contact@jookia.org>
 <20230918125853.2249187-4-contact@jookia.org>
 <7fc1ca68-ca7c-59b2-0b70-27bc34d83cee@quicinc.com>
 <ZQi4fFZ0VnsUIiXO@titan>
 <4d2079d66249a7052acded0abf30169a4e95d151.camel@crapouillou.net>
 <ZQi8Z45VCqr-GqN6@titan>
 <0d6b0159552b10548391a9bd88449d12c13fdcd6.camel@crapouillou.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0d6b0159552b10548391a9bd88449d12c13fdcd6.camel@crapouillou.net>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 11:34:51PM +0200, Paul Cercueil wrote:
> The driver is guaranteed to always reset the panel in sleep-in mode -
> as long as the panel was off when the driver started.
> 
> What I'd suggest if you really need to support a case where the panel
> was enabled by the bootloader, is to read the 0x0a register after
> enabling the regulator to read the mode, and sleep 120ms if it was in
> sleep-out mode.
> 
> But that's only if it's a case that you can test with. I won't accept a
> patch that makes sense on the surface if it addresses a corner case
> that nobody ever tested for.
> 
> For what I know, this patch just adds a huge delay to panel boot-up for
> all existing users for no valid reason.
>
> 
> Cheers,
> -Paul

Thank you very much for this feedback. I am more than happy to throw these
sleep patches in the trash and come back later with a proper solution when
I have an actual hardware setup and use case to test on.

John.

