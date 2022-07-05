Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66A6B56678C
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 12:14:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231593AbiGEKOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 06:14:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231614AbiGEKOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 06:14:14 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65802D132
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 03:14:13 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id z13so19665172lfj.13
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 03:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lPXhWDoOfExJjgPsmL1CEp68eFY+r76VW+WY/tss/fE=;
        b=vQvREX/3QsDFJau7WAdyfgwa1sDBm5vXA2Ztopvuh7EtLCqNgA8qiU2Dl659S+FT3Y
         B/GziNZV1ja24c1e6TIZAFPch/ofsNWvOg8jnBHx3KWpAagi4hQrG7Lz/aMl5ZxNkdc8
         lm/l6HVxcYtOfVnY1mv9Xja87QWwWbv0IKgli1Vswooc54X450P/uwzYJSm1B0M3/IQr
         SMGq/mdaUFHcOK2cc//iWyHAgceMjU0gxuo28ZWpTECBWQ5xQFPAI8wy2r9ztpVEaAmb
         3uX7eSSbCPvu9AatugMvS+byrPBcj/EI/FBzNTk7yt18DLLU+VKX0LVICqtlPzyu9wNm
         1Png==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lPXhWDoOfExJjgPsmL1CEp68eFY+r76VW+WY/tss/fE=;
        b=HY7ykPiXwZKFZVVPbmIdHKZyLPrNDLla13kv8/XXSTRa5qI+A8LcjhpFiklvEbVJZl
         ojiJfE+mIzWyaAtVW1S4mXxR6pDZAhjF2dYuX96GkSES+1dk9/KuWD8bqLyZ5huX5DDR
         yHsbqwsRbW/ZFjmWLNxGYLxz/PpXepU1vZShBqW9Ccg6n8S+RZuumZiAKgI08we0e0FF
         1yodSS6Zi7mhVHADvX61iJXxMWMyPhkLF44tjXgJ5uP5fcVugahI6qPLDHev3m+euw9L
         MtGeusLp99oJjjla9rvUjQr+Vd2slOvY5jdJNgOuy32vWWyUTtKIv6l/bnscb9utmpAH
         mS9Q==
X-Gm-Message-State: AJIora/X6z6lmy44vVzmI7UErFnAgLAthmZX/DIdxpargWL3G+Tini8q
        h9eRMOy/ZI2Gej/WPEF5S2plZA==
X-Google-Smtp-Source: AGRyM1sdptptUE0CYcTaiCawPWgSL5xOx2Xwf85TPGrfekC1PqPD0hKVi47IBftBdgcH5BrNZ0/PAg==
X-Received: by 2002:a05:6512:33cc:b0:481:4eef:6f68 with SMTP id d12-20020a05651233cc00b004814eef6f68mr17920868lfg.667.1657016051647;
        Tue, 05 Jul 2022 03:14:11 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id w23-20020a2e1617000000b0025d3a72792fsm7577ljd.47.2022.07.05.03.14.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:14:10 -0700 (PDT)
Message-ID: <fa48afc7-bb90-884f-07a5-5580759928e0@linaro.org>
Date:   Tue, 5 Jul 2022 12:14:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 15/43] dt-bindings: phy: qcom,qmp-pcie: clean up reset
 constraints
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-16-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-16-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 11:42, Johan Hovold wrote:
> The PCIe PHY binding requires one or two resets.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> index 0486b2b48d72..557cccc8f4dd 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> @@ -52,11 +52,11 @@ properties:
>  
>    resets:
>      minItems: 1
> -    maxItems: 3
> +    maxItems: 2

Squash it.

Best regards,
Krzysztof
