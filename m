Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFC2273F6CC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 10:18:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229965AbjF0ISi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 04:18:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231536AbjF0ISd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 04:18:33 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF5A81BEF
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 01:18:30 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-307d58b3efbso3719233f8f.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 01:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687853909; x=1690445909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K34bnht8Jd/JQKi4h2jRXCe+XjDeThvGgw8NweExUwo=;
        b=ADdCRT4uh00j/gCdklmQQ3rkf+FzUuaTsVP444BwN8a1liUkGHsfc4KEL7Xa5Lamfw
         W5oDABx9betLr6EvHDtvDhsHVuElup3vYjQtc4EYiyiwZ7Jo/jnybaAjkYeA7fqGGYS7
         Jdtsc88+sPn2pKyi8pf/1L56brslROr5GniLgjRtbakjlft/SSIh8Bd1/YTfjrrqonUt
         WrHzYGtz4UqbCMRxBDj4NrB3xblxGcyOZvbcGWiA7XzMvGdcZ/HFsovYBZReUvISPecv
         3UlkFTJvyc3+UMf4DscY3vz64ogcAiOUXTpozvhiCM4jSgpGJjjJSXSlVC7cg2gDTxsf
         zZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687853909; x=1690445909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K34bnht8Jd/JQKi4h2jRXCe+XjDeThvGgw8NweExUwo=;
        b=hLdJvXPHQqAVdNvgwvA7Aq5ZwA6qG3+fRgvtbmBeK51IVBorgQpiFo77KK5b/MPO1C
         bWCAgcuWzKs6BHSiAnZXzb25UOpUtuZ8fWFzSQwjPcYzavTkjZI5srHfNB5sVrThDAnV
         vqhDboIaDO7NKfE50ED1y/gbkCeh4XafpjJ1qd19wRKCX47IFK90BdaC9suNvzHB8fbP
         h7a0zVwDJiB3gZysbH6AMvuJC14pFuMbYeL0Tu0/kGBtWUcF/YJroMwLItfIaSufnFtU
         xctgLCwCxfGng+JFWPi1gIDX2aqdgZ9khquyWH/9mcFmCpNWEx2LoAevac4i2TmzFzqT
         aXMQ==
X-Gm-Message-State: AC+VfDxNjFuyNcoE6bIb+pBtegyI2i24UX6+4rLNBhnU9/UapQSdNdrT
        Vtku+HrIPBr1HBnVsg+4GNh7zw==
X-Google-Smtp-Source: ACHHUZ4PSkTq5b7DNXq0w2I0MupcdIteZzfGaCe9jZeOcNFisiPB6rDLfRYEiVPSH2kr7xZ7nLN5Ug==
X-Received: by 2002:adf:e8c1:0:b0:30f:bcf3:9a30 with SMTP id k1-20020adfe8c1000000b0030fbcf39a30mr11073445wrn.17.1687853909440;
        Tue, 27 Jun 2023 01:18:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u14-20020adfed4e000000b00313f100c2aasm5294396wro.21.2023.06.27.01.18.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 01:18:28 -0700 (PDT)
Message-ID: <a68e6008-68b2-093c-45b9-6c7d1f1c5bf9@linaro.org>
Date:   Tue, 27 Jun 2023 10:18:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sm8550: add UART14 nodes
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <bgodavar@codeaurora.org>,
        Rocky Liao <rjliao@codeaurora.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230620-topic-sm8550-upstream-bt-v2-0-98b0043d31a4@linaro.org>
 <20230620-topic-sm8550-upstream-bt-v2-4-98b0043d31a4@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230620-topic-sm8550-upstream-bt-v2-4-98b0043d31a4@linaro.org>
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

On 27/06/2023 10:15, Neil Armstrong wrote:
> Add the Geni High Speed UART QUP instance 2 element 6
> node and associated default pinctrl.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 75cd374943eb..252e3863322c 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -1053,6 +1053,20 @@ spi13: spi@894000 {
>  				status = "disabled";
>  			};
>  
> +			uart14: uart@898000 {

The node name should be "serial" (dtbs_check will complain)


Best regards,
Krzysztof

