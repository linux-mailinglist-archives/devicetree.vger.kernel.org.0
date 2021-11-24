Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 374AF45CB95
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 18:57:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350065AbhKXSAm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 13:00:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350057AbhKXSAm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 13:00:42 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC03C06173E
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 09:57:31 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id o6-20020a17090a0a0600b001a64b9a11aeso3419899pjo.3
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 09:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Pw0JKTN0GSsLtiYFBeZZp+1RoDxA59KVirOS1u9rqHE=;
        b=M2ESdLuBYPdPhCmt48tygApbQ5jWq/pdE5EzOfjz1WvbyrxTJ4jpIs437UnjZ4TUam
         eD+4dZN3QPRgw4QyubmMb0IcEVvlN0tSRduzhOpyBsZmo0SBZTsbrIqhE72pNwJ7lwNa
         rA7eTpmS5WBNgED2jVxGq5tHflwKNnjOShXgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Pw0JKTN0GSsLtiYFBeZZp+1RoDxA59KVirOS1u9rqHE=;
        b=Z/K0PvGdxstZnqDmlGsq8ClFUBpbiF/DiA3EDwNMZrIrwTsEcikcMHUkW1HsX4g8Lz
         d5f6sWIhhP1Pu40gZbEK4/8BnjTsnsFqKvLrWK1aAMSJzfzNTkUBdIqVKl3xLeYhbKQJ
         /SLrXgFrkeBxAGCsCjZ7Jsbb90wlsWfM+OJqG9zlvSaXXWe5L8yxTJujUzsUL91n6FkH
         o2hpfFV1/EQfwVEkuy60kZdHSZ8cTTPHtAND4UEcOAHyv7iJ10s5Jfhq5ru8i+NBuXZ+
         BlKt2qiftGuRxjixhSWlApZuMj4a8tR2LixvPC3Pgoei9rH96w+9WHXqWVmxvK0pNBl5
         5shA==
X-Gm-Message-State: AOAM532b1mTg+XZ4qu4OIrHPmSr9fn7OvMi6D39LEq3zejEtKl5h1jSo
        +c8QQnJs/xesR8DQkDl2vPimy2M47cqFuw==
X-Google-Smtp-Source: ABdhPJy8hyBkU5o6asraA7eq2NgUATesBqffAe/dLKEnbuDHckCZJqQ7V0VhrqXQoTQhvemiPfVD2g==
X-Received: by 2002:a17:902:a717:b0:142:76bc:da69 with SMTP id w23-20020a170902a71700b0014276bcda69mr21202878plq.12.1637776651380;
        Wed, 24 Nov 2021 09:57:31 -0800 (PST)
Received: from localhost ([2620:15c:202:201:d8d8:79a:9375:eb49])
        by smtp.gmail.com with UTF8SMTPSA id nn4sm328505pjb.38.2021.11.24.09.57.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Nov 2021 09:57:30 -0800 (PST)
Date:   Wed, 24 Nov 2021 09:57:29 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Manikanta Pubbisetty <quic_mpubbise@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Add WCN6750 WiFi node
Message-ID: <YZ59CYVwrMtb7ser@google.com>
References: <1637732438-17016-1-git-send-email-quic_mpubbise@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1637732438-17016-1-git-send-email-quic_mpubbise@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 24, 2021 at 11:10:38AM +0530, Manikanta Pubbisetty wrote:
> Adding DTS node for WCN6750 WiFi chipset.
> 
> Signed-off-by: Manikanta Pubbisetty <quic_mpubbise@quicinc.com>
> ---
> Depends on:
> - https://patchwork.kernel.org/project/linux-arm-msm/patch/1637299488-22336-1-git-send-email-pillair@codeaurora.org/
> - https://patchwork.kernel.org/project/linux-wireless/patch/1637693434-15462-20-git-send-email-quic_mpubbise@quicinc.com/
> 
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi |  7 +++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi     | 47 ++++++++++++++++++++++++++++++++
>  2 files changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index d623d71..ee152b9 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -598,3 +598,10 @@
>  		bias-pull-up;
>  	};
>  };
> +
> +&wifi {
> +	status = "okay";
> +	wifi-firmware {
> +		iommus = <&apps_smmu 0x1C02 0x1>;

nit: the convention in this file seems to be to use lowercase characters
in hex numbers

> +	};
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 1969e8dfb..eb7106f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -83,6 +83,11 @@
>  		#size-cells = <2>;
>  		ranges;
>  
> +		wlan_ce_mem: memory@4cd000 {
> +			no-map;
> +			reg = <0x0 0x4cd000 0x0 0x1000>;
> +		};
> +
>  		hyp_mem: memory@80000000 {
>  			reg = <0x0 0x80000000 0x0 0x600000>;
>  			no-map;
> @@ -1579,6 +1584,48 @@
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		wifi: wifi@17a10040 {
> +			compatible = "qcom,wcn6750-wifi";
> +			reg = <0 0x17A10040 0 0x0>;


ditto

> +			reg-names = "msi_addr";
> +			iommus = <&apps_smmu 0x1C00 0x1>;

ditto
