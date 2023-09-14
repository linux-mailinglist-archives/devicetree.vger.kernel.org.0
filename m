Return-Path: <devicetree+bounces-252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B200B7A0869
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 17:03:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DD36281DC7
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 15:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBD6918E14;
	Thu, 14 Sep 2023 14:48:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A5928E22
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 14:48:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FDCBC433C9;
	Thu, 14 Sep 2023 14:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694702889;
	bh=y75UZV7IrEfaRshsSKNFVB5QqnbIpnAX2/2OZFpAm1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZO9RHGVbtpfHNXzviqAu345MBTfgs3Mj0JvziDHVFd6VP7DHN8BXPZl8fQlMTSUv3
	 VdGNxQLmXJceXc5QounrVyFFRQFSIQt8Y3AxrVvQm2hN+5/PncJhz7SQavQkdtpW+6
	 ZbKUY3ZNT8Z6U+MhhNxxxkgbdsWLlLI3nWA/KKU2tCrX4DNJzNi8mg/QeqEm2SeI+Q
	 6TNPDoWo87fv4nYUjLQ7A/aq6IYGNwR/ziTksXiOcjMmSjU/pwaopBjq00MGFWLLm4
	 Z09dOwpHXjB/rdY5QPnW1uHMkb63BLy6GJTyjEOhSuwYl675BCY2+w0Tqc7yFtXuOu
	 p/lP27OPtGgww==
Received: (nullmailer pid 1271313 invoked by uid 1000);
	Thu, 14 Sep 2023 14:48:07 -0000
Date: Thu, 14 Sep 2023 09:48:07 -0500
From: Rob Herring <robh@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 magic tuning overrides
Message-ID: <20230914144807.GA1267899-robh@kernel.org>
References: <20230830-topic-eusb2_override-v2-0-7d8c893d93f6@linaro.org>
 <20230830-topic-eusb2_override-v2-1-7d8c893d93f6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230830-topic-eusb2_override-v2-1-7d8c893d93f6@linaro.org>

On Wed, Sep 13, 2023 at 11:53:23AM +0200, Konrad Dybcio wrote:
> The EUSB2 repeater requires some alterations to its init sequence,
> depending on board design.
> 
> Add support for making the necessary changes to that sequence to make USB
> functional on SM8550-based Xperia 1 V.
> 
> They all have lackluster description due to lack of information.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../bindings/phy/qcom,snps-eusb2-repeater.yaml      | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> index 029569d5fcf3..24c733c10e0e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> @@ -32,6 +32,27 @@ properties:
>  
>    vdd3-supply: true
>  
> +  qcom,tune-usb2-disc-thres:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed disconnect threshold
> +    minimum: 0
> +    maximum: 7
> +    default: 0
> +
> +  qcom,tune-usb2-amplitude:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed trasmit amplitude
> +    minimum: 0
> +    maximum: 15
> +    default: 8
> +
> +  qcom,tune-usb2-preem:
> +    $ref: /schemas/types.yaml#/definitions/uint8
> +    description: High-Speed TX pre-emphasis tuning
> +    minimum: 0
> +    maximum: 7
> +    default: 5

For what it is worth, the mediatek,tphy.yaml binding has the same 
properties...

Acked-by: Rob Herring <robh@kernel.org>

