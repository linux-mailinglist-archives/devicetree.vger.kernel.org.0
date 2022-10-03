Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 375765F3328
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:14:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbiJCQOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:14:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbiJCQOo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:14:44 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFAAD255
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:14:40 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id b7so9867154wrq.9
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=JrcK9l+HEe7+wVIIpVF+9MX+xhmi89UpADUo8EX0B10=;
        b=npVJzwQn+n2vuPeRs6Qh6ECYWmM9WjWMeGPxtnH7nHvaA/OzQI5UAh/ki5AI9Ie1AO
         K8fHYhrAbToX/wPRYgogXNnD3c3kItVX8iODVsOHfPXb3slWb8w1NcsvR8Q/8m2F9w6z
         qwJApddf01sTE9ljJcd9cj1/d333Y292ZorULZ+ovlbq7vPf7JsueBV+ZGUbQhifmYdO
         dPAKATbnt+beeQaBOYDHKt9J8LlSrvT9t29SNfwAM3yd1Md/BHikJThXwp4PAhfdETTc
         KxYnzFRU5O65oNgths4NcrxaKRMwpGnkKROTORJ6W7VRwprFSFAVWhLO+o/skHlc8eMt
         425Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=JrcK9l+HEe7+wVIIpVF+9MX+xhmi89UpADUo8EX0B10=;
        b=7Wb3rNkXNemydGVl7iKnkKLUt4wm03nTbWMbFeyvWcwgc+qxtLh79yQCKX5WFgUyAB
         GZ9JofRhwrsf8yiZSXSYmpWI5VarIW9sWP2v4AAg6e3esYnXg4cW4nUQVZwO/8y80sJx
         DRFSKsLt8/vkJdlftE75NvofoIa+nRGcmTiFbyN1w+QRH5TWi4x3bD6BAUlbzsKNFmD+
         88J0vnMM153ctjcd2ydBbEcZAMJhk6Dp5dD1jRrYWQyJ8XStAVpxmuq5422bQc9Xu9hI
         urfj22vSiYv2I3PstamtjAr97vjo3cqQ/MMWHD6xqp81E3nxPcV/7CqcJWgHRZkbHZ/d
         bnlA==
X-Gm-Message-State: ACrzQf399q5vnFbjqaxCfc1oLd1KFFm7SQjalZRZAxL2f7LEs/dATzg4
        8rXfqGknvfUSRsQG7+qP7yGDTQ==
X-Google-Smtp-Source: AMsMyM5qO9885PODchKZak3HwK+rbhTiJ+ZwDxYW18K/OoIzC3JY1Ms5AsBHlSYAVw2/5gqrHRADDA==
X-Received: by 2002:a05:6000:912:b0:229:9bc1:27ed with SMTP id bz18-20020a056000091200b002299bc127edmr13161520wrb.546.1664813679241;
        Mon, 03 Oct 2022 09:14:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id j19-20020a05600c1c1300b003a5ca627333sm18615699wms.8.2022.10.03.09.14.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:14:38 -0700 (PDT)
Message-ID: <81fe6b70-ba8e-bf6e-2f82-804bd164f69b@linaro.org>
Date:   Mon, 3 Oct 2022 18:14:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 01/23] ARM: dts: qcom: apq8064: disable HDMI nodes by
 default
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-2-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> Disable HDMI nodes. Individual board can enable them if required. The
> only APQ8064 board that has working HDMI output is IFC6410, which
> enables these devices explicitly.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-apq8064.dtsi | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
> index 942aa2278355..829e197579b9 100644
> --- a/arch/arm/boot/dts/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
> @@ -1470,6 +1470,8 @@ hdmi: hdmi-tx@4a00000 {
>   
>   			phys = <&hdmi_phy>;
>   
> +			status = "disabled";
> +
>   			ports {
>   				#address-cells = <1>;
>   				#size-cells = <0>;
> @@ -1498,6 +1500,8 @@ hdmi_phy: hdmi-phy@4a00400 {
>   			clocks = <&mmcc HDMI_S_AHB_CLK>;
>   			clock-names = "slave_iface";
>   			#phy-cells = <0>;
> +
> +			status = "disabled";
>   		};
>   
>   		mdp: mdp@5100000 {

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
