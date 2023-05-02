Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 062196F422B
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 13:01:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233846AbjEBLBa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 07:01:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233367AbjEBLB3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 07:01:29 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8D113C19
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 04:01:27 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2a8eb8db083so36159221fa.3
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 04:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683025286; x=1685617286;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3AHG7QyY7Uakdx6REQCYSG7RD4RaqzmrdD7vCsADEuw=;
        b=MR51foAq/zrcxaAEBdjLcZ5f/OhepH79/4rBiT9OxhDshbb8bYZT6RtQ4oE1X2ukBj
         /rsI1d3Wu/PMRo3crYuWoYmN3lDrx0E9e3/gtqUbwStUtxQsFPFghNGx7mrwN0YgDSI4
         FXbfycGAfA8ty93bUs6XRTJqjHKl0DADM5kteuj0rH0AB5XKTOz5p96GomAV0sCNHlAt
         dzQnsvp19Lr69C3AsXemwRV8YjesuyVbRtidpFDAiN3nzFJu8QfW10PDapR8MqMa5y7k
         6tiVW5C4P8tnkbdzhZ/IUQNaUihUWA6lqo1L+/9PcgkDDX/ZKBet1lg4j3PAHTBGqVzY
         fakQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683025286; x=1685617286;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3AHG7QyY7Uakdx6REQCYSG7RD4RaqzmrdD7vCsADEuw=;
        b=hx4Lcfu5q0r2+av/sK31Vx08R8Ql4zwPqMjxZPYw7oZAz+S1a1AxoHB48ZpoGyacm3
         cBl9BQq+cpQ70NNLM6r4A7mHrVLyA1a+SJQX6HoGiUOyEdZjFSqvk7iZcpye1Z1EUxaG
         helcXR3579OPZPhva5jveYj8P0mu5Bv16iCNEeNXZ0W9siT+TUnvH+rgxINmd4vTGj0Z
         GDRxrV5YJZgu8EtSRq9Vsqk51iyPbuA7heG9CJr22tx0I1Nxw87wITB2rWHdmB4wtjEB
         jB6da8z66b98S06HId8F+NZvO3qnvys+3i4E6ZPtQoWlVvFGlNrwZ0nWCtfUqy6XVolN
         vMYQ==
X-Gm-Message-State: AC+VfDzEQ3vaR9Pwf6XjnQuzdNp5qdrgnFWos51YbG0gUrbEoO2r9Fy/
        bL0FXWFLgRbr2f4ENg2zs7jkow==
X-Google-Smtp-Source: ACHHUZ4gCQgkWoSRtBReko1joJOgCQi75hy+YTkIVExaO1jeKusCQ4URppbt/NV8ey8OWNhUtEpd3Q==
X-Received: by 2002:a2e:7818:0:b0:2a8:baab:fb2e with SMTP id t24-20020a2e7818000000b002a8baabfb2emr4785110ljc.47.1683025285988;
        Tue, 02 May 2023 04:01:25 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id z17-20020a2e8e91000000b002a8a77f4d03sm5280365ljk.59.2023.05.02.04.01.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 04:01:25 -0700 (PDT)
Message-ID: <62f14bec-c293-7e62-50af-9d87be5853b7@linaro.org>
Date:   Tue, 2 May 2023 13:01:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v6 13/13] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM
 orientation-switch for usb_1_qmpphy
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, luca.weiss@fairphone.com,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
References: <20230501121111.1058190-1-bryan.odonoghue@linaro.org>
 <20230501121111.1058190-14-bryan.odonoghue@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230501121111.1058190-14-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1.05.2023 14:11, Bryan O'Donoghue wrote:
> Switch on USB orientation-switching for usb_1_qmp via TCPM. Detecting the
> orientation switch is required to get the PHY to reset and bring-up the PHY
> with the CC lines set to the appropriate lane.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> index b5cc45358a474..8935a8e327904 100644
> --- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
> @@ -1295,6 +1295,14 @@ &usb_1_qmpphy {
>  
>  	vdda-phy-supply = <&vreg_l9a_1p2>;
>  	vdda-pll-supply = <&vreg_l18a_0p92>;
> +	orientation-switch;
> +	ports {
> +		port@1 {
> +			qmpphy_typec_mux_in: endpoint {
You defined these ports in patch 6, you can simply reference the
labels and assign endpoints.

Konrad
> +				remote-endpoint = <&pm8150b_typec_mux_out>;
> +			};
> +		};
> +	};
>  };
>  
>  &usb_2 {
> @@ -1375,6 +1383,12 @@ pm8150b_role_switch_out: endpoint {
>  					remote-endpoint = <&dwc3_role_switch_in>;
>  				};
>  			};
> +			port@1 {
> +				reg = <1>;
> +				pm8150b_typec_mux_out: endpoint {
> +					remote-endpoint = <&qmpphy_typec_mux_in>;
> +				};
> +			};
>  		};
>  	};
>  };
