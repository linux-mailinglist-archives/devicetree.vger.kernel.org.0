Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 885426600DB
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 14:01:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234196AbjAFNAt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 08:00:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234854AbjAFNAl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 08:00:41 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B8B671FF7
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 05:00:39 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id k26-20020a05600c1c9a00b003d972646a7dso3460435wms.5
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 05:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lgWKN4BC25iQsFl18LVmSiEqTMGjTidigfA1GhXpKMk=;
        b=cm+5t3LsBGEAqZdKRk9YLkNRRlSly53rX9jK5aKMyeyncspEFhHenvFoOE/nMr5UK7
         szFawdRCazhPAEw7BHWdmr5lFACZyJNjRnKJGpdwvWdm6coJog/e6tAPczn67J19omFe
         A1slEvDZoiTJe1nuxkk3WAyjBcpUN69vACJNfp29KBVzy/3l1NrLerBCimGi8UjrIpLA
         T5xozCSSiaYH9xbZmOo8kS1XVR8dx3aqlHui/BpceQTy+I4wd9KzjArgJX4ICv3wYPIW
         eT3Nmp4GB6fWq0XKKTQ/sHjuE5u2INgTJWsZJSQAqaohXR5bCEJ6QSOmXczoz15g0pTN
         z81A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lgWKN4BC25iQsFl18LVmSiEqTMGjTidigfA1GhXpKMk=;
        b=cmo15kWsbT6Uepg995sjvudegKmgV2kKNmh7SIwXLYcU4mGgnLESfPC1wML08zG2Hj
         7me3YaPK8Fg38pBnbaPk+VrL2a1vS5Xlw2OZSrIYe55wglfNPvvf+0BYCJ1DVVZZko/B
         rz2iDfC5+JZDprqXu4E57DIfMK15uLEojjhhNLLxrDZ8p7vanH3muAvnf+JQY6l2+SgC
         9ZvCB2CjPu5xicitNDCGW3VQcMQhWhJrh7JRRQDHLAkvHiaoaVK9yzL2TexIusSPhqjy
         PNBHz+pByUFZnZSj6cwrUVtpZR+h4WoPgRZF/Re99YLKK3WNF7GWc2cemczvQbC0AIb3
         MAeA==
X-Gm-Message-State: AFqh2koI5wQ85EngZ84iAIoBP2d0yock6018N8nOle+thBcB+gJA2Ook
        Cn1Xye5feK/2bQml/LcXytdJWQ==
X-Google-Smtp-Source: AMrXdXtU4rPoND/C7GvhipJUtrrgA1BqCPGW/S1ljlBzIbPVuvZcSavg+Qml/zEh5Hsk2OpdpjYvUA==
X-Received: by 2002:a05:600c:3b2a:b0:3d9:7950:dc6d with SMTP id m42-20020a05600c3b2a00b003d97950dc6dmr28914413wms.40.1673010038168;
        Fri, 06 Jan 2023 05:00:38 -0800 (PST)
Received: from [192.168.1.102] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m35-20020a05600c3b2300b003d973e939d3sm1874301wms.1.2023.01.06.05.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 05:00:37 -0800 (PST)
Message-ID: <4486aeb5-ce70-3792-96e3-249d2e5223c8@linaro.org>
Date:   Fri, 6 Jan 2023 14:00:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: msm8226: Add General Purpose
 clocks
Content-Language: en-US
To:     =?UTF-8?Q?Matti_Lehtim=c3=a4ki?= <matti.lehtimaki@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230106114403.275865-1-matti.lehtimaki@gmail.com>
 <20230106114403.275865-2-matti.lehtimaki@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230106114403.275865-2-matti.lehtimaki@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2023 12:44, Matti Lehtimäki wrote:
> Document the general purpose clock functions that are found on MSM8226.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> ---
>  .../devicetree/bindings/pinctrl/qcom,msm8226-pinctrl.yaml     | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

