Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 649EF5B1F7A
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 15:44:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbiIHNoH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 09:44:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbiIHNoG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 09:44:06 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24168B56F2
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 06:44:05 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id w8so27737634lft.12
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 06:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ADjKcgU/7WVg1iZnEBOc24JneNzG+pamTo18hJi4qC4=;
        b=W4Y4wSahcBGlxIwPOKy2A/5B/zitDUDrZKJ0i+Q5RM5SxqY1rIoWeLPC0sAnXVxVaL
         ot30JkD4LVAxJepRJtzxf4DtAqjdAtlxnDpU4dgfc00elvrLyeTK8EKaNtzpPEB8P3cR
         g3rkQpPHbexJX0X8wxpI5stKYCsWjh3RNZjZsqp1ArtvW9N67czMFf970ch2SYi6+Yls
         f0IvHieCTQ1qjS7WL3dCZPFH1bpnNF7N5eij4Wk5T09+RJB0uXXVoY98XeBWvxe1ATFC
         0e8FhXROxeRlnf6qgk/1B/C+MzrobDLalzN+bLrbmkGId/UFtoGDzwwMapilKe8b+yY8
         KImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ADjKcgU/7WVg1iZnEBOc24JneNzG+pamTo18hJi4qC4=;
        b=8MbURN2wPIx2iBgcm9EeLjCFFoyycvrw8uHa94k+0zNFcsAFg4TfvBKSwfHhMJDMm0
         Cqaz1nFHGFKGMv93x9iIN3BEedIU1bj8xPXOMA65cJWJ7lJOXjhW2hYD5vG4miWci2LU
         ss3+eAVM57om6rC+T43uHbTsB9LoFrlHlOlvavNNQ7poCsRZe0Ne7IWZvNHLRSBwd0Mr
         tDkJNQA+PQdhQ0ZgNOKyk4fIUtqNX70TdouZb9z7IxCozNUVbpyzjh3eWB20ZcFJYPjD
         hQkyreMwGyj0Xap3XlYZZ6ZTcKGhShpaDHvkcZpwBZrXIDHd/OUHpKtmzSTYzJaWUUFs
         4F2Q==
X-Gm-Message-State: ACgBeo0xAIT8sKlQhbv8k0yBmA45AFnglpW9MQTlo03GyjHBK7RfuNvC
        SqgjrrpkeAgQhOuEDweC3MTolg==
X-Google-Smtp-Source: AA6agR4wHBMp+HzD7UtYqVNqr/wulhee2bv18awY6dzHZIdtqfYE3uyvQV3OijHcTs/qKENgvxF/4g==
X-Received: by 2002:a05:6512:3d06:b0:494:6871:639e with SMTP id d6-20020a0565123d0600b004946871639emr2734162lfv.227.1662644643456;
        Thu, 08 Sep 2022 06:44:03 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b28-20020ac247fc000000b004951c1beb4fsm2603188lfp.66.2022.09.08.06.44.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 06:44:02 -0700 (PDT)
Message-ID: <92e18257-9a95-9366-ffff-416d27039c3b@linaro.org>
Date:   Thu, 8 Sep 2022 15:44:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v6 06/12] dt-bindings: display/msm: split dpu-sc7180 into
 DPU and MDSS parts
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
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Loic Poulain <loic.poulain@linaro.org>
References: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
 <20220901102312.2005553-7-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901102312.2005553-7-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2022 12:23, Dmitry Baryshkov wrote:
> In order to make the schema more readable, split dpu-sc7180 into the DPU
> and MDSS parts, each one describing just a single device binding.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thank you for your patch. There is something to discuss/improve.

> -                           #address-cells = <1>;
> -                           #size-cells = <0>;
> -
> -                           port@0 {
> -                                   reg = <0>;
> -                                   dpu_intf1_out: endpoint {
> -                                                  remote-endpoint = <&dsi0_in>;
> -                                   };
> -                           };
> -
> -                            port@2 {
> -                                    reg = <2>;
> -                                    dpu_intf0_out: endpoint {
> -                                                   remote-endpoint = <&dp_in>;
> -                                    };
> -                            };
> -                   };
> -         };
> +    display-controller@ae01000 {
> +               compatible = "qcom,sc7180-dpu";
> +               reg = <0x0ae01000 0x8f000>,

You need to fix up the indentation.

> +                     <0x0aeb0000 0x2008>;
> +
> +               reg-names = "mdp", "vbif";
> +
> +               clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
> +                        <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +                        <&dispcc DISP_CC_MDSS_ROT_CLK>,
> +                        <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>,
> +                        <&dispcc DISP_CC_MDSS_MDP_CLK>,
> +                        <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
> +               clock-names = "bus", "iface", "rot", "lut", "core",
> +                             "vsync";
> +
> +               interrupt-parent = <&mdss>;
> +               interrupts = <0>;
> +               power-domains = <&rpmhpd SC7180_CX>;
> +               operating-points-v2 = <&mdp_opp_table>;
> +
> +               ports {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       port@0 {
> +                               reg = <0>;
> +                               dpu_intf1_out: endpoint {
> +                                              remote-endpoint = <&dsi0_in>;
> +                               };
> +                       };
> +
> +                        port@2 {
> +                                reg = <2>;
> +                                dpu_intf0_out: endpoint {
> +                                               remote-endpoint = <&dp_in>;
> +                                };
> +                        };
> +               };
>      };
>  ...
> diff --git a/Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml b/Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml
> new file mode 100644
> index 000000000000..27d944f0e471
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/mdss-sc7180.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/msm/mdss-sc7180.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Display MDSS dt properties for SC7180 target
> +
> +maintainers:
> +  - Krishna Manikandan <quic_mkrishn@quicinc.com>
> +
> +description: |
> +  Device tree bindings for MSM Mobile Display Subsystem(MDSS) that encapsulates
> +  sub-blocks like DPU display controller, DSI and DP interfaces etc. Device tree
> +  bindings of MDSS are mentioned for SC7180 target.
> +
> +allOf:
> +  - $ref: /schemas/display/msm/mdss-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: qcom,sc7180-mdss
> +
> +  clocks:
> +    items:
> +      - description: Display AHB clock from gcc
> +      - description: Display AHB clock from dispcc
> +      - description: Display core clock
> +
> +  clock-names:
> +    items:
> +      - const: iface
> +      - const: ahb
> +      - const: core
> +
> +  iommus:
> +    maxItems: 1
> +
> +  interconnects:
> +    maxItems: 1
> +
> +  interconnect-names:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^display-controller@[0-9a-f]+$":
> +    type: object
> +    properties:
> +      compatible:
> +        const: qcom,sc7180-dpu

You have now schema for qcom,sc7180-dpu so just reference it here instead.

> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,dispcc-sc7180.h>
> +    #include <dt-bindings/clock/qcom,gcc-sc7180.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interconnect/qcom,sdm845.h>
> +    #include <dt-bindings/power/qcom-rpmpd.h>
> +
> +    display-subsystem@ae00000 {
> +         #address-cells = <1>;

Fix indentation to four spaces.



Best regards,
Krzysztof
