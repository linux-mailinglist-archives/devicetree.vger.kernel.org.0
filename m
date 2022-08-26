Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27DF45A2C1E
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 18:17:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343750AbiHZQQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 12:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343514AbiHZQQn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 12:16:43 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ACF3D8B27
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 09:16:42 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id x93so2544996ede.6
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 09:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=KGLrHWIlQkkcGAYUa/2yGh2hQoX6jmYun770U+54jAw=;
        b=cxz0/t2rB1fyMtx/h4P5N1RTo7JQXkfoidhaIHDxpHnV6nbuvzSUAMKDk9qjHlr6vP
         sq5QfqwyT3JKzLcYr8qoJNE3PqSsGL1vXZvfqPEFoe0vLZ8Q6nMr3lNADWmO0oVLr8gi
         INR7ioc1nZg98YbN0WNHwsg7R13yRBf4FcA0k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=KGLrHWIlQkkcGAYUa/2yGh2hQoX6jmYun770U+54jAw=;
        b=LiS2o3KA5dIdv1PSern6fu6l8g/hzp0YFctJjirSzcxaw/06UCnqnMojUn8dK3RN4k
         qrq9kgfpUjrFQj9I7BmC49ECxW7QLd5foiCxme5/ly8lFp5uDBvtTRE6qhSS1140z3Nj
         2iPFumOTSCTJCH9m20IcXYJOYft0tz11IQUWAkvAeIeJ5HNSt9TcCe/pDHmK3Zi0/kk0
         7j/nUZDs+smcfSNXmeoHFMxn7ajVAdJXbnLTcWIsTNDFFfEGznPd+3nHhYti37HeNiYY
         WFpYbffbjsBgYjZ8oCBQIcd1EqeMVtNhMjMOf+qNShCAI4tazHqV+RWE/h3Oe8KvV7u8
         RoHw==
X-Gm-Message-State: ACgBeo3664H8stZLnuwjn+tOMjQ1xEgJp0/KFpVlG4qZTQv39l3TMrXU
        Si+1lFLhwx9B5Pc1oPuRoolqZjoJCSa1O0pS
X-Google-Smtp-Source: AA6agR7pOXDoyj8lR/0tVi2qwwoXwPiKZcdK8Jbd0hK0OMYEn+lnZ1LJXWUM48oJmeh5oORcjlkLDA==
X-Received: by 2002:a05:6402:501d:b0:443:1c7:ccb9 with SMTP id p29-20020a056402501d00b0044301c7ccb9mr7398959eda.101.1661530600909;
        Fri, 26 Aug 2022 09:16:40 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id y27-20020a1709060a9b00b0073d7bef38e3sm1071151ejf.45.2022.08.26.09.16.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Aug 2022 09:16:39 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id u5so2346035wrt.11
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 09:16:39 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr207547wrr.583.1661530599315; Fri, 26
 Aug 2022 09:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220826084813.1.I8c9a771fcf4d1cfb6e8e0ef17a153143af9a644d@changeid>
In-Reply-To: <20220826084813.1.I8c9a771fcf4d1cfb6e8e0ef17a153143af9a644d@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 26 Aug 2022 09:16:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X0FVeEKS9OLXrsK+S==BvxrnG8wZ-fjasJ-=kOPr=-=Q@mail.gmail.com>
Message-ID: <CAD=FV=X0FVeEKS9OLXrsK+S==BvxrnG8wZ-fjasJ-=kOPr=-=Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280-herobrine: Don't enable the USB
 2.0 port
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

 Hi,

On Fri, Aug 26, 2022 at 8:48 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The USB 2.0 port of sc7280 is currently not used by any herobrine
> board. Delete the device tree entries that enable it.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> I was also told that the 2.0 port is for the Embedded USB Debugger
> (EUD) only, but I'm not sure if that's true. From the Linux side
> it looks like a regular dwc3 controller.
>
>  arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 12 ------------
>  1 file changed, 12 deletions(-)

I can confirm it's not hooked up anywhere on herobrine-class boards.
Disabling looks good to me. If we later have a herobrine variant where
this is enabled we can enable it just for that variant.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
