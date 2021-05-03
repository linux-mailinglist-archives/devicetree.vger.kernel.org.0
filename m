Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91575371A1B
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 18:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231536AbhECQiv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 12:38:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231787AbhECQhx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 12:37:53 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05C73C06134E
        for <devicetree@vger.kernel.org>; Mon,  3 May 2021 09:36:07 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id y30so4017259pgl.7
        for <devicetree@vger.kernel.org>; Mon, 03 May 2021 09:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hoFXqCDljrfPhl8OhWKYJabFe89kk859lQwWFfRV5jk=;
        b=J3mqNlu08uQn6JHtmGGJHnbH8eZlpqF1kBLHF5cwjptJynYRHpCNuVXFXQBX0QTf1j
         5ylil1BnEQo8BGqUzCtCVzxq0A+wQ/xGaJ/+oz0FAyFi38mySvPu+3T1c/TeVLTwchcM
         kSQdt0sznP4JQ3vzgKnBO9hwsXzt8xrUwzVrA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hoFXqCDljrfPhl8OhWKYJabFe89kk859lQwWFfRV5jk=;
        b=sSE6p/cYC+34jsBTT/kKTSm6k3BZQaQfjhyGxhE2/mrvF4i3cszlXQAVnAbfrQHshU
         n6Xq/uSlKvB9jPzd++HNmsCcU/I/fQtdBmMq7tn0TBbypezBBtCSSyQXwpN7PUj/TDC3
         mD6qc3TSUnekx+DLhYTcDNdahBksBMB2M+d2BIpQhkCDie5Whb8iSGx/v//At2KGATDk
         CfMdNl9+DKbgZeFs34+ix9jPyNRIzJczXFNQhIqOow0jojw05alohvtp7oPFguYIZzGb
         +67kpvPFx1sRqb97DHcNMT01KyL8yu9TY30/Cj4kV7H/0xiULT4n90nYjiFy5F9H0+tE
         bF7w==
X-Gm-Message-State: AOAM530/rknbi/oMspCN640MY2AkSDcLQ+vZimvJUtVXT02MS3IcEmJq
        whw9s6LpMfGb0ErbtxajX80OeQ==
X-Google-Smtp-Source: ABdhPJz+6dpRIGYp+Fw0tZpohAELYLQRBoCCWBf3dIvf4VKQmprsU/2G9hHoAVG9ZDRHCcH9eNAwog==
X-Received: by 2002:a65:6a08:: with SMTP id m8mr19082771pgu.146.1620059766601;
        Mon, 03 May 2021 09:36:06 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:8584:3fd:2adf:a655])
        by smtp.gmail.com with UTF8SMTPSA id n20sm10038260pjq.45.2021.05.03.09.36.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 09:36:06 -0700 (PDT)
Date:   Mon, 3 May 2021 09:36:04 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     bjorn.andersson@linaro.org, viresh.kumar@linaro.org,
        swboyd@chromium.org, agross@kernel.org, robh+dt@kernel.org,
        rjw@rjwysocki.net, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, dianders@chromium.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Add cpu OPP tables
Message-ID: <YJAmdIHYl0DKsKyq@google.com>
References: <1619792901-32701-1-git-send-email-sibis@codeaurora.org>
 <1619792901-32701-3-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1619792901-32701-3-git-send-email-sibis@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 30, 2021 at 07:58:21PM +0530, Sibi Sankar wrote:
> Add OPP tables required to scale DDR/L3 per freq-domain on SC7280 SoCs.
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 135 +++++++++++++++++++++++++++++++++++
>  1 file changed, 135 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 0bb835aeae33..90220cecb368 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -7,6 +7,7 @@
>  
>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/interconnect/qcom,osm-l3.h>
>  #include <dt-bindings/interconnect/qcom,sc7280.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/mailbox/qcom-ipcc.h>
> @@ -71,6 +72,9 @@
>  					   &LITTLE_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_0>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;

