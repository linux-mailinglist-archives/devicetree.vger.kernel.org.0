Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 475925B9B41
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 14:45:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230179AbiIOMpB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 08:45:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229923AbiIOMol (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 08:44:41 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BB3E1106
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 05:44:30 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id q21so30264197lfo.0
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 05:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=GbMPySDSU6WmgItxp994TYVOui10YiB6AOxxeQ38DWA=;
        b=OqodDEGO+HX5IYC9wkHWaQK5n7oCF9NayMeRaEdr5CfLpP6ZdmbbjKl0tYIp+k83/4
         bl180r0LxM8gmM+gUm4C2glC2htKXT5ok97uABU/WEVMlya+FWL2czplb1WcjMcCYlL0
         Cc/AcAwuPyOaFrCI4928xwDNL6hnRfgxgDOHxiANtwI4QcXwGTvm2xfcZB5vw9eR4i46
         DPPKaWjwnl7WqZUSjsR70Zysx599E3JZHvOcKTSUt5LX3Jmh7sFyMiBegFW1J6GmHifq
         mugNViCCsDLuqqkpTpQWAaZheQ5Xub+jqgdN7DdIfo3cEoGhEwnWww9aiR4gWPDEgQJ1
         mBrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=GbMPySDSU6WmgItxp994TYVOui10YiB6AOxxeQ38DWA=;
        b=0z0SIZ106YMq8mATRyUYAa3Z9YuIZ4NIxm8/G7/ZDrYlT97kVumOagXmaLKY6Hs5Yj
         6DoRdVxGoeHt4NvlN1MdDeWscgY7UpXCDJa/UNlxZafugzcOmnciv7ipZS3WcYZXmW/F
         KCft07nPEbAYaOFtviQI38p7r0dr+jSPC6j+syGW2wnSoPMf1F90YTXAd8TLzge2w8PB
         BQYdAXceLn+FSWzxKFaRZtJIG1CY7UY2KOh573Ym9OiTTjCIfalmZOMwEaBSqeh3afTW
         E0sCmjWmJZ6TPoS+M+zHWs52OQhr47pV/0K7OmjVNkMrjFOVkzV6qcp8r0RnDXGg7h7n
         qhvA==
X-Gm-Message-State: ACgBeo1lYqNpg8Y0IMNOcuhWbU5rYn8c+zMGkv5Q/GF7JIPsabGuJ/8S
        TPdaASvqwRdYk88aC2sZq5DTbA==
X-Google-Smtp-Source: AA6agR5e3aLhLl+SPavx1J3SMAHglV+z0HW2twco7cekVm4i6twl/pbFFjIx5uZ3q6jZeGHephVbIA==
X-Received: by 2002:a05:6512:3185:b0:49c:3310:6910 with SMTP id i5-20020a056512318500b0049c33106910mr4619068lfe.352.1663245869189;
        Thu, 15 Sep 2022 05:44:29 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p8-20020a2eb7c8000000b0026c16e9e45bsm1954318ljo.17.2022.09.15.05.44.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 05:44:28 -0700 (PDT)
Message-ID: <49cb7d54-6546-5228-0c30-6b37faa87ec9@linaro.org>
Date:   Thu, 15 Sep 2022 15:44:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [PATCH v6 04/12] dt-bindings: display/msm: move common DPU
 properties to dpu-common.yaml
Content-Language: en-GB
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, Loic Poulain <loic.poulain@linaro.org>,
        David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Stephen Boyd <swboyd@chromium.org>,
        freedreno@lists.freedesktop.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
References: <20220901102312.2005553-1-dmitry.baryshkov@linaro.org>
 <20220901102312.2005553-5-dmitry.baryshkov@linaro.org>
 <20220907195904.GA98468-robh@kernel.org>
 <CAA8EJpoJk-_LC25uyqkQ0Q8CYziNuU8nSnExm40542xZcvcbxQ@mail.gmail.com>
In-Reply-To: <CAA8EJpoJk-_LC25uyqkQ0Q8CYziNuU8nSnExm40542xZcvcbxQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 00:13, Dmitry Baryshkov wrote:
> On Wed, 7 Sept 2022 at 22:59, Rob Herring <robh@kernel.org> wrote:
>>
>> On Thu, Sep 01, 2022 at 01:23:04PM +0300, Dmitry Baryshkov wrote:
>>> Move properties common to all DPU DT nodes to the dpu-common.yaml.
>>>
>>> Note, this removes description of individual DPU port@ nodes. However
>>> such definitions add no additional value. The reg values do not
>>> correspond to hardware INTF indices. The driver discovers and binds
>>> these ports not paying any care for the order of these items. Thus just
>>> leave the reference to graph.yaml#/properties/ports and the description.
>>>
>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> ---
>>>   .../bindings/display/msm/dpu-common.yaml      | 44 ++++++++++++++++++
>>>   .../bindings/display/msm/dpu-msm8998.yaml     | 46 ++-----------------
>>>   .../bindings/display/msm/dpu-qcm2290.yaml     | 41 ++---------------
>>>   .../bindings/display/msm/dpu-sc7180.yaml      | 45 ++----------------
>>>   .../bindings/display/msm/dpu-sc7280.yaml      | 45 ++----------------
>>>   .../bindings/display/msm/dpu-sdm845.yaml      | 46 ++-----------------
>>>   6 files changed, 64 insertions(+), 203 deletions(-)
>>>   create mode 100644 Documentation/devicetree/bindings/display/msm/dpu-common.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/msm/dpu-common.yaml b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
>>> new file mode 100644
>>> index 000000000000..bf5764e9932b
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/msm/dpu-common.yaml
>>> @@ -0,0 +1,44 @@
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/msm/dpu-common.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: Qualcomm Display DPU dt properties (common properties)
>>> +
>>> +maintainers:
>>> +  - Krishna Manikandan <quic_mkrishn@quicinc.com>
>>> +  - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> +  - Rob Clark <robdclark@gmail.com>
>>> +
>>> +description: |
>>> +  Common properties for QCom DPU display controller.
>>> +
>>> +properties:
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +  power-domains:
>>> +    maxItems: 1
>>> +
>>> +  operating-points-v2: true
>>> +  opp-table:
>>> +    type: object
>>> +
>>> +  ports:
>>> +    $ref: /schemas/graph.yaml#/properties/ports
>>> +    description: |
>>> +      Contains the list of output ports from DPU device. These ports
>>> +      connect to interfaces that are external to the DPU hardware,
>>> +      such as DSI, DP etc.
>>
>> Haven't we been over this already?
>>
>> You have to define 'port' nodes or else anything is allowed in them
>> (and endpoint nodes). If you want to define them as pattern, then fine.
>> But you must have a ref to graph.yaml#/properties/port.
> 
> Last time you asked to do this, I did a check. Adding any additional
> property results in a schema error. And this is logical.
> graph.yaml#/properties/ports already limits the node properties. I
> thus do not see a need to define port@[0-9a-f]+$. Did I miss anything?

I see, what I did miss now. I missed adding properties to individual 
/port nodes. Please excuse me. BTW: is there any reason for not 
enforcing this in the graph.yaml?

-- 
With best wishes
Dmitry

