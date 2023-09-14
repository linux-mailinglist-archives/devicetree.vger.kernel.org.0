Return-Path: <devicetree+bounces-45-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7201979F97A
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F0A75B2093E
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 04:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8460815BD;
	Thu, 14 Sep 2023 04:16:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7061B7F
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 04:16:12 +0000 (UTC)
Received: from out-230.mta0.migadu.com (out-230.mta0.migadu.com [IPv6:2001:41d0:1004:224b::e6])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C256E69
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 21:16:11 -0700 (PDT)
Date: Thu, 14 Sep 2023 14:12:00 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1694664969;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KgCBja6vR6ucPDDS+ICdvobr8KN6Wt6fcPO6ka4rjrI=;
	b=FXxIkFkR/iQ/43B4BkObLiuYQ0cH2IRjIphI9PU/lB+GL/5f8S5co1GA+IdsKS3tNCYemt
	gnnvY/GwpeKQj4wcrGMJNVDTxpU9O/J/69ykG7yY3yD+5pQ+NKgkLcK5Sbjf6v3Wgld2+j
	97qr9tcsI/fiqwXBpoVtENXdJxJXDRt+3MKEADb0r1gXoHAC57hlAaErNTG/8+vqiyxsBQ
	yQJyv/wa+Q4xU1tbdlWXUfLmK4U4o+mZBPzolDqQuqEpFyI5WLbSjgjZHdYa9XTRI8HMsa
	FlCsemuEtjs1fZUBph80jPqa2Hmj0Q0e6DSXLXa+k7sYiMS++qZslT54G2sTFQ==
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
Subject: Re: [RFC PATCH 1/8] drm/panel: nv3052c: Document known register names
Message-ID: <ZQKIED7jCc1FuPP1@titan>
References: <20230911090206.3121440-1-contact@jookia.org>
 <20230911090206.3121440-2-contact@jookia.org>
 <977a8de9-26ec-1789-4c72-fd36f34480c3@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <977a8de9-26ec-1789-4c72-fd36f34480c3@quicinc.com>
X-Migadu-Flow: FLOW_OUT

On Wed, Sep 13, 2023 at 02:43:43PM -0700, Jessica Zhang wrote:
> Hi John,
> 
> Just curious, what do you mean by these registers being mostly unknown?
> 
> I do see them specified in the online specs -- some even seem to map to
> existing MIPI_DCS_* enums (ex. 0x01 to MIPI_DCS_SOFT_RESET, and 0x04 to
> MIPI_DCS_GET_DISPLAY_ID).
> 
> Thanks,
> 
> Jessica Zhang

Hi Jessica,

Unfortunately these registers are not MIPI ones, but on a separate page of
registers. So page 2 register 1 isn't MIPI_DCS_SOFT_RESET, that is page 0
register 1.

John.

