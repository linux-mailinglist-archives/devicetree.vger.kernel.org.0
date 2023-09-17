Return-Path: <devicetree+bounces-889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF5B7A36F0
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 19:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C1951C21607
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 17:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CD426AA4;
	Sun, 17 Sep 2023 17:51:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333E84A29
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 17:51:37 +0000 (UTC)
Received: from out-223.mta0.migadu.com (out-223.mta0.migadu.com [IPv6:2001:41d0:1004:224b::df])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8B5C135
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 10:51:35 -0700 (PDT)
Date: Mon, 18 Sep 2023 03:46:06 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1694973092;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X5VCzkLDtXSGELcuDnEU7RoMTTqvoogEBre3WHO6Oe4=;
	b=POpXb36kq+DJyJrG0vdY/DNXzBnwQQvdNRgqGSB3eRhARVMVl1NUpzhs9sy5vsUoUO9Ztb
	IEJH6VqaBwOZBGLau3ZB7NwcPuCBfGNywbfVf2Bbp9ARvsK32zWZlJPK7fCIkDwrvB7zWU
	A9Bi9jPmQjXrD0KXvb/91pZfoE3p8qIyLghdXxSz2XwjO5tda2tSxgErFYajJNhCm98oQr
	BmPWQ9Ehv13cT+Suj80R3guDpJS7zOZTPCutteLzAcgL/UDFoOm3QNQ6R3ky7/udI1jsFs
	5mVi06C45DmQUiELdif0DP3KmVwGLOvddB7oizToeTkgzsZ2ZrXo5mGrcWzAgA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: alsa-devel@alsa-project.org
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	patches@opensource.cirrus.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen
 property
Message-ID: <ZQc7XnrXX5VenYoX@titan>
References: <20230917173726.1916439-1-contact@jookia.org>
 <20230917173726.1916439-4-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230917173726.1916439-4-contact@jookia.org>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 18, 2023 at 03:37:26AM +1000, John Watts wrote:
> +Optional properties:
> +
> + - wlf,fsampen : FSAMPEN pin value, 0 for low, 1 for high, 2 for disconnected
> +

Uh-oh, I forgot to specify what it defaults to.
Should I reply to this patch with a fix or re-send the entire series after I get feedback?

John.

