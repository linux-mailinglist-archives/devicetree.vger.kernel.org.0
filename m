Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E61CA4E7540
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 15:43:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356543AbiCYOpN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 10:45:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232422AbiCYOpM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 10:45:12 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6135F54180
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 07:43:36 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id bg10so15830222ejb.4
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 07:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QdaepbbRGWYsyaL2QkmSp7WtYYHThf/iqjZK0d+zPJ8=;
        b=dm/pO7aCRa1CzlKVqD1bJ4Ls9HUp9fNlvHw4n7CxSpTF7W9hnwFyoz95R0sfBwDHb2
         nAiu29CamPcQ9qjyahRRfHuzw+Hv1a35ANlR1cNzxRtsdrS2BULx5xJ6pkQhcm+9GrA+
         BSwDnimM+mRblUqWKImuZnAJxdpMBCGEQhCIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QdaepbbRGWYsyaL2QkmSp7WtYYHThf/iqjZK0d+zPJ8=;
        b=tPSplwfjK+2WPB32bNQldmDHOoGgsS3XjBVUW2yVpjuCZsJ4ZycjmuAnyxXTsSe8O5
         UTsUItOraH6yMjw1y98XaxS/AEnsvgcCQXbkoY9DLKl9sZdP7aHEx9+YumwnqftZqk/F
         9quZqtVYV7suP14GfEGfSRQycgFubsD8QQ0WMEQp6ywrfumSM75qXEW+M5NYdUc3oRYL
         cUcSuPPwDiS3OqGJvfprECCbCimsYywdKkfrPXedNLReP5qzyo+MlahoHq7XoaK1ahfW
         c8hp0bsbhmCQrfUseVsfNs+5sml2OaaePFOcFVkKfwyHoNz0oJjilRPY4zZStPBo1tPc
         hICg==
X-Gm-Message-State: AOAM53185NZL41btu7gFWFKF3aG+QmK+91XP60yuuDxPDRkJmu7Tvhvx
        jTehmAqppY7YGQ4Q8yt8MM9ZQiWvt482X8owS8M=
X-Google-Smtp-Source: ABdhPJwIX4LY2hSKkUWgr4lsSE9AuC/g+0Uo32Wk/TIuWURb9FUMFbsKG668Sicwo4fQqLzrzmvHkg==
X-Received: by 2002:a17:906:32cf:b0:6d5:83bc:e962 with SMTP id k15-20020a17090632cf00b006d583bce962mr12042636ejk.108.1648219414625;
        Fri, 25 Mar 2022 07:43:34 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com. [209.85.221.44])
        by smtp.gmail.com with ESMTPSA id u3-20020a17090657c300b006d01de78926sm2427342ejr.22.2022.03.25.07.43.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 07:43:33 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id t11so11177743wrm.5
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 07:43:33 -0700 (PDT)
X-Received: by 2002:a5d:4491:0:b0:203:f63a:e89b with SMTP id
 j17-20020a5d4491000000b00203f63ae89bmr9410635wrq.342.1648219413124; Fri, 25
 Mar 2022 07:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <1648217145-725-1-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1648217145-725-1-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 25 Mar 2022 07:43:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X2mF45Fsi+2eSRPfUKa9LCmYSkv8E586aGxPTxC0JsWw@mail.gmail.com>
Message-ID: <CAD=FV=X2mF45Fsi+2eSRPfUKa9LCmYSkv8E586aGxPTxC0JsWw@mail.gmail.com>
Subject: Re: [PATCH V2] arm64: dts: qcom: sc7280-idp: Configure cts sleep
 pinctrl to bias-bus-hold
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_msavaliy@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Mar 25, 2022 at 7:06 AM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> WLAN rail was leaking power during RBSC/sleep even after turning BT off.
> Change sleep pinctrl configuration to handle same.
>
> Signed-off-by: Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
> ---
> v2: used bias-bus-hold as per review comments
> v1: intial patch used bias-disable
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

No objections from me now. ...but we should probably be changing _all_
of them? ...and by "all" I mean _both_ the sleep and wake state of the
pins and this config across all the devices. In the very least all the
sc7280 ones, but maybe even the sc7180 ones.

$ git grep "Configure a pull-down on CTS" -- arch/arm64/boot/dts
arch/arm64/boot/dts/qcom/sc7180-idp.dts:                 * Configure a
pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7180-idp.dts:                         *
Configure a pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi:            * Configure a
pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi:                    *
Configure a pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts:      *
Configure a pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r0.dts:
  * Configure a pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7280-idp.dtsi:        * Configure a
pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7280-idp.dtsi:                * Configure a
pull-down on CTS to match the pull of
arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi:     /* Configure a
pull-down on CTS to match the pull of the Bluetooth module. */
arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi:              * Configure a
pull-down on CTS to match the pull of

-Doug
