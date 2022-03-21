Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD4534E31C9
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 21:30:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350305AbiCUUbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 16:31:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347907AbiCUUbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 16:31:43 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44F607CB04
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:30:17 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id q129so15506898oif.4
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=SVEe7hUZOZ574KT711GyJJUr8pqUU3sbXrrP/FH6lUQ=;
        b=HgN8E2bzL5A2bOlDz55Mv25/tt/RKwL9jSNjt40u/m04w3/7P+7g9c1HkyBvlAeQfV
         2dhF+CnMi7h+Hj27pLjB7vrt+MzJ33fr0SD0TfhrIdKlbvJbV3XL81l38mZBlmlSDQYN
         U405VmvwgH/ui0st6tSGtygKgfRSLlo87paTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=SVEe7hUZOZ574KT711GyJJUr8pqUU3sbXrrP/FH6lUQ=;
        b=m0MPQaYIPM/K59BxEyKOsCdIXdGybvQd2GokCp8nOoDlJhy1EWyNeqfeSomJZ+Lxjl
         RXmcFE7IHajI50LwTb6Fo4w8sHsgFjLUNTfYSCYu8/H1FisLrF/VV3ZkSYRwCnNHjs6Z
         N5VSirGyDCyY5b2+HU1hM7Ip3C6TXPK9U6Y6ucM1FaPKFSxdYUfhyH1AxQG2Ffqnh6JI
         g9+JJctjQvbX19CqdVF/w7r4kI5BZ02r9eC4bklJFwjPOTt+1emp09n1VFj6vnziWqwI
         we7raAeEjUOsNTDQrDU4XVvoV+v8pWaRBGGeotXUGb96SSVrtTITHlN/R61hx4gFTteW
         KKPA==
X-Gm-Message-State: AOAM533uEW46O//t1TkVE2x+j1V6Jf2NqYJYYu+boIuU9AdZuJuxG4gu
        KcJHe6dszQiUxKXOudtfIJ9X9KPSlxX1I27zge16gA==
X-Google-Smtp-Source: ABdhPJy+w/ls2aSZCJrRsAdMrUWPb6dkwdIyuIvulQVig3ErIeGd57xFdDTojd0oyBT5QVRYIJdm9YWYMeqLFjZcwKg=
X-Received: by 2002:aca:a9c8:0:b0:2da:45b6:b796 with SMTP id
 s191-20020acaa9c8000000b002da45b6b796mr428878oie.193.1647894616632; Mon, 21
 Mar 2022 13:30:16 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 21 Mar 2022 21:30:16 +0100
MIME-Version: 1.0
In-Reply-To: <1647863959-3289-3-git-send-email-quic_srivasam@quicinc.com>
References: <1647863959-3289-1-git-send-email-quic_srivasam@quicinc.com> <1647863959-3289-3-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 21 Mar 2022 21:30:16 +0100
Message-ID: <CAE-0n5131FQaejVVHKwW9ZnoGM+uy6+jjJZMkh5Pa82=r5ojuQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: sc7280: Add pinmux for I2S
 speaker and Headset
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-03-21 04:59:18)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 688fa95..4a7b18a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -462,7 +462,28 @@
>         drive-strength = <10>;
>  };
>
> +&sec_mi2s_data0 {
> +       drive-strength = <6>;
> +       bias-disable;
> +};
> +
> +&sec_mi2s_sclk {
> +       drive-strength = <6>;
> +       bias-disable;
> +};
> +
> +&sec_mi2s_ws {
> +       drive-strength = <6>;
> +};
> +
>  &tlmm {
> +       amp_en: amp-en {
> +               pins = "gpio63";
> +               function = "gpio";

I'm pretty sure 'function = "gpio"' isn't needed. When a gpio is
requested with gpio functions it gets muxed to gpio function
automatically. See commit 1de7ddb3a15c ("pinctrl: msm: Mux out gpio
function with gpio_request()").

> +               bias-pull-down;
> +               drive-strength = <2>;
> +       };
> +
>         bt_en: bt-en {
>                 pins = "gpio85";
>                 function = "gpio";
