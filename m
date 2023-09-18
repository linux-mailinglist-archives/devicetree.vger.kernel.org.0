Return-Path: <devicetree+bounces-1205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7847A54E6
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 23:14:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CD2B2825D0
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 21:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53B7927EEB;
	Mon, 18 Sep 2023 21:14:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468B6450EF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 21:14:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E19CCC433C7;
	Mon, 18 Sep 2023 21:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695071658;
	bh=je+/dWfPoKyK7E4zFPFa+MHVux9u0JB/uftENHOI2A8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n0LwmKoL/ErpTiRdXxKgdyU3004uknQdjkpAOb9y7Bo3tS7EcbETzF4r/3cpLTAzC
	 SPNZOuNDU2pdjWgPHGcq1Ns565DNcUPDOu3HQydPTIdFv7DOn3Pi2xSFJG6IJpTKhz
	 +lQ1k/KVR5/BfZy3JJSn9RTY0u4PW8CKz+braPQ24VJACNlj0ajgZ3INOTAv1m3ofW
	 F2J5yS3pgpMCHpEGJDjdtzLByLGkvMvbBNjVAYk7LL2E6rV8PIZzawh+/Frzwyvl0t
	 YAHz+DqSUhyp2HxhsJ53YTQi9ahg9vxPCpGI5KUVJlcEiGCeIEXfEVQY4b7hiC01Wh
	 7QGbgf9FfKcPQ==
Received: (nullmailer pid 1771107 invoked by uid 1000);
	Mon, 18 Sep 2023 21:14:16 -0000
Date: Mon, 18 Sep 2023 16:14:16 -0500
From: Rob Herring <robh@kernel.org>
To: Ivan Mikhaylov <fr0st61te@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: adc: provide max34408/9 device tree
 binding document
Message-ID: <20230918211416.GA1768763-robh@kernel.org>
References: <20230917211143.7094-1-fr0st61te@gmail.com>
 <20230917211143.7094-2-fr0st61te@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230917211143.7094-2-fr0st61te@gmail.com>

On Mon, Sep 18, 2023 at 12:11:42AM +0300, Ivan Mikhaylov wrote:
> The i2c driver with Rsense option for current monitoring.

driver? This is a binding for a hardware device.

> 
> Signed-off-by: Ivan Mikhaylov <fr0st61te@gmail.com>
> ---
>  .../bindings/iio/adc/maxim,max34408.yaml      | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> new file mode 100644
> index 000000000000..ae7c6ddb13d8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/maxim,max34408.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Two- and four-channel current monitors with overcurrent control.

Drop the period.

With those fixes:

Reviewed-by: Rob Herring <robh@kernel.org>

