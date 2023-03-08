Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B3576B044E
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:29:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231167AbjCHK3i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:29:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231163AbjCHK3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:29:22 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCDD6B9500
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:28:54 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id ay14so59979292edb.11
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 02:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678271333;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OEVT942PD83nNqCk0fNzH4LSM/KqPfrdg614FVBtfgs=;
        b=dUqx6XtGJet+8XKcnZ6IXhrXPe3uoJixdjDaLA57ZCaUxtTSbc9dggJVclzkYa/yLz
         7Fpr8juVvIOJcqEXjI0P41xFK3OryKqVv/YNvkLgPyfHxELJSG9e41Iy9YamVeVpm2Ef
         0RsIdSKx8AgYV3GdFal41HeMHUH6ssgBpPeDNB6RyS9sidt1kmnXgwQfUqtD4oN2gDVG
         DxowWsy/JIuQrH9L+NvO13sDQ8qXWOLc863SXv+2inOWCci1FUkVvKIE0T/jGjaqzQks
         36tY9zpjr4m+Yz/wh7j9FX8178UctgJehvx3tsuHnts1SBRRfdc2ljN8+DnJj5C4WMaA
         KWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678271333;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OEVT942PD83nNqCk0fNzH4LSM/KqPfrdg614FVBtfgs=;
        b=qiyh/hMjdOqQ81Ys/3Iha0xc+fvahJ78HGks72/ovD7l7sGjmo/9y06gHs5/GgXfAu
         UEXSEzkB8Lbxz3gUknz+QW6JzlRBHiG7IwCVEISJFnoGhUgpcWZHSdG3d+J7FcvVCLf6
         NrY13FJiFfV5LWY+Dfwpa6jglu8b0gW0KLw9UwrrGvX98QiiU2Nus+RakFsAYkxQthAu
         36YuC27bmmVB21/0/dJ3OuJGKKsc690d9i7iEt0tz3F9UgL2gf2tw8H6hSuskf2a7K3G
         ZsiTHF6mxrEF9BD0/kT5NNDFA2NpYmyGnlOFu+Rfx7hTmiEC3g5rk7YgmAtmGzwPeej2
         JN9A==
X-Gm-Message-State: AO0yUKUvAljCVwWec26ZQ+HrSyJvv8hF1NNTNoZp1Q6hZDkPWFj2KuaF
        Mwgpocku/2T0j7DbAdH0bCEpnA==
X-Google-Smtp-Source: AK7set+gCza7j9S3L/+TZBxxpTBrNe35gEezkD4tREgS5s5TNPkdZSpOa/heYH5kT6vk3tOWQqUmHg==
X-Received: by 2002:aa7:c44e:0:b0:4b8:9a32:ec07 with SMTP id n14-20020aa7c44e000000b004b89a32ec07mr14534597edr.39.1678271333127;
        Wed, 08 Mar 2023 02:28:53 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id s23-20020a50d497000000b004c8948162e8sm7573417edi.67.2023.03.08.02.28.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 02:28:52 -0800 (PST)
Message-ID: <1731df36-edf7-8c36-ec11-8c943c08e548@linaro.org>
Date:   Wed, 8 Mar 2023 11:28:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Allow
 #power-domain-cells
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawn.guo@linaro.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230308011705.291337-1-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230308011705.291337-1-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2023 02:17, Konrad Dybcio wrote:
> MPM provides a single genpd. Allow #power-domain-cells = <0>.
> 
> Fixes: 54fc9851c0e0 ("dt-bindings: interrupt-controller: Add Qualcomm MPM support")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  .../devicetree/bindings/interrupt-controller/qcom,mpm.yaml     | 3 +++
>  1 file changed, 3 insertions(+)
> 

BTW, this can be also added to the example. Always useful to validate it.

Best regards,
Krzysztof

