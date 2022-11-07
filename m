Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FA6161F281
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 13:07:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbiKGMHa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 07:07:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230507AbiKGMH3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 07:07:29 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E6BBE3D
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 04:07:29 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id k19so15920040lji.2
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 04:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chNqcz3S5vRdVnVvUj92NQtmBcRaxQKZcnkrVPNpeNk=;
        b=oNDtTjV7weoRAYL+tZQHQhQGQnwfYUzTRoynoqB/9wvXAW6g/mK9f56G0HgCwbHg9h
         zyenX8YylD/n1Erc8Vwn7mZlAluOBgpSf9n3aMmKxv9Z1UhyJTxC/wP0zo+mHowJyhhI
         07B75KVjV8oGEDhji3UQmSzoSu8wNRJa6Rl5AVHu5lTOVkPTiMZUJIVP54ZSXVqBTSh+
         sdzemihWOIx7BRC4wzeWMJAEDBv7gbe/qXoXsJxbMR/YOYslj6q7NVeARr+EeIxIpnuc
         Kn0KQnhwxQ+Iff+2mD230vAnFBAxzfYY6Dfh2m/p9Ad/ig/XHg40XOly5oFe1sFUN76q
         bhfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=chNqcz3S5vRdVnVvUj92NQtmBcRaxQKZcnkrVPNpeNk=;
        b=22nZkAmm61rB6jE0QgcaBl6m/z6ZNh2E4pYsWc/pK7Ee46Is9ZgWOa1D+iVWVFkoTG
         637VtIFfU5hgcKfxbWp0+LwUbV0xuN8MB971vkURygS5icpww+yoIw15Os1+qNPKG7HF
         +EOVhv+OlEjmJlWexAOpsKLEc0BOFvQPYS7rq8VS5GESemg7AXamhfXQFjGXnTT6f73g
         WEY3ft3wgFBwVRbU9SVgzyFBG0vYyVURvkM5LcfJ4vZg6nHjdpfiCSeCGTXidzoDxBqe
         HfZSHc80a/y6w5Vg+2SD6rqcyz9tOv3vTNIRLQKvNVvxiVB+SCgqMDcI11e0ik2TCbxi
         ZBpQ==
X-Gm-Message-State: ACrzQf10W/amnr7G9FNWOWaGdaOBrZKoku14VJsbUNiDC9ysIqsrf8/X
        x6F0t8H23q70juh698BKA9jZXg==
X-Google-Smtp-Source: AMsMyM6nKSgm0r8DvN0SF9gZ1Z35bfPo+P5lOhx9djgmdWCJmI3o77NJSYR6s1jogDhToXKKuXt+Hw==
X-Received: by 2002:a05:651c:1699:b0:277:c68:873e with SMTP id bd25-20020a05651c169900b002770c68873emr18844155ljb.276.1667822847460;
        Mon, 07 Nov 2022 04:07:27 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id s24-20020a056512203800b0048ad4c718f3sm1209784lfs.30.2022.11.07.04.07.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 04:07:26 -0800 (PST)
Message-ID: <4b617d34-60a5-cf5e-8b82-d8d889c69072@linaro.org>
Date:   Mon, 7 Nov 2022 13:07:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: cpus: Add Kryo 660 CPUs
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     patches@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Chanho Park <chanho61.park@samsung.com>,
        Thierry Reding <treding@nvidia.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221107120539.12305-1-konrad.dybcio@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221107120539.12305-1-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 07/11/2022 13:05, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@somainline.org>
> 
> Add a compatible for Kryo 660 CPUs found in at least Qualcomm SM6375.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Please ignore, resend incoming.

Konrad
> Changes since v1:
> - Pick up tags
> 
>   Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> index 5c13b73e4d57..b2058345bb8e 100644
> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -183,6 +183,7 @@ properties:
>         - qcom,kryo485
>         - qcom,kryo560
>         - qcom,kryo570
> +      - qcom,kryo660
>         - qcom,kryo685
>         - qcom,kryo780
>         - qcom,scorpion
