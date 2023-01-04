Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 421E265CD2B
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 07:37:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233384AbjADGgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 01:36:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233373AbjADGgt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 01:36:49 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C0C415FCF
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 22:36:48 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id p24so12479716plw.11
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 22:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7uVXHnSALPWjAGdd6BcYwGu3zAP8ItkH0wqpAn2cEBw=;
        b=FzVtcwTap3yhH4FGOTP61iBjnPryQFKiCNWMEYeFSrpC5OKj6GZOPBF3q2TGzkLwNr
         9l8PopjmluF70r6/9Ul5FEKvuSUShQCR9bhhfSMdwTKU53i468h/sTedzoMsLv13WdZB
         kvAXT9YHE8g3K3XYHmlNV+ouKcdLpr9D6Yvml1mUsZx/LFKFOkHxbPlE3vnookk3aIcF
         /rUjYu76wI/zOCZzBQMGo5j2N3fYbH5Ms4DPMxRlcWvuk3X/VDCXwAl7ZN4+Gn+0nUzp
         DZN/Ump2wS+DEaLMV4ow7w0do4MCMlN5iuGZmQ4hh1uVrOlSS95cNPAfyTmvyLmR5YeT
         FMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uVXHnSALPWjAGdd6BcYwGu3zAP8ItkH0wqpAn2cEBw=;
        b=UtFfoED6qw1KqnxAaCcqZeGxRzW9Q0Xf/DksOXPN+gRrj2gueZKFwOsmdAZDZnFDfG
         M/vfiYJycfzoWnMVqk4xa8yuSkx5Jr9Y24ELNQtOl7fHE8vuo7ldEp5kmEfR4+MsmW87
         LTbiVdHZciXVz8cRYXrTygm4SEfqlx0gYNVnMnAhBWswrTytmarzhMiRfCjrzManTs3r
         3rGkdRXfp+dWduJHHDQUuQMZQPcqh0hdhL/hJ8/RzaPD6EVUSHfqWuGRrP0RDX6Ow7r9
         XQYL680yyE+PSc0wHF6eS0J1Ak5F3Wvczocvbl6sDEexuGsWrNdRJB7c6sidu15bZi8f
         MYkg==
X-Gm-Message-State: AFqh2kp4eG7fpykMs09tjDNDyVUGfZRSqUYtThopM0J7fj0pp6e6wPIs
        rkMyzIVr1if0q8dfSKhT0/MgpQ==
X-Google-Smtp-Source: AMrXdXuJfkaM9HP5sTgea85WdNl19GXUBL6z9pH/VmiWT24RIpac5R3fCLYYytpvXlzXKXNcuDQFHg==
X-Received: by 2002:a17:90a:558c:b0:226:1189:ad3e with SMTP id c12-20020a17090a558c00b002261189ad3emr26787226pji.27.1672814207632;
        Tue, 03 Jan 2023 22:36:47 -0800 (PST)
Received: from localhost ([122.172.82.107])
        by smtp.gmail.com with ESMTPSA id t6-20020a17090a5d8600b00219752c8ea5sm19527374pji.37.2023.01.03.22.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 22:36:46 -0800 (PST)
Date:   Wed, 4 Jan 2023 12:06:44 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: cpufreq: cpufreq-qcom-hw: document
 interrupts
Message-ID: <20230104063644.o5gijn6wv266u4va@vireshk-i7>
References: <20221227144202.79800-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221227144202.79800-1-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27-12-22, 15:42, Krzysztof Kozlowski wrote:
> The Qualcomm Soc cpufreq hardware engine has LMh/thermal throttling
> interrupts (already present in SM8250 and SM8450 DTS) and Linux driver
> uses them:
> 
>   sm8250-hdk.dtb: cpufreq@18591000: 'interrupt-names', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
>   sm8450-qrd.dtb: cpufreq@17d91000: 'interrupt-names', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml  | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> index b69b71d497cc..2494e90a2fda 100644
> --- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> +++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
> @@ -58,6 +58,17 @@ properties:
>        - const: xo
>        - const: alternate
>  
> +  interrupts:
> +    minItems: 1
> +    maxItems: 3
> +
> +  interrupt-names:
> +    minItems: 1
> +    items:
> +      - const: dcvsh-irq-0
> +      - const: dcvsh-irq-1
> +      - const: dcvsh-irq-2
> +
>    '#freq-domain-cells':
>      const: 1

Applied. Thanks.

-- 
viresh
