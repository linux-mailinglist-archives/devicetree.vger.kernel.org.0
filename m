Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61AF06ABD88
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 11:58:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbjCFK6u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 05:58:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230214AbjCFK6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 05:58:47 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A3125B94
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 02:58:37 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id b13so9161205ljf.6
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 02:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678100315;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I3pjkmMoZ27Dc9foueF0QzL2waTL9ua00SC+WTwKhLg=;
        b=pW/VmBdqwx4Vh10AIhs25jx/O4e/Se7idcQ7ZbA/ndAVOEyFmNm5gx8I00yk/pC+yo
         nx223T7rIdzuPgXbo36qcRI8zCgyp/i54mJhS3jwteyqV39pZ4VmdGAHSpfJ7/p9IWDj
         I15S5aFTIBgiqQKcAoxiCrBRpvrUqqwZXTX+/uMGhJFfix4cD34vKC5yMLs2DTW6d/UN
         kTw3XGmj9OC5S+cVCSAkbmcwa6CknZosWn/eUqLujOi2VPShvLXCzdqDCuhzdY5ttnMz
         +l0z/saGnvhLuNndtqy+hOsTiyqYllqeEs3Y6YGRc/ouixtxcNMrspz3cacnmZz0RGlL
         756A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678100315;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3pjkmMoZ27Dc9foueF0QzL2waTL9ua00SC+WTwKhLg=;
        b=WdSWEyAujwhQehhL5RcyDl91mY+SCYYNtbvUJ6X6gqBDXRlUcTRZGz3fo7yKA3RKOI
         pT3CXaX3q1CD05K/JkkEgF3XcHKi79PjNsVK3EcPIQMk+eleLx71WC3XcYNidvcmwk/2
         EXI0oLsvALF+/VY9ksu22+ndod+AFszc93RB+8plXrfhbIvaIYJuIP33EizCM/QAG03D
         ToO5nAE0y2SdNvOlfZBoNZy9UjHatRa8gpzWOH0VAC4uo9la9qqJs/jnaZJO9NQWu92U
         x0XVDQkUw2lJLYAzBOxkyfXR7dtoaJMd47ENUXzmdf61ust02z86c+bfS44JNEZxyobf
         /JKQ==
X-Gm-Message-State: AO0yUKVAlNqnCQqTlz+UFMZekKmM8YfNHOf3WBndOEE/+rxYi/TWyyoK
        4Y/gVy4RXez/HKhqMDCOv9bQzw==
X-Google-Smtp-Source: AK7set+fkiYsMxxNaDimyyvpcYT6bXafU/R7sDGgsK4OpuRWrwYQvFP0EY9fYtoyr8B74MEYHzyYLQ==
X-Received: by 2002:a2e:a594:0:b0:295:c1f7:dc4d with SMTP id m20-20020a2ea594000000b00295c1f7dc4dmr3858461ljp.40.1678100315695;
        Mon, 06 Mar 2023 02:58:35 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id v15-20020ac2592f000000b004e7a0f67490sm1488730lfi.110.2023.03.06.02.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 02:58:35 -0800 (PST)
Message-ID: <c30b34cf-5d32-ea91-a2ca-c9ce72aa116e@linaro.org>
Date:   Mon, 6 Mar 2023 11:58:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 08/11] arm64: dts: qcom: msm8953: drop clocks from RPMPD
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
 <20230305125954.209559-8-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230305125954.209559-8-krzysztof.kozlowski@linaro.org>
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



On 5.03.2023 13:59, Krzysztof Kozlowski wrote:
> The RPM power domain controller does not take XO clock as input
> (according to bindings and Linux driver):
> 
>   msm8953-xiaomi-vince.dtb: rpm-requests: power-controller: 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8953.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> index 4e362b9012bd..da00c2f04cda 100644
> --- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
> @@ -281,9 +281,6 @@ rpmpd: power-controller {
>  					#power-domain-cells = <1>;
>  					operating-points-v2 = <&rpmpd_opp_table>;
>  
> -					clocks = <&xo_board>;
> -					clock-names = "ref";
> -
>  					rpmpd_opp_table: opp-table {
>  						compatible = "operating-points-v2";
>  
