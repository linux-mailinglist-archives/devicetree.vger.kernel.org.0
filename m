Return-Path: <devicetree+bounces-1216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A87A55CD
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 00:29:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 53DEE1C209EE
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 22:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E283F34192;
	Mon, 18 Sep 2023 22:29:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3BB450FA
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 22:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AED08C433C7;
	Mon, 18 Sep 2023 22:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695076182;
	bh=mDnuLPjnWhvrz7zvBdQofJEYR3fhnCIVsuJPvQIYWUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U0JWg6czFfkApL/f7hioO32UamWDOagGvWQf37a9Mb2l7WrLa8zBuJ/npVqllcKa9
	 EMMnnuzdwnbaCJ1X369UyMyC0UgpCS3+fQfJUl3K6TVY2jJHBTwZpV9GQOi9nvrxes
	 zR72TSXTJMw2dN9Cu309kINL1jk/ZJuelWIJ0vy9xm/5Omus71gSdzNP68WeWMmOiP
	 hvghsppaKOiaG53UPkR5Tr7qn4B0mDY8wgUSJ+Q+R7Z+CjPmNU5Y54n8yeHe35tS5r
	 GhO6SdY0wvlzraR5KeD8wpteP7x9JFQ6JGCUE+ndSq6ytPfJoYXLctuYm2FLav7ElI
	 GAIm9/Ex87Vrg==
Received: (nullmailer pid 1858098 invoked by uid 1000);
	Mon, 18 Sep 2023 22:29:39 -0000
Date: Mon, 18 Sep 2023 17:29:39 -0500
From: Rob Herring <robh@kernel.org>
To: John Watts <contact@jookia.org>
Cc: dri-devel@lists.freedesktop.org, Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Chris Morgan <macromorgan@hotmail.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Cercueil <paul@crapouillou.net>, Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Christophe Branchereau <cbranchereau@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [RFC PATCH v2 9/9] dt-bindings: display: panel: add Fascontek
 FS035VG158 panel
Message-ID: <169507617909.1858058.4798985239779880637.robh@kernel.org>
References: <20230918125853.2249187-1-contact@jookia.org>
 <20230918125853.2249187-10-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918125853.2249187-10-contact@jookia.org>


On Mon, 18 Sep 2023 22:58:53 +1000, John Watts wrote:
> This is a small 3.5" 640x480 IPS LCD panel.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  .../display/panel/fascontek,fs035vg158.yaml   | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/fascontek,fs035vg158.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


