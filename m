Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35B035FC9FC
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 19:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbiJLRmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 13:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiJLRmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 13:42:36 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEB0EFBCF1
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 10:42:35 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id a67so16098907edf.12
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 10:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F+/oGLzREG21Yj0uftDYL1IyCwSjsexCNfPmeCYYK5U=;
        b=j7mlJDdtav9g6vWHhzB0NwAdum8QysC2za2V7GrivI/Px5eW1urR25/m6DIOgTwa2z
         N7Do86PkEu10oKl5S4Dl/HsMgMoPZmu1QdafheG/q9BqAeH/4gWGmms7wQNlGqFWSZMr
         xCP/NgrU2d8KsGwj/W4HbnB42/mUWL68QTz2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F+/oGLzREG21Yj0uftDYL1IyCwSjsexCNfPmeCYYK5U=;
        b=Om3ogfnz8exnMXk+0OwGjMhT3N76rmkwPcliQg+UTs6V+GJyyzR/l0i1R4SVBi30cw
         1IjadTMZw0oex4qVEGxdPdH7QdS31Gs9697VK1/7HlExWMr300pmSLMMqKJMADoK7Mj2
         8jqWcsHB6DkAuZBld3KNYLZEbXxE677/Mv+z3MvqLCVP4bOvMwXJMY66wqvMij4nMYdf
         RR/dtp9cLj7Z36VToS5hfUAIh6PhKHmMaq0UwdUVzGjkEwOM9Pn5mEmdBa2lR8n2pykJ
         vrrPo8cx4a11A4CgoM/LUQd2qnMxEIeSuAfniAJrmeRl2bvYgqSrHy7ILrA5mdVynlFo
         jCMg==
X-Gm-Message-State: ACrzQf2ceeAhhL/H6G09UTuT1EA4sLjZ9/Thw8wcme4yXASi3HRV5TGh
        r9qOzrcU8rLqc1R6+jO5s0IxCl7gUK7TE6CJ
X-Google-Smtp-Source: AMsMyM4Q4obkFsc2ODzCYT5b/FDMmfjNFH8856C8oFrt64e+r4+MabsZCVazxAMe+Wb4JV/Zb1N2vg==
X-Received: by 2002:a05:6402:2146:b0:458:15d7:b99a with SMTP id bq6-20020a056402214600b0045815d7b99amr28755672edb.24.1665596554093;
        Wed, 12 Oct 2022 10:42:34 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id g18-20020a17090604d200b007826c0a05ecsm1550161eja.209.2022.10.12.10.42.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 10:42:32 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id u10so27307414wrq.2
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 10:42:31 -0700 (PDT)
X-Received: by 2002:adf:dd0c:0:b0:22e:4bf6:6c08 with SMTP id
 a12-20020adfdd0c000000b0022e4bf66c08mr19368307wrm.617.1665596551460; Wed, 12
 Oct 2022 10:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <20221007145116.46554-1-krzysztof.kozlowski@linaro.org> <20221007145116.46554-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221007145116.46554-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 12 Oct 2022 10:42:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WN+9DJp-3Ny04NmOLau2RYibeJayEtB7x0uT-YoizFQA@mail.gmail.com>
Message-ID: <CAD=FV=WN+9DJp-3Ny04NmOLau2RYibeJayEtB7x0uT-YoizFQA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: pinctrl: qcom,sc7180: convert to dtschema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 7, 2022 at 7:51 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> +      drive-strength:
> +        enum: [2, 4, 6, 8, 10, 12, 14, 16]
> +        default: 2
> +        description:
> +          Selects the drive strength for the specified pins, in mA.

The "default" of 2 is not correct. Please see commit 768f8d8e45f9
("dt-bindings: pinctrl: drive-strength doesn't default to 2 if
unspecified")

In fact, are you sure this even needs to be replicated here? This is
part of the common "qcom,tlmm-common.yaml" bindings file, isn't it?

-Doug
