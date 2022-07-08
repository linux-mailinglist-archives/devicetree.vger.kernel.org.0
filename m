Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3284D56BF61
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 20:35:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238860AbiGHR7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 13:59:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238598AbiGHR7P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 13:59:15 -0400
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E0A31F2F6
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 10:59:13 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id s204so6412392oif.5
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 10:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=YHV2Cc5LaBeGv/AExh1dctdQCQcN3cDdvTIsITOZX7o=;
        b=SldvymO6Yx3hvrPoQMk0aRKOPOW/TDdG0xvoqwq2gjl3jQDewEQNxT7IZ2n4Y6Gu4l
         1xcyHRkCgBMAuyc9PpJUug4dwDal14CECAA7tgXkyHs4GcEPkOxnJ2O2ak6sdWhta0wq
         q6WxCmt02sZKcOWwAvCuLlMjiru2aylxIdRlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=YHV2Cc5LaBeGv/AExh1dctdQCQcN3cDdvTIsITOZX7o=;
        b=ApeeqOnl0W1l1Y5eQHu+ksodLscmhoUrXnTGwrEyryPwllHH/3vmzKM0iuBV803AS/
         s6GcVHq3jIL5FMZUKe6FxVGgFizX+GRdQaqW7pP0n3f8USiOLEld629T3pYzNkAMmUic
         Q9C6rvA5BGOfPxVcqC6kNmqYYVf1c74hPWlsPoHhgEwVFLyf+1XWeWqOL6F/OYQFTZ2u
         knfzpRFE4VwHNaw2TUczmwlWMa2+3dJpRYUDuPd6+cMKQNi/Vbha02MdVlNa86u2sIG4
         3WU4QusBqd5rJm+pW8J/XI+Zn9HbYaanYKDll1BSmZFFnOp/QdWZi4j143yUpi+BWdFu
         vUKw==
X-Gm-Message-State: AJIora/w5783H1nNrP9w9TLQddoKHFwR5aX5Ank6KHSU/E21gOoKLJWU
        WvWQz+lCPwY1/E25rUL7rNawv3onVBucxPnCc3QmdQ==
X-Google-Smtp-Source: AGRyM1uArgMx4SavTqMDhwhs03SUm2moqY8zMl1EvGjoPdvbyFKjlJ+ON6yeDAIwwIeg6LPbcSDqSg6//DxGeB4CkAs=
X-Received: by 2002:a05:6808:e87:b0:32e:4789:d2c with SMTP id
 k7-20020a0568080e8700b0032e47890d2cmr578880oil.193.1657303151889; Fri, 08 Jul
 2022 10:59:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 8 Jul 2022 10:59:11 -0700
MIME-Version: 1.0
In-Reply-To: <1657197381-1271-1-git-send-email-quic_srivasam@quicinc.com>
References: <1657197381-1271-1-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 8 Jul 2022 10:59:11 -0700
Message-ID: <CAE-0n53X8yyWr+Q+3RpciCeZcW+t+jgZs3eqNF9O8hJcw0cq0Q@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Move wcd specific pin conf
 to common file
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-07-07 05:36:21)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-wcd9385.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-wcd9385.dtsi
> index 32a1e78..859faaa 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-wcd9385.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-wcd9385.dtsi
> @@ -5,6 +5,70 @@
>   * Copyright (c) 2022, The Linux Foundation. All rights reserved.
>   */
>
> +/* PINCTRL */
> +
> +&lpass_dmic01_clk {
> +       drive-strength = <8>;
> +       bias-disable;
> +};
> +
> +&lpass_dmic01_clk_sleep {
> +       drive-strength = <2>;
> +};
> +
> +&lpass_dmic01_data {
> +       bias-pull-down;
> +};
> +
> +&lpass_dmic23_clk {
> +       drive-strength = <8>;
> +       bias-disable;
> +};
> +
> +&lpass_dmic23_clk_sleep {
> +       drive-strength = <2>;
> +};
> +
> +&lpass_dmic23_data {
> +       bias-pull-down;
> +};
> +
> +&lpass_rx_swr_clk {
> +       drive-strength = <2>;
> +       slew-rate = <1>;
> +       bias-disable;
> +};
> +
> +&lpass_rx_swr_clk_sleep {
> +       bias-pull-down;
> +};
> +
> +&lpass_rx_swr_data {
> +       drive-strength = <2>;

I suspect this was discussed before, but why do we need to modify drive
strengths on pins that aren't in output mode? I assume either rx_swr or
tx_swr is unidirectional.

> +       slew-rate = <1>;
> +       bias-bus-hold;
> +};
> +
> +&lpass_rx_swr_data_sleep {
> +       bias-pull-down;
> +};
> +
> +&lpass_tx_swr_clk {
> +       drive-strength = <2>;
> +       slew-rate = <1>;
> +       bias-disable;
> +};
> +
> +&lpass_tx_swr_clk_sleep {
> +       bias-pull-down;
> +};
> +
> +&lpass_tx_swr_data {
> +       drive-strength = <2>;
> +       slew-rate = <1>;
> +       bias-bus-hold;
> +};
> +
>  &mi2s1_data0 {
>         drive-strength = <6>;
>         bias-disable;
