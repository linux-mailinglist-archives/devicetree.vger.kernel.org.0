Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 061BB5E622F
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 14:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbiIVMTc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 08:19:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231273AbiIVMTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 08:19:30 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF831E6A1A
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 05:19:25 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a14so10751110ljj.8
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 05:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=i/CqszIZh8P8j8dT9+oh4Z05nb+Y/d9c5WZtIgCuPK4=;
        b=eWNWfK3AFvDG834Zr5HLamysLgoxgnhiVcHys2gwwAw3rDhz/igUHQje6QxB0TFrTB
         sVfARPMH7lzuZONx2KjOz0uo1uxfiT8zRHkQU3c4V1+eF7vS94ip90V8hdtm3pJtBz9H
         lwikVgkBVSNf+u4kTMEh/t8zpFUk8fSHyOFzIDJVIqBi07ZleWJnFiwk+huYJzu9DsVf
         b++ZPMq57UblLG1WXxO3r64OhshLCHIKslLAdjHxM7dOdU0zkZoyz7IqDzg719homNhv
         lKnAQJvQKjJFiXyoLfGFBPvmn7SRYLLq9S0QQTV6qkcpNJlHqHZtc99OpsLGbUeGRJ3C
         1Wsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=i/CqszIZh8P8j8dT9+oh4Z05nb+Y/d9c5WZtIgCuPK4=;
        b=nl1jh59Zb90keiYrhG19DojeKP/Uhx+cafmgfixtdytWRsnBysq84kzrJU9umoQ0ES
         gJDl+Nf1WJLiwD4JQg7+qKeiVJBCbj7ODxPWzEIBXwx+ewsPRmZ4sLS4/e6PRiPS710t
         9ZJhswZ9tnh7nRkteCfkWZHAOJnTaiwZbauUEA7OhufoDEj0AiMcq5c9UxPfeS1MXEim
         dVn/ODl90V95El6H+pxAVMU4BnRf3PBgDcZa4Mnl244yLpoqAUGLbapKGyrhNxonTnBg
         93JXzav+l7QRSsVYA28gn/rqaBoYWVsfPlZrVq2QADo7IS7l7kHB71WxRDd5FAJIG5Oi
         D/Rw==
X-Gm-Message-State: ACrzQf3CjJbBxjkx6dxzKWhFxcNX0w8alDogLg1q4cCmvcbx6Zlr7P5z
        W5VSe4Lo9z7HS5lIabT0cZTZBw==
X-Google-Smtp-Source: AMsMyM41dt9zEaCoTFYzG8+Ztkoxoj8ww69k27iIEzfmtLlQGjVlrZWR99FqsS2XlQV9tAm5X4ZXTQ==
X-Received: by 2002:a05:651c:201e:b0:26b:e78e:c2e8 with SMTP id s30-20020a05651c201e00b0026be78ec2e8mr1021216ljo.431.1663849163830;
        Thu, 22 Sep 2022 05:19:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x3-20020a19e003000000b004979dc8038esm911628lfg.201.2022.09.22.05.19.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:19:23 -0700 (PDT)
Message-ID: <c582130c-9a12-10c7-833b-542e48f6bf70@linaro.org>
Date:   Thu, 22 Sep 2022 14:19:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v7 06/12] dt-bindings: display/msm: split dpu-sc7180 into
 DPU and MDSS parts
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220915133742.115218-1-dmitry.baryshkov@linaro.org>
 <20220915133742.115218-7-dmitry.baryshkov@linaro.org>
 <94bc039f-065e-ebfa-e09b-7fdb5f4be89b@linaro.org>
 <CAA8EJppqxMvn+bpHQ-49nBw6esdgRyft4aPj2410bq2tbL=94w@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAA8EJppqxMvn+bpHQ-49nBw6esdgRyft4aPj2410bq2tbL=94w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 12:30, Dmitry Baryshkov wrote:
>>> +    display-subsystem@ae00000 {
>>> +        #address-cells = <1>;
>>> +        #size-cells = <1>;
>>> +        compatible = "qcom,sc7180-mdss";
>>> +        reg = <0xae00000 0x1000>;
>>> +        reg-names = "mdss";
>>> +        power-domains = <&dispcc MDSS_GDSC>;
>>> +        clocks = <&gcc GCC_DISP_AHB_CLK>,
>>> +                 <&dispcc DISP_CC_MDSS_AHB_CLK>,
>>> +                 <&dispcc DISP_CC_MDSS_MDP_CLK>;
>>> +        clock-names = "iface", "ahb", "core";
>>> +
>>> +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
>>> +        interrupt-controller;
>>> +        #interrupt-cells = <1>;
>>> +
>>> +        interconnects = <&mmss_noc MASTER_MDP0 &mc_virt SLAVE_EBI1>;
>>> +        interconnect-names = "mdp0-mem";
>>> +
>>> +        iommus = <&apps_smmu 0x800 0x2>;
>>> +        ranges;
>>
>> This should come with full example, so with display-controller child
>> (unless Rob asked not to?)
> 
> I'm not sure here. We have an example of a display-controller in a
> separate schema file. Why would you like to duplicate it?

To validate the child node (display-controller) in the context of this
schema. The child node is essential, so I would also say that example is
incomplete.

Best regards,
Krzysztof

