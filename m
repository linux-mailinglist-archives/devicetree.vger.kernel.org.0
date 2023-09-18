Return-Path: <devicetree+bounces-1186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4733D7A53C7
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 22:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FEDE1C20BD3
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 20:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 498D028686;
	Mon, 18 Sep 2023 20:18:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED1427701
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:18:42 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5FDE112
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:18:40 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-502e6d632b6so7528061e87.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695068319; x=1695673119; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jEjcvyS6CReblMj/llRKVSIcv9klWKbGSR5hpu3hTaI=;
        b=BIxesoOAHtH7Ru3HaeIWY+6Buj3DGyQ8VBwUVet7lFrFKzKvdzLc92gda4mmPqTsv8
         NG2Ylzf3FqfNzRSuryxq8tGptkEkULYK57IenlNYpZToBFoidofwSgAubug2/ED47uHQ
         9buC9Mi39hIu/FuiP57ZHNAhfV89irTG+Je7XcZ+iL6U5otKsOVC+zyfYHRs4+men9l2
         /O7j4/WxYMihnlTAqEYyVJ3QAEPT8VeX+/5raUbLb7K6WOM6UGhFTNZJZrfJZyu5EKKI
         q4Go/oc9oOfY1zOu1WpTuXCy36Ysgq2flcsY2E8HWaGIDsbEkPzijkBxaqd/9D9vEhDY
         Pffg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695068319; x=1695673119;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jEjcvyS6CReblMj/llRKVSIcv9klWKbGSR5hpu3hTaI=;
        b=M/GgdtDuHDeZf2wsCv2Xgjw8O91+WglGSnE3XMkNYC5vdON5nRMhoTYzYQ0LtqkhY6
         /9gOKZ3WP8KZgO+UbVT7ByMlTfcuiKiXCFpQJ8eHoMrMsEb2MmkidnD+o6RxIpfXJ/Y+
         X0rdwIfVD5/uflm4fsVJkuMKKNbgg7aYE2/aSc0SzDtdK4LK93owTfC+V0+lwyNZu5VS
         EO1RAPH5VC3zws9pfOS5SVGpIcGYmSANFt68s1HrfcD5npTM+ZfAKjCTC2anqk64z8az
         4CX+T1TqLbDr7P5GezZ5xMIWsMPo9ePzsCNAWUC3ZOnBQcs8lmiNHZ2wfNF7H7iKk0D8
         RRJw==
X-Gm-Message-State: AOJu0Yx2886cVeaQd8tSHIA53bLRbDeizh1bb5LDVB3oSP7SC2tQbX3k
	zLWwueXNdSknZHjADY/mr6obzQ==
X-Google-Smtp-Source: AGHT+IFPe4/whAq4HvHLWe07ubJb3d7j4FOxiy0RP340hlHxpJkBuzKiTaqldCS3obe/AAOmx18muw==
X-Received: by 2002:a05:6512:3144:b0:4fe:ecd:4950 with SMTP id s4-20020a056512314400b004fe0ecd4950mr8302805lfi.1.1695068318901;
        Mon, 18 Sep 2023 13:18:38 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id v4-20020aa7d644000000b0052567e6586bsm6528461edr.38.2023.09.18.13.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 13:18:38 -0700 (PDT)
Message-ID: <b7a337f2-a810-d14c-e7cd-15e33a9ecb5d@linaro.org>
Date: Mon, 18 Sep 2023 22:18:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 1/2] dt-binding: usb: ci-hdrc-usb2: document Nuvoton
 NPCM supprt
Content-Language: en-US
To: Tomer Maimon <tmaimon77@gmail.com>, peter.chen@kernel.org,
 gregkh@linuxfoundation.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, xu.yang_2@nxp.com, peng.fan@nxp.com,
 avifishman70@gmail.com, tali.perry1@gmail.com, joel@jms.id.au,
 venture@google.com, yuenn@google.com, benjaminfair@google.com,
 j.neuschaefer@gmx.net
Cc: openbmc@lists.ozlabs.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230918165958.2659-1-tmaimon77@gmail.com>
 <20230918165958.2659-2-tmaimon77@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918165958.2659-2-tmaimon77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 18:59, Tomer Maimon wrote:
> Nuvoton NPCM BMC SoCs use ChipIdea silicon IP for the USB device controller.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching. It's dt-bindings.


> ---
>  .../devicetree/bindings/usb/ci-hdrc-usb2.yaml    | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> index 1394557517b1..9de4dfe004d1 100644
> --- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> +++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
> @@ -16,6 +16,7 @@ properties:
>        - enum:
>            - chipidea,usb2
>            - lsi,zevio-usb
> +          - nuvoton,npcm-udc

You need SoC specific compatible.

>            - nvidia,tegra20-ehci
>            - nvidia,tegra20-udc
>            - nvidia,tegra30-ehci
> @@ -325,6 +326,20 @@ properties:
>      type: boolean
>      deprecated: true
>  
> +  nuvoton,sysgcr:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to syscon that configures usb phy mux.
> +          - description: offset of usb phy mux selection.
> +          - description: mask usb phy mux selection.
> +          - description: value usb phy mux selection.
> +    description:
> +      A phandle to syscon with three arguments that configure usb phy mux.
> +      The argument one is the offset of usb phy mux selection, the argument two
> +      is the mask usb phy mux selection, the argument three is the mask usb phy
> +      mux selection.

Sorry, you miss phy driver. Don't use syscon instead of proper hardware
devices.


Best regards,
Krzysztof


