Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2E6FA63E292
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 22:19:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbiK3VTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 16:19:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbiK3VTr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 16:19:47 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32B5B8B1A3
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 13:19:47 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id gu23so26185540ejb.10
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 13:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=G2ciZKFGb7wlsZU3hBpWnnJGAjRhKB6ThoGOD1MmZTg=;
        b=YyZZAgg9GfGJYeUSWxMKVAdtaJSDhQL1d0UyJ2GUUWo0DD14x70Nc2Uk4aNpZzQKcc
         epjbVSjkck3DvE5ruS0hdnw/PGmLapHLMTt5y14EOPPqfyZD46SlJPlF9qP7ZWtm52eI
         LLRgt3s20ISsVQSpIIW22HolxZonGZgCkYIrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G2ciZKFGb7wlsZU3hBpWnnJGAjRhKB6ThoGOD1MmZTg=;
        b=NWjJIRNnfGqB2uWSWaX1w5q2if6ib2Yfmo44NM8Mu6w0WHKzZfSOp+Qwk/fDM1YDKz
         ddpIA2SiNXQkJuFPBKJg6gLUFh+CqiVkrhgMWJ40XZ7fiuzOfdhR9RiYFf9IZ1lOpxBW
         MBq5oPDwiKvFDPkNkuSUzZoU4hmA6758UcPlCyjIBbmA3KCVCuBghE+IO7IfRvt2Yk3G
         QAeFC/ly+ZIvUID6Q7ZhRg6l1OaMuPsqSW/lR6EynMqNdKMtE0PXH2QsGO3sV/rFzjVL
         T3jbFTL8j1fD4uZXhAbyYAfokvP296XX2r7ajEOjfuc/bYvzeQLgWVlHVgKqkvsPSFvL
         s3og==
X-Gm-Message-State: ANoB5pmqoEOk9181t3NSxAAdq59igeL4eMepEoIuRJfkdDJlTacV5qH1
        K+kGQ0NtMj7RwaIl+a4/MiAhhR5UUdC2jg1h
X-Google-Smtp-Source: AA0mqf4xAW31FFuk8/xW4I7EKNCvKfzuUxkS184bkxFc9y/nkGSOnbNGqPn/JIyLVqgvVqnmlEY7dQ==
X-Received: by 2002:a17:906:4f0b:b0:78d:aaf9:7b8c with SMTP id t11-20020a1709064f0b00b0078daaf97b8cmr54636806eju.229.1669843185396;
        Wed, 30 Nov 2022 13:19:45 -0800 (PST)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id b23-20020aa7df97000000b004611c230bd0sm1027748edy.37.2022.11.30.13.19.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 13:19:44 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id m14so5218272wrh.7
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 13:19:43 -0800 (PST)
X-Received: by 2002:adf:cd82:0:b0:238:b29e:4919 with SMTP id
 q2-20020adfcd82000000b00238b29e4919mr38939604wrj.583.1669843183080; Wed, 30
 Nov 2022 13:19:43 -0800 (PST)
MIME-Version: 1.0
References: <20221130142829.v10.1.Idfcba5344b7995b44b7fa2e20f1aa4351defeca6@changeid>
 <20221130142829.v10.2.I80aa32497bfd67bc8a372c1418ccc443ccf193e4@changeid>
In-Reply-To: <20221130142829.v10.2.I80aa32497bfd67bc8a372c1418ccc443ccf193e4@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 30 Nov 2022 13:19:29 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VSLz6TLgdvzqdqi04C48gmqyRxVOtzWEdFmKQy9NuAOQ@mail.gmail.com>
Message-ID: <CAD=FV=VSLz6TLgdvzqdqi04C48gmqyRxVOtzWEdFmKQy9NuAOQ@mail.gmail.com>
Subject: Re: [PATCH v10 2/2] arm64: dts: qcom: sc7280: Add DT for sc7280-herobrine-zombie
To:     Owen Yang <ecs.taipeikernel@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>, Harvey <hunge@google.com>,
        Bob Moragues <moragues@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Gavin Lee <gavin.lee@ecs.com.tw>,
        Matthias Kaehlcke <mka@google.com>,
        Abner Yen <abner.yen@ecs.com.tw>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
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

On Tue, Nov 29, 2022 at 10:30 PM Owen Yang <ecs.taipeikernel@gmail.com> wrote:
>
> +&pm8350c_pwm_backlight{
> +       pwms = <&pm8350c_pwm 3 200000>;
> +};

This is in the right location now, but previously I mentioned that it
would be nice to have a comment explaining what you're doing. In other
words, I wish the above was something like:

&pm8350c_pwm_backlight{
       /* Set the PWM period to 200 microseconds (5kHz duty cycle)
       pwms = <&pm8350c_pwm 3 200000>;
};

If you spin a v11 with that change feel free to add my Reviewed-by tag.


-Doug
