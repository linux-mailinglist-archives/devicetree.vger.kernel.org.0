Return-Path: <devicetree+bounces-353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 090DF7A158C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:41:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B42AE282588
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 05:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3DAD469F;
	Fri, 15 Sep 2023 05:41:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4CE3D6A
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:41:16 +0000 (UTC)
Received: from out-227.mta1.migadu.com (out-227.mta1.migadu.com [95.215.58.227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D92DA2717
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 22:41:12 -0700 (PDT)
Date: Fri, 15 Sep 2023 15:39:49 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1694756471;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=cCM3351WRdV6tVhq+BNSXK1D16VOR98tLWYlqsnRpDw=;
	b=u9eOnFw7G6nV8I4pyPcyYq5WTp+JJAn8sNstU2xz4zKQD9wNpeQPxcZ1wpS4NOu6dZGHPf
	qJgWrd3KczX9vFViCBZznRYceLqxrcfis/ccPHeucCwJX1BEeL5ffVWz3oNAMb4y6Kn7ab
	5J5J4XLFa7egL93YEc1z7G8xRQQjMziXepYYDPtgUn/Tk2K5Q+veeAYrALzbMk8ke03wFc
	22YaADVRIp2w6Qy6D3KyxGbWbwxbYCQkYcaBbVPnj5qm8Bb9TGr21SkPAKJLWg38ykDJpD
	QQXqBtr8brPT+rVOBC4wX6aQRllOlhRq+4XGqH6y+Kt0ZGhxn2eL8flZzrbR/Q==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Rob Herring <robh@kernel.org>
Cc: alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	patches@opensource.cirrus.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] ASoC: dt-bindings: wlf,wm8782: Add wlf,fsampen
 property
Message-ID: <ZQPuJXcmHABQFaQl@titan>
References: <20230913171552.92252-1-contact@jookia.org>
 <20230913171552.92252-4-contact@jookia.org>
 <20230914145234.GA1275176-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914145234.GA1275176-robh@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 14, 2023 at 09:52:34AM -0500, Rob Herring wrote:
> What's the default if the property is not present?

0. Should I specify it here?

John.

