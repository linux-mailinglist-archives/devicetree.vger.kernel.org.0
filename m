Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E25DF4E31B4
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 21:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353328AbiCUU17 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 16:27:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353304AbiCUU1z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 16:27:55 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9F37165BA3
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:26:29 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id w3-20020a4ac183000000b0031d806bbd7eso20497119oop.13
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 13:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=taGGw6FofrDBtg863EraXXBX2AFEQktzuZisXMbt1m4=;
        b=Sjv8nPGkQ9wOO76X9eqZVeXYPv5fgfvaAsJeozgl/xckR0NlSAO3HO9Zys0XN/ZgSr
         wnfaXZnZuDDk8C2PQJxSqeSIPvOflZMi4+pPTT586WrfBLEYLZs0eFOabMkPejm/tMVp
         yBzclX9et8LnF3XdHOKqh/wM9gxa5OlZi7f+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=taGGw6FofrDBtg863EraXXBX2AFEQktzuZisXMbt1m4=;
        b=kX50TJMFBw4w21BfR3OehJYErau+Gy+rlbwMVENjH6vMwf9MUTQAIPm9MIGbTazhNh
         ZtewoJovpUrqN2jPam8WATuFM40R4FaKBnvSFCQm15/rlAqpFvqROLqNOkMD2EofuA9Q
         m8byvMmEA0sOchy5s/olgImoVhscf7usoCj0PM0BJmh0fdFybtrnptwJg61iQbtHpvnW
         04suV+XUZ9Jm4Cajeh/jyRXh7hc8a6BLw1fSzXD8l/pNmx7KETgaGfeJuFstuZUatPIR
         z+t1+5unc1+bib2lqqG42TaJUpQfCJ86SYB03k7lIF479HIgVDGdQFplu2P1cNrVZYsz
         ZbAw==
X-Gm-Message-State: AOAM532As38BGpil29TuaYSCSeAuOHypgsuM1L7zfMsBCpwDRqsduxBl
        7OV1rnykTREPceoyVLMl97k+DVp5e9GI8CDkRMrhdA==
X-Google-Smtp-Source: ABdhPJz8HOZEVrIhWX7eSAQXVQnCmvsiRO0z81j0NHxZfPtMNjOYbIOcA/jpMSwp4ajyvemLspWs71EsYbEprbwEuuI=
X-Received: by 2002:a05:6870:b69c:b0:dd:b74b:4099 with SMTP id
 cy28-20020a056870b69c00b000ddb74b4099mr326223oab.193.1647894389066; Mon, 21
 Mar 2022 13:26:29 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 21 Mar 2022 21:26:28 +0100
MIME-Version: 1.0
In-Reply-To: <1647863959-3289-4-git-send-email-quic_srivasam@quicinc.com>
References: <1647863959-3289-1-git-send-email-quic_srivasam@quicinc.com> <1647863959-3289-4-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 21 Mar 2022 21:26:28 +0100
Message-ID: <CAE-0n50xoWpd8S82W=xjbKBjqD-bgyMM8b539PV83=fHBQC7yw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sc7280: add lpass lpi pin
 controller node
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

Quoting Srinivasa Rao Mandadapu (2022-03-21 04:59:19)
> Add LPASS LPI pinctrl node required for Audio functionality on sc7280
> based platforms.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 147 +++++++++++++++++++++++++++++++++++
>  1 file changed, 147 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 8d8cec5..499299a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -1987,6 +1987,153 @@
>                         qcom,bcm-voters = <&apps_bcm_voter>;
>                 };
>
> +               lpass_tlmm: pinctrl@33c0000 {
> +                       compatible = "qcom,sc7280-lpass-lpi-pinctrl";
> +                       reg = <0 0x33c0000 0x0 0x20000>,
> +                               <0 0x3550000 0x0 0x10000>;
> +                       gpio-controller;
> +                       #gpio-cells = <2>;
> +                       gpio-ranges = <&lpass_tlmm 0 0 15>;
> +
> +                       #clock-cells = <1>;
> +
> +                       dmic01_active: dmic01-active {
> +                               clk {
> +                                       pins = "gpio6";
> +                                       function = "dmic1_clk";
> +                                       drive-strength = <8>;
> +                                       output-high;

The rule of thumb is that drive strength, output/input, and bias
properties should be in the board file, because the board layout decides
the drive strength, the output level could be inverted on the board, and
the biasing could be done externally (or not) via pullup/pulldowns on
the net. The gpio driver should be able to make pins into inputs
automatically when the gpio is requested and used so having input or
output is typically wrong and should be handled by the consumer driver.

> +                               };
> +
> +                               data {
> +                                       pins = "gpio7";
> +                                       function = "dmic1_data";

So in the end I'd expect to only see pins and function properties in the
SoC dtsi file.

> +                                       drive-strength = <8>;
> +                               };
> +                       };
> +
> +                       dmic01_sleep: dmic01-sleep {
> +                               clk {
> +                                       pins = "gpio6";
> +                                       function = "dmic1_clk";
