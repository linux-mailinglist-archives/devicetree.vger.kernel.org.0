Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BACA5F3364
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:23:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbiJCQXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:23:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbiJCQXC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:23:02 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4832D1EAE5
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:23:00 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id r6so17520858wru.8
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=4anMk2zFWJH7QLU4xBORDN6i1gytZOwCsCqwYhS9aIU=;
        b=u0B4lFbGoQ49aUIUkyxsm25arvh2BefYm9en6LtuydivCVNkCs06c6a4OWm9461BoI
         jMRMQ5CRdGAcrZ66mezdXqOC6PVqKqZl24UMoPHXPtrXJGCZ0Al7HlSzwPTxupHnPqda
         SfsbrxHdIpybg+3R7OHcDvGYNoqkqtb9vJmaBRCIhXpnEHmsTaAeXJ+M09xE1F47zTdh
         j9SUgGzrWtiFrDFmeat9Nh2NugYzkBOIFoDj/FVQyb0+79igbrH95z+KokRyH/xxlJSV
         qwnOA3ZxY2kQbXB+/Kq+b3wcBg/06idFQn3OK10zGGWjMaPDuApDr7TwyWbaZ6f9gwIA
         fhpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=4anMk2zFWJH7QLU4xBORDN6i1gytZOwCsCqwYhS9aIU=;
        b=ldtEwyGucVSNpWKlVVLgyHGsg5vHfvLrIhTuZ1YaLyDPMyK9GVSJPgjCCDg2fTMUXP
         7MMcOeZs8fsP7mLSUc0v5iwLWFjF0yGTjhL0bFybWTIkLsSpGhTlkyYt3yN4I5IB1TtQ
         VNf28tcr0dC5eqtKXil3mxx9fVepfUVWGTRiWoc1NHhPWmeNYdXQiiC68Vec/sfkk3mQ
         gLzSe8v3kfBrX603ztUkLwICFPNYX3PhgDxvU6MpP4xm+1V4TwJQZkcPiklc1CchAFw+
         625BPSeVMWXkeBAtHKU1eaJPixz8IrIuqvVzkSzF6UK97DNmY3FtulEk1siWx0A5BMjb
         wZbA==
X-Gm-Message-State: ACrzQf1jdcuL6SFmtUgCYdY6Tv84LxBgSb0BbjBL/CtVloEhOFjJtcmQ
        nj2Jpgcr8Az8wDUKUw0Mkv/8PLyI7JcbSrZP
X-Google-Smtp-Source: AMsMyM4K1alY0fXspBPTinpuO3hlcEn2Y+YlJqp51yzjHKOjY7CqUcDCYI9ZKr7CZggOuqwgWe/4Ww==
X-Received: by 2002:adf:e608:0:b0:22e:42ff:2fe with SMTP id p8-20020adfe608000000b0022e42ff02femr2214686wrm.161.1664814178827;
        Mon, 03 Oct 2022 09:22:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id j6-20020a05600c190600b003a5f3f5883dsm18736572wmq.17.2022.10.03.09.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:22:58 -0700 (PDT)
Message-ID: <0755cbfb-8c2e-94d7-93fe-1bcb8df79969@linaro.org>
Date:   Mon, 3 Oct 2022 18:22:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 13/23] ARM: dts: qcom: apq8064: drop unit ids from PMIC
 nodes
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-14-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-14-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> On APQ8064 the PMICs are connected using SSBI devices, which do not have
> any addressing scheme. Drop the unused unit ids from PMIC device nodes.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-apq8064.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
> index 34d3fce17351..6a8f3fd0fcc3 100644
> --- a/arch/arm/boot/dts/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
> @@ -672,7 +672,7 @@ ssbi@c00000 {
>   			reg = <0x00c00000 0x1000>;
>   			qcom,controller-type = "pmic-arbiter";
>   
> -			pm8821: pmic@1 {
> +			pm8821: pmic {
>   				compatible = "qcom,pm8821";
>   				interrupt-parent = <&tlmm_pinmux>;
>   				interrupts = <76 IRQ_TYPE_LEVEL_LOW>;
> @@ -698,7 +698,7 @@ qcom,ssbi@500000 {
>   			reg = <0x00500000 0x1000>;
>   			qcom,controller-type = "pmic-arbiter";
>   
> -			pmicintc: pmic@0 {
> +			pmicintc: pmic {
>   				compatible = "qcom,pm8921";
>   				interrupt-parent = <&tlmm_pinmux>;
>   				interrupts = <74 8>;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
