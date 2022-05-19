Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10CD652D375
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 15:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238313AbiESNDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 09:03:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238248AbiESNDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 09:03:17 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E517968990
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 06:03:15 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id i11so8904596ybq.9
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 06:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vJboZI2NsvWRkkS2FZfaavw5BFRU6LKS0+t+LYIVRaM=;
        b=aD8Q5JYMw42ChofBSREwntJeJdBp3BU+f3U/TlHBVFAu5/VEqjNqcIynD5kQ1W3FZ6
         X9eJZd1DQakfDZpCXrKFUCicsZgGMC4IpdGwdpeqpMPJIpwYwB5Oe7K3tQV3HDddB4gN
         oPBmzv+tNSsjDCoLfUu1UXb2AFdmBu2WtXvWXtq4N1anIcmgwMETF3AkIRQDKj+vMr5K
         1U4T/oCu/rWV/7Dt/KSvBiEqwaEr9rPMBrF/wziiIS4yqOjfO0F2ZTEoVJX9ooxHY24Y
         78XctnDfsqm43vgqTND8Y/ghOXf54/PMqKLqvII65z15HdBxI5Ud/Z8JuAvZhbl2fVbY
         NBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vJboZI2NsvWRkkS2FZfaavw5BFRU6LKS0+t+LYIVRaM=;
        b=oWVmcP5zCI5fIh5lM3Y2ZjjmbWeUNkHweQ2Ce+5I9iavP+c1g8emMjc1E/gyHnFuih
         B0SNkS5Zi+MpBc0VgJYAOsqt5Cp18I2m+P4SDc4ELWI0gqyf0AmxOa2BvptFOSqPbGE2
         RfxF4jyK8q691kNHXO+/nFik2RVLyDvtON3Hf2fHoi+/GVF0064Lp89qh6XYnYMGHEux
         z6Q4lEprcjum9onkJdpuXZwjYxwi9hAc1oYxVTrMFH+ySRIea3mSQbWQIGLi8zK7Qtds
         rOX9L3uLugtEfwLOIpTAMiRB7ugZuqliUAVkttBzh0Zln1G3QKLwAAaDQU6+73WJpoDf
         Bg5g==
X-Gm-Message-State: AOAM532113s2MAAxv6FHm4ug7IfbrdBsJucH/o5Gpy2Z5rzaUsd8RKve
        JjTG0VvKx26xZPMd1OQuKOls/xhoNpaPShPwad4Rzg==
X-Google-Smtp-Source: ABdhPJxp4KGREJ53aJoUykkHDLgIEJGi4eAGae0DgddXUeulX75zxzyG1tNH7l6DYoKkaL5z76yVDaV40VkVJ9vWTtM=
X-Received: by 2002:a25:e78a:0:b0:64d:672b:af3c with SMTP id
 e132-20020a25e78a000000b0064d672baf3cmr4462034ybh.369.1652965395136; Thu, 19
 May 2022 06:03:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220507194913.261121-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220507194913.261121-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 19 May 2022 15:03:04 +0200
Message-ID: <CACRpkdbuJByQO=FnFHLWK5PYX-wfKmemY6aWB_qar1rmHJutkA@mail.gmail.com>
Subject: Re: [PATCH 00/11] dt-bindings/pinctrl/arm: qcom: minor cleanups of
 QCOM PMIC pinctrl
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Stephen Boyd <sboyd@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luca Weiss <luca@z3ntu.xyz>, David Heidelberg <david@ixit.cz>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 7, 2022 at 9:49 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Krzysztof Kozlowski (11):
>   dt-bindings: pinctrl: qcom,pmic-gpio: document PM8150L and PMM8155AU
>   dt-bindings: pinctrl: qcom,pmic-gpio: fix matching pin config
>   dt-bindings: pinctrl: qcom,pmic-gpio: describe gpio-line-names
>   dt-bindings: pinctrl: qcom,pmic-gpio: add 'input-disable'

These four patches applied to the pinctrl tree.

Yours,
Linus Walleij
