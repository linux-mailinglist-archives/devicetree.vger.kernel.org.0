Return-Path: <devicetree+bounces-820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 930C47A342E
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:56:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7D221C2087C
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 07:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171571874;
	Sun, 17 Sep 2023 07:56:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969CD186B
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 07:56:51 +0000 (UTC)
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB8710C
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:56:49 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so58273611fa.2
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694937408; x=1695542208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Ej2iHCcb+ypEII00ww2P8XQzFIB5qKAjUYcnr1yKKc=;
        b=Hm0awLNgFer2cbs0zZeuYvaMYVRtCDMUGUn4l+MxWwkcQI+UfPc/QtgmLTD947WrnS
         OQdoJIfaEnSKeUztW+PagF/NUydKfqPY9v96sykdERVYkY8tEm9gBaa92hmopSfH7Z0e
         vQrR5WH1nYIIr8Rn2D7ztT6+60pRqJ2PKCTQtHiXMP1pqQyat/B+FBzToK8sf2JzoxYc
         qVnLiGJgpsIWzsyhNGSIKPk1nz/wIAcFoOY4QVNGfIIpXpKfyUWKrstL2PXweNu1c5kq
         QpxT48oWfazZganXsS5A9GOLqyOXXXo53a4MgxDw+0niLvMHH1A/51MYlv9siA45RRwI
         +DDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694937408; x=1695542208;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ej2iHCcb+ypEII00ww2P8XQzFIB5qKAjUYcnr1yKKc=;
        b=Yrr1RkouxwIZeqK6lT/hrJIC9RKK4wC3q/XnUOh+tJgP/5i7wychGJq8zoPjLggczu
         9VfnuePsNALL1+/Zbh7dRKkz/SkonJQ14SY79lamwsN8YDrHC7UIi+J9+jUErw3yCzQH
         Ki51ww2mgdg6WYf/vAsg8dnHY6InXl5bTqylePAeyxqAFWqQz92V9ofxsLFFzvof8yez
         aG9w7hjMWTvk/Or/UFXYnazjfLPMLPqVpmzJSqH/a8Ze3v7AdEuvgs+D6IDYMqgTi1rN
         HWIVw8LnJYiUx+P1pvK296n7GMzuaHTN5Pm24GaKUR+RJQ3ZeR5jbHXHsMxQti5fYfxM
         NbWw==
X-Gm-Message-State: AOJu0YyiCM4xy3pj+Ra3FduZRKKwgqkbq4jhdO/OWZCVk6/vACJDgJxx
	1OG1T2EB4s/IbUk1f4eRSG8bXRb9aaXxnc+ImkfGJg==
X-Google-Smtp-Source: AGHT+IFudRaeaXYQ2g1Ccwo9jy4IEBKqJXaPrIZt3X0RE5wmHPxEid8nhs8QF4ddR+xsS1DIDOaGEA==
X-Received: by 2002:ac2:5f56:0:b0:503:653:5713 with SMTP id 22-20020ac25f56000000b0050306535713mr2182926lfz.47.1694937407694;
        Sun, 17 Sep 2023 00:56:47 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id ba30-20020a0564021ade00b00525c01f91b0sm4327201edb.42.2023.09.17.00.56.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 00:56:47 -0700 (PDT)
Message-ID: <30384744-94d7-2675-63ad-d8531e3156d1@linaro.org>
Date: Sun, 17 Sep 2023 09:56:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v12 6/7] dt-bindings: media: wave5: add yaml devicetree
 bindings
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nas Chung <nas.chung@chipsnmedia.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Conor Dooley <conor+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Robert Beckett <bob.beckett@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20230915-wave5_v12_on_media_master-v12-0-92fc66cd685d@collabora.com>
 <20230915-wave5_v12_on_media_master-v12-6-92fc66cd685d@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-wave5_v12_on_media_master-v12-6-92fc66cd685d@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 23:11, Sebastian Fricke wrote:
> From: Robert Beckett <bob.beckett@collabora.com>
> 
> Add bindings for the wave5 chips&media codec driver
> 
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>

So this is v12 and still no tested?

A nit, subject: drop second/last, redundant "yaml devicetree indings".
The "dt-bindings" prefix is already stating that these are bindings.
Basically three words bringing zero information.

> ---
>  .../devicetree/bindings/media/cnm,wave5.yaml       | 66 ++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/cnm,wave5.yaml b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
> new file mode 100644
> index 000000000000..b8f383621805
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/cnm,wave5.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/cnm,wave5.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Chips&Media Wave 5 Series multi-standard codec IP
> +
> +maintainers:
> +  - Nas Chung <nas.chung@chipsnmedia.com>
> +  - Jackson Lee <jackson.lee@chipsnmedia.com>
> +
> +description: |-

Do not need '|-' unless you need to preserve formatting.

> +  The Chips&Media WAVE codec IP is a multi format video encoder/decoder
> +
> +properties:
> +  compatible:
> +    enum:
> +        - cnm,cm521c-vpu

It does not look like you tested the bindings, at least after quick
look. Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

Missing blank line

> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: VCODEC clock
> +
> +  clock-names:
> +    items:
> +      - const: vcodec

Drop clock-names, not really useful for one entry.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  sram:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +

Drop blank line

> +    description:
> +      The VPU uses the SRAM to store some of the reference data instead of
> +      storing it on DMA memory. It is mainly used for the purpose of reducing
> +      bandwidth.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

Keep the same order as listed in properties:

> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +

Best regards,
Krzysztof


