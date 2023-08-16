Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D6D377DA56
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 08:16:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242071AbjHPGQY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 02:16:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242097AbjHPGQB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 02:16:01 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 543F22689
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:15:59 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b9bf52cd08so91311391fa.2
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 23:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692166557; x=1692771357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZMfGb0rOA/7xqhNtRRPREKtakzDUuWzOzMq996gsEP0=;
        b=vN6UMP/XU8J5n+iOyYexM/xIIXYfqsetJrCDV/Ta0ER6rpfFlETuKV+CpkBf6Ct8AK
         ggT4h3yq7jdtfWRk49r8i00I1gQK75LsCClW2pfYXABXmicKhz0inFRQRr10vrw7adPP
         X47gc2cSIqliy2s8rFWHW5j0MpgX6mPgZZ3bTyAOSpDFZCLz5jGJ1NsyqyNbMFeXvQoU
         Hnkd7OZM2jBQqeLFzppL8SNXDeZZpg0aimPnHQrW4xrBEvLE37SP/g+lgFZ+P0rZGUVR
         8zJMUz9+UFqdMhuGnhOLZS78bTmoII5NktbtK6YIpoS8lu1g2e0j0fKkYbVV6dbn0JHw
         +3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692166557; x=1692771357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZMfGb0rOA/7xqhNtRRPREKtakzDUuWzOzMq996gsEP0=;
        b=ZqOZFnwQ8ff2TkA1VYImJQvQL1AWRC/XfYXxXIou/hs2EquDXbKSAae71wUP1KAmT+
         rZStRK/PuT6w+Szmf3KZX0zniwgUeOWrhTdRV2AmTDKzpxHOwxtj9qZcFgWkPBQnTFAQ
         tEZ+Oqv6UM7jSkI3g70oK5vFaHcePnb1QE8YP9AnQCMWZRuMlYafTLK/IffNpxjfEH1o
         gmmq8pn82OpkF5juhLgcLHXUwhLazuIXnJ71nGi0DL/j0xB43fedejrmm+q3wYXD23Jp
         T10OWMiW4KOBrpUEyrU91WlpiFuNIg7mhx4gpLUm/VdAgrrzSSWWctRsD6Rgdp0UWbWx
         lKMw==
X-Gm-Message-State: AOJu0YydaYS/WedeReI35eosy9iGggk8euXBmm22q9gYzl7BXV2JHyU/
        GRzBhwGP8YCm/5N246vopjollw==
X-Google-Smtp-Source: AGHT+IFW67iM9K/2flFifqFuA8nOR7be1cC94ihFx4kqQS3e0Sl5iMDdA6QDQ36NjhsOGBTBfkM33g==
X-Received: by 2002:a2e:97d6:0:b0:2b9:e0ba:752a with SMTP id m22-20020a2e97d6000000b002b9e0ba752amr603353ljj.53.1692166557057;
        Tue, 15 Aug 2023 23:15:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id e1-20020a5d5941000000b003141f96ed36sm20145891wri.0.2023.08.15.23.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 23:15:56 -0700 (PDT)
Message-ID: <83cc4b10-34bf-ea91-7756-f345c0071479@linaro.org>
Date:   Wed, 16 Aug 2023 08:15:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 1/5] dt-bindings: firmware: qcom,scm: Document SDI
 disable
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        quic_gurus@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     computersforpeace@gmail.com
References: <20230815140030.1068590-1-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230815140030.1068590-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2023 15:59, Robert Marko wrote:
> IPQ5018 has SDI (Secure Debug Image) enabled by TZ by default, and that
> means that WDT being asserted or just trying to reboot will hang the board
> in the debug mode and only pulling the power and repowering will help.
> Some IPQ4019 boards like Google WiFI have it enabled as well.
> 
> So, lets add a boolean property to indicate that SDI should be disabled.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> index 4233ea839bfc..bf753192498a 100644
> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> @@ -89,6 +89,14 @@ properties:
>        protocol to handle sleeping SCM calls.
>      maxItems: 1
>  
> +  qcom,sdi-disable:

The property should describe rather current hardware/firmware state,
instead of expressing your intention for OS what to do. Therefore rather:
qcom,sdi-enabled
or
qcom,secure-debug-image


Best regards,
Krzysztof

