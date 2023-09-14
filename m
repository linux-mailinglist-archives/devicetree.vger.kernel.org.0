Return-Path: <devicetree+bounces-44-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BED079F96D
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:10:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DBE11C2091D
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 04:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 164A215AB;
	Thu, 14 Sep 2023 04:10:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042F37F
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 04:10:48 +0000 (UTC)
Received: from out-219.mta1.migadu.com (out-219.mta1.migadu.com [95.215.58.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A595E6
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 21:10:47 -0700 (PDT)
Date: Thu, 14 Sep 2023 14:09:20 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1694664646;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yrM9qkZn8IvCEMY+qCo428/XGoBHkCAW20Ms/r1EMvQ=;
	b=SvCBqS9+YdFjSk3JlB6a+4z2XZyW9YC14vqOWANyDdJ0K9q2KC3xQEvn2ZAP5IfVsW1Nkm
	Yx5gqo56tqHoeLQYgFwHGrfE1xqwg+wabeWzwhFe86ehYcOlvS5ykmYi3XCvfXKtpPU2f/
	pTUdVrjOavf7W2m8vYUhCAmQZXQYs8EmFom/79y0TsckuoMCrP0Dwoiy7ozJHC7RW6qp8I
	wqKP9i+PeYdDnPkpAeTHni0MuigpIayV2N333014PhE9yhKn02w3XoYUvLsHAK8exME6DL
	FkY80CJyWoF3zILIfe9K/lRwcan+fQFPYF84KaKUt3CGcnw6mXRPp3vk4WsFcg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: dri-devel@lists.freedesktop.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sam Ravnborg <sam@ravnborg.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-kernel@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>
Subject: Re: [RFC PATCH 5/8] drm/panel: nv3052c: Allow specifying registers
 per panel
Message-ID: <ZQKHcDZ-mxNaSe0j@titan>
References: <20230911090206.3121440-1-contact@jookia.org>
 <20230911090206.3121440-6-contact@jookia.org>
 <d46ee183-a010-e585-c47c-fa3229eafb33@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d46ee183-a010-e585-c47c-fa3229eafb33@quicinc.com>
X-Migadu-Flow: FLOW_OUT

On Wed, Sep 13, 2023 at 02:34:38PM -0700, Jessica Zhang wrote:
> Hi John,
> 
> Having a separate panel_regs_len field seems a bit unnecessary to me.
> 
> Looks like it's only being called in the panel prepare() and I don't seen
> any reason why we shouldn't just call the ARRAY_SIZE() macro there.

Can you call ARRAY_SIZE on an an array pointer?

> 
> Thanks,
> 
> Jessica Zhang

John.

