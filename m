Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E89FB4F6CD1
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 23:33:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229879AbiDFVez (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 17:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236077AbiDFVdh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 17:33:37 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7F42B0A6E
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 13:45:22 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id h23-20020a17090a051700b001c9c1dd3acbso3998832pjh.3
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 13:45:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jzM7G0Ll+2P5HH8PRGJaqO5+fn3hB56LAuMy1DOx49M=;
        b=N9PnCSfGUwGKms0Qcz+BGacD3rwbxS/4UjxVlDhBhxjbk7OL5JsXFr4vn99VqZiT5r
         jp3JSm7lUz5Awdj8MZ4U5QQ//19MB7nOINDcsQFPG/LNhn7VtHwTc3d3mDJN7VlO/244
         rXgn7TCfpctNkvRqd0D6b3voDcOqfCcKLg3SI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jzM7G0Ll+2P5HH8PRGJaqO5+fn3hB56LAuMy1DOx49M=;
        b=U9kkpnSiLgXDSyo0aqrmLwWewAcRiAmhEAJT7tIf/8ki0oWad2wCqfim3rz1qe8nUb
         yx2N+6L4L+05Q/I6peNh17zx4pBS6WhlrBNXN60vRhb3+LVt95Ih6fDsQfKmxv9JXoUU
         jUV/VBA5KYTuds5vP1tygXC995AzRwZKfTxoVsqSZIYSZ6oPjUZbek2JH39VVjYvNwk/
         EGQmzXVThPcWbd2/DVVnCAGQEAxG5OTIcqfshT3HxCw3D3e2eZuET1l0wxOKqz7z2DH1
         4at59Br3cznaqBPZmXdw/Ky6pVv0saW4qFfc0fbnsvxN0xCFGjb2hPwDr4e5obqPYdB4
         3hew==
X-Gm-Message-State: AOAM5313BsRwOgJvy7/MNhZiAc1N7iqLeSnNR4+Cf6nytJUKMgDUQVir
        bZB9n3QNqzz4Dc68za9c8mFZPw==
X-Google-Smtp-Source: ABdhPJyqvt2FhsTBMqhPGXX7hehPRTDHvClHKhMdYn3odThFMPD3wQEsm03ZhDDhgk5dynFD6f9Ovg==
X-Received: by 2002:a17:902:d4c8:b0:154:2416:2185 with SMTP id o8-20020a170902d4c800b0015424162185mr10319296plg.25.1649277921882;
        Wed, 06 Apr 2022 13:45:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:dddf:7cc7:1261:9584])
        by smtp.gmail.com with UTF8SMTPSA id a16-20020a17090a6d9000b001c9c3e2a177sm6414208pjk.27.2022.04.06.13.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 13:45:21 -0700 (PDT)
Date:   Wed, 6 Apr 2022 13:45:19 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohitkr@quicinc.com,
        srinivas.kandagatla@linaro.org, dianders@chromium.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: qcom: sc7280: Add dt nodes for sound
 card
Message-ID: <Yk3736Av338XoLH/@google.com>
References: <1649157220-29304-1-git-send-email-quic_srivasam@quicinc.com>
 <1649157220-29304-4-git-send-email-quic_srivasam@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1649157220-29304-4-git-send-email-quic_srivasam@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 05, 2022 at 04:43:40PM +0530, Srinivasa Rao Mandadapu wrote:
