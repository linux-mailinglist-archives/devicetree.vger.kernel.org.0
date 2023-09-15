Return-Path: <devicetree+bounces-606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 771E27A21A5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:59:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31449281FEE
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12A5610798;
	Fri, 15 Sep 2023 14:59:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA2130CE1
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52969C433C9;
	Fri, 15 Sep 2023 14:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694789990;
	bh=A21SBk79usPEjw1XUt9dSJPMgbCWV6UEMjwE6HhbYMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LlOn7YDxtz9tg+ngRqO/KxN8xHZl8JF3jNCBW7BlL5UBz6r8EZsBtAI5iFpz/A4Lf
	 6tcdotMybw5J5x78GH2/Z6Vk3DyTn+/EzyaS01wMJi6P1oZMqOjak2V6P0spemllzD
	 TbFVMqhjjdSEE+7SnDvFqmV8Tmx7sl3v5RPEXf8Yv7Glai2tbLbKDhilHamd39ljWk
	 yOHz9BEIYql1JRKItl6uR6SLAP6RvB3T4Tzaub3IM65qih4LFsC3TJ946KlVjJ7pbQ
	 w5Y99R2VMds4Xhk+D2Q/fWffT9vN92KA0MGcFfLEjyFZk3ZswpmOtMeuM0pJbCdF0E
	 PyhbAwviYmXhA==
Received: (nullmailer pid 3718886 invoked by uid 1000);
	Fri, 15 Sep 2023 14:59:47 -0000
Date: Fri, 15 Sep 2023 09:59:47 -0500
From: Rob Herring <robh@kernel.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org, linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_tsoni@quicinc.com, quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: qcom: Add SM4450 pinctrl
Message-ID: <20230915145947.GA3716246-robh@kernel.org>
References: <20230915015808.18296-1-quic_tengfan@quicinc.com>
 <20230915015808.18296-2-quic_tengfan@quicinc.com>
 <6f40ee72-b763-c58d-44df-ea40d1309820@linaro.org>
 <35371580-8e5a-4f72-aec2-951268c296a3@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <35371580-8e5a-4f72-aec2-951268c296a3@quicinc.com>

On Fri, Sep 15, 2023 at 03:30:16PM +0800, Tengfei Fan wrote:
> 
> 
> 在 9/15/2023 3:04 PM, Krzysztof Kozlowski 写道:
> > On 15/09/2023 03:58, Tengfei Fan wrote:
> > > Add device tree binding Documentation details for Qualcomm SM4450
> > > TLMM device.
> > > 
> > > Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> > 
> > ...
> > 
> > > +
> > > +patternProperties:
> > > +  "-state$":
> > > +    oneOf:
> > > +      - $ref: "#/$defs/qcom-sm4450-tlmm-state"
> > > +      - patternProperties:
> > > +          "-pins$":
> > > +            $ref: "#/$defs/qcom-sm4450-tlmm-state"
> > > +        additionalProperties: false
> > > +
> > > +$defs:
> > > +  qcom-sm4450-tlmm-state:
> > > +    type: object
> > > +    description:
> > > +      Pinctrl node's client devices use subnodes for desired pin configuration.
> > > +      Client device subnodes use below standard properties.
> > > +    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
> > > +    unevaluatedProperties: false
> > > +
> > > +    properties:
> > > +      pins:
> > > +        description:
> > > +          List of gpio pins affected by the properties specified in this
> > > +          subnode.
> > > +        items:
> > > +          oneOf:
> > > +            - pattern: "^gpio([0-9]|[1-9][0-9]|1[0-9][0-9])$"
> > 
> > This is still wrong. How many GPIOs do you have? Please open existing
> > bindings for recent device (e.g. sm8550) and look how it is done there.
> yes, will update to "^gpio([0-9]|[1-9][0-9]|1[0-2][0-5])$".

What about 106, 116, etc.?

Rob

