Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF8256921DB
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 16:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232623AbjBJPTO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 10:19:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232323AbjBJPTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 10:19:13 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18FB47404E
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:19:12 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id qw12so16792057ejc.2
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 07:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KMOuSrFwNSQJToHyKbXZ5i5g/s5Gsc1rzby/p9WcP1U=;
        b=KnWqk0u1nE2SN7HnvxefE8FjJKe2I12SdPUp2NYouv2yTJDhli06JVLt8/kzYR10d7
         S085Jq0KlYAkm+Ttp+xtuIUKHKWkYiEDW3yvs3Pfuk6P3IVdW1CHj0QYGFqwtdVA/qgd
         fck05sqdeFRnjl+IeDOp9xYCJM08DH5d6FgPKJUyyIe8TXeJ+vz8lGGIf6tjdvE0kCEw
         9+WyxdRaHQtMssmgATegD7hLSDTdCmWEUETC3reoR3ZrFw6J35dp0z2Zo0HrY5hFLJe4
         5zBiW59D36ci7uP1YMuh/RK1ezUDnsoxsbJQka6aVIjqBRSlbDHyA6QVnblU+uYjRNqc
         3iZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KMOuSrFwNSQJToHyKbXZ5i5g/s5Gsc1rzby/p9WcP1U=;
        b=r1dZAJWfgl1kbmGVT8NSGZb6yFC+gxY9Xf8JxV85pUcpWoaGlYIzugao6b+d4cvljq
         yABEzxxacyJNgOhYZlpWvh7owABOa8thqssUy5tuTOEepY/KfMFgBe1Xj/Y1H9GnusjY
         TOyGUYGFPry1RrC/guSZu1J6zR+NxPD6yZip2zpbstRf3W9/FRrKf6Mgq5GsWhinACqO
         6k4uSHQKYkEGA36Y90z651j/gN4mUX+7c+EVECkdtkSQquLSw8buiftauRzqblTI3H88
         x98jsP/GgTWgCIzqDY4UxrrOHPyjWyoPiW5io918kmD94JfuGTJBH3pq2DJyiAs8j9AG
         KmBQ==
X-Gm-Message-State: AO0yUKUIog1rQXzjpCmPz0vUSiyL12iytS68RBRO6DizM3olzWxWOVxK
        1Opnl4ToqgDVHY2iOaBVB3pgDw==
X-Google-Smtp-Source: AK7set+rjlQgPokRWh3kjiNIpg6kLzEU9l19ISqEBfDaxKgt2SmuxPZRxDT7zisDwbi5/EpuDsO7iQ==
X-Received: by 2002:a17:907:a45:b0:8af:1a8c:f13f with SMTP id be5-20020a1709070a4500b008af1a8cf13fmr12172031ejc.71.1676042350721;
        Fri, 10 Feb 2023 07:19:10 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id ch9-20020a170906c2c900b0088dc98e4510sm2504428ejb.112.2023.02.10.07.19.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 07:19:10 -0800 (PST)
Message-ID: <68078baa-5fca-9a28-604f-81313ba286cf@linaro.org>
Date:   Fri, 10 Feb 2023 16:19:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 05/11] arm64: dts: qcom: sm8350: add port subnodes in
 dwc3 node
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230130-topic-sm8450-upstream-pmic-glink-v2-0-71fea256474f@linaro.org>
 <20230130-topic-sm8450-upstream-pmic-glink-v2-5-71fea256474f@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v2-5-71fea256474f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10.02.2023 16:02, Neil Armstrong wrote:
> Add ports subnodes in dwc3 node to avoid repeating the
> same description in each board DT.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 0a422637b61f..3f4631e06187 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -2727,6 +2727,25 @@ usb_1_dwc3: usb@a600000 {
>  				snps,dis_enblslpm_quirk;
>  				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
>  				phy-names = "usb2-phy", "usb3-phy";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_dwc3_ss: endpoint {
> +						};
> +					};
> +				};
>  			};
>  		};
>  
> 
