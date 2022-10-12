Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49BD95FCD68
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 23:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229646AbiJLVmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 17:42:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229673AbiJLVmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 17:42:42 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6813D120EE6
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 14:42:41 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id b2so30230eja.6
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 14:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OYdHqQLScp6clfYhq6LYLQ1B6NXfY8WPB94zZx9mwyk=;
        b=gw6QluUYDqChzGUbk/F6w8IiUJuL7ueOskrMK30ZFWB3Vg8bBcFYTB5mP9p0r1gFSZ
         NjSSMLt9Frz3HcT5SmQz+D9UvRrRqFZXyCHlbBv2iJfvCefqjO+CYTRrvHyvPCTLpN5C
         eKb7+9RcWgm5llOB0hmx1YerY4AGB/T8/XXpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OYdHqQLScp6clfYhq6LYLQ1B6NXfY8WPB94zZx9mwyk=;
        b=idZrLqiO7p6+CgWz5hJ21O+TLFyuIwQgJ6phWuBkGFBnkCryxYs30bQ+JDYptzNxSF
         6BnPG64EAVY9/vJmbMKwPBi6fapnMCeoHF5+fazfJW54Z29aoTK0ejKH+TTANSGhCC1y
         ir/KwN5lBiukUFyfgC1cV1241W5m01ovchF9YqzhHbJPur2SGxtcUnbv/kjMew3l5sfy
         AVWYHAMDOr5mMVsgNLyLitKQiDOi7It7Ri+7cIkPGvxZKABfheAbKh7+rWFvbkywnvnP
         yuUd4ggXHab2LC15Lt5ZRAtLg/2r6gNfx/1PO0idz9P+dsLdJrDyIyojEZTXKpvrTvkN
         MMuA==
X-Gm-Message-State: ACrzQf2Mc1t/Fa9wQiLnr2GOwGPN5o5D1hb9V3uIhnnskrkmS87tgJFi
        P6K9jFCg0mLboMcuN5qm+S5eBkgETpdlIuMS
X-Google-Smtp-Source: AMsMyM6T2xF8n3aVoatUWpn59u571gUSfZUG39A0tMy4wdnwibpiWRMvacBFQjTsCt2kQlhqqV7OeA==
X-Received: by 2002:a17:907:c03:b0:781:fd5a:c093 with SMTP id ga3-20020a1709070c0300b00781fd5ac093mr23758968ejc.89.1665610959705;
        Wed, 12 Oct 2022 14:42:39 -0700 (PDT)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com. [209.85.128.46])
        by smtp.gmail.com with ESMTPSA id gv15-20020a170906f10f00b0078d9e26db54sm1869742ejb.88.2022.10.12.14.42.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:42:38 -0700 (PDT)
Received: by mail-wm1-f46.google.com with SMTP id c3-20020a1c3503000000b003bd21e3dd7aso1980647wma.1
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 14:42:38 -0700 (PDT)
X-Received: by 2002:a05:600c:5488:b0:3b5:634:731 with SMTP id
 iv8-20020a05600c548800b003b506340731mr3906447wmb.188.1665610958124; Wed, 12
 Oct 2022 14:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20221010114417.29859-1-krzysztof.kozlowski@linaro.org> <20221010114417.29859-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221010114417.29859-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 12 Oct 2022 14:42:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WU_WPmhvABViw9w=8zuoWhW0VLo56+D3e5xXh8bBYPEg@mail.gmail.com>
Message-ID: <CAD=FV=WU_WPmhvABViw9w=8zuoWhW0VLo56+D3e5xXh8bBYPEg@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: sdm845-db845c: correct SPI2 pins
 drive strength
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Clark <robdclark@chromium.org>,
        Lee Jones <lee.jones@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Vinod Koul <vkoul@kernel.org>, Xilin Wu <wuxilin123@gmail.com>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
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

On Mon, Oct 10, 2022 at 4:46 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The pin configuration (done with generic pin controller helpers and
> as expressed by bindings) requires children nodes with either:
> 1. "pins" property and the actual configuration,
> 2. another set of nodes with above point.
>
> The qup_spi2_default pin configuration uses alreaady the second method
> with a "pinmux" child, so configure drive-strength similarly in
> "pinconf".  Otherwise the PIN drive strength would not be applied.
>
> Fixes: 8d23a0040475 ("arm64: dts: qcom: db845c: add Low speed expansion i2c and spi nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Not tested on hardware.
>
> Changes since v1:
> 1. Put it under pinconf instead of pinmux, as suggested by Doug.

I notice that there are other two patches in the series that put the
configuration info under the mux node. ;-) They are with SoCs / boards
that I wasn't really involved in and so I won't do anything to block
them from landing but, as per my replies to v1 it's not my favorite...

In any case, this patch here looks great to me. Thanks! Looking
forward to seeing these converted over to the scheme that your sc7180
patches used.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
