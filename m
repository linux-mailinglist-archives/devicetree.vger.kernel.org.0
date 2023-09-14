Return-Path: <devicetree+bounces-166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4437A0015
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 98114281B29
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B0E10A12;
	Thu, 14 Sep 2023 09:31:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9535D224D3
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:31:49 +0000 (UTC)
Received: from out-229.mta0.migadu.com (out-229.mta0.migadu.com [IPv6:2001:41d0:1004:224b::e5])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FA16BB
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:31:48 -0700 (PDT)
Date: Thu, 14 Sep 2023 19:27:03 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1694683906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vmPa+r4UrqSI4OyMQhsi2Wq5TKQmIhNTWv2ugXVReZk=;
	b=mqea8Dco5GkiVp3d+wmxmrg67/ao1nY64YhP2JCR+VosQ6HsA5pdF5EP+IMKNcOfvAkHDh
	JSbCKG24sH0K2Gbc1pwDeCvd2Y+kIS1DOdjSkSX3BkXvArTN36u1OTiDRr5KvQrz1def6i
	YoPsCEptgGxC/s4Ep7cAwC7qVtq3CTmGWiHLmEgmqzGAG08iJCsLq/ykteyK2nxamCfhwQ
	3xi4D3moJXUHTs7IGutAy/+oNofpaZjLQMsb8FBUKaMj4y+YeFpIbj5ZngStaPQgkavLma
	ayx+AH+lwFfUGuOZhiMtJtID6PAQIpVYb1FgRTtkA5/wvvd1pfvKrC55Awm/ng==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	patches@opensource.cirrus.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] ASoC: wm8782: Handle maximum audio rate at runtime
Message-ID: <ZQLR50CAzr0VDpeh@titan>
References: <20230913171552.92252-1-contact@jookia.org>
 <20230913171552.92252-2-contact@jookia.org>
 <20230914092107.GR103419@ediswmail.ad.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914092107.GR103419@ediswmail.ad.cirrus.com>
X-Migadu-Flow: FLOW_OUT

On Thu, Sep 14, 2023 at 09:21:07AM +0000, Charles Keepax wrote:
> On Thu, Sep 14, 2023 at 03:15:50AM +1000, John Watts wrote:
> > The wm8782 supports up to 192kHz audio when pins are set correctly.
> > Instead of hardcoding which rates are supported enable them all
> > then refer to a max_rate variable at runtime.
> > 
> > Signed-off-by: John Watts <contact@jookia.org>
> > ---
> > +static int wm8782_dai_hw_params(struct snd_pcm_substream *component,
> > +			    struct snd_pcm_hw_params *params,
> > +			    struct snd_soc_dai *dai)
> > +{
> > +	struct wm8782_priv *priv =
> > +		snd_soc_component_get_drvdata(dai->component);
> > +
> > +	if (params_rate(params) > priv->max_rate)
> > +		return -EINVAL;
> > +
> > +	return 0;
> > +}
> 
> We should be setting this as a constraint in startup, rather
> than returning an error in hw_params. That will let user-space
> know the supported rates and allow it to resample if necessary.

How do you do this? The struct with the rate is statically defined.

> 
> Thanks,
> Charles

John.

