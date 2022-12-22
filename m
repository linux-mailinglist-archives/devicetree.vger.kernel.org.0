Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38984653DC4
	for <lists+devicetree@lfdr.de>; Thu, 22 Dec 2022 10:52:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235119AbiLVJwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Dec 2022 04:52:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235029AbiLVJw2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Dec 2022 04:52:28 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FC6A3AF
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 01:52:27 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id m29so1917811lfo.11
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 01:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NVo2Nr9yhXPIh+uvPb1YwcBZxRxy1i/aeSoinnkFV8I=;
        b=E1msI7N92R0+9BCYiWDkqpjEm9jI0scritLDg3TvCQlpWGmO7qEcck9wKwAzOFZV26
         jbW7tLEcRMWIRoJw49lYsQV38W7BuzwQvJqTD9QQ6GEZMKJJZlUT/LdH0yJSzR2dkcUv
         okHxJdRxWss3C6BCFLt9ssOXko2z1eAtHS4c9JGDSczWyJxIk8m04RNwxei7t5P+fp/l
         j0ivALiWvO0eRhEi/IOC0Vd1at3dLNjQwuRTZOI0o34BJikvUgwChfQm0YeAFIEUbzHz
         MTJJHPjaT+giC5evkp9Vzv6CKBBpK0ewmQHUqeY/Q0rsEBKmXnQ+J/SF5FoPQd/AEzD7
         ylsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NVo2Nr9yhXPIh+uvPb1YwcBZxRxy1i/aeSoinnkFV8I=;
        b=Mx6irgb1sWXW9jVdbh9hxphQXZLh1T//kc7b197pnHixjeDBZoJozMuWUH8kSrtflP
         2mUdkuFEhp1PkFuszxf9OBGzIsYZA1K/1OpOIa415qmSrF054j+XiXWjMhf+WzawSaP1
         sGqRrTm0wCozshDnfpHhwUJlbYZkwGBaGDy3uG8kksLjMVOidlDrdZDtBrrd/4T6SlWu
         FAGxakE7BfklKbj85Pdo3IDkPqYA3yIZ/cO4glfK1GM3/xjnjEgBJnSGAvxikJuMLcVT
         yg7t5LJpEJObbT3pkF0Ju7WlXVcu63IRmcEMKkhloG6GnUpLcYmIousbGEhWt/rbKcSb
         Gi6A==
X-Gm-Message-State: AFqh2koRYOTYfvUumLjaQexhS3ziH0D63yyH0DoXrHf7WES4L6RmGko6
        w6m9xsimqxmaYOthuwgbXZHy+w==
X-Google-Smtp-Source: AMrXdXvQctizKczOaFoCzYY85NETgBm+Z0WcmJYHIM4BSWcvt5yIpWWktJjkWiN4OT1USLdY4VmMlw==
X-Received: by 2002:a19:7614:0:b0:4b6:e95b:5b41 with SMTP id c20-20020a197614000000b004b6e95b5b41mr1394870lff.22.1671702745723;
        Thu, 22 Dec 2022 01:52:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bq27-20020a056512151b00b004b591c33b99sm21016lfb.13.2022.12.22.01.52.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 01:52:25 -0800 (PST)
Message-ID: <8d35613e-5729-ccc0-6344-eae1ede5616e@linaro.org>
Date:   Thu, 22 Dec 2022 10:52:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/2] dt-bindings: Add the binding doc for xilinx APM
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     git@amd.com, devicetree@vger.kernel.org, michal.simek@xilinx.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
 <20221222084235.12235-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221222084235.12235-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/12/2022 09:42, Shubhrajyoti Datta wrote:
> The LogiCORE IP AXI Performance Monitor core enables AXI system
> performance measurement for multiple slots (AXI4/AXI3/
> AXI4-Stream/AXI4-Lite) activity. Add the devicetree binding for
> xilinx APM.

You did not implement what I asked for in the subject.

> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> 
>  
> ---
> 
> Changes in v2:
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
> index 000000000000..72843504c946
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
> +  xlnx,profile:
> +    description:
> +      Has profile mode support. Event counting in profile mode consists of a
> +      fixed number of accumulators for each AXI4/AXI3/AXI4-Lite slot. All the
> +      events that can be counted are detected and given to the accumulator
> +      which calculates the aggregate value. There is no selection of events,
> +      and in this mode, event counting is done only on AXI4/AXI3/AXI4-Lite
> +      monitor slots.
> +    type: boolean
> +
> +  xlnx,trace:
> +    description:
> +      Has trace mode support. In trace mode, the APM provides event logging in a
> +      reduced dynamic configuration. It captures the specified AXI events,
> +      external events and the time stamp difference between two successive
> +      events into the streaming FIFO. The selection of events to be captured
> +      is set through parameter configuration. Streaming agents are not
> +      supported in trace mode.
> +    type: boolean
> +
> +  xlnx,num-monitor-slots:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      Number of monitor slots.
> +    minimum: 1
> +    maximum: 8
> +
> +  xlnx,event-count:
> +    description:
> +      Has event counting capability..

No need for double full stop.

> +    type: boolean
> +
> +  xlnx,event-log:
> +    type: boolean
> +    description:
> +      Has event logging support.
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

Second time, the same problem. I wrote long time ago:
"All of such comments apply everywhere."

I'll stop review. Implement all the comments, not subset of them.

Best regards,
Krzysztof

