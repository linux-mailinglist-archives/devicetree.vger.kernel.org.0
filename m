Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FACF524A35
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 12:24:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352560AbiELKY4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 06:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352575AbiELKYu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 06:24:50 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EFE76D1A3
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:24:49 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id d6so5674046ede.8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 03:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=VEapW+Top2YENurWwmIy1jknpQzQkhVxUu+ei/y7bf8=;
        b=AzRFLXUwZB5rVE9Iz1oFwBohYheeKHO+txTLfnNLVvprvZdr0OPxl3Fce94rk2e7OV
         EhSQjyOUMAihJNE0xxmpsERjOamcrIOTU15wkN1TYaUXKVMnEjoud86GIC8j1KufuTT+
         dQVGMrNlLbZ4X9p8MSo+TspkoEKsRfL54qvL9ZmRBPgSH0FVQZhePKh1f3+vRhH0lOKZ
         BhBOlhdsnMpRAKz2n0Z7E+PfiMdwXb15v5BMkm0yeqw9uNgiY5mZDEVt7Q59ttqpfLsV
         MDtPLNCcuiD3gR63Rn0A+xIuPGi+owmEr7xqgFIeJt84HdQPgDXUAXw3KYJoD26TjwV+
         Nr0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=VEapW+Top2YENurWwmIy1jknpQzQkhVxUu+ei/y7bf8=;
        b=vVyYfkON39fonizHPN/KFWsfUETcDPY5C9B1u+KfFsYMiqPVuB/Lrlm8CojQarfsz/
         AWe3qiMFw2iovrCu7mCUfpTuWn+0bqsAh7aaeID7B9p5Lx44VnnLdAhqU8tUrci288Rf
         EKlXCdNxylZWrkkAPQu2FUN1ClVasvYauZjB+Vx5uFYAcx1JYvuwDzoChiqIPWqlMz+J
         yVIeFrFXneUVdNAflUCGaX2efF/bZcGXbCbF67oJQp7sVosoTFxz4B2ofPlDgOTnPErM
         HLo7m9CBA6KBHVEFUGj8CfO4Odp55CRCwNDZwcqJV8TZj8TF6zDARv5AnIMIVIISOSCM
         sUIg==
X-Gm-Message-State: AOAM532h1VqmKAgMwWV1jRfO8y5C7YZ69XtM5h8QFp/e2WHhsvUVubDD
        hNMzc2CFlQdhag7x0yk1qJZU3g==
X-Google-Smtp-Source: ABdhPJw/FVga7D2wUgL6cuJAsTgAT0uHmO6X/cEonycEE10x0TBwVAsbhwpTzWvejpqD3o1d/qlZCg==
X-Received: by 2002:aa7:db0a:0:b0:427:db1d:b258 with SMTP id t10-20020aa7db0a000000b00427db1db258mr33681454eds.304.1652351087944;
        Thu, 12 May 2022 03:24:47 -0700 (PDT)
Received: from [192.168.0.158] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p16-20020a170906615000b006f3ef214e5fsm1876701ejl.197.2022.05.12.03.24.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 May 2022 03:24:47 -0700 (PDT)
Message-ID: <e9a39eb6-d8e2-bac6-27e2-f63ef8519917@linaro.org>
Date:   Thu, 12 May 2022 12:24:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v15 04/10] dt-bindings: clock: Add bindings for SP7021
 clock driver
Content-Language: en-US
To:     Qin Jian <qinjian@cqplus1.com>, sboyd@kernel.org
Cc:     robh+dt@kernel.org, mturquette@baylibre.com, tglx@linutronix.de,
        maz@kernel.org, p.zabel@pengutronix.de, linux@armlinux.org.uk,
        arnd@arndb.de, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <cover.1652329411.git.qinjian@cqplus1.com>
 <b5ca5d417be079a2a40a6e79ac1b246b6359a49e.1652329411.git.qinjian@cqplus1.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b5ca5d417be079a2a40a6e79ac1b246b6359a49e.1652329411.git.qinjian@cqplus1.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2022 08:30, Qin Jian wrote:
> Add documentation to describe Sunplus SP7021 clock driver bindings.
> 
> Signed-off-by: Qin Jian <qinjian@cqplus1.com>
> ---
> Remove "Binding" from yaml title
> Rename sp-sp7021.h to sunplus,sp7021-clkc.h

Thanks.

> ---
>  .../bindings/clock/sunplus,sp7021-clkc.yaml   | 51 +++++++++++
>  MAINTAINERS                                   |  2 +
>  .../dt-bindings/clock/sunplus,sp7021-clkc.h   | 88 +++++++++++++++++++
>  3 files changed, 141 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/sunplus,sp7021-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/sunplus,sp7021-clkc.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/sunplus,sp7021-clkc.yaml b/Documentation/devicetree/bindings/clock/sunplus,sp7021-clkc.yaml
> new file mode 100644
> index 000000000..119961a17
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/sunplus,sp7021-clkc.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd. 2021
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/sunplus,sp7021-clkc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sunplus SP7021 SoC Clock Controller
> +
> +maintainers:
> +  - Qin Jian <qinjian@cqplus1.com>
> +
> +properties:
> +  compatible:
> +    const: sunplus,sp7021-clkc
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - "#clock-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +

Same as in v14. Please go through the comments thoroughly so reviewers
will not waste time repeating the same twice.

Best regards,
Krzysztof
