Return-Path: <devicetree+bounces-1215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4B47A55CA
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 00:28:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3ABF281B4B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 22:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E46C8328BC;
	Mon, 18 Sep 2023 22:28:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E027D450FA
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 22:28:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58A65C433C7;
	Mon, 18 Sep 2023 22:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695076109;
	bh=Cm6gdHRXbYq+GvZmRva1a3/Sze3/iw5r/rmeAg1FI2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OiPlyidCV3PVOmISTNABR9087gxEv8kvpZbkwolzYvgnWPBPGl0KnVkScS1Qgbkwc
	 2di8LxHcimqri0koEQ7zsjF/e6BXUOkINpHYBhoW+RSjNJIJ+lMFSolVk9O/yoTBmn
	 RIg8PF7+Xg33wNkN00a3n8OQi8F0vkg8uUOEZY+3bFM+jYrkLQCIM6JGrbIs8RB569
	 U0yRn85/zwSXUwQqetEjSbvQOE7SYgeZhhR/S+HgiVmhqmyn46C1i/6efWHW0jGivt
	 RYklZjuwZgInLmkVHWEU+X02Dree3YZlaVrd4VIYgm+eZaLJ17nMF6qaEJrHQ3Cclq
	 VBaKzNEzb7l4Q==
Received: (nullmailer pid 1856606 invoked by uid 1000);
	Mon, 18 Sep 2023 22:28:26 -0000
Date: Mon, 18 Sep 2023 17:28:26 -0500
From: Rob Herring <robh@kernel.org>
To: John Watts <contact@jookia.org>
Cc: Chris Morgan <macromorgan@hotmail.com>, David Airlie <airlied@gmail.com>, Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, Paul Cercueil <paul@crapouillou.net>, Neil Armstrong <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Christophe Branchereau <cbranchereau@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [RFC PATCH v2 7/9] dt-bindings: display: panel: Clean up
 leadtek,ltk035c5444t properties
Message-ID: <169507610587.1856550.8091958935688458267.robh@kernel.org>
References: <20230918125853.2249187-1-contact@jookia.org>
 <20230918125853.2249187-8-contact@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918125853.2249187-8-contact@jookia.org>


On Mon, 18 Sep 2023 22:58:51 +1000, John Watts wrote:
> Remove common properties listed in common yaml files.
> Add required properties needed to describe the panel.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  .../bindings/display/panel/leadtek,ltk035c5444t.yaml      | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