> Add dt nodes for sound card support, which is using WCD938x headset
> playback, capture, I2S speaker playback and DMICs via VA macro.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-crd.dts  |  8 +++
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 93 ++++++++++++++++++++++++++++++++
>  2 files changed, 101 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> index 224a82d..b1b968a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> @@ -90,6 +90,14 @@ ap_ts_pen_1v8: &i2c13 {
>  	us-euro-gpios = <&tlmm 81 GPIO_ACTIVE_HIGH>;
>  };
>  
> +&sound {
> +	audio-routing =
> +		"VA DMIC0", "MIC BIAS1",
> +		"VA DMIC1", "MIC BIAS1",
> +		"VA DMIC2", "MIC BIAS3",
> +		"VA DMIC3", "MIC BIAS3";
> +};
> +
>  &tlmm {
>  	tp_int_odl: tp-int-odl {
>  		pins = "gpio7";
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index e3d8cbf..45e1d82 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -84,6 +84,99 @@
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&nvme_pwren>;
>  	};
> +
> +	sound: sound {
> +		compatible = "google,sc7280-herobrine";
> +		model = "sc7280-wcd938x-max98360a-1mic";
> +
> +		audio-routing =
> +				"IN1_HPHL", "HPHL_OUT",
> +				"IN2_HPHR", "HPHR_OUT",
> +				"AMIC1", "MIC BIAS1",
> +				"AMIC2", "MIC BIAS2",
> +				"VA DMIC0", "MIC BIAS3",
> +				"VA DMIC1", "MIC BIAS3",
> +				"VA DMIC2", "MIC BIAS1",
> +				"VA DMIC3", "MIC BIAS1",
> +				"TX SWR_ADC0", "ADC1_OUTPUT",
> +				"TX SWR_ADC1", "ADC2_OUTPUT",
> +				"TX SWR_ADC2", "ADC3_OUTPUT",
> +				"TX SWR_DMIC0", "DMIC1_OUTPUT",
> +				"TX SWR_DMIC1", "DMIC2_OUTPUT",
> +				"TX SWR_DMIC2", "DMIC3_OUTPUT",
> +				"TX SWR_DMIC3", "DMIC4_OUTPUT",
> +				"TX SWR_DMIC4", "DMIC5_OUTPUT",
> +				"TX SWR_DMIC5", "DMIC6_OUTPUT",
> +				"TX SWR_DMIC6", "DMIC7_OUTPUT",
> +				"TX SWR_DMIC7", "DMIC8_OUTPUT";
> +
> +		qcom,msm-mbhc-hphl-swh = <1>;
> +		qcom,msm-mbhc-gnd-swh = <1>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		#sound-dai-cells = <0>;
> +
> +		dai-link@1 {
> +			link-name = "Secondary MI2S Playback";

The other link names provide information about the other end
of the link (DP, WCD, DMIC), while this one describes the SoC side.
Shouldn't this be "MAX98360A"? Not sure about the 'Playback' part,
it seems 'link-name' is used as stream name, judging from a few
samples of peeking into '/proc/asound/pcm' on different devices
it seems that 'Playback' or 'Capture' is ususally not part of the
stream name.

> +			reg = <MI2S_SECONDARY>;
> +			cpu {
> +				sound-dai = <&lpass_cpu MI2S_SECONDARY>;
> +			};
> +
> +			codec {
> +				sound-dai = <&max98360a>;
> +			};
> +		};
> +
> +		dai-link@5 {
> +			link-name = "DP Playback";

See comment above about 'Playback'. Just 'DP' is maybe a bit short, how
about 'DisplayPort'?

> +			reg = <LPASS_DP_RX>;
> +			cpu {
> +				sound-dai = <&lpass_cpu LPASS_DP_RX>;
> +			};
> +
> +			codec {
> +				sound-dai = <&mdss_dp>;
> +			};
> +		};
> +
> +		dai-link@6 {
> +			link-name = "WCD Playback";

Most instances I found spell out the codec name. It seems here we need
the 'Playback'/'Capture' info (or something else) to not end up with
duplicate link names. So my suggestion here would be "WCD9385 Playback".

> +			reg = <LPASS_CDC_DMA_RX0>;
> +			cpu {
> +				sound-dai = <&lpass_cpu LPASS_CDC_DMA_RX0>;
> +			};
> +
> +			codec {
> +				sound-dai = <&wcd938x 0>, <&swr0 0>, <&rxmacro 0>;
> +			};
> +		};
> +
> +		dai-link@19 {
> +			link-name = "WCD Capture";

"WCD9385 Capture"?

> +			reg = <LPASS_CDC_DMA_TX3>;
> +			cpu {
> +				sound-dai = <&lpass_cpu LPASS_CDC_DMA_TX3>;
> +			};
> +
> +			codec {
> +				sound-dai = <&wcd938x 1>, <&swr1 0>, <&txmacro 0>;
> +			};
> +		};
> +
> +		dai-link@25 {
> +			link-name = "DMIC Capture";


just "DMIC"?
