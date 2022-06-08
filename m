Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E840543091
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 14:38:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239433AbiFHMhv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 08:37:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239345AbiFHMhu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 08:37:50 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9152C2CCF44
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 05:37:45 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id me5so40658832ejb.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 05:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=H0WIvtDK8p0hub9/Szus7esLARC3UMiO3VioApHUPBY=;
        b=Tsg1x0Q8gQ3BwxdDKxr3GztlxX4tjBiwzsVdK/a8gxfowQSkHgSZ8zcX0TpFfNRidL
         Srb+CtQa6fOlcNTwnam9zdq22zbwYe0P046H0hS5F+qvQNjoTBe11Hs29KrKR/npMjtl
         aqy20peak7dBdXuXTvUODVZI2rhuhgApqEtHi3M37GUaDppZaxRrQYO/o+QnrEQD+W9i
         3s95MzkblBaQ99c+Lm937NU/9RjX5gaiJWh14VA+NP1sLlLI2nRJbi4c8nln+9YEXzmz
         93l1W1tv+z9yU/XV7Yo2kqFxQHqLcuH1Fg/2d8ltZCJg22FG4R8aaHFQ8qS0NMPIiI/E
         MoEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=H0WIvtDK8p0hub9/Szus7esLARC3UMiO3VioApHUPBY=;
        b=x9fXGIonUGjD006gDTWT2JsD5s5PEfS1bWhKQyyIhWhi5v4tobCZyXZEmEHkssv0N8
         WVFohTCPOEe8hgmiayty0R98WlxQIR017IOtif7/4sfV6FBKEpBGNnusjk5WO3ylGzGd
         TsUtWTgRvJjo2RduGKmDEY8RbOuLJl+X6blwikpv6OdrB2nIMp6kAhjd0HGjwqFk62rd
         JZiHHyfnaNtZqcmgMJjfRN+GNkA6X3wzEPtZK1CQhAlu/gvz3du5JxJeAT0ybGf8ZqWY
         aWA1Firh1kcx1yJCpQas3vLyAULbkomyFaT2Su89E5HyFFYx9iz9k/QSQZRVkcqJpHLW
         VMjA==
X-Gm-Message-State: AOAM531ziCeowwNZx+D5uEQq0/VSld+ojdDp7JMdJPQpPzeQ/YfSjoiC
        uPPX+1G/CGMUij8RayJFzsbu9g==
X-Google-Smtp-Source: ABdhPJy0CWdqL36Ktq7laF+3NF2aMLunQqcEfbts6nMe4AvWKnaPdOnxG/P/zeEoYq1eMlQKYpwQeQ==
X-Received: by 2002:a17:907:6286:b0:6da:6e24:5e43 with SMTP id nd6-20020a170907628600b006da6e245e43mr31108018ejc.449.1654691864091;
        Wed, 08 Jun 2022 05:37:44 -0700 (PDT)
Received: from [192.168.0.192] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w2-20020a056402268200b0042ddd08d5f8sm12908878edd.2.2022.06.08.05.37.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 05:37:43 -0700 (PDT)
Message-ID: <e9918d06-1b53-d847-016f-2310c4fa9866@linaro.org>
Date:   Wed, 8 Jun 2022 14:37:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 01/12] dt-bindings: display/msm: hdmi: split and
 convert to yaml
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, David Heidelberg <david@ixit.cz>
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org>
 <20220608120723.2987843-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220608120723.2987843-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 14:07, Dmitry Baryshkov wrote:
> Convert Qualcomm HDMI binding into HDMI TX and PHY yaml bindings.
> 
> Changes to schema:
> HDMI:
>  - fixed reg-names numbering to match 0..3 instead 0,1,3,4
>  - dropped qcom,tx-ddc-* from example, they were not documented
> 
> PHY:
>  - moved into phy/ directory
>  - split into QMP and non-QMP PHY schemas
> 
> Co-developed-by: David Heidelberg <david@ixit.cz>

David also needs to SoB here.

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

(...)

> +$id: http://devicetree.org/schemas/display/msm/hdmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Adreno/Snapdragon HDMI output
> +
> +maintainers:
> +  - Rob Clark <robdclark@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,hdmi-tx-8084
> +      - qcom,hdmi-tx-8660
> +      - qcom,hdmi-tx-8960
> +      - qcom,hdmi-tx-8974
> +      - qcom,hdmi-tx-8994
> +      - qcom,hdmi-tx-8996
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 5
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 5
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 3
> +
> +  reg-names:
> +    minItems: 1
> +    items:
> +      - const: core_physical
> +      - const: qfprom_physical
> +      - const: hdcp_physical
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    enum:
> +      - hdmi_phy
> +      - hdmi-phy

I did not notice your question on v1. I see now two DTS files using two
different names... yeah, let's mark it deprecated and remove entirely
from DTS. Let's hope DTS does not have other users than Linux kernel. :)

> +
> +  core-vdda-supply:
> +    description: phandle to VDDA supply regulator
> +
> +  hdmi-mux-supply:
> +    description: phandle to mux regulator
> +
> +  core-vcc-supply:
> +    description: phandle to VCC supply regulator
> +

(...)

> +properties:
> +  compatible:
> +    enum:
> +      - qcom,hdmi-phy-8660
> +      - qcom,hdmi-phy-8960
> +      - qcom,hdmi-phy-8974
> +      - qcom,hdmi-phy-8084
> +
> +  reg:
> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: hdmi_phy
> +      - const: hdmi_pll
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  core-vdda-supply:
> +    description: phandle to VDDA supply regulator

Blank line

> +  vddio-supply:
> +    description: phandle to VDD I/O supply regulator
> +


Best regards,
Krzysztof
