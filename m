Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03F63617E54
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 14:47:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbiKCNrt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 09:47:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229871AbiKCNrs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 09:47:48 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAABF21B0
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 06:47:46 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id n18so1106038qvt.11
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 06:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/2Nr5wIdGbAWm3WH/I4UVUKpbhCh82dprUQ26IZeMhc=;
        b=qPv7iGDsarIyeVkPtASpJ9T0zxFA9vMYe5noup38EWHE174XLESSO8pOb+cAor4t9T
         ohhqAr79b6QEkwtwsx1unZIDNieHhMgFD9w9spQ4q/VBD5K4xYW68UL2J9qaz1sr6Qt9
         azDBNxlr5M/IQ4Ff9DHEhfwoCRVapzw1g0YsApKJoFs0cSqXJ2Q7SHX/X0YoeZbRbzOx
         BymutPAUVmDMaT8ZbF4AFM7Ajszy/g2+5VFI3IeKTLVfTKsjqPpXt6WrbOUBszbc7IAe
         /5k9YdNLB5XOFmjitCa51wUbm3bUWV+u5wZwSVmsl8M9vNCHMCGUzZFSZWkv8rLhmt9H
         ye/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/2Nr5wIdGbAWm3WH/I4UVUKpbhCh82dprUQ26IZeMhc=;
        b=JBhE268zxAiTGZTJ06Lfwg8p2rzc97W2pmlZEsbaJEE2+ChQzu95ZrnoK1THU6Btgb
         /oyxfBPoA/svifKDrDqYSWQ9R52iL81iwg/fGIzQKbWscHjzyY0PFt9ZiNaYz/egIp9z
         dvTU3awVAbrMzNtV2Y7lzYeB3ov5+b2SiSBGMRz2biVdRtNTC9c6CAhiBMdGD48F8rJQ
         2Gm1xEshsvh5URVOo+CKSE2GiZp0lv8d2reyk22Jhcc8DRJNHYhfDpLxXYDM7NCwO+mg
         +kT484tLf6C5cbevEllCTmEx55XKnvUz/OPIZuUUt2NvHYwFMR9jTqt9YdcQDGKckCXS
         odww==
X-Gm-Message-State: ACrzQf3syCnK4kAgXfHPb9bl40meOLpcRL1w9Cb0z/I5ntGuxF5lSsps
        5WW7C2PD8cMi5d17Zlz7CzbYmw==
X-Google-Smtp-Source: AMsMyM4EEMjML/TvKjG45RThBKF8f13QmyxMU3XEC+DuAu8ouWpZko/uukZBffWcUYkLAXPI5btEJw==
X-Received: by 2002:a05:6214:20aa:b0:4bb:7e1a:9df0 with SMTP id 10-20020a05621420aa00b004bb7e1a9df0mr26673735qvd.34.1667483265779;
        Thu, 03 Nov 2022 06:47:45 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id x17-20020a05620a449100b006fa31bf2f3dsm802424qkp.47.2022.11.03.06.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 06:47:45 -0700 (PDT)
Message-ID: <07fca6e0-994f-ed08-632c-dd26bc7086b8@linaro.org>
Date:   Thu, 3 Nov 2022 09:47:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [RESEND PATCH v1] dt-bindings: display/msm: convert MDP5 schema
 to YAML format
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221102220844.569977-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102220844.569977-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/11/2022 18:08, Dmitry Baryshkov wrote:
> Convert the mdp5.txt into the yaml format. Changes to the existing (txt) schema:
>  - MSM8996 has additional "iommu" clock, define it separately
>  - Add new properties used on some of platforms:
>    - interconnects, interconnect-names
>    - iommus
>    - power-domains
>    - operating-points-v2, opp-table
> 

Thank you for your patch. There is something to discuss/improve.

> +
> +  clock-names:
> +    oneOf:
> +      - minItems: 4
> +        items:
> +          - const: iface
> +          - const: bus
> +          - const: core
> +          - const: vsync
> +          - const: lut
> +          - const: tbu
> +          - const: tbu_rt
> +        #MSM8996 has additional iommu clock
> +      - items:
> +          - const: iface
> +          - const: bus
> +          - const: core
> +          - const: iommu
> +          - const: vsync
> +
> +  interconnects:
> +    minItems: 1
> +    items:
> +      - description: Interconnect path from mdp0 (or a single mdp) port to the data bus
> +      - description: Interconnect path from mdp1 port to the data bus
> +      - description: Interconnect path from rotator port to the data bus
> +
> +  interconnect-names:
> +    minItems: 1
> +    items:
> +      - const: mdp0-mem
> +      - const: mdp1-mem
> +      - const: rotator-mem
> +
> +  iommus:
> +    items:
> +      - description: Phandle to apps_smmu node with SID mask for Hard-Fail port0
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  operating-points-v2: true
> +  opp-table:
> +    type: object
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    description: |
> +      Contains the list of output ports from DPU device. These ports
> +      connect to interfaces that are external to the DPU hardware,
> +      such as DSI, DP etc.

You could include here information about number of ports per variant.

> +
> +    patternProperties:
> +      "^port@[0-9a-f]+$":

[0-3]

> +        $ref: /schemas/graph.yaml#/properties/port
> +
> +    # at least one port is required
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,gcc-msm8916.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mdp@1a01000 {

display-controller@......

> +        compatible = "qcom,mdp5";
> +        reg = <0x1a01000 0x90000>;
> +        reg-names = "mdp_phys";
> +

Best regards,
Krzysztof

