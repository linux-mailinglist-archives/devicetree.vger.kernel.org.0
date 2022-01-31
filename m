Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C82214A52F2
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 00:11:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237306AbiAaXLs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 18:11:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237115AbiAaXLs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 18:11:48 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 006B1C061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 15:11:47 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id q186so29840705oih.8
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 15:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=BEp1YW6cXZjOzQZ2AT1X2T5G6w7sQ/rQe7vI6oRyACg=;
        b=aufXy6V/hF3UwWmb051IYrOsjd77oVt4OlkZKiwzaXUqeQaM+/5wnV5hmFJV1oicEA
         ZiXzYgKFARloxCYbXsPdhddJ6cXwdTwWQq4THKHH/5xmq8eQ8BNJU7FQGTmLNRJ1BaDw
         3yX+xsDGTTJf4P4+HAstY5Sr7d8O5XIp/wc1DwGg3RhkuqrAzEoz11V8I2IIe68oCp/0
         fLq9q6CRADErInCsOORTG3CQIh6UEYJBkdspR9iiRwp5fr7hiP9r1DLfQrmm6nNhf5Lp
         e05hCWWHxwRwsZdrOi+M16KHWq2JMbzbMkfBuS4uUG1pHlo9kHMUOIuZkpMEBj+cDzap
         ubsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=BEp1YW6cXZjOzQZ2AT1X2T5G6w7sQ/rQe7vI6oRyACg=;
        b=2pZrfNr61NtRtwW04pQd7ekGATqtBfpL+qkDWnIet5aFVmV0oxvryutVRhaYCTwyOU
         zQBQhgKJegbmSq++R6MFlBQfAkDCBgSP6d96vuDyV4iKZeEFL3Pd+qAonEzR0pH1DPH/
         dm2XMYISs6ZP+r0yc5F5bww7pkAYC9DmL7Dip1/v5NXLOmrSARdRCgKkxurLxkehSKj7
         J8f0y3jEwFRV6SYdkLP+oIzGB9l4xYhRQTxel36Spne2pHfVrju7fngt4/U6iIDCJwwQ
         6Yp0/K8Z/NVE3KvRRyld5c5/77tcse5aY6RjYVMjY5Iw/5u9LNeu6++/4sTyQ7CKpSt6
         BijA==
X-Gm-Message-State: AOAM5324/CPcZegNlloEoQm+FBYui0SZue5FVA9uOQ+SOxO4lagDHGVC
        sihctPGm/V3bP0moLa169fXbQQ==
X-Google-Smtp-Source: ABdhPJzLH6uiNREJQvFo0wBCG2+uRxrUSQoGGMYpP0QdizGoFNpt2f+xqN2YsgC+siyrZMusvqf9JQ==
X-Received: by 2002:a05:6808:5d2:: with SMTP id d18mr14389237oij.93.1643670707385;
        Mon, 31 Jan 2022 15:11:47 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id o12sm15181247ooi.18.2022.01.31.15.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 15:11:46 -0800 (PST)
Date:   Mon, 31 Jan 2022 17:11:44 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Ansuel Smith <ansuelsmth@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Taniya Das <tdas@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 01/15] dt-bindings: clock: split qcom,gcc.yaml to
 common and specific schema
Message-ID: <YfhssKqI5U8X+Akn@builder.lan>
References: <20220121210340.32362-1-ansuelsmth@gmail.com>
 <20220121210340.32362-2-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220121210340.32362-2-ansuelsmth@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 21 Jan 15:03 CST 2022, Ansuel Smith wrote:

> Split qcom,gcc.yaml to common and specific schema to use it as a
> template for schema that needs to use the gcc bindings and require
> to add additional bindings.
> 

Nice!

> Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
> ---
>  .../bindings/clock/qcom,gcc-common.yaml       | 42 +++++++++++++++++++
>  .../devicetree/bindings/clock/qcom,gcc.yaml   | 25 ++---------
>  2 files changed, 46 insertions(+), 21 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-common.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-common.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-common.yaml
> new file mode 100644
> index 000000000000..ea1dd94d8bf1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/qcom,gcc-common.yaml

It seems reasonable to expect that qcom,gcc.yaml should be split out in
a number of trivial qcom,gcc-platform.yaml files to define input clock
etc. So how about using qcom,gcc.yaml for the common properties and for
now rename the existing file to something like qcom,gcc-others.yaml
?

> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/qcom,gcc-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Global Clock & Reset Controller Binding Common Bindings
> +
> +maintainers:
> +  - Stephen Boyd <sboyd@kernel.org>
> +  - Taniya Das <tdas@codeaurora.org>
> +
> +description: |

No need to preserve the formatting here, so the pipe can go.

Regards,
Bjorn

> +  Common bindings for Qualcomm global clock control module which supports
> +  the clocks, resets and power domains.
> +
> +properties:
> +  '#clock-cells':
> +    const: 1
> +
> +  '#reset-cells':
> +    const: 1
> +
> +  '#power-domain-cells':
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  protected-clocks:
> +    description:
> +      Protected clock specifier list as per common clock binding.
> +
> +required:
> +  - reg
> +  - '#clock-cells'
> +  - '#reset-cells'
> +  - '#power-domain-cells'
> +
> +additionalProperties: true
> +
> +...
> diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> index f66d703bd913..73e3ff4979c6 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> @@ -34,6 +34,9 @@ description: |
>    - dt-bindings/reset/qcom,gcc-mdm9615.h
>    - dt-bindings/clock/qcom,gcc-sdm660.h  (qcom,gcc-sdm630 and qcom,gcc-sdm660)
>  
> +allOf:
> +  - $ref: "qcom,gcc-common.yaml#"
> +
>  properties:
>    compatible:
>      enum:
> @@ -55,30 +58,10 @@ properties:
>        - qcom,gcc-sdm630
>        - qcom,gcc-sdm660
>  
> -  '#clock-cells':
> -    const: 1
> -
> -  '#reset-cells':
> -    const: 1
> -
> -  '#power-domain-cells':
> -    const: 1
> -
> -  reg:
> -    maxItems: 1
> -
> -  protected-clocks:
> -    description:
> -      Protected clock specifier list as per common clock binding.
> -
>  required:
>    - compatible
> -  - reg
> -  - '#clock-cells'
> -  - '#reset-cells'
> -  - '#power-domain-cells'
>  
> -additionalProperties: false
> +unevaluatedProperties: false
>  
>  examples:
>    # Example for GCC for MSM8960:
> -- 
> 2.33.1
> 
