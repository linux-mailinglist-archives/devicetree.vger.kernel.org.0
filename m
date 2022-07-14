Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E2EC5747D3
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:09:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235748AbiGNJJa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:09:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229874AbiGNJJ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:09:29 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7542E63CE
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:09:28 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id bf9so1717098lfb.13
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WjFu8FA+ZvYFQ0mgdR9rWCbv3lmDuucCfUc6RkI5UJs=;
        b=qBNocUs02EVbJuP8Ba8s5HIVQNyruoTkkviJ5knKOYgGVytay7miBfDOfakCsDfCAq
         75khIHwQ1btc/LYw5xHvkKqcOoFrUcQL7dU18abHutvURoh4jkg+IB3v8zHvSOVFsW/x
         LBz++bCj8Ywd8csfwxDLgleDpPxj3uu7BKo+vBFW/wQsR4ptlEVmW5rLppMHT6SiOTAw
         E83VfjikXFNGxgHTV0PjA98CWDYtReEajCVJVnQKawjFNU+/gMiEO94bQfzCiGHi9EXT
         PtAxTl7GxCuRjDQQX1QKEHnREOikhShQxB5Mgmsd1tl8HYhrWnH+SGUs0ylSzZR2scqx
         eTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WjFu8FA+ZvYFQ0mgdR9rWCbv3lmDuucCfUc6RkI5UJs=;
        b=drszucOAdBXckvQ6ayYO10qg5BzE0p+775jeLXoriByKgXwkzIu7Lsmd0SPoXwqnoG
         Hm/dQRukD66irBoG7UZ473nR2LNdxcqFbqVxXzaoqwa6//F6O3UqmIpATZ+aSFufXBE+
         fPzzCWKvjj9L08R31mD3VOWsKiRcDzMfbULgXWSi/stSB+NxQrLP/0CLiGJ8WxlGp9if
         Ic8GBZRYVo5iuxeGiA4FTYWY7RS/2LvCRNoEF6Wq1+G1Pg+wYOI/fwUpNQc+KYevZM8+
         nRvH9+XlJ6NjzIb6ojcGeFrJvz768b/noZkVgfz/yracWw/NLJLWokU2cyJIVqAyewTg
         Keig==
X-Gm-Message-State: AJIora/QUOYkw8+ugCipmoBFKxvVpaT2WcOIznfjr+k/pK17sm3/20lY
        MAEmbxprrveEXUHAnj/wivALGQ==
X-Google-Smtp-Source: AGRyM1sr9QbMsD/PF6xIHUn8ZPFH4qsXTIMJn7Um6tZIIiNZroL3GezNb416WIrC8BhAjfhfcr6dpw==
X-Received: by 2002:a19:8c12:0:b0:489:c75b:3bfc with SMTP id o18-20020a198c12000000b00489c75b3bfcmr4623003lfd.222.1657789766876;
        Thu, 14 Jul 2022 02:09:26 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id x19-20020a056512079300b004794a78bfe7sm254619lfr.6.2022.07.14.02.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:09:26 -0700 (PDT)
Message-ID: <a9001806-b189-02bf-6fb8-ccea145a2027@linaro.org>
Date:   Thu, 14 Jul 2022 11:09:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 08/30] dt-bindings: phy: add qcom,msm8996-qmp-pcie-phy
 schema
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-9-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-9-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 15:47, Johan Hovold wrote:
> The QMP PHY DT schema is getting unwieldy. Break out the odd-bird
> msm8996-qmp-pcie-phy which is the only QMP PHY that uses separate
> "per-lane" nodes.
> 
> Add an example node based on a cleaned up version of msm8996.dtsi.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 146 ++++++++++++++++++
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  26 ----
>  2 files changed, 146 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