This patch seems to depend on the 'Add SC7280 interconnect provider
driver' series (https://patchwork.kernel.org/project/linux-arm-msm/list/?series=473747)
and 'Add L3 provider support for SC7280' (https://patchwork.kernel.org/project/linux-arm-msm/list/?series=468285),
none of them has landed yet. The dependencies should be mentioned in the
commit notes (under '---').

>  			qcom,freq-domain = <&cpufreq_hw 0>;
>  			L2_0: l2-cache {
>  				compatible = "cache";
> @@ -90,6 +94,9 @@
>  					   &LITTLE_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_100>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
>  			qcom,freq-domain = <&cpufreq_hw 0>;
>  			L2_100: l2-cache {
>  				compatible = "cache";
> @@ -106,6 +113,9 @@
>  					   &LITTLE_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_200>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
>  			qcom,freq-domain = <&cpufreq_hw 0>;
>  			L2_200: l2-cache {
>  				compatible = "cache";
> @@ -122,6 +132,9 @@
>  					   &LITTLE_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_300>;
> +			operating-points-v2 = <&cpu0_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
>  			qcom,freq-domain = <&cpufreq_hw 0>;
>  			L2_300: l2-cache {
>  				compatible = "cache";
> @@ -138,6 +151,9 @@
>  					   &BIG_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_400>;
> +			operating-points-v2 = <&cpu4_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
>  			qcom,freq-domain = <&cpufreq_hw 1>;
>  			L2_400: l2-cache {
>  				compatible = "cache";
> @@ -154,6 +170,9 @@
>  					   &BIG_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_500>;
> +			operating-points-v2 = <&cpu4_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
>  			qcom,freq-domain = <&cpufreq_hw 1>;
>  			L2_500: l2-cache {
>  				compatible = "cache";
> @@ -170,6 +189,9 @@
>  					   &BIG_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_600>;
> +			operating-points-v2 = <&cpu4_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
>  			qcom,freq-domain = <&cpufreq_hw 1>;
>  			L2_600: l2-cache {
>  				compatible = "cache";
> @@ -186,6 +208,9 @@
>  					   &BIG_CPU_SLEEP_1
>  					   &CLUSTER_SLEEP_0>;
>  			next-level-cache = <&L2_700>;
> +			operating-points-v2 = <&cpu4_opp_table>;
> +			interconnects = <&gem_noc MASTER_APPSS_PROC 3 &mc_virt SLAVE_EBI1 3>,
> +					<&epss_l3 MASTER_EPSS_L3_APPS &epss_l3 SLAVE_EPSS_L3_SHARED>;
>  			qcom,freq-domain = <&cpufreq_hw 2>;
>  			L2_700: l2-cache {
>  				compatible = "cache";
> @@ -248,6 +273,116 @@
>  		};
>  	};
>  
> +	cpu0_opp_table: cpu0_opp_table {

the node name should use dashes as separators instead of underscores, i.e.
it should be 'cpu0-opp-table'.

> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		cpu0_opp1: opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-peak-kBps = <800000 9600000>;
> +		};
> +
> +		cpu0_opp2: opp-691200000 {
> +			opp-hz = /bits/ 64 <691200000>;
> +			opp-peak-kBps = <800000 17817600>;
> +		};
> +
> +		cpu0_opp3: opp-806400000 {
> +			opp-hz = /bits/ 64 <806400000>;
> +			opp-peak-kBps = <800000 20889600>;
> +		};
> +
> +		cpu0_opp4: opp-940800000 {
> +			opp-hz = /bits/ 64 <940800000>;
> +			opp-peak-kBps = <1804000 24576000>;
> +		};
> +
> +		cpu0_opp5: opp-1152000000 {
> +			opp-hz = /bits/ 64 <1152000000>;
> +			opp-peak-kBps = <2188000 27033600>;
> +		};
> +
> +		cpu0_opp6: opp-1324800000 {
> +			opp-hz = /bits/ 64 <1324800000>;
> +			opp-peak-kBps = <2188000 33792000>;
> +		};
> +
> +		cpu0_opp7: opp-1516800000 {
> +			opp-hz = /bits/ 64 <1516800000>;
> +			opp-peak-kBps = <3072000 38092800>;
> +		};
> +
> +		cpu0_opp8: opp-1651200000 {
> +			opp-hz = /bits/ 64 <1651200000>;
> +			opp-peak-kBps = <3072000 41779200>;
> +		};
> +
> +		cpu0_opp9: opp-1804800000 {
> +			opp-hz = /bits/ 64 <1804800000>;
> +			opp-peak-kBps = <4068000 48537600>;
> +		};
> +
> +		cpu0_opp10: opp-1958400000 {
> +			opp-hz = /bits/ 64 <1958400000>;
> +			opp-peak-kBps = <4068000 48537600>;
> +		};
> +	};
> +
> +	cpu4_opp_table: cpu4_opp_table {

node name should be 'cpu4-opp-table'

> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		cpu4_opp1: opp-691200000 {
> +			opp-hz = /bits/ 64 <691200000>;
> +			opp-peak-kBps = <1804000 9600000>;
> +		};
> +
> +		cpu4_opp2: opp-940800000 {
> +			opp-hz = /bits/ 64 <940800000>;
> +			opp-peak-kBps = <2188000 17817600>;
> +		};
> +
> +		cpu4_opp3: opp-1228800000 {
> +			opp-hz = /bits/ 64 <1228800000>;
> +			opp-peak-kBps = <4068000 24576000>;
> +		};
> +
> +		cpu4_opp4: opp-1344000000 {
> +			opp-hz = /bits/ 64 <1344000000>;
> +			opp-peak-kBps = <4068000 24576000>;
> +		};
> +
> +		cpu4_opp5: opp-1516800000 {
> +			opp-hz = /bits/ 64 <1516800000>;
> +			opp-peak-kBps = <4068000 24576000>;
> +		};
> +
> +		cpu4_opp6: opp-1651200000 {
> +			opp-hz = /bits/ 64 <1651200000>;
> +			opp-peak-kBps = <6220000 38092800>;
> +		};
> +
> +		cpu4_opp7: opp-1900800000 {
> +			opp-hz = /bits/ 64 <1900800000>;
> +			opp-peak-kBps = <6220000 44851200>;
> +		};
> +
> +		cpu4_opp8: opp-2054400000 {
> +			opp-hz = /bits/ 64 <2054400000>;
> +			opp-peak-kBps = <6220000 44851200>;
> +		};
> +
> +		cpu4_opp9: opp-2131200000 {
> +			opp-hz = /bits/ 64 <2131200000>;
> +			opp-peak-kBps = <6220000 44851200>;
> +		};
> +
> +		cpu4_opp10: opp-2400000000 {
> +			opp-hz = /bits/ 64 <2400000000>;
> +			opp-peak-kBps = <6832000 48537600>;
> +		};
> +	};
> +
>  	memory@80000000 {
>  		device_type = "memory";
>  		/* We expect the bootloader to fill in the size */
