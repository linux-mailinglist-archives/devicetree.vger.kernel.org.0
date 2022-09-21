Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67A775BF83B
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 09:51:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231145AbiIUHvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 03:51:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231189AbiIUHvK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 03:51:10 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38A8085FBD
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:51:05 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id bq9so8464328wrb.4
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 00:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=vHvPgyZXtdTUVL+2zbQ6BjAvak8aoLLPjJOxCcUCMJY=;
        b=NAfBeUZlU5NMe8lfXlyDKEvEtXYBTQkPVnvGFLrOsUayOoVMVypK+gV9KjOlcM+Uii
         19TOVKMjEtyFisv8oKgQkupSCgvPBW1lqTlWHIpWd8bE3S0pEb6UfhLweWgNDqYJAjI/
         aquX5irubOve9rPG2wuoQ1KMMoTnd5RjGvWrAChDGWogMNkhrgviMBM6b9oX4/YFW0Qa
         XeOWfXRmmJ/ngJLsUhqOm9DKAxJbt+V9LwhusidhcNrpH6YVbiciHf05eG4OVghadb2l
         TK4NJfUK2O1bTVpjkIm2gXdz11GIOkxQfY1C6Ii45mLZm4jvqdydKzvDPA6YdrUOF2DJ
         KuLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=vHvPgyZXtdTUVL+2zbQ6BjAvak8aoLLPjJOxCcUCMJY=;
        b=n5+fJt8nNBnPsc+zFy9B165nXIWc/8h9kmYfztLCLKEuwcYQt8aIr7flqS/9/wpBeE
         /bhZmFAeSVXsOzBysamlQOe1AQPuQQL6QfyaOjRMURfIshGoFRj9mLRyj9oMcjU0i+sG
         7ENCV1qoBcwi8i10Lh4FZGvS2gJqNAhULWIrbKbSV3oYKikKMxd4nrGMl8gloo70C8kQ
         Pt9Ab5azHcjrZmGbYn7qnLUyrr94ol3mYndD/O8qVi3WE4BFeh6FZjyZxNa/AZyWvma/
         qTlUJtiNSBg8a0ey2UAcKF4FOC+OFaf0TWoqHXOFqC1a+oSyohzFJnVXCBAO15VuT4U9
         O6rA==
X-Gm-Message-State: ACrzQf0i9cg/ea2xCL+Rih3QllInv1rR4MPY0d/A4+mdw1MgeECVKhCH
        z+sRd2XQEiUay4BH6hobY1rlgA==
X-Google-Smtp-Source: AMsMyM4G+pLlHNhdvu/xC2xd5y7LgDyvtb3M56ZdAIFnfNAXsKeC/1SiLaT/H07cg39aGjnLLLD9Ow==
X-Received: by 2002:a5d:6da2:0:b0:228:64cb:5333 with SMTP id u2-20020a5d6da2000000b0022864cb5333mr15543049wrs.428.1663746663752;
        Wed, 21 Sep 2022 00:51:03 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8ce3:ff4e:ae9b:55f3? ([2a01:e0a:982:cbb0:8ce3:ff4e:ae9b:55f3])
        by smtp.gmail.com with ESMTPSA id f2-20020a5d6642000000b0022ac61ebb14sm1786885wrw.22.2022.09.21.00.51.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:51:03 -0700 (PDT)
Message-ID: <36adf055-d963-1034-919a-97f3eeff02ef@linaro.org>
Date:   Wed, 21 Sep 2022 09:51:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Add the reset reg for lpass
 audiocc on SC7280
Content-Language: en-US
To:     Satya Priya <quic_c_skakit@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@kernel.org>
Cc:     mka@chromium.org, Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_tdas@quicinc.com, linux-clk@vger.kernel.org
References: <1663674495-25748-1-git-send-email-quic_c_skakit@quicinc.com>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <1663674495-25748-1-git-send-email-quic_c_skakit@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 13:48, Satya Priya wrote:
> Add the reset register offset for clock gating.
> 
> Fixes: 9499240d15f2 ("arm64: dts: qcom: sc7280: Add lpasscore & lpassaudio clock controllers")
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 8d807b7..353c137 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2295,7 +2295,8 @@
>   
>   		lpass_audiocc: clock-controller@3300000 {
>   			compatible = "qcom,sc7280-lpassaudiocc";
> -			reg = <0 0x03300000 0 0x30000>;
> +			reg = <0 0x03300000 0 0x30000>,
> +			      <0 0x032a9000 0 0x1000>;
>   			clocks = <&rpmhcc RPMH_CXO_CLK>,
>   			       <&lpass_aon LPASS_AON_CC_MAIN_RCG_CLK_SRC>;
>   			clock-names = "bi_tcxo", "lpass_aon_cc_main_rcg_clk_src";

Checked against the already merged bindings change adding the reset reg (be9439df2353).

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
