Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98FE9717C3F
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 11:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234094AbjEaJmr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 05:42:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235608AbjEaJmj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 05:42:39 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86222E2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:42:37 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f4c264f6c6so6572700e87.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685526156; x=1688118156;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uRXUSNqugmt1DxICq6vTlYhWNy/3sixeVgzKtxI9suY=;
        b=X+BrRLiUrObzW0nBasG+2wuJAh4K8HI0dKxpA7cUnQYLwei96kpSjbfl1W0AFdnH+D
         TLS5zZrie+1+HN9A4X+O+VopB/KXqqqGG41w3G+DJhggwjds3LAa/uYriOMgvjZIH5ud
         qiApZjc5ERTiJMnWZBDPH/ksdpoGIyEQpUs+qdUNIKAb+YC6pO7z2MQAN0M8Wl2fGdb3
         4RqsPqvVUZd8ZIUAHYcHqro6GyFLa6kjmXiqk3qGGQMa2KJ6OFk7ZDvrQlQjHDiHwtFe
         Qv0c28A4b45vYw8PZIdw05yCS6kds2DT+sWOqK8s7uD4xDbH5pzPFDEcXyOkXlq/CkBF
         zUzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685526156; x=1688118156;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uRXUSNqugmt1DxICq6vTlYhWNy/3sixeVgzKtxI9suY=;
        b=b8doGiTjWWTVB8g8SIoAwwxgt2LmUAuSacpcKMXxbAdjqb6Px5zx2OOYYTCpDmKzyC
         lczp8r5oE7g2eEBVXkxxgLsUyzUUQZUw/O0JjZyiXmhVx1f/jg+9DLW+vP4YCakqO9pf
         3wkcoWHRmocV7dRDQRRg9XuM+XrHnKlYqxqHFIvOFQuv8oApPC2oGdE3+P8/weeTTufb
         nTJSf/+13jrwKkgw81V5kF/wm1q6ZZ8dAZPd1kqMPe7i5QkPvKEa1LKFTIPXbdqVh+It
         pBtbsZYkNBTO8Api99+sCWqJdguMn4cvHc2JNVVPWyIFX7hxw14gDdHsVurog4gQGp9C
         reUA==
X-Gm-Message-State: AC+VfDwj731EyElkwug8msAKz7Amyv8oeEtUfaEOLvX0pJk9qZgJVF4z
        /+yq8zriZ0h08wGwDh7RUiqvfw==
X-Google-Smtp-Source: ACHHUZ68R0/erNkMZHMipeA+iwl+mX/6phS5Q20zkEScCO/LuWwDgmt2GIzHsbUcQxqSYgHhYleu7Q==
X-Received: by 2002:a19:a40b:0:b0:4f4:b783:8556 with SMTP id q11-20020a19a40b000000b004f4b7838556mr1901689lfc.66.1685526155918;
        Wed, 31 May 2023 02:42:35 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id w10-20020ac2598a000000b004f392625952sm653381lfn.26.2023.05.31.02.42.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 02:42:35 -0700 (PDT)
Message-ID: <1958b027-a470-8fde-0b9b-89cc8a7b5bc5@linaro.org>
Date:   Wed, 31 May 2023 11:42:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 08/14] arm64: dts: qcom: sc7280: rename labels for DSI
 nodes
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
 <20230531011623.3808538-9-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230531011623.3808538-9-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31.05.2023 03:16, Dmitry Baryshkov wrote:
> Currently in board files MDSS and DSI nodes stay apart, because labels
> for DSI nodes do not have the mdss_ prefix. It was found that grouping
> all display-related notes is more useful.
> 
> To keep all display-related nodes close in the board files, change DSI
> node labels from dsi_* to mdss_dsi_*.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 1aa3c6bf81f0..2f5e73da8b6d 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3888,7 +3888,7 @@ ports {
>  					port@0 {
>  						reg = <0>;
>  						dpu_intf1_out: endpoint {
> -							remote-endpoint = <&dsi0_in>;
> +							remote-endpoint = <&mdss_dsi0_in>;
>  						};
>  					};
>  
> @@ -3973,14 +3973,14 @@ ports {
>  
>  					port@0 {
>  						reg = <0>;
> -						dsi0_in: endpoint {
> +						mdss_dsi0_in: endpoint {
>  							remote-endpoint = <&dpu_intf1_out>;
>  						};
>  					};
>  
>  					port@1 {
>  						reg = <1>;
> -						dsi0_out: endpoint {
> +						mdss_dsi0_out: endpoint {
>  						};
>  					};
>  				};
