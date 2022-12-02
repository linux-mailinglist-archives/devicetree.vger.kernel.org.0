Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2478F640890
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 15:37:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232265AbiLBOhU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 09:37:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232557AbiLBOhR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 09:37:17 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FF29DF600
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 06:37:10 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id z20so6668064edc.13
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 06:37:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R7S1hXfJrdA2OO05qT0bVLolHIgquQtzY/qiJ0ELKso=;
        b=iFbV+ZBpq8wDqSDeD0899VZYy/j7fXEh0JVZ4Ka/doaR3TEJKeRuxWUCeWOlPa2fPr
         abC1KxI3WehkC31cOilHKIqbJIsG5th63gllZOJqo10ba+MTr51kqHv2Anx6CKgXJwY1
         Qn/K+41ta0ATg6z/bJC9YrqtPWaQT/RDRGo7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R7S1hXfJrdA2OO05qT0bVLolHIgquQtzY/qiJ0ELKso=;
        b=AlautV4uPt0kD2V7UM5AQbSqRu27Xg7dmdGBWljfMJPkgAV7mzw+rS554E/4knKDuH
         72qeC/38CHVg0ch1o/rsUgYSl3QAulvVSvEtDK615c27We9DhT4G+wbLyIXUQ6d6bCAa
         sB0k195ESy98ELXg9UYGv9J/SzwQ1VDWWejJpG5MpDC0DoXS4Y5pwfs7OaBUI9xxSzHV
         XM2TEGoZaBKM5ZvERXOufMQa326X3MgOXyKUvtphLDslnW/ZI3e+ByP8bTAKbOLcPbnD
         5u8s1LwGLj+yci1KpDKKi82L1Y8jMvcPdRuCcXHbF5YOanLVvltdzeZIVrWbPxBRIWXm
         zG1w==
X-Gm-Message-State: ANoB5pnfDVNxgV3R/M4gPTSSsd8k1Dx+NqKXRBK+Iibd/q9l1MQgvxEF
        5SjFPRtkAXPrIKYOAg4hEqnx0/crJJ1hoTFAaZY=
X-Google-Smtp-Source: AA0mqf4ExIgcZHzCfyGKhUuzPZySXbqmZWnyiVYhbPEPskrrpbd2adClmRgsy1Dq2d/sgw4f0PXfwQ==
X-Received: by 2002:aa7:c60b:0:b0:462:750b:bced with SMTP id h11-20020aa7c60b000000b00462750bbcedmr62498731edq.313.1669991828961;
        Fri, 02 Dec 2022 06:37:08 -0800 (PST)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id j10-20020a17090623ea00b00782ee6b34f2sm3041379ejg.183.2022.12.02.06.37.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 06:37:07 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id t1so3646564wmi.4
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 06:37:07 -0800 (PST)
X-Received: by 2002:a05:600c:3c8e:b0:3d0:69f4:d3d0 with SMTP id
 bg14-20020a05600c3c8e00b003d069f4d3d0mr12058890wmb.93.1669991827159; Fri, 02
 Dec 2022 06:37:07 -0800 (PST)
MIME-Version: 1.0
References: <20221118164201.321147-1-krzysztof.kozlowski@linaro.org>
 <20221118164201.321147-2-krzysztof.kozlowski@linaro.org> <CAD=FV=XeaskcBRVRQDoha7Xiv9j57fuvtcSJUeN7HCZSGVJ8uQ@mail.gmail.com>
 <68bcdf25-e8e3-f817-f213-efb0bce3f43a@linaro.org>
In-Reply-To: <68bcdf25-e8e3-f817-f213-efb0bce3f43a@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Dec 2022 06:36:54 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WBNpeWK31dCgzX5QAuR7AySkp_dEyY8WK3o8+SaiPxOg@mail.gmail.com>
Message-ID: <CAD=FV=WBNpeWK31dCgzX5QAuR7AySkp_dEyY8WK3o8+SaiPxOg@mail.gmail.com>
Subject: Re: [RFT PATCH v2 2/2] arm64: dts: qcom: sdm845: align TLMM pin
 configuration with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
        Fritz Koenig <frkoenig@google.com>
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

On Fri, Dec 2, 2022 at 12:15 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> >>                         qup_uart6_4pin: qup-uart6-4pin-state {
> >> -
> >> -                               cts-pins {
> >> +                               qup_uart6_4pin_cts: cts-pins {
> >>                                         pins = "gpio45";
> >>                                         function = "qup6";
> >> -                                       bias-pull-down;
> >
> > After your patch, where is the above bias set for cheza, db845c,
> > oneplus, shift-axolotl, ...?
> >
> >
> >>                                 };
> >>
> >> -                               rts-tx-pins {
> >> +                               qup_uart6_4pin_rts_tx: rts-tx-pins {
> >>                                         pins = "gpio46", "gpio47";
> >>                                         function = "qup6";
> >> -                                       drive-strength = <2>;
> >> -                                       bias-disable;
> >
> > After your patch, where is the above bias / drive-strength set?
>
> They don't use 4-pin setup. If they use, I would assume they will
> override the entries just like sdm850 boards (where I override it to set
> these).
>
> Alternatively I can keep it in DTSI, but it is not really property of
> the SoC.

I see things like:

.../sdm845-cheza.dtsi:     pinctrl-0 = <&qup_uart6_4pin>;

...before your patch that would get the bias/drive strength from the
SoC dtsi, right? After your patch, you've removed it from the dtsi but
not added it to the board. ...so I think it's a net change. Did I mess
up / miss something?
