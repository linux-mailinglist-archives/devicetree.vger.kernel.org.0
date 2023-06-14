Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 390C272FF06
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 14:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244726AbjFNMsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 08:48:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235554AbjFNMsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 08:48:51 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52A9710DA
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:48:50 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3094910b150so6628697f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686746929; x=1689338929;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tWn2ul/ieVtMNMtJF2WtOiK5BLVE++NXvHhAy0ozK1s=;
        b=BBmXo1oU/lRnhp8XbmGYXALe8y08qNC2vl2nZSucshg1C7s62UDPmQ/SWpiUdMxydC
         gGlQYQgeLC/hidRiO6PXUKHXzSlm17sgDDYpkZs5JzkkNryu4h5aEv6nqncoVUFt4jfE
         UWo3Imfn+7wP7ttA5rLuzoHxjcASgpfNSeSf1mtfuOfGy+XD7PgCct/HK+HPmLmLABug
         wU+8g9kfoRvwWNLZG7vvE5JIHDkcaJe992YLWYmE98pvR+blTSMlD2gw0R6wlaXgOCMK
         x+qWPvRDN9LrseJQQd6/JBalqFtn6qsnViOwrjNdIIH1w1CFRHpqFxbEXeXH19kRGqr4
         FrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686746929; x=1689338929;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tWn2ul/ieVtMNMtJF2WtOiK5BLVE++NXvHhAy0ozK1s=;
        b=C8JXlMqyeup49bfRq0SyahXc5OIXKzQu13gy32FdmP067zbP51JIDDJl5ihAfKbSSs
         g/t2vetleZmseycMZrr9X6N6jy6gkX9RfnjCZSfcNdzVYW8AJpcJRGBzJLV1MHGOa3VC
         MP9WMb/o0oXvckemq4wR5U/Uq++yQY8J3UGodASwVBnh7+WtoQbFn7QaJudDV/apGixF
         RcUsVsmpbf6opwEv7rWAVCfbU5UMluMF6e1K/48oX86ckoW0tkbANO+IW3VS9KPXNFPw
         Ttm4pQ5Do/iWh4hRztAvvpim/UZqU51Q3EPzAYdziLfM/WZ25Hyx9pKW1MmPyuWV9P1U
         mVsA==
X-Gm-Message-State: AC+VfDw+noTKoeAL7WSB8ti1eFr2yteUCWeoJBvbWs7qnPJbfS3GYIgN
        W/0gWdNzBCZpkUqwamvHye/QuA==
X-Google-Smtp-Source: ACHHUZ6G4geiqOgniRSeVj1eP+kmuDRfBNxlkVWrP4zAsJE/JNw2eWu2clIu8ZQXbjX5TOfCBvtnEw==
X-Received: by 2002:a5d:4c4f:0:b0:309:49e6:d1af with SMTP id n15-20020a5d4c4f000000b0030949e6d1afmr10455204wrt.2.1686746928789;
        Wed, 14 Jun 2023 05:48:48 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id v13-20020adfebcd000000b00309382eb047sm18303481wrn.112.2023.06.14.05.48.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 05:48:48 -0700 (PDT)
Message-ID: <694a8e47-b478-7ca3-006b-b0972bf7e0a6@linaro.org>
Date:   Wed, 14 Jun 2023 13:48:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 5/8] arm64: dts: qcom: msm8939: Fix regulator constraints
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Benjamin Li <benl@squareup.com>
References: <20230530-msm8939-regulators-v1-0-a3c3ac833567@gerhold.net>
 <20230530-msm8939-regulators-v1-5-a3c3ac833567@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230530-msm8939-regulators-v1-5-a3c3ac833567@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2023 08:16, Stephan Gerhold wrote:
> The regulator constraints for the MSM8939 devices were originally taken
> from Qualcomm's msm-3.10 vendor device tree (for lack of better
> documentation). Unfortunately it turns out that Qualcomm's voltages are
> slightly off as well and do not match the voltage constraints applied
> by the RPM firmware.
> 
> This means that we sometimes request a specific voltage but the RPM
> firmware actually applies a much lower or higher voltage. This is
> particularly critical for pm8916_l11 which is used as SD card VMMC
> regulator: The SD card can choose a voltage from the current range of
> 1.8 - 2.95V. If it chooses to run at 1.8V we pretend that this is fine
> but the RPM firmware will still silently end up configuring 2.95V.
> This can be easily reproduced with a multimeter or by checking the
> SPMI hardware registers of the regulator.
> 
> Apply the same change as for MSM8916 in commit 355750828c55 ("arm64:
> dts: qcom: msm8916: Fix regulator constraints") and make the voltages
> match the actual "specified range" in the PM8916 Device Specification
> which is enforced by the RPM firmware.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Hrmm.

I recently found in the schematic the following table.

Supply | Default V | Range V     | Rated I | Default On
L1       1.2875      0.375-1.525   250       N
L2       1.2         0.375.1.525   600       Y
L3       1.15        0.375-1.525   350       Y
L4       2.05        1.75-3.337    250       N
L5       1.8         1.75-3.337    200       Y
L6       1.8         1.75-3.337    150       Y
L7       1.8         1.75-3.337    110       Y
L8       2.9         1.75-3.337    400       Y
L9       3.3         1.75-3.337    600       N
L10      2.8         1.75-3.337    150       N
L11      2.95        1.75-3.337    600       Y
L12      2.95        1.75-3.337    50        Y
L13      3.075       1.75-3.337    50        Y
L14      1.8         1.75-3.337    55        N
L15      1.8         1.75-3.337    55        N
L16      1.8         1.75-3.337    55        N
L17      2.85        1.75-3.337    450       N
L18      2.7         1.75-3.337    150       N

So let me see.

L8 2.9 = true
L11 2.95 = true

S3 just says 1v3 but, I take your word for it on the multi-meter 
measurement.

S4 says 2v1

This patch looks fine

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
