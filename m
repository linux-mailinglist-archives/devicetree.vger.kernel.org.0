Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E564667E500
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 13:21:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231743AbjA0MVC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 07:21:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234343AbjA0MU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 07:20:27 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D01183065
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:17:19 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so5293064wmb.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:17:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/0vwBT3Hzhed1v3dNdYhtokzYsN4bpkEgFzT9qlnuRc=;
        b=HLjt2DzHon24NhQ3fetg2NMMwzdnsc4nHHCuPyKZ5mf3si6U5Pysg5i94+q7FZpGx/
         VMj+4tqKozptI6e0vP+3ZHCH4ZaW7r4EIXkNTkyL5yBYTIvbYXNN7Su0jcrNngR8wMh0
         r4Ubqt+jHpOONzRVbANdVQ2l5WnvKM2D7csiNTgsB2tfhNfhlJd9EEvqz+3al8Yz6fyt
         ueZBGnS3RvYL3+BlXVtfs9fDiivtDfMunuj0fHhN7yoBcp/NV849Bzqn53ArRdMA79ea
         HsVF/7DxsVZ4kdbNAW8GQzWqAPk7wNR2XhEZdqo2UHUkU6VcfLhZG47wBoCWZ34xepqr
         0kQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/0vwBT3Hzhed1v3dNdYhtokzYsN4bpkEgFzT9qlnuRc=;
        b=E5vWE7iDxXku7M2k/k1bW3B6mLPBMu/qn1P9UcUJ3U3uu01HNJavmw7JFwWdLvRWmn
         AUNdukJcMMalXH/PFz6UmCrm9AwyQglEmk9Wg/wc7qpT+DUPGicMfP0ssw0ppYDkw4Na
         4To/rv4DpTJVUzdbAoouVbY0/d5WPE/behEXB0GRQt+eHX8j17Xoe4sr1Q7tyQ+zNoSK
         UzH2AuiOspjv+5A8ELr3k57XFlRvZupJHdv48jaIIKrpWlfSVADnnUMpHBf0fLvaVmaa
         IpPgzVh5Dl6C019P1Y2HQZZfwdg6QerfxbPzzZcyYeCzzvvi/Ob0K9G3w9jKkYID5A7W
         0+jw==
X-Gm-Message-State: AFqh2koRYGky4kIQNshoiZxdeiRiSVCQzW/QK7iO0bdPg7bH8Vd98vFY
        3H3d8FdSFMdXPkPpdVgxJPLd7g==
X-Google-Smtp-Source: AMrXdXsLXdBNGvdVWGmQ2Lvar0s7cj7UQSPy019n4SS2PpTdL2HpR7UDzYVLGjCJc2qvCJ76k00XFw==
X-Received: by 2002:a1c:7514:0:b0:3d9:f559:1f7e with SMTP id o20-20020a1c7514000000b003d9f5591f7emr47106324wmc.20.1674821837274;
        Fri, 27 Jan 2023 04:17:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b32-20020a05600c4aa000b003db0cab0844sm4062495wmp.40.2023.01.27.04.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 04:17:16 -0800 (PST)
Message-ID: <93852386-f25a-0748-78bb-499edef4d292@linaro.org>
Date:   Fri, 27 Jan 2023 13:17:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] arm64: dts: qcom: sm8550-mtp: drop incorrect
 vdd-l6-l16-supply
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230127111913.117036-1-krzysztof.kozlowski@linaro.org>
 <Y9O2q6Om+MK9k3UL@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y9O2q6Om+MK9k3UL@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/01/2023 12:34, Abel Vesa wrote:
> On 23-01-27 12:19:13, Krzysztof Kozlowski wrote:
>> There is no vdd-l6-l16 supply in qcom,pm8550-rpmh-regulators.
>>
>> Fixes: 71342fb91eae ("arm64: dts: qcom: Add base SM8550 MTP dts")
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
>> index 725d3bc3ee72..d6ae80414654 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
>> @@ -47,7 +47,6 @@ regulators-0 {
>>  		vdd-bob2-supply = <&vph_pwr>;
>>  		vdd-l2-l13-l14-supply = <&vreg_bob1>;
>>  		vdd-l3-supply = <&vreg_s4g_1p3>;
>> -		vdd-l6-l16-supply = <&vreg_bob1>;
> 
> NACK.
> 
> There is actually an L6 but is not added yet.
> 
> But the correct one here is actually: vdd-l5-l16-supply

Konrad also suggested this. I'll correct to l5-l16.

Best regards,
Krzysztof

