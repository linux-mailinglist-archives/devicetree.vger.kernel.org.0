Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B27E977A608
	for <lists+devicetree@lfdr.de>; Sun, 13 Aug 2023 12:56:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbjHMK4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Aug 2023 06:56:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbjHMK4n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Aug 2023 06:56:43 -0400
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CD6E1712
        for <devicetree@vger.kernel.org>; Sun, 13 Aug 2023 03:56:44 -0700 (PDT)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-d35a9d7a5bdso3370018276.0
        for <devicetree@vger.kernel.org>; Sun, 13 Aug 2023 03:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691924203; x=1692529003;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nnCAXcHQ5YbbgyoTwMdYIMHDBrk3F+4fVGdkjI2OoZM=;
        b=iOuIxXiPcej0r67OfAA+KmyeRoR8tl1Qzg8AzJ+Q6x9HfQB9l/fmQ3m0RIawpKYpXI
         Fn+XK/OhY67bvUOpfo/L66cS1zHhXwod5sVb+GnOiMtbK1qXZ5l4QWLFxk464KaxWNls
         Rvm6cKFKFzjvRMXs2q774ImxcLW6otu+bVydg6MpW6Sd/fkE/AaKhbVXowUQyk1oWFA5
         ZoT0T9qJRLKbH1ED9KINRrajkDSFaowxHUTuwoV7LpqMpRNjjLNjkmmdnHMqzK74kzei
         QGf3Zr1v8fA0ZAOBqVp1tC0I9n7SUSCyozN/zv5rXTbdhpHddZQuL+XulTKa5EK0mL/p
         Cg1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691924203; x=1692529003;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nnCAXcHQ5YbbgyoTwMdYIMHDBrk3F+4fVGdkjI2OoZM=;
        b=TBeGB+vtyKwMOAk/i29WS5YH+zviE+OxhNceVWtL6Niskg+9wYCyIe7bZE5irTDTXs
         Fq1r/O0puYh1gtEl0U+hQKR4026IXdbyp+EDpK/5pDXBDrYn9L8SFqpqR4/x9Jg2c3ae
         B2iD6XWieiKJLrhaLiDEBaSo+J3VmqaehDX4rpzQ2C0sXKa00/X1DxcqQBc46E4j1EGI
         iI+9XMOoyNKav2qZd+OS7XZMhZxxUliy+Eu5L5zgb42gQJJ/kCB1+2dBzSK3lioR7acI
         fQ2xJOJYKBD1wMXCUtHkBANyiBVgB0f4y2FnQZp4M7peji32Hw8IN0HE7apyWpZFqs8E
         yq/A==
X-Gm-Message-State: AOJu0Yx6ozfzNm6Qjp3sS6pbyD3tC97PImqoBkN0zDdOaeJJZEnz5Zui
        o1plGhbXmVdyeJ9ut01o4xIDTUd4MqLnISCvZvQMzQ==
X-Google-Smtp-Source: AGHT+IFB1bUAZwI2DUr/FWaK8qZnieSurYZeAHm5xX+MszEu4nGhXFgKs4+dBfm5GfEVDJZKeulaCwIjwDWANu1uE6E=
X-Received: by 2002:a25:dad7:0:b0:d62:ba45:539f with SMTP id
 n206-20020a25dad7000000b00d62ba45539fmr6989446ybf.43.1691924203356; Sun, 13
 Aug 2023 03:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230806-xiaomi-star-v1-0-0c384e8b5737@gmail.com>
 <20230806-xiaomi-star-v1-1-0c384e8b5737@gmail.com> <244d165a-1e53-401e-be36-6bb3f4f260ae@linaro.org>
In-Reply-To: <244d165a-1e53-401e-be36-6bb3f4f260ae@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 13 Aug 2023 13:56:32 +0300
Message-ID: <CAA8EJpqiaEamZ6u9D_Sn-bgn8qdpqsQ2EMt7Tb9hKr5kNO2JFg@mail.gmail.com>
Subject: Re: [PATCH 1/3] soc: qcom: pmic_glink: enable UCSI for SM8350
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     wuxilin123@gmail.com, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 12 Aug 2023 at 14:12, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 5.08.2023 19:03, Xilin Wu via B4 Relay wrote:
> > From: Xilin Wu <wuxilin123@gmail.com>
> >
> > UCSI is supported on SM8350. Allow it to enable USB role switch and
> > altmode notifications on SM8350.
> >
> > Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> > ---
> I can confirm this is also required for my SM8350 Xperia 1 III.

Last time I checked it, UCSI was broken on the SM8350 HDK. Trying to
enable it caused pmic_glink to stop working after some port
operations.

-- 
With best wishes
Dmitry
