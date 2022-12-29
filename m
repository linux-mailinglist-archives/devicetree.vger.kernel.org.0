Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98FA4658AA3
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 09:45:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233061AbiL2Ipj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 03:45:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229747AbiL2Ipi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 03:45:38 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF3FB1006D
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 00:45:37 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id f20so18794093lja.4
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 00:45:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WhhThnTcIHOOnU4TldxJQBEXkc0+gKJ8zUJ0NnzGF8w=;
        b=iACwngYUW2NO/QI//cidNjkSY6IR2L6BvEIVEAFyQl0zymVU79PvIQBgWY/D0yoIUe
         YHYOZTLiJ7al8Uhw/p2hy2ex26ZQnXD1iiHLEMEy/hmj2+NQkBlLigPtVAD5NOdvtBNG
         VB9oL/XGZGiX6MdxU6BF4B/vso6HnrBhOFK0LTJ2IU4eG1qzFOnPxH0CnEgkjSk25GWY
         erPOj9vqGBiDKUC3d6OSvczpyfB50aIKlVfZsPIS+3aacZswA4WH+wmEjE6LLUzGK0sU
         gNVQqSd9DluhlXf1dt1jNqWOSgx8UvUegBW+Ws2oTxsEANYuMcCmMHAL7erVaeoRj7th
         KLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WhhThnTcIHOOnU4TldxJQBEXkc0+gKJ8zUJ0NnzGF8w=;
        b=n95muT7NvD0OArhE4h4nLOR1OuAU1CdPq+a/r6sLJ/Fv4imuNOgQWr0Dv9cYNBbAnB
         Shg5aiXAEu66kMmqRGZq/K6RErvG2hmRHQUsVMXIfJ1pNBDWn/OuI5JFPzRYv630UubU
         1EF4hYNTn+VF/WLc2E9x6AQCqiNg8I2QlG81Rk6EkHJw8nb0NRlKLarrlwY+I5uUyZn3
         mepj7w26Q9NShtKU4WiN02aW6NgnnTDT0jVwIBC57Mivj+JImK8x5Xoy4W1UJAxgYnr0
         DmjANnRiqe2ls/lOYOJjgaVgVV5D0UPCz+Vbije/pDENCuk62zkYqzchw7XP4OxMGjks
         n7lw==
X-Gm-Message-State: AFqh2kpIGyeTLc0OD7nztv29uIZAFXRu7qLwECcvAe8UuzO22VIZR78J
        2uuD+ZHW7uLmbj93KKQJCRdlXw==
X-Google-Smtp-Source: AMrXdXutjgkEHkED1oh840UWFw8WlnqcYr1SfxtSQLUXyecp3Hg4fP6tMrLui8h4uuPLKErhi1FUEw==
X-Received: by 2002:a2e:92c3:0:b0:27a:1860:eb86 with SMTP id k3-20020a2e92c3000000b0027a1860eb86mr7218840ljh.31.1672303536156;
        Thu, 29 Dec 2022 00:45:36 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p7-20020a2ea4c7000000b0027fc5d5dbb5sm1018709ljm.77.2022.12.29.00.45.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 00:45:35 -0800 (PST)
Message-ID: <da10e351-1f22-9583-5f0a-ae7db060cf0b@linaro.org>
Date:   Thu, 29 Dec 2022 09:45:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,pcie2-phy: convert to YAML
 format
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
 <20221226031059.2563165-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221226031059.2563165-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/12/2022 04:10, Dmitry Baryshkov wrote:
> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> from the text description.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,pcie2-phy.yaml          | 87 +++++++++++++++++++
>  .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
>  2 files changed, 87 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> new file mode 100644
> index 000000000000..672035199c19
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> @@ -0,0 +1,87 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +

Drop the blank line.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,pcie2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#

Best regards,
Krzysztof

