Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA347662346
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 11:39:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233302AbjAIKjM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 05:39:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233339AbjAIKjK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 05:39:10 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5907518B25
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 02:39:02 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id l26so5919715wme.5
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 02:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ci3zY6Yv3EZIXzBWjrkV2Fk9lPgwnZ7+X4TdQnkpQoc=;
        b=JDN1dR2xb6KGWi9FUAmZl8gcSxis+XX/Hr5Aej49kKgVMnDQGoFHhxzS+QNGDpxu1W
         DP4YVpOZFWnoV/pQLEePS1OJYfMqB8Rv8amFlZ26V2yMQ3K5MvoG1KY7tDuRi7E8DAmY
         0f/xEa8D1zenJ22oWa7jzBXfTIa7V8FTBpeVH+ChUHVrtSdBvN/dMBAYZKTH4eJQQXvC
         hGdpvAk6Bqh8MBIEuKi2wegXWXW9hYRj8IHL/OApeq8AUKblldsZKfL0Sb6VE4lFPzgc
         gexGhDG9OMxaWPp0NnxUMuCKVjDb4bWAaO0yIS7UPNV7PWHt1sFbl0KT1LjIm4j4bg/X
         w9cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ci3zY6Yv3EZIXzBWjrkV2Fk9lPgwnZ7+X4TdQnkpQoc=;
        b=7RJaPRr3QlifBuW6V+DARrU2mSSt0AbxDABoD6Jn1I5W1Ac3oonYzgtw/n9iO1ZsAA
         o7DqSdMynGWxpk+SHgY2F4ZlJJsup+gedIzP8h8wZtOXbtQjHmqwIUEoVeIthoduAbie
         oc4mwcnengId6T1Zw2Hx9u3frUN/H5q0b8CpISJIte5VC4jSED8ufqkmSECeYPQV8K4z
         JbKyCi1X02QVUurw1VO1HVciht2v2tX0G0EDorCiZbyUGs8HNY08W5UY9+9aBx+9CDKB
         EEX3yogoyYx8xMRIv5vgr8Nx2Br4tcbQXktearVlMcSE14e7wFbB4uBQPPwnsH5lELn9
         wgEA==
X-Gm-Message-State: AFqh2kpyog5ddSkxXYuJ4Sw2ZWjbymvYs3cEn3bs+p8cgjxHKkGFJa5F
        RpFwJOmhI7xLBOqgHLWaif1KxQ==
X-Google-Smtp-Source: AMrXdXsqbO+/iPXS6nWWXbJDiSzKzM9/wW0rYmLmkuC/N4ykRN/K+1QC1GFK05vglTCQdXh1iUEJEw==
X-Received: by 2002:a05:600c:4e4f:b0:3cf:9d32:db67 with SMTP id e15-20020a05600c4e4f00b003cf9d32db67mr45411457wmq.3.1673260740898;
        Mon, 09 Jan 2023 02:39:00 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id v8-20020a05600c444800b003c21ba7d7d6sm11502586wmn.44.2023.01.09.02.38.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 02:39:00 -0800 (PST)
Message-ID: <5caddeb2-bcea-43fc-ee00-7813f1d8a75f@linaro.org>
Date:   Mon, 9 Jan 2023 11:38:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] arm64: dts: qcom: sdm845: make DP node follow the schema
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230109041728.308725-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230109041728.308725-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/01/2023 05:17, Dmitry Baryshkov wrote:
> Drop the #clock-cells (leftover probably from the times before the DP
> PHY split) and rename dp-opp-table to just opp-table.
> 
> Fixes: eaac4e55a6f4 ("arm64: dts: qcom: sdm845: add displayport node")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 9e881e19b984..fa62479206ce 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -4593,7 +4593,6 @@ mdss_dp: displayport-controller@ae90000 {
>  					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
>  				clock-names = "core_iface", "core_aux", "ctrl_link",
>  					      "ctrl_link_iface", "stream_pixel";
> -				#clock-cells = <1>;
>  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
>  						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
>  				assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
> @@ -4619,7 +4618,7 @@ port@1 {
>  					};
>  				};
>  
> -				dp_opp_table: dp-opp-table {
> +				dp_opp_table: opp-table {

Already done:
https://patchwork.kernel.org/project/linux-arm-msm/patch/20221225115844.55126-2-krzysztof.kozlowski@linaro.org/

Please rebase on top of my changes or just drop this part.

Best regards,
Krzysztof

