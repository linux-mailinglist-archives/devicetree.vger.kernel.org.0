Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E169560459C
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 14:43:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233219AbiJSMnC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 08:43:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229979AbiJSMmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 08:42:36 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 871DA103D9E
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 05:25:15 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id f14so11221203qvo.3
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 05:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GOgoZnvAyxabjB5tNvaaRdR7f2m+AQRUi30jvw0hsmg=;
        b=swmpazmq43WIf+5u025WO5c/XO5ynrle/q1qFkQApGlzYuCTjdFR1jmQZsMwTQMy54
         l941gOlJfq0l0F8bzMxGFLisg0J2Jd5FAPitUp9ES1JGh2tno/BVGeIZdOq2Jy4WdCwp
         zZPgOZ8pQj2pxf7LGVUWPAy00WntwUR77Fk9i53JYhFsP8BHKvghovEE45k5byv2vJVb
         w5kR0qL+KBB8/E+sp3lbyplk0JFw1m4x541TWyULdsw5MLJRz1gKkGVy6XeIFDAzsYLH
         byKWBL9jUD4iyBzrUk0H5j7itMqNaWOEZO7AqyO3afztx31DhfwElPYK8WrGjcuhfSjo
         zOpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GOgoZnvAyxabjB5tNvaaRdR7f2m+AQRUi30jvw0hsmg=;
        b=pXwA37qxDIxQmUca9ZPjAWRgA0/s+Wr4Uqxp6NWAEQR8kCN6dl0AaHvyTmqMoQ5R73
         T1iwwPyrensRqA1Bny53zZcP4PHuOjtd7Bmj8Tssr8gX3DECDaHFKFGCiwNv3uBheOpj
         EiNh0wbaEv8+cfLx/ZQQ8xuovOCwr7kaz0ylRBERnxTJmxHxFN382F/af0vUYrvW0Nr0
         8W7RR8ZjxvJ89bQInU6qGpXufZTVMSKiwy3x8HhJ8XBru4kJgu06CwUgdqYTcCpAgBq1
         9xBIO4Qd30+ZhgNHM+8lHBIPZg1G9YksdHMxOO88XtN8+4ulR918KRxBiIvSBlx7K2Ii
         P2fA==
X-Gm-Message-State: ACrzQf2dhk4EjjK+BxAnhOWKP+1AEqP27O83I9pOR3iP9wA2F1Mb1m0G
        QQcZPYQVwsF0BxnM+O+DINOZ0I7rlgcyWw==
X-Google-Smtp-Source: AMsMyM61Fb7UFnePN6K7QGk7PqgHf5oSBgNm9LsPhhVJP/+My8F+fni9lYei+3Rs/48jNMAdKsrqVg==
X-Received: by 2002:a05:6214:2389:b0:4b4:9f66:7bed with SMTP id fw9-20020a056214238900b004b49f667bedmr6293207qvb.83.1666182200583;
        Wed, 19 Oct 2022 05:23:20 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id j16-20020a05620a411000b006cf19068261sm4742079qko.116.2022.10.19.05.23.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:23:19 -0700 (PDT)
Message-ID: <f103812b-5eb5-8c19-e379-16b347ea80ce@linaro.org>
Date:   Wed, 19 Oct 2022 08:23:18 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 1/2] dt-bindings: Add the binding doc for xilinx APM
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     git@amd.com, devicetree@vger.kernel.org, will@kernel.org,
        mark.rutland@arm.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, michal.simek@xilinx.com
References: <20221019091713.9285-1-shubhrajyoti.datta@amd.com>
 <20221019091713.9285-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019091713.9285-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 05:17, Shubhrajyoti Datta wrote:
> The LogiCORE IP AXI Performance Monitor core enables AXI system
> performance measurement for multiple slots (AXI4/AXI3/
> AXI4-Stream/AXI4-Lite) activity. Add the devicetree binding for
> xilinx APM.

Subject:
Drop redundant "bindings" and add missing prefix, so:

dt-bindings: perf: Add Xilinx APM

> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 
> Changes in v1:

This should be then a v2.

>  - Use boolean for the values xlnx,enable-profile , xlnx,enable-trace
> and xlnx,enable-event-count
> - Update the file name
> - use generic node name pmu
> 
>  .../bindings/perf/xlnx,axi-perf-monitor.yaml  | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
> 
> diff --git a/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
> new file mode 100644
> index 000000000000..bd3a9dbc1184
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/perf/xlnx,axi-perf-monitor.yaml
> @@ -0,0 +1,133 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/perf/xlnx,axi-perf-monitor.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx Axi Performance Monitor
> +
> +maintainers:
> +  - Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> +
> +properties:
> +  compatible:
> +    const: xlnx,axi-perf-monitor
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  xlnx,enable-profile:
> +    description:
> +      Enables the profile mode. Event counting in profile mode consists of a
> +      fixed number of accumulators for each AXI4/AXI3/AXI4-Lite slot. All the
> +      events that can be counted are detected and given to the accumulator
> +      which calculates the aggregate value. There is no selection of events,
> +      and in this mode, event counting is done only on AXI4/AXI3/AXI4-Lite
> +      monitor slots.
> +    type: boolean
> +
> +  xlnx,enable-trace:
> +    description:
> +      Enables trace mode. In trace mode, the APM provides event logging in a
> +      reduced dynamic configuration. It captures the specified AXI events,
> +      external events and the time stamp difference between two successive
> +      events into the streaming FIFO. The selection of events to be captured
> +      is set through parameter configuration. Streaming agents are not
> +      supported in trace mode.
> +    type: boolean

Both enable profile and enable trace do not look like hardware
properties, but rather runtime features. In what use case this enabling
trace or profile should be a property of a hardware?

> +
> +  xlnx,num-monitor-slots:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of monitor slots.
> +    minimum: 1
> +    maximum: 8
> +
> +  xlnx,enable-event-count:
> +    description:
> +      Enable event count.

The same

> +    type: boolean
> +
> +  xlnx,enable-event-log:
> +    type: boolean
> +    description:
> +      Enable event log.

The same

> +
> +  xlnx,have-sampled-metric-cnt:
> +    type: boolean
> +    description:
> +      Sampled metric counters enabled in APM.
> +
> +  xlnx,metric-count-width:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [32, 64]

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

