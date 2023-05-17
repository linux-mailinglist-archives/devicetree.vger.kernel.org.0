Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 456337061B9
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 09:52:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230002AbjEQHwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 03:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbjEQHwP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 03:52:15 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8162F3A9E
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 00:52:12 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50be17a1eceso742787a12.2
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 00:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684309931; x=1686901931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xywzcWMXJ6fVrOF3nPW/4PclWe2qi/smTN8YvoKAJA4=;
        b=vy0Jt/I5fwN4GLzB1zg7ceDB0CYpZf4by+TUQYDbTHA8u0/GXEkYvjcjaJAkIFCU5G
         JeZuXb883bGD9ANX0YCo27fk/+xDBhlrMM2VygYWmuJQQS1I0V1InPdAL0rmtmPDnBe7
         KR1K5fun6mO/82newmdgTHQbnO1bpPspnPpKAOzdDqJ3lgEgfy/U3cHisjUt6dRSuXku
         imYenkL8uiaUiYN09QBQL4lRXQGZAE+996E1s0B5txdxX+77EWcwj39mK5m5FftARYVn
         g2Qf4BlXO7NAh9IlbnqUUa+g3kbdj6rGmfPaPnOGVsNS6i5xjW4Izj4B/DqTpFiWVMn0
         3Lsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684309931; x=1686901931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xywzcWMXJ6fVrOF3nPW/4PclWe2qi/smTN8YvoKAJA4=;
        b=RpUQGywRj75rFW38IrDfAbCQnnEx0kHQF6TlGNNpQ7T1FnjSP+SVaM1umx9DE2vH7C
         mgO4imz+4AZkngSCUYMTiQe/k6q2nSFwBYdI3gan7nBvI/JKK2yMsvPd6nvNCy8l7irI
         yAlCelCVOXIEdDa1Vvkzrkgped9J0CBptjxBYn4/beU0JKsO+dXvyxhVc31riGz0dunH
         6wBDmqAAy3wdtn9f3r7lnpuWcSiufLfMheSYVNJhnvWAj0q0HnT4pgLqCzmsquNEGXqm
         Osei/vCoGXGNqQ+HGzIOvMG1XbzIGFle30KGmYrwqXfw8M/7irIXE/SvgcB9ZXUq+trr
         UhkA==
X-Gm-Message-State: AC+VfDz+fUZtfIOsXLLcEULxeOjwifT3Bzao3KqdG7rSH/mxcZVBsJkZ
        WwZL51QPpjeGuA9chIM1B+MYYA==
X-Google-Smtp-Source: ACHHUZ7wuMXS45xKhuRUuJBC/7RfJyX9rNIqjM63B2vqZoVIpwAg416CLYHXF+qDfY0XgR79CPmu2w==
X-Received: by 2002:aa7:d311:0:b0:50b:c689:8610 with SMTP id p17-20020aa7d311000000b0050bc6898610mr1394372edq.18.1684309930968;
        Wed, 17 May 2023 00:52:10 -0700 (PDT)
Received: from krzk-bin ([2a02:810d:15c0:828:c9ff:4c84:dd21:568d])
        by smtp.gmail.com with ESMTPSA id d11-20020a05640208cb00b0050bd4b8ca8fsm8917257edz.14.2023.05.17.00.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 00:52:10 -0700 (PDT)
Date:   Wed, 17 May 2023 09:52:08 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     devicetree@vger.kernel.org, "Borislav Petkov (AMD)" <bp@alien8.de>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Andy Gross <agross@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: cache: qcom,llcc: Fix SM8550 description
Message-ID: <20230517075208.hng4howl3khourl3@krzk-bin>
References: <20230517-topic-kailua-llcc-v1-0-d57bd860c43e@linaro.org>
 <20230517-topic-kailua-llcc-v1-1-d57bd860c43e@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230517-topic-kailua-llcc-v1-1-d57bd860c43e@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 17 May 2023 04:18:49 +0200, Konrad Dybcio wrote:
> SM8550 (LLCCv4.1) has 4 register regions, this was not described
> between its addition and the restructurization that happened in
> the commit referenced in the fixes tag.
> 
> Fix it.
> 
> Fixes: 43aa006e074c ("dt-bindings: arm: msm: Fix register regions used for LLCC banks")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  Documentation/devicetree/bindings/cache/qcom,llcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1782401


system-cache-controller@25000000: reg: [[0, 620756992, 0, 8388608], [0, 629145600, 0, 2097152]] is too short
	arch/arm64/boot/dts/qcom/sm8550-mtp.dtb
	arch/arm64/boot/dts/qcom/sm8550-qrd.dtb

system-cache-controller@25000000: reg-names:0: 'llcc0_base' was expected
	arch/arm64/boot/dts/qcom/sm8550-mtp.dtb
	arch/arm64/boot/dts/qcom/sm8550-qrd.dtb

system-cache-controller@25000000: reg-names:1: 'llcc1_base' was expected
	arch/arm64/boot/dts/qcom/sm8550-mtp.dtb
	arch/arm64/boot/dts/qcom/sm8550-qrd.dtb

system-cache-controller@25000000: reg-names: ['llcc_base', 'llcc_broadcast_base'] is too short
	arch/arm64/boot/dts/qcom/sm8550-mtp.dtb
	arch/arm64/boot/dts/qcom/sm8550-qrd.dtb
