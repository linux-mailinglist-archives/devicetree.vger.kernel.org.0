Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6F762BCB4
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:55:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232115AbiKPLy4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:54:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233504AbiKPLyE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:54:04 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F86DD50
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:46:11 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id i10so34759771ejg.6
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0eBVTWeH84v+XpSxLxukQqh/meT13H6ROUcI5WvlzWM=;
        b=AwA5VvKhDYIAJrszKL3VChSZcF5lkbiSr9fKG922TAFeLYox28w/QSnacEnE+QSGms
         sI5nRU6PJTo4Wz3Rci5cOsyRotXProZ4l3gx+SiDONp6Cq29L6un31qqILWlUwvVCSNN
         rtJQQ4FD+gjDaqGPWf4BIdX/fS1QFZ7NssA/MYkx6qvIJhoYqyU4B6w5CFq6V70rqt8V
         +QfgQZWrp/H8UDsgNCj/Xszb8OoCKUP6LxDqzjwbQvnYQRZ5ItDqQTpAgLAO7Oh48ia2
         4Kelj/y0k1COCwKfPG7qyxXQbvIrah1Tq/3toIi02hKdGfs3JY32GfDUJ+FvEvbaXxYa
         Xz7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0eBVTWeH84v+XpSxLxukQqh/meT13H6ROUcI5WvlzWM=;
        b=aiGuEpgC/tEpLPhYuuSs3w4xEGzL7LC0JhSh5h/fCxW56855xyYRNhLzMCMs+YeGDx
         i+W41dbIj92Gh6bOUwid8nwuYU8GYDU3xDlGM9gffJ7iI5rMnTVerxQQXHz1S4esl/go
         CGHFQCQTJ/OVgzVNILP+eun5BC45p6yc5FCnmO1e5y5iSLaKigyIi5KfZLBl4FNwG0rD
         jnU4zmYjYWr/zKPNBDAd7n51TQ9HZJKuctakKMF74JiswREotq0KrLkE6jk6c/eev/Z7
         oOcfwdctgCQy1RKkPMQJvgHB/HQE1auHrJlmP+Oc+cC+AiGlfvrQ7J6wNFDy97+vM03B
         Stpw==
X-Gm-Message-State: ANoB5pl5uTVxiUMm9cUsT5jdo7Ytfi58Yxr4Si+Yiy/uOqKXHPv6gnva
        sxNFyUUj7wVLbYQMSZMJF1wbyw==
X-Google-Smtp-Source: AA0mqf5t8QSiQLqsdgRbDEKgO+W08NoTBzLk2Jtct9htlIAcMEKVo/VHWBe6QwoKkpibsHP/3BNcLg==
X-Received: by 2002:a17:906:fcb1:b0:7ad:948f:11bb with SMTP id qw17-20020a170906fcb100b007ad948f11bbmr16966605ejb.354.1668599169673;
        Wed, 16 Nov 2022 03:46:09 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id g7-20020a056402320700b00463c475684csm7441719eda.73.2022.11.16.03.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:46:09 -0800 (PST)
Message-ID: <206bbb95-efe4-ad35-cb96-d48bfa3a2c27@linaro.org>
Date:   Wed, 16 Nov 2022 12:46:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8550: Add interconnect path to
 SCM node
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-0-379eec11d841@linaro.org>
 <20221115-topic-sm8550-upstream-dts-remoteproc-v1-1-379eec11d841@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-1-379eec11d841@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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



On 16/11/2022 11:43, Neil Armstrong wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> Add the interconnect path to SCM dts node.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index 07ba709ca35f..9e00778bb600 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -300,6 +300,7 @@ CLUSTER_SLEEP_1: cluster-sleep-1 {
>   	firmware {
>   		scm: scm {
>   			compatible = "qcom,scm-sm8550", "qcom,scm";
> +			interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;
>   		};
>   	};
>   
> 
