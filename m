Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 491ED55B2F4
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 18:53:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231823AbiFZQqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 12:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231815AbiFZQql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 12:46:41 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 972FBE01D
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 09:46:40 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id ay16so14398759ejb.6
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 09:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=5vpUASIBogS6tthTPhxUlQj4qLuFV0H9+f5WloHSMOc=;
        b=koJOxP42j05kinbyu2SNb1DTGbbFFYikiaqf1dqFMUKvXxdAN6Z2OlwXueuU/Xrit6
         9U85lasBhh3GRY/vt9HH1j5eNLSGb41WabFBZ7e67ho2PiyYdmzF+OA/xnNaCjnOEjfv
         NVQwgUDNwLtvCZ2RMZN/EdCDHXaRqnRGHxdQyzMFNMlXysIp91f0C/SM5zFZcgV+uq8j
         JdgvClCZlps5LtiNrRbJj6hSStVdTLcrw2EPWi01d1aIogypRliBHtqEKdmS1w5q0vsm
         amveemJPk5urtBvW0ebW3yVDXIdYfgHnrkkq3yOT9MwSA04ZcbsoSCsXLNCXWFWbzDO2
         W69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5vpUASIBogS6tthTPhxUlQj4qLuFV0H9+f5WloHSMOc=;
        b=28NAXpEkw2nBWICdN52FQOqcFxuxq3VhhHZvbxfyFSa8GhQwN6SCnl36iASgn4Ywtt
         vqUX8h9aIK4D2pdB2QbyhvZyTEbouOwpEzHzKJOgBdrITAdJDeQZVGFEEPcfIsa68w9A
         s26qm75+45w7eB7ZDFaLwav6M60jpYC42IJS769OBqSBcG0W6L08orapf8+EZrg3tlkj
         CZQYt7F1zHaXugWKnjQMEGbfpAK1syN0IMsbFFNUDnmlCzr//jcDt7Zajcx4xmyRe80v
         wULoNjg4JQEpz39lophO1+w8oIHrVUphunn8BbaQMFlakZvQjOfRwXLCAO2TcDkeHZO7
         EiOQ==
X-Gm-Message-State: AJIora9YPlslh8GQcaoirg6UFU71A2R5+SMEIT+2Bws5Lau04+kL+JNb
        0XxOXfRWYdO70T97u3giWtrkgQ==
X-Google-Smtp-Source: AGRyM1vtMtRrrKSIBN+QrTQV20XAeY3rlGvQDPowu+kMS0M7Miu0TzhQvz97WmNd20I7o/Ja6LzulQ==
X-Received: by 2002:a17:906:378e:b0:726:38df:6f75 with SMTP id n14-20020a170906378e00b0072638df6f75mr8606556ejc.577.1656261999197;
        Sun, 26 Jun 2022 09:46:39 -0700 (PDT)
Received: from [192.168.0.242] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g16-20020a1709064e5000b007072dc80e06sm3882674ejw.190.2022.06.26.09.46.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 09:46:38 -0700 (PDT)
Message-ID: <1a8cac72-14c9-8a7c-f057-19eab8cdfa3d@linaro.org>
Date:   Sun, 26 Jun 2022 18:46:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/3] ARM: dts: qcom: extend scm compatible to match
 dt-schema
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     ~okias/devicetree@lists.sr.ht, Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <quic_gurus@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220626114634.90850-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220626114634.90850-1-david@ixit.cz>
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

On 26/06/2022 13:46, David Heidelberg wrote:
> First device specific compatible, then general one.
> 
> Cc: Robert Marko <robimarko@gmail.com>
> Cc: Guru Das Srinagesh <quic_gurus@quicinc.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm/boot/dts/qcom-apq8064.dtsi | 2 +-
>  arch/arm/boot/dts/qcom-apq8084.dtsi | 2 +-
>  arch/arm/boot/dts/qcom-ipq4019.dtsi | 2 +-
>  arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
