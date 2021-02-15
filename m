Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0446231BF56
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 17:31:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231793AbhBOQaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 11:30:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232449AbhBOQ2p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 11:28:45 -0500
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF099C0617AB
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 08:28:03 -0800 (PST)
Received: by mail-qk1-x72f.google.com with SMTP id q85so6837843qke.8
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 08:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aHVGjnALiPOPuXgV6m+MnfzuhBOeAsUFyy/oek+FHJo=;
        b=ZvC8pnKKDKcOXwEdfbjC06uVi29fZeu3OMd/DmkmWkDrKXDYGWSGTDKcwsCnItAZHu
         ewLFBJAUzoQW/ts4Qg0D1sVtlHNOhnhxZ9J3PXD0ujy/RLt3+PILSPC1Vnj6pzb+KjcH
         xQrhCE8SYnQowxzg1VOG08/bxj+8dYfOf1CfpU786ZsZut26DSgZgdiYu/+gvIN2kdxx
         wWvC9JlpyQpF5bgyGnXbMgTwSvX8ns0pIiX2aL+Zxkc+UZrF/NmHycbLCNPmE6AZwvZI
         pTVwSfs9eeVNTVa0MttiMZOrk1GCtQ33/I21EWBHiHHnAb7CcGQVc3ckN0WO7BaXmaEr
         f9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aHVGjnALiPOPuXgV6m+MnfzuhBOeAsUFyy/oek+FHJo=;
        b=JtmBtDYGPz50nIFVU+DgDrmUuw9elq9W0x3lEcisfOxTUN9fK704wq+j9ouu7H5Zti
         arDNSu3uY7GHTvtxfGeFhod0rsHM97x4Jht1Lns8e00jPJFDAxacCDebdIEAXXfJ/mQr
         5Ytm+J4j3MPeK6q33T9S+2IyoMPB2ad1HOvV622bY74eoftL13R5DLKKRK+pCaNP3vcW
         UbXzq4J44EBwmHaY6H1U+mFKghqrIQwOI+dKVZL5+Y8Fz/GIlTMLXyRu+GGZAteYIBZQ
         NA60pcFDzA21p09zyhk8xgSz5bAID3M7PRzGNSmmZkYTDcx9Nb4NjdT3opGrtd7hieee
         Q/IQ==
X-Gm-Message-State: AOAM531iIr7EdoTaZjqbSX1wVgQhKrTn0ABbHHw50Z1f6Fr+wVzA/jbL
        2hgIcDdnQQtQ2wSLN5n4/jqqpg==
X-Google-Smtp-Source: ABdhPJzMS67fLAlNCW6fQIRfEaMEyptuQBJjy1DW374IA0mimUFgrA0sIJYoLtOjoxK0tCBV1kHFUQ==
X-Received: by 2002:a05:620a:557:: with SMTP id o23mr727395qko.28.1613406482967;
        Mon, 15 Feb 2021 08:28:02 -0800 (PST)
