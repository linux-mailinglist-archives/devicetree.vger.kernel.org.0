Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A5ED5E9596
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 21:00:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232925AbiIYTAG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 15:00:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbiIYTAF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 15:00:05 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADCD18E1E
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 12:00:02 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id br15-20020a056830390f00b0061c9d73b8bdso3242001otb.6
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 12:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kali.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=mzMhROLxf+WaccHSzDfGVv0qOJyuzTRDH4FxujffiSw=;
        b=buBXjaypg8d2m5kTlrDDnoXKhyG9WYxeRHGgN3/uAzcTwY01kYhPyRCy8a/K0HY+Pi
         3PG5jH8dDHv36BV+kVAofFBb7RzmvkmG9Kz9E8Z7B5df7tkE9VoLpONa6V8lg15oepNc
         aeusETyYgf0p06VAFC2c7QfxySLw0nt8LLT08+rKyPm2gA2z7EHveeRrnQWeNIdnPPjs
         PirIUgHaHTXUFVPEdaYPr0kEOLfv2kPwFOjD+9ujt6Ea34KyFRiQB6NiKvbehEsehCDs
         Fte53eMRT9r8Gaf4RiQU7neSJ+V2w8QuP7Nj+nvrA5iKEqr0qAXJ9JkTYkS2EGonUbKp
         mwfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=mzMhROLxf+WaccHSzDfGVv0qOJyuzTRDH4FxujffiSw=;
        b=gx0rA+cNOEWZiMXyu5EcDhYNvdgBkRRYKPm3qa77uvwo/112fn4CnO9IN28yicd55K
         m+K/ESeu3Cy0aBvLMJQPdjhgDesLur0PpK5gR1FXrnkkFwC6rLp3l96DyIQBj77Xk3mG
         r2jTLRpsqojA62I+TYisT6jSzo7gX9PoghLb5lz4+B0Aa3tk8rK8g2wngzCicoP2zKOL
         AvoMe4AXcFedkewsZDFMijZ10uYh6LuNk7YjF8bxovcUR2sgteFC9+gnU/ACoevHJWTZ
         zopUIQnWPf2h6ytntHY05b9wa3g+JRLzGxdn7KR9n0fUiAsK8AQTynvDpmyyeiL6KAA5
         NxPw==
X-Gm-Message-State: ACrzQf3fJZSUHha+kHqHlXai7/zxQrLmQq9FCEs8fPqq4eEQ1TJlwKUr
        ePIhxgliarcTeGK+aFzNSeja4Q==
X-Google-Smtp-Source: AMsMyM7uavezll4kcgYxy0EtKqXPcx09063LOwTeKRkyZkDHv9oU5Y63E+3CJuQyu08noJJXhPPk4w==
X-Received: by 2002:a9d:30d1:0:b0:654:1288:7cb2 with SMTP id r17-20020a9d30d1000000b0065412887cb2mr8515467otg.43.1664132401718;
        Sun, 25 Sep 2022 12:00:01 -0700 (PDT)
Received: from [192.168.11.16] (cpe-173-173-107-246.satx.res.rr.com. [173.173.107.246])
        by smtp.gmail.com with ESMTPSA id e5-20020a056870c0c500b001275f056133sm7843619oad.51.2022.09.25.12.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 12:00:01 -0700 (PDT)
Message-ID: <82da45fc-f673-a7a0-5c55-fe8a0a1a6142@kali.org>
Date:   Sun, 25 Sep 2022 13:59:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.0
Subject: Re: [PATCH 8/9] arm64: dts: qcom: sdm845: change DSI PHY node name to
 generic one
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20220924090108.166934-1-dmitry.baryshkov@linaro.org>
 <20220924090108.166934-9-dmitry.baryshkov@linaro.org>
From:   Steev Klimaszewski <steev@kali.org>
In-Reply-To: <20220924090108.166934-9-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 9/24/22 4:01 AM, Dmitry Baryshkov wrote:
> Change DSI PHY node names from custom 'dsi-phy' to the generic 'phy'.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index f0e286715d1b..df6427ba2284 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -4537,7 +4537,7 @@ dsi0_out: endpoint {
>   				};
>   			};
>   
> -			dsi0_phy: dsi-phy@ae94400 {
> +			dsi0_phy: phy@ae94400 {
>   				compatible = "qcom,dsi-phy-10nm";
>   				reg = <0 0x0ae94400 0 0x200>,
>   				      <0 0x0ae94600 0 0x280>,
> @@ -4609,7 +4609,7 @@ dsi1_out: endpoint {
>   				};
>   			};
>   
> -			dsi1_phy: dsi-phy@ae96400 {
> +			dsi1_phy: phy@ae96400 {
>   				compatible = "qcom,dsi-phy-10nm";
>   				reg = <0 0x0ae96400 0 0x200>,
>   				      <0 0x0ae96600 0 0x280>,

Tested on Lenovo Yoga C630

Tested-by: Steev Klimaszewski <steev@kali.org>

