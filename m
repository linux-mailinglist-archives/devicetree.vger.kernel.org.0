Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 597D560FBA5
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 17:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235772AbiJ0PUB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 11:20:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236386AbiJ0PSp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 11:18:45 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA7243166
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:15:28 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id z6so1343038qtv.5
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aYI3hUFZ00keDLy7S9+ULcLvZKu2MhiqQOtj9sMJ7F0=;
        b=NUiK0KJGFwemQWM2Rjm8EuZLRK/EicCcfymDxBbEm65LGrScsGvPeyBh+rQcS/4se/
         EwOpvh6lmLQk8wEt74yEiDUModIPnkrK20KQ88oYDnPrb3ED7TvIL2czcGH3myhmbUDh
         06ZdXwRh0r60qeX+aD3gUu6+1MlJ7h1L76gWfQbPVyq2IGttMG0R4kTheNSt62cAW4D1
         64jFKTMndOPk5TE4UFw2nVT6orKi3MS4Jv6B5rfnkAoRigflLLOZRNhewUPp6f6a99nK
         IqO8NKpUHgLEBc7qQbvD3HLRPTW16Qr6R4VEE5LV+2Cx33WYuwAO8VcAL+tPQ9Xa0td6
         lRrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aYI3hUFZ00keDLy7S9+ULcLvZKu2MhiqQOtj9sMJ7F0=;
        b=T/vcLqn58Uzc3jtLZ2wjHVGaF964lbbkl4Z2eDGQP2zKmDm5Tv8auT/1DFFEG5rf0B
         d/rwUUkhy6QueErSFVKred+q9cKF6DlqY0XGbwD2hFfhmuWz7c1gmr52IcYr/Zl3si6L
         EHAUtdJRZO+NvtGvt+0doBff8grQvl2jCzJCzP4kChuAw3iVUI7D8uCz1nXoP1+9xeTf
         kY2SoVRFTaBhrOmT/T2Km8F7HdFWbJbPZP6wWyjoxgAXuamKUPFcon6q4D7KKI1l/+fo
         KIR3fpowYTNlOBF7awZONyw3GSmUQA8mRuN4PwOZ3CEk5Vd8bnLqDJCz4WO2b1bC0k9m
         kYfw==
X-Gm-Message-State: ACrzQf2bqlJQzj6pI667ULp3BSx9LrRJja2Dg756alnrSuD6n7I0vUfV
        3UMbPWgLjj0rUGHV/+6zv/l3Ng==
X-Google-Smtp-Source: AMsMyM6JygfUE8YeS9uzbRrBYkJMdQa9vcKt4XMrjaE1BhjDp1XACApjqnGP+FqAf8j1tO6QoVZ8Hw==
X-Received: by 2002:ac8:5994:0:b0:39d:9b6:69a2 with SMTP id e20-20020ac85994000000b0039d09b669a2mr34201950qte.316.1666883727732;
        Thu, 27 Oct 2022 08:15:27 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id k6-20020a05620a414600b006ce9e880c6fsm1128203qko.111.2022.10.27.08.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 08:15:27 -0700 (PDT)
Message-ID: <0b58180d-2f2a-ba0a-cc95-acaf91c49b76@linaro.org>
Date:   Thu, 27 Oct 2022 11:15:25 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 2/4] dt-bindings: arm: qcom: Document QDU1000/QRU1000
 SoCs and boards
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221026200429.162212-1-quic_molvera@quicinc.com>
 <20221026200429.162212-3-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221026200429.162212-3-quic_molvera@quicinc.com>
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

On 26/10/2022 16:04, Melody Olvera wrote:
> Document the QDU1000 and QRU1000 SoC bindings and the boards that use
> them.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

