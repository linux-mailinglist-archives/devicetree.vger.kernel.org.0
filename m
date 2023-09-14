Return-Path: <devicetree+bounces-266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D16C7A094A
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:31:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A8D91F242D0
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E89518C34;
	Thu, 14 Sep 2023 15:22:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABE339C
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 15:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6A4DC433C7;
	Thu, 14 Sep 2023 15:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694704949;
	bh=2l+pL/JOk07CrJ+5dzfMowBhm/GyALOaTEySvP0OfCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YRrZklOqygixaAR1yHRaKPjQGPbyQL2c/kWxbz1rpC+KxpiH3kBzXAniAHDoIJHxd
	 HxkUevUuxpc7f76j4L7y+N4dZG/NgRxaX+bTEQ3CjWOpo1bWAUA6Zi0OTG7q89uQNF
	 zYUEIia9KS8hwRJAluU21Jw45C+3P3QH4/VTKp37oLWxhY7JiN+DcPHWxzuIYQnC6I
	 MTiwqweJYcaa3ZmjKOH6ZkIQCASbfu4mFfGXsMUbwlSF26GfgUl1XhiWP8U0QR7JIj
	 WOtVTkKez+AoQkSNzVDpKHhH82zd69ogqH6fsXoSl3QDWMUPOtJy48mmNfIT+om4IG
	 jO5uRXSaOXa7g==
Received: (nullmailer pid 1445219 invoked by uid 1000);
	Thu, 14 Sep 2023 15:22:27 -0000
Date: Thu, 14 Sep 2023 10:22:27 -0500
From: Rob Herring <robh@kernel.org>
To: Naresh Solanki <naresh.solanki@9elements.com>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, Patrick Rudolph <patrick.rudolph@9elements.com>, Andi Shyti <andi.shyti@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Peter Rosin <peda@axentia.se>
Subject: Re: [PATCH v3 1/2] dt-bindings: i2c: pca954x: Add custom properties
 for MAX7357/MAX7358
Message-ID: <169470494704.1445160.2226578648638158792.robh@kernel.org>
References: <20230914113416.1285518-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914113416.1285518-1-naresh.solanki@9elements.com>


On Thu, 14 Sep 2023 13:34:14 +0200, Naresh Solanki wrote:
> From: Patrick Rudolph <patrick.rudolph@9elements.com>
> 
> Both chips have a configuration register to enable additional
> features. These features aren't enabled by default & its up to
> board designer to enable the same as it may have unexpected side effects.
> 
> These should be validated for proper functioning & detection of devices
> in secondary bus as sometimes it can cause secondary bus being disabled.
> 
> Add booleans for:
>  - maxim,isolate-stuck-channel
>  - maxim,send-flush-out-sequence
>  - maxim,preconnection-wiggle-test-enable
> 
> Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
> Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
> ---
> Changes in V3:
> - Update commit message
> Changes in V2:
> - Update properties.
> ---
>  .../bindings/i2c/i2c-mux-pca954x.yaml         | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


