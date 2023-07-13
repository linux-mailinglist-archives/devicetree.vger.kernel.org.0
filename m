Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 139D47518DD
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 08:38:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233965AbjGMGiB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 02:38:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230358AbjGMGiA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 02:38:00 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56E901724
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 23:37:59 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-992b66e5affso57482966b.3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 23:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689230278; x=1691822278;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5HZ3KiatBE0zEmzQws3XEcIxxLMYWe1RVYqM7D6xg+8=;
        b=amfQ0vR/Ka6BkP8S9fk/PBznA9FhrkIyoo2FtY49acDTDKTXcoxytRDiBel0Ydrldx
         M7FLZw8SSWsUPwc9rh7ciWNp3chEqPD614QD7+m/IPH6EnqtAaP3aZGaNsRICGVc188D
         HakoAWfiVFlv0ihYpL+VQBgo7urziJSQEm816WGzSPBdb7mStql2rcaw01Aoc1zj1H04
         s+eOHyqYFu9W9GkDBTSaT+e+llFG4niDKpWY82NarL8gdTBZcE/3c1NZ7g1l40iugTeR
         iB0aUwIU/cYQzsN4mMTmczXS7XFSgA3PFhjgXkJgIMcCZrAM+ckdQ33fQjAV532/2bll
         RuvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689230278; x=1691822278;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5HZ3KiatBE0zEmzQws3XEcIxxLMYWe1RVYqM7D6xg+8=;
        b=X9MF6zA8b85XMsbR6XpwsC0aVdR4BgHDsvbRmiX07h3exI9Dx4S9QLsVLumv0wuHqX
         YxxbtuL/qBJw2sxulvqDKmsBG/r33qmSJi14R3uC3m0DbHsaZ7n2c+mnmCa7UkBA+N/s
         GhTtjBDP6Y+nCIwRf/7HKe9/ikbjsKNCs0qpaldFqPmixUVQG+8y+wmVV/Rf0GMEbe31
         0cXQEyuwNDYiTUxj553WWNN/FbIU1QvdbSmLe1R8il4RvbheeWVhkkDFnPh7lZO9mCaa
         wwCB8n3DpiqlNmAI2xYknfbe0CugLBBHiLnGgMcpE6lTOdRjJmxsmPHFTkpqn3Vk24W8
         kW+Q==
X-Gm-Message-State: ABy/qLatOu65s4KKvLA1ogE62DCuWz2sGhidJmCAcu2VyPXxxIG9Zt3N
        EqOI5NDmwxJ8bz36EYS6wprRXg==
X-Google-Smtp-Source: APBJJlEVvsOpjUa1F/Ke4X5LIYhjqeziKi2BhIY0V1omn41PuOqlrsF+WlAG3fgdEuXbYtfPvvl5PA==
X-Received: by 2002:a17:906:39d2:b0:989:3e0d:89fb with SMTP id i18-20020a17090639d200b009893e0d89fbmr446878eje.45.1689230277887;
        Wed, 12 Jul 2023 23:37:57 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id t9-20020a1709064f0900b00992a8a54f32sm3544028eju.139.2023.07.12.23.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 23:37:57 -0700 (PDT)
Message-ID: <84d88d8b-25a1-9b0f-d779-325d048909b7@linaro.org>
Date:   Thu, 13 Jul 2023 08:37:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: usb: qcom,dwc3: document extcon property
Content-Language: en-US
To:     David Heidelberg <david@ixit.cz>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230712235902.98557-1-david@ixit.cz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712235902.98557-1-david@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 01:59, David Heidelberg wrote:
> The driver has support for it already. Only missing bit is dt-binding entry.

No, because the child node already has it. We do not need to extcons for
one USB. Also another reason is that it should be deprecated.

Best regards,
Krzysztof

