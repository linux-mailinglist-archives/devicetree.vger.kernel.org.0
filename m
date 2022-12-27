Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EB70656806
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 08:56:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229599AbiL0H4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 02:56:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbiL0H4h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 02:56:37 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6A8FDC
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 23:56:35 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 1so18627111lfz.4
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 23:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8WuMw1xwUmkvx1h2GnGHJDy1rb1dF/1yR0eeP+XHqUE=;
        b=jEt+H0sIzTDMrC46wwmBRxgvOnXOqGSvl4AsoMdywtGliYMuEY0mZTuppDUFRcbRL8
         kBQGXMSowKdl+TnU9P7ClAQ5QIHkoYrnu3opf4evev2RiouC9Pxw7b4X30Q/Gire5C97
         ZesWvU5nj0ueDQrsGRaB2NyXSFtSwY1FRokH6WLsbNt/KeRSYM/RIpkJvORetfvr3Meo
         NagP2L2qbneYJFDWPtt9BVONmClEc6daath3YRNAD9tDmJTsjov/vGBPfazz7fXqDMDM
         rSdWmvJGrNTc2bSh8rx3SMbLUf0pZvWqfWJs2zSTd/PjrmgN+AWRjV4MjPPttSegkMeK
         npoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8WuMw1xwUmkvx1h2GnGHJDy1rb1dF/1yR0eeP+XHqUE=;
        b=du7og5Vjp4XYw5WYyBNmqoWO/OJngyClg8e+3srOWeBxiIva8Zo1OxbGdOvsX8YhYk
         3w7qgk3nhPAtnFQE1XH7QLr5yAl4jo8LQL2bFqyxQBgWdXBHDLWohSWv34xMqe2o8h8y
         0pMgj+B03Z/LNG9uQ494tyxVVul9bRFbzT/cnOSsF06F3xOeLwcyzAQZFZ6KCIVfI6en
         0zdUbHeBfMIazJ7+u5sqS6MFA1VrNizPHz652JoAvz7pnhXSMjhZxlCVb1nKmEIda+lK
         u/lcmNNnRZz4ZrpG/YQjN+XfahUZ3arvQLEEO7GOZEoY/dxidS+sY9syIKPSdRxckApx
         1W4A==
X-Gm-Message-State: AFqh2kp0uOm1LVa1qsVT8T9UekdQSycJmBO2GEtOEx+f5e3fta+/kfGR
        V9KdnX37xXssvdMu/EZQgVOaDQ==
X-Google-Smtp-Source: AMrXdXt2q3Ep0rj20rZ5YXTMNhfcIunDyoATdR7QajPp5jcaK3MhVR7n8zAiVSM2/cT79k6RVUIyFg==
X-Received: by 2002:a05:6512:139c:b0:4b6:e3d5:a8c2 with SMTP id p28-20020a056512139c00b004b6e3d5a8c2mr6914233lfa.13.1672127794149;
        Mon, 26 Dec 2022 23:56:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f15-20020a056512360f00b004cafb150134sm1614410lfs.67.2022.12.26.23.56.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 23:56:33 -0800 (PST)
Message-ID: <74fd9706-119e-c6c3-4c64-c7ee419ce4bb@linaro.org>
Date:   Tue, 27 Dec 2022 08:56:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 4/5] dt-bindings: regulator:
 adi,max77541-regulator.yaml Add MAX77541 Regulator bindings
Content-Language: en-US
To:     Okan Sahin <okan.sahin@analog.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:VOLTAGE AND CURRENT REGULATOR FRAMEWORK" 
        <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20221226223839.103460-1-okan.sahin@analog.com>
 <20221226223839.103460-5-okan.sahin@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221226223839.103460-5-okan.sahin@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/12/2022 23:38, Okan Sahin wrote:
> The bindings for MAX77541 and MAX77540
> regulator drivers.

1. Again:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

2. Please wrap commit message according to Linux coding style /
submission process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

3. Subject: drop second, redundant "bindings".


> 
> Signed-off-by: Okan Sahin <okan.sahin@analog.com>
> ---
>  .../regulator/adi,max77541-regulator.yaml     | 44 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml b/Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml
> new file mode 100644
> index 000000000000..67d48bfcb627
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/adi,max77541-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Buck Converter for MAX77540/MAX77541
> +
> +maintainers:
> +  - Okan Sahin <okan.sahin@analog.com>
> +
> +description: |
> +  This is a part of device tree bindings for ADI MAX77540/MAX77541
> +
> +  The buck converter is represented as a sub-node of the PMIC node on the device tree.
> +
> +  The device has two buck regulators.
> +  See also Documentation/devicetree/bindings/mfd/adi,max77541.yaml for
> +  additional information and example.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max77540-regulator
> +      - adi,max77541-regulator
> +
> +patternProperties:
> +  "^BUCK[12]$":

Old DT example was correct - lowercase node names.

Best regards,
Krzysztof

