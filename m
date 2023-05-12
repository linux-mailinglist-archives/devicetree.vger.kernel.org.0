Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F14C7000DF
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 08:51:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239826AbjELGvR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 02:51:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239968AbjELGvQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 02:51:16 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA19B40D4
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 23:51:14 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-965a68abfd4so1807366166b.2
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 23:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683874273; x=1686466273;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jsKErXbRUCx9c7pJsXtZwQSUgnhV+n88fwqIY9/PnvQ=;
        b=JUsi5uOkdPGkVRUOaAVDmZjBCegMSSSdUbhe5Qh45HTLe303viogN90K6Oxr+G/aS9
         34i6uBjZGlJ1h3yGtoAvif/dV3T4FMVTMylomVkycTz/yTyGDxRnWjBA5b2D8Gm5JJxH
         afhCF0pTwKXOvcOkOeJwLawMN/hLJ9KaUH9eMiXMSt1AtaFkKYiW3EKYCnmAGAI+fYOY
         hCUHyw5WCHvg9BxQrAn0rkTJfAuiGkFczZIZH2CA2MhyCApuxJUIrr1J3C9RMJ83dwri
         GKMuxkoz/lHDdpm3LRoObQlTVxo3Fcj1O5paXH+23BnHwcZtXJBvR62AqZkdKH5lO7q1
         /IGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683874273; x=1686466273;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jsKErXbRUCx9c7pJsXtZwQSUgnhV+n88fwqIY9/PnvQ=;
        b=guDrMNqROFommwr0IvmkySge9tXdIa6zTy8wj5tWxGuhUQIoyWJInYNhWtY9uZ8d0c
         tfcRT0kZ6dcp2F2pPXjOm7gaxotn/CY+ulwSkgQou7xDGL3PboG4wWCWOqq0yBpaalWo
         P4YQNdeTXW1rZhuzjCDB+g9btzjN+BCpxye+K1Y5Pjmyjqt9nnfxgcRIRiORrAKsR+hX
         Dt+3HVn/bum3cmmtJLLO/4rJQO65DC1R1RsX3SC7AL+axt3nTUjEGo3W03SgShg8szfv
         F3lR0mlz4JmRWEsfd42mek3uTJRQtdkWctk+VpuLmJXGRxo2Jg5bhBhtVr0g5r84cur2
         oytQ==
X-Gm-Message-State: AC+VfDxNLLcyBs9sqS9TM8i0QwXbSt94ErLnxb+zSZEFJgEf4BSXJNdF
        /wbrG4f++nbZj7CTUzf7XuQqFg==
X-Google-Smtp-Source: ACHHUZ5ne4AG2s1Tjpb09NNtv6IuN7wWFAFFSnCE8dNGrf8EMNOx7G8rmG4qvPMsmzEwzbAdQLy9kQ==
X-Received: by 2002:a17:906:ef06:b0:969:ee0b:24a9 with SMTP id f6-20020a170906ef0600b00969ee0b24a9mr9931134ejs.15.1683874273227;
        Thu, 11 May 2023 23:51:13 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:7ede:fc7b:2328:3883])
        by smtp.gmail.com with ESMTPSA id hy27-20020a1709068a7b00b0094f1fe1696bsm4950500ejc.216.2023.05.11.23.51.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 23:51:12 -0700 (PDT)
Date:   Fri, 12 May 2023 08:51:10 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Taniya Das <quic_tdas@quicinc.com>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2 03/10] dt-bindings: clock: provide separate bindings
 for qcom,gcc-mdm9615
Message-ID: <20230512065110.zjr5rmcz6fahvzmu@krzk-bin>
References: <20230512003230.3043284-1-dmitry.baryshkov@linaro.org>
 <20230512003230.3043284-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230512003230.3043284-4-dmitry.baryshkov@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 12 May 2023 03:32:23 +0300, Dmitry Baryshkov wrote:
> The global clock controller on MDM9615 uses external CXO and PLL7
> clocks. Split the qcom,gcc-mdm9615 to the separate schema file.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/clock/qcom,gcc-mdm9615.yaml      | 48 +++++++++++++++++++
>  .../bindings/clock/qcom,gcc-other.yaml        |  3 --
>  2 files changed, 48 insertions(+), 3 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.example.dtb: clock-controller@900000: Unevaluated properties are not allowed ('clock-names' was unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9615.yaml


See https://patchwork.ozlabs.org/patch/1780326

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
