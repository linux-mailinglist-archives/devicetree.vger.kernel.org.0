Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 711F1640F41
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 21:44:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234826AbiLBUoo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 15:44:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiLBUon (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 15:44:43 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 158E4C727D
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 12:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1670013828;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=BYy2AEH/UJWovzmleuyKiwl6+f8pwlfU18MHyLeTIPk=;
        b=atX3ka+N9uhM1nvmkNhjgKY8CK9eMSZrTErF9YgyLqfhsa18X+MBdz0Rn33048sYP1qCI3
        JqR1uveFn3w8heiVXWLQa5Rvgq1PHVKyUO8cG6R3BoeqF1HsYyGGu9vl9sFBc95NevxSvt
        elZW/+OjkPejx6LkeK0ZMmYEkUyuJZA=
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com
 [209.85.161.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-563-hqCWv5wSOwqzAouLHIb07A-1; Fri, 02 Dec 2022 15:43:45 -0500
X-MC-Unique: hqCWv5wSOwqzAouLHIb07A-1
Received: by mail-oo1-f71.google.com with SMTP id f11-20020a4a920b000000b004a09a9f7095so554859ooh.10
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 12:43:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BYy2AEH/UJWovzmleuyKiwl6+f8pwlfU18MHyLeTIPk=;
        b=4EM/ghkdgbmLrVtdzdRuEofvQGvpkxLTpBGLpVtwLnku0zktqtgqhIku8rc+Ql2XTE
         1mIFnUIYx4Ws/jsJ71B+Xg08l2sKVGrgagRYhRY582F2SWeB+YbuyOUIqyBYeSvRVG4H
         +oBaUMFB/VLpRDKBnQcvEDTikO3m47Xe72Wqi9pl0HJFhmzxiOtfP2w9X6tyBcOfsJMA
         6C7UFRu7kefvH9QqS/3PZSzuIKGLUAE8t3lxGeao6kKZcqVaZid/qJAJnM2Q1gDb7z74
         4YHY8qGY4oG1ufjoeESLDt4EkWmrr0G0cOBx7jmLjjfM2hSFBr2TdhmdwIxTIrIChkhp
         2iTA==
X-Gm-Message-State: ANoB5pmRDKTJYpOlR5GP8u6N3UXtzFmOzFh5Yss2BkcJ+FAE3UYYVg/0
        F98EPZyEjOHBSHTvI9EXwcHP0ged+g78DfeMiExWrUBk403RCw0P9h8YMgCKHVB9WTR/mXe/9Bw
        p9JNy9KmfRdY8bFn4lP1erA==
X-Received: by 2002:a05:6871:4494:b0:142:6cb4:8b3a with SMTP id ne20-20020a056871449400b001426cb48b3amr31005765oab.190.1670013824460;
        Fri, 02 Dec 2022 12:43:44 -0800 (PST)
X-Google-Smtp-Source: AA0mqf46/RB62ctx1CL428U/rc6U3QSXWyRWLMSR8krqH2WWD5v5F3z2D/pAJqStFG424m6lXiw8uw==
X-Received: by 2002:a05:6871:4494:b0:142:6cb4:8b3a with SMTP id ne20-20020a056871449400b001426cb48b3amr31005757oab.190.1670013824218;
        Fri, 02 Dec 2022 12:43:44 -0800 (PST)
Received: from halaney-x13s ([2600:1700:1ff0:d0e0::41])
        by smtp.gmail.com with ESMTPSA id k23-20020a9d7617000000b00660fe564e12sm3810342otl.58.2022.12.02.12.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Dec 2022 12:43:43 -0800 (PST)
Date:   Fri, 2 Dec 2022 14:43:41 -0600
From:   Andrew Halaney <ahalaney@redhat.com>
To:     Brian Masney <bmasney@redhat.com>
Cc:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        agross@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_shazhuss@quicinc.com,
        psodagud@quicinc.com, echanude@redhat.com
Subject: Re: [PATCH v3] arm64: dts: qcom: sa8540p-ride: enable PCIe support
Message-ID: <20221202204341.f4cdocucp6jpgywf@halaney-x13s>
References: <20221202120918.2252647-1-bmasney@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221202120918.2252647-1-bmasney@redhat.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 02, 2022 at 07:09:18AM -0500, Brian Masney wrote:
> Add the vreg_l11a, pcie3a, pcie3a_phy, and tlmm nodes that are necessary
> in order to get PCIe working on the QDrive3.
> 
> This patch also increases the width of the ranges property for the PCIe
> switch that's found on this platform. Note that this change requires
> the latest trustzone (TZ) firmware that's available from Qualcomm as
> of November 2022. If this is used against a board with the older
> firmware, then the board will go into ramdump mode when PCIe is probed
> on startup.
> 
> The ranges property is overridden in this sa8540p-ride.dts file since
> this is what's used to describe the QDrive3 variant with dual SoCs.
> There's another variant of this board that only has a single SoC where
> this change is not applicable, and hence why this specific change was
> not done in sa8540p.dtsi.
> 
> These changes were derived from various patches that Qualcomm
> delivered to Red Hat in a downstream kernel.
> 
> Signed-off-by: Brian Masney <bmasney@redhat.com>

Tested-by: Andrew Halaney <ahalaney@redhat.com>

PCIe on the 2 sips on the qdrive3 (sa8540p-ride) I have seems to be
working with this patch applied, thanks!

> ---
> Changes since v2:
> - Dropped regulator-allow-set-load (Bjorn)
> - Updated first member of ranges property to match downstream:
>   s/0x32200000/0x40200000/ (Andrew)
> 
> Changes since v1:
> - Add -state and -pins suffixes to tlmm (Krzysztof)
> 
> This patch depends on the following series that hasn't made it's way
> into linux-next yet:
> 
> [PATCH v10 0/2] arm64: dts: qcom: add dts for sa8540p-ride board
> https://lore.kernel.org/lkml/20221118025158.16902-1-quic_ppareek@quicinc.com/
> 
> I can't find the specific TZ firmware version that we have so that's why
> I included the date instead.
> 
>  arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 53 +++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> index a5f87a8629d6..a638e3784543 100644
> --- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
> @@ -51,6 +51,13 @@ vreg_l7a: ldo7 {
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
> +		vreg_l11a: ldo11 {
> +			regulator-name = "vreg_l11a";
> +			regulator-min-microvolt = <880000>;
> +			regulator-max-microvolt = <880000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
>  		vreg_l13a: ldo13 {
>  			regulator-name = "vreg_l13a";
>  			regulator-min-microvolt = <3072000>;
> @@ -139,6 +146,27 @@ vreg_l8g: ldo8 {
>  	};
>  };
>  
> +&pcie3a {
> +	ranges = <0x01000000 0x0 0x40200000 0x0 0x40200000 0x0 0x100000>,
> +	         <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x20000000>,
> +	         <0x03000000 0x6 0x00000000 0x6 0x00000000 0x2 0x00000000>;
> +
> +	perst-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 56 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie3a_default>;
> +
> +	status = "okay";
> +};
> +
> +&pcie3a_phy {
> +	vdda-phy-supply = <&vreg_l11a>;
> +	vdda-pll-supply = <&vreg_l3a>;
> +
> +	status = "okay";
> +};
> +
>  &qup2 {
>  	status = "okay";
>  };
> @@ -158,6 +186,31 @@ &remoteproc_nsp1 {
>  	status = "okay";
>  };
>  
> +&tlmm {
> +	pcie3a_default: pcie3a-default-state {
> +		perst-pins {
> +			pins = "gpio151";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		clkreq-pins {
> +			pins = "gpio150";
> +			function = "pcie3a_clkreq";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio56";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
>  &ufs_mem_hc {
>  	reset-gpios = <&tlmm 228 GPIO_ACTIVE_LOW>;
>  
> -- 
> 2.38.1
> 

