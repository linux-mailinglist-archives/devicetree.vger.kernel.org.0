Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8531D324484
	for <lists+devicetree@lfdr.de>; Wed, 24 Feb 2021 20:21:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236101AbhBXTSX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Feb 2021 14:18:23 -0500
Received: from m-r2.th.seeweb.it ([5.144.164.171]:46123 "EHLO
        m-r2.th.seeweb.it" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236100AbhBXTSW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Feb 2021 14:18:22 -0500
Received: from [192.168.1.101] (abab236.neoplus.adsl.tpnet.pl [83.6.165.236])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id EB5213F5E4;
        Wed, 24 Feb 2021 20:17:37 +0100 (CET)
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sc7280: Add RPMh regulators for
 sc7280-idp
To:     satya priya <skakit@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, rnayak@codeaurora.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, kgunda@codeaurora.org
References: <1614155592-14060-1-git-send-email-skakit@codeaurora.org>
 <1614155592-14060-8-git-send-email-skakit@codeaurora.org>
From:   Konrad Dybcio <konrad.dybcio@somainline.org>
Message-ID: <f640503a-d87a-6ecd-7acf-73be47402d92@somainline.org>
Date:   Wed, 24 Feb 2021 20:17:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <1614155592-14060-8-git-send-email-skakit@codeaurora.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,


> +	};
> +
> +	pm8350c-regulators {
> +	compatible = "qcom,pm8350c-rpmh-regulators";
> +	qcom,pmic-id = "c";
> +		vreg_s1c_2p2: smps1 {
> +			regulator-min-microvolt = <2190000>;


The indentation on "compatible" and "qcom,pmic-id" is off.


Konrad

