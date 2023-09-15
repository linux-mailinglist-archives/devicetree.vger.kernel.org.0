Return-Path: <devicetree+bounces-586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BECB7A207B
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 16:07:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C8C61C20F12
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4155110A3A;
	Fri, 15 Sep 2023 14:06:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342BE10A01
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 14:06:56 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACAF11FC9
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:06:54 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-402d499580dso23621155e9.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694786813; x=1695391613; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yl/JazegorBAq3D3QeTIaZj/pCc3gy7siDATi6rK1hQ=;
        b=MUvlKSdeqa169iu7XPWykJF/dV+4IyvsxTgMGvI4mHRtwBHUh4yd3G8OIEmG+PWy75
         hyGKXw+NS3SrZX7Iu+H02RssQcVLrSUswv8wFZKC/HytFZ1i1r818E0IVoiQZ1bSbN7r
         4ncWYviA8URqzaiGDWSHNl0ewf+iqtnMXJgBGhaRdDO0O3kbh5opjcUsdy24o1y/ZjQP
         Zsw3cTFzEQXoGCqz37/hqXlKZxTBLSuKre3/aSe+ysQt+NOVCCQAwtVWtzaEKnS3kkpZ
         oiaR5Rc0DUHJ9A8H0h014F3CtUKn3ZXY+xnzwT/jjGE32heTtrh5v3vVguKzTp5tHMFS
         667Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694786813; x=1695391613;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yl/JazegorBAq3D3QeTIaZj/pCc3gy7siDATi6rK1hQ=;
        b=ptEvJcn5eTea+Gft5JTGC/1i7EKSuImJ20yO5W2uaiz0ob2CG+vFZFdWFdTrimV4zb
         B7+iGHMtxS429ga52O05c7YKPOtit40s1Vp3ipgCymw/9csdWHqVTFPSsu4EIRpQGj9/
         jNq6l+XSMD3HGi4f3uuvmI4tzWRQJIsyeEIPg9B392h0KkLZZ46unOzJ/pxjF+wP1NYb
         xmJ4PQXCxuXdOl8sMGIJL/Lb6VGTC9Bm6DtDc4w6MlNKWJQTY0hWO5FZSilCL5HFjR9i
         GQI1+D/d/1HRJ4FMkOThms5wlp9/UGI8RcTweHHWQdY5qusImuZn/Vf7PbjF/MPMbviJ
         4mPQ==
X-Gm-Message-State: AOJu0YwOJ04v2CKDxqgrO0k5GqAaNckKYBRHDVVEq5db+UeEkXBr8Mbk
	8JacaiwJBQrDYAS+QoTfyzAjLA==
X-Google-Smtp-Source: AGHT+IHnY4copxmNwbUNbT26v9WbBJm6W4Q2fqQzzZzG0SlMBPMvIw3e9q6cXROeoKqWieiTWKoKVw==
X-Received: by 2002:a7b:c38c:0:b0:400:f6f2:66b9 with SMTP id s12-20020a7bc38c000000b00400f6f266b9mr1762307wmj.12.1694786813037;
        Fri, 15 Sep 2023 07:06:53 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k21-20020a05600c0b5500b003fbe791a0e8sm4744254wmr.0.2023.09.15.07.06.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 07:06:52 -0700 (PDT)
Message-ID: <580b4c78-406c-46c3-b70b-a1d3e0f28b9c@linaro.org>
Date: Fri, 15 Sep 2023 15:06:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8916: Fix iommu local address range
Content-Language: en-US
To: Gaurav Kohli <quic_gkohli@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: linux-arm-msm@vger.kernel.org, kernel@quicinc.com,
 devicetree@vger.kernel.org
References: <20230915050611.30451-1-quic_gkohli@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230915050611.30451-1-quic_gkohli@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 06:06, Gaurav Kohli wrote:
> Fix the apps iommu local address space range as per data sheet.
> 
> Fixes: 327c0f5f2510 ("arm64: dts: qcom: msm8916: Sort nodes")
> Signed-off-by: Gaurav Kohli <quic_gkohli@quicinc.com>
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 33fb65d73104..3c934363368c 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -1813,7 +1813,7 @@
>   			#size-cells = <1>;
>   			#iommu-cells = <1>;
>   			compatible = "qcom,msm8916-iommu", "qcom,msm-iommu-v1";
> -			ranges = <0 0x01e20000 0x40000>;
> +			ranges = <0 0x01e20000 0x20000>;
>   			reg = <0x01ef0000 0x3000>;
>   			clocks = <&gcc GCC_SMMU_CFG_CLK>,
>   				 <&gcc GCC_APSS_TCU_CLK>;

from the @linaro.org address

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

