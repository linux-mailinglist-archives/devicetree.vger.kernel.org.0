Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4DD16C00ED
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 12:42:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbjCSLm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 07:42:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbjCSLmY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 07:42:24 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 352AB1CBC9
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:42:18 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id y4so36722857edo.2
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 04:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679226136;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YYpFGS1UeXIwWcTkvPWAxNglHd4HA0NJO1B7knmB2bQ=;
        b=Lekp+Z70cS84SGL4OYQIjjeuyDHlkHqrFTBDKtxkptWf7FBGOYrJ8e/8roNl/lUi1V
         MCtRXEp7pzvS4TxSwHBtqvVAP+zG7Q+uX3gRl4ggOMUTWUM6G0RJLfPw5jFVUQTQcIzE
         HSASGA3Ga44Y6+ZcqyHO2LzeXqFcRxJcO+VOepj4QLBbMx+GHp3JcFPcJp1MSPWBjGHN
         GwchWis3IFRhBcmWI7hxJKprBdwSADxO0Eb1tgR/wiBOTrv6UK6RbHxm4/WhFOy2f7tr
         L71YQvbj3hF9U1oq1bsP56lTl0C/HYAN3fkyM+2DoLehXgHHiizSJ4Y1JRg+pPN7MyvG
         nC6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679226136;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YYpFGS1UeXIwWcTkvPWAxNglHd4HA0NJO1B7knmB2bQ=;
        b=hLFENsEuryVpktLNfCMpWU0fujpZ9Kd3CuYpt5hKStXAZNg4uvwGr59wLH5mwxwIy1
         PN+SVcUvXFq6FGlqyzCTECfLx/d1qv2rX2xpPdbcsvTbW/+/EnuFrQMwiZ1NV4VuIKao
         04vEsOKDVzMDgRicEIkOi7PtBFf4JLe+6MCcPl5P8kma77QT4KEF4Y7nfMC8/mDFvxEn
         UOABm/YQ31Pqd8IuiH5xxIaaiVmZje/okjckCn3gJ9uJ0DRKC1lJHiHT7HU7sZ/1/Skv
         b6m7ehUe+7SkGpraInsMXJcIAIYLqIWwAaMj+tB72zg6tLNJr/vUtQ5bQV3aKQzQ1vDP
         OoOw==
X-Gm-Message-State: AO0yUKVtKrHWrrK7IfLUEAC3zz7o8VWcdm3qVAX7zfkuRD63bC4Q9ZfW
        CcwuYXbekiL6E/BqpQPYBBDBnA==
X-Google-Smtp-Source: AK7set/nAdKcN/EbrOMv038RS7r7034bKgLWG/MOu4gs5Art727TtvaVPK4HlH7RScG007/t1PboMQ==
X-Received: by 2002:a17:906:86c4:b0:926:c7ac:51fd with SMTP id j4-20020a17090686c400b00926c7ac51fdmr5279751ejy.44.1679226136759;
        Sun, 19 Mar 2023 04:42:16 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id b17-20020a17090630d100b009300424a2fdsm3182476ejb.144.2023.03.19.04.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 04:42:16 -0700 (PDT)
Message-ID: <74671c69-4019-fd43-171d-9a3365d9e528@linaro.org>
Date:   Sun, 19 Mar 2023 12:42:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 02/18] dt-bindings: regulator: qcom,usb-vbus-regulator:
 Mark regulator-*-microamp required
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, caleb.connolly@linaro.org,
        konrad.dybcio@linaro.org, subbaram@quicinc.com, jackp@quicinc.com,
        robertom@qti.qualcomm.com
References: <20230318121828.739424-1-bryan.odonoghue@linaro.org>
 <20230318121828.739424-3-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230318121828.739424-3-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/03/2023 13:18, Bryan O'Donoghue wrote:
> The VBUS driver needs to know the regulator-min-microamp and
> regulator-max-microamp so they should both be marked as required.
> 
> regulator.yaml defines those two dependencies so include regulator.yaml.
> 
> We need to change from additionalProperties: false to
> unevaluatedProperties: false.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

