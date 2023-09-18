Return-Path: <devicetree+bounces-1200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A59027A54D6
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:09:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BB702819E4
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9334C30FB3;
	Mon, 18 Sep 2023 20:55:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6DE30F81
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:55:48 +0000 (UTC)
Received: from out-215.mta1.migadu.com (out-215.mta1.migadu.com [95.215.58.215])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 605DB90
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:55:46 -0700 (PDT)
Date: Tue, 19 Sep 2023 06:52:12 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1695070544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tD3Att9ZhAZZWzcTqs+Nca0qUc5//9Lj3PJessBJC+g=;
	b=HKE82hVocAGjDR2kt68+KpmpTheJCyztaklVxUtX3SHGrx4HzRMVdI3iPeoGg7+PBgoOtF
	vlQ+3OFyeZDExfQTm3HKsoRW4arlQHEpJUve7lcbTSsxGEa5ukeimCgEmJZzP6VPK4hBKN
	v70auWxJIRvlL1Rn9L1J1Rq9PtXWkEBcHlG/PRLVsFdQGeNYM8ZwYaFwos2kn+ZyjjO3oN
	XCgCxh01FPxxlZJi8G4jQRjO0UzWz82/Vnvbt9VVXLPIf4Dd9RQeW1hupUVlcT79PZbwAF
	igylu3P62bukh89pQq4WaORPfsCTchPYIXPItXaqAxSo+ngZnaKKgzUOacPP1g==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: dri-devel@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Paul Cercueil <paul@crapouillou.net>,
	Christophe Branchereau <cbranchereau@gmail.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v2 3/9] drm/panel: nv3052c: Sleep for 150ms after
 reset
Message-ID: <ZQi4fFZ0VnsUIiXO@titan>
References: <20230918125853.2249187-1-contact@jookia.org>
 <20230918125853.2249187-4-contact@jookia.org>
 <7fc1ca68-ca7c-59b2-0b70-27bc34d83cee@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7fc1ca68-ca7c-59b2-0b70-27bc34d83cee@quicinc.com>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 01:19:03PM -0700, Jessica Zhang wrote:
> Hi John,
> 
> Just wondering, is there some context to this change? I.e., was this made to
> fix a specific issue?
> 
> This seems like a pretty significant increase in wait time so, if it's not a
> fix, I'm not sure if this would be an improvement on the current behavior.
> 
> Thanks,
> 
> Jessica Zhang

Hi Jessica,

Thank you for the feedback.

This patch here is required by the data sheet if the screen was already running
and was reset. This is necessary if for example the bootloader set up and had
the screen running. However I have not tested this, it's possible the specific
panels have shorter tolerances for resets. This is purely precautionary at
this stage based on what the data sheet says.

That said I will be investigating this specific use case with this panel over
the next few months. I am okay separating out this patch until I have proof it's
needed for my particular display. I don't know anything about the ltk display.

The second sleep patch can probably be omitted as I don't think the panel being
prepared then unprepared in rapid succession is a realistic situation, but I 
figured I might as well propose it to see if it's the right thing to do.

Thanks for your time and review,
John.

