Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF1536B6B75
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 21:49:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231425AbjCLUth (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 16:49:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231391AbjCLUtg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 16:49:36 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44BC9252AF
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 13:49:34 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id er25so12874439edb.5
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 13:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678654173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K2XuHTSFBvrr/eLfNbPTQfh+cP7lnP+76OTjFVU1tD0=;
        b=iDCYuSWBu1VZoFga/T6uHLNVGNx/LGfICqrgH+UJepJpX1E19qijK5r9PTRyaonxpT
         rAMDIUxF5CSCBjdIDuB3SqTsmSnJJqk8jbJWR05ZxsiBXSUdjqWWmZjpRz+hNFNZkyHN
         FEjZi4f9xPKYXVTMFhLmQlxwqW+ncRv1bUKrmPnU46gx9BTXa1bJyO5RUrzYtyxeV9CD
         Xy6zfv6lIvlQGXBBvJtX5pTFunaaRfUSxQOFVGhW08I2crjA7feWe1c9a5Tep2CvaJCn
         2VSx0fTvVXezoDSIOccHrJrZe7GP3vPZCjUqRbuunLYg1j9crm1lXi2zzeFQxF7zAWDU
         z5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678654173;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K2XuHTSFBvrr/eLfNbPTQfh+cP7lnP+76OTjFVU1tD0=;
        b=V4N9zb4i8s8Ty1l6Fvgb8JDEfZQa+A00HrOSXOwBCg3HVyM9aaLrCkIpi6b/6aAkyx
         YWiG6SHsZeox6iiNykCYbRr17GUW8KdzCPv5v59ECQp80iPR/vN//s+VLp/PZnQSdxgh
         kG7sktTZrHkuywro2fQRsIgp1fwcMsHLQSDrwKuXtR4G8jPVXyAdfSIY3YzC/tY6VE4N
         RHbrR0tHMFCmf6dokufecpBM3tpwWOcYlJORaFyujKE7DM959EokOIwKZahLWr0Rmtvb
         xQ6oIMbJTfkPBYlpErLZrMlT0thqy0NxAKX4DR4/Y1ATmLwVChCQJJA9MYQYeQeUK/3N
         DwWw==
X-Gm-Message-State: AO0yUKX+MVQ+mWmKmHvJ36pdBjTyLQq4Rqlbvvo4Kc8jW8USfNXF/pBE
        MHLO/CxNhoE+KD+LFRMjrmoM4A==
X-Google-Smtp-Source: AK7set8eMqnCj6OuU1AEcnMSD3i67+xdTy0PwIZT85M3d8OBJl8wGixmv6CDLv8lfIZd/hWgCnRAyA==
X-Received: by 2002:aa7:dacc:0:b0:4fb:8f07:edbd with SMTP id x12-20020aa7dacc000000b004fb8f07edbdmr3550057eds.10.1678654172743;
        Sun, 12 Mar 2023 13:49:32 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id bn19-20020a170906c0d300b008e57b5e0ce9sm2587903ejb.108.2023.03.12.13.49.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 13:49:32 -0700 (PDT)
Message-ID: <62c20bd9-8f24-c226-1786-40bb20d95644@linaro.org>
Date:   Sun, 12 Mar 2023 21:49:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sdm845-shift-axolotl: update
 focaltech touchscreen properties
Content-Language: en-US
To:     Joel Selvaraj <joelselvaraj.oss@gmail.com>,
        Caleb Connolly <caleb@connolly.tech>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Henrik Rydberg <rydberg@bitmath.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        Jeff LaBundy <jeff@labundy.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Markuss Broks <markuss.broks@gmail.com>,
        Jean Delvare <jdelvare@suse.de>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        Job Noorman <job@noorman.info>,
        Alistair Francis <alistair@alistair23.me>,
        Chris Morgan <macromorgan@hotmail.com>
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230312093249.1846993-1-joelselvaraj.oss@gmail.com>
 <20230312093249.1846993-6-joelselvaraj.oss@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312093249.1846993-6-joelselvaraj.oss@gmail.com>
Content-Type: text/plain; charset=UTF-8
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

On 12/03/2023 10:32, Joel Selvaraj wrote:
> The touchscreen nodes were added before the driver patches were merged.
> Update the focaltech touchscreen properties to match with the upstreamed
> focaltech driver. Also, the touchscreen used is in axolotl is fts5452
> and not fts8719.
> 
> Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> ---
>  .../boot/dts/qcom/sdm845-shift-axolotl.dts      | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> index b54e304abf71..39f59ee3612a 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> @@ -473,21 +473,22 @@ zap-shader {
>  &i2c5 {
>  	status = "okay";
>  
> -	touchscreen@38 {
> -		compatible = "focaltech,fts8719";
> +	touchscreen: focaltech@38 {

So you had good name and you replace it to something wrong... Drop the
label. This actually applies to all other patches, unless you need it.

Best regards,
Krzysztof