Received: from [192.168.0.189] (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id i23sm11319717qtq.42.2021.02.15.08.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 08:28:02 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8250: fix display nodes
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20210211181002.22922-1-jonathan@marek.ca>
 <20210211181002.22922-3-jonathan@marek.ca>
 <CAA8EJprpkvRG79PXkEYUkK1rcyrXFtS39yyquucooiXaxuP_HQ@mail.gmail.com>
From:   Jonathan Marek <jonathan@marek.ca>
Message-ID: <30a1b3ab-0876-a134-2fbe-073a8e8f60c5@marek.ca>
Date:   Mon, 15 Feb 2021 11:27:14 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAA8EJprpkvRG79PXkEYUkK1rcyrXFtS39yyquucooiXaxuP_HQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/11/21 3:05 PM, Dmitry Baryshkov wrote:
> On Thu, 11 Feb 2021 at 21:11, Jonathan Marek <jonathan@marek.ca> wrote:
>>
>> Apply these fixes to the newly added sm8250 display ndoes
>>   - Use sm8250 compatibles instead of sdm845 compatibles
>>   - Remove "notused" interconnect (which apparently was blindly copied from
>>     my old patches)
>>   - Use dispcc node example from dt-bindings, removing clocks which aren't
>>     documented or used by the driver and fixing the region size.
>>
>> Note: also removed the mmcx-supply for dispcc which wasn't documented when
>> it was added. I would have left it there but it is also breaking my
>> use-case (setting a lower power level than what the bootloader sets?).
> 
> In our use case dispcc does not work w/o mmcx-supply. Compare this
> with the downstream kernel, which actively uses MMCX domain.
> 

I sent a v2/v3 leaving the mmcx-supply untouched (I can fix my problem 
by using rpmhpd_opp_nom in the mmcx-supply instead, so its not a problem 
with adding it to dispcc). But mmcx-supply still needs to be added to 
documentation.

>> Fixes: 7c1dffd471b1 ("arm64: dts: qcom: sm8250.dtsi: add display system nodes")
>> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8250.dtsi | 34 ++++++++--------------------
>>   1 file changed, 9 insertions(+), 25 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> index 947e1accae3a..20a3ff30e924 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
>> @@ -2323,14 +2323,13 @@ usb_2_dwc3: dwc3@a800000 {
>>                  };
>>
>>                  mdss: mdss@ae00000 {
>> -                       compatible = "qcom,sdm845-mdss";
>> +                       compatible = "qcom,sm8250-mdss";
>>                          reg = <0 0x0ae00000 0 0x1000>;
>>                          reg-names = "mdss";
>>
>> -                       interconnects = <&gem_noc MASTER_AMPSS_M0 &config_noc SLAVE_DISPLAY_CFG>,
>> -                                       <&mmss_noc MASTER_MDP_PORT0 &mc_virt SLAVE_EBI_CH0>,
>> +                       interconnects = <&mmss_noc MASTER_MDP_PORT0 &mc_virt SLAVE_EBI_CH0>,
>>                                          <&mmss_noc MASTER_MDP_PORT1 &mc_virt SLAVE_EBI_CH0>;
>> -                       interconnect-names = "notused", "mdp0-mem", "mdp1-mem";
>> +                       interconnect-names = "mdp0-mem", "mdp1-mem";
>>
>>                          power-domains = <&dispcc MDSS_GDSC>;
>>
>> @@ -2356,7 +2355,7 @@ mdss: mdss@ae00000 {
>>                          ranges;
>>
>>                          mdss_mdp: mdp@ae01000 {
>> -                               compatible = "qcom,sdm845-dpu";
>> +                               compatible = "qcom,sm8250-dpu";
>>                                  reg = <0 0x0ae01000 0 0x8f000>,
>>                                        <0 0x0aeb0000 0 0x2008>;
>>                                  reg-names = "mdp", "vbif";
>> @@ -2580,36 +2579,21 @@ opp-358000000 {
>>
>>                  dispcc: clock-controller@af00000 {
>>                          compatible = "qcom,sm8250-dispcc";
>> -                       reg = <0 0x0af00000 0 0x20000>;
>> -                       mmcx-supply = <&mmcx_reg>;
>> +                       reg = <0 0x0af00000 0 0x10000>;
>>                          clocks = <&rpmhcc RPMH_CXO_CLK>,
>>                                   <&dsi0_phy 0>,
>>                                   <&dsi0_phy 1>,
>>                                   <&dsi1_phy 0>,
>>                                   <&dsi1_phy 1>,
>> -                                <0>,
>> -                                <0>,
>> -                                <0>,
>> -                                <0>,
>> -                                <0>,
>> -                                <0>,
>> -                                <0>,
>> -                                <0>,
>> -                                <&sleep_clk>;
>> +                                <&dp_phy 0>,
>> +                                <&dp_phy 1>;
> 
> There is no dp_phy on sm8250 yet.
> 
>>                          clock-names = "bi_tcxo",
>>                                        "dsi0_phy_pll_out_byteclk",
>>                                        "dsi0_phy_pll_out_dsiclk",
>>                                        "dsi1_phy_pll_out_byteclk",
>>                                        "dsi1_phy_pll_out_dsiclk",
>> -                                     "dp_link_clk_divsel_ten",
>> -                                     "dp_vco_divided_clk_src_mux",
>> -                                     "dptx1_phy_pll_link_clk",
>> -                                     "dptx1_phy_pll_vco_div_clk",
>> -                                     "dptx2_phy_pll_link_clk",
>> -                                     "dptx2_phy_pll_vco_div_clk",
>> -                                     "edp_phy_pll_link_clk",
>> -                                     "edp_phy_pll_vco_div_clk",
>> -                                     "sleep_clk";
>> +                                     "dp_phy_pll_link_clk",
>> +                                     "dp_phy_pll_vco_div_clk";
>>                          #clock-cells = <1>;
>>                          #reset-cells = <1>;
>>                          #power-domain-cells = <1>;
> 
> 
> 
