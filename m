Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E37949928E
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 21:21:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350591AbiAXUVn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 15:21:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348790AbiAXUTX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 15:19:23 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3F32C014DC8
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 11:38:57 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id s9so27123320oib.11
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 11:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=kwkbTwrBzC5jE9f2nafUwAahS6VU0ATjJ7MFCgX616c=;
        b=mWzdzA6qhipKU0Y435He/wNbJHmgEgP9OP8ykZrxXsJZKtUyYKTa7HDaY/sn7/3hw/
         t4JkQkLEWBIXqUzmazVAIkbKn2Pq2GhSbf5eHq211Qwc0uXY8RLYXjjyKX5W2LC+pqQZ
         2QA1rTJe5w1qbfpd9/fp2/IL7+zE8+duxtWtA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=kwkbTwrBzC5jE9f2nafUwAahS6VU0ATjJ7MFCgX616c=;
        b=2bdD/pkFjTvezbPj9+vWHBgKVg/k3qGR1LRfDo0FI7B5MU0MsLO0HYCjLlDHkPQ86i
         Sxt1lRgdW5P7y6YAi9p9BNdSAwqz+X9p9UMF8fDL9zGyoEki2UlNNFs8mS0THXClnbvo
         7NUL1NBnuSKWsldu/5diwcBT0FWpGtduSf6JzxmSRIck7cFfLMwDXpx6bqRmhCMoVpeH
         gM0WeweReuzg/Rg6nwVuqWhDxyJFmOlwE7jU8ReY3bVyXu9jJlkMarg5kxKQZJioFv0w
         VNbI6IK8HSpRPNuQ4evwFhYqR+eRdyGpYCCpXr88WeJpPVszb1OyPce/xI0C0tQYDTdJ
         YPBw==
X-Gm-Message-State: AOAM5300mDcL7kAOxXSXvAYUlKu9/auaimMFAVPCBS9nF+F8YQ0vq/G3
        e84QbbQ9aiGFK/RuVneq0+NeGRadzQVfWOwLfxRJMg==
X-Google-Smtp-Source: ABdhPJwiCnqu6yM4uv/PV0S4Qz6YlQlrhPVpkOJMdAypGHgIGkKVo6c8u59L5EKFTyd32VvCZwg4u2QBBm+6bRT9OCc=
X-Received: by 2002:aca:f241:: with SMTP id q62mr2885361oih.64.1643053137039;
 Mon, 24 Jan 2022 11:38:57 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 24 Jan 2022 11:38:56 -0800
MIME-Version: 1.0
In-Reply-To: <20220124165745.16277-1-tdas@codeaurora.org>
References: <20220124165745.16277-1-tdas@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 24 Jan 2022 11:38:56 -0800
Message-ID: <CAE-0n53pZG+LG8v35O6untzjn6H9dDOyrTX8Q4joHjcV3GAWSQ@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Add lpasscore & lpassaudio
 clock controllers
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Taniya Das (2022-01-24 08:57:45)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 937c2e0e93eb..0aa834ce6b61 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -1744,6 +1746,47 @@
>                         #clock-cells = <1>;
>                 };
>
> +               lpass_audiocc: clock-controller@3300000 {
> +                       compatible = "qcom,sc7280-lpassaudiocc";
> +                       reg = <0  0x03300000 0 0x30000>;
> +                       clocks = <&rpmhcc RPMH_CXO_CLK>,
> +                              <&lpass_aon LPASS_AON_CC_MAIN_RCG_CLK_SRC>;
> +                       clock-names = "bi_tcxo", "lpass_aon_cc_main_rcg_clk_src";
> +                       power-domains = <&lpass_aon LPASS_AON_CC_LPASS_AUDIO_HM_GDSC>;
> +                       #clock-cells = <1>;
> +                       #power-domain-cells = <1>;
> +               };
> +
> +               lpass_aon: clock-controller@3380000 {
> +                       compatible = "qcom,sc7280-lpassaoncc";
> +                       reg = <0  0x03380000 0 0x30000>;
> +                       clocks = <&rpmhcc RPMH_CXO_CLK>,
> +                              <&rpmhcc RPMH_CXO_CLK_A>,
> +                              <&lpasscc LPASS_CORE_CC_CORE_CLK>;
> +                       clock-names = "bi_tcxo", "bi_tcxo_ao", "iface";
> +                       #clock-cells = <1>;
> +                       #power-domain-cells = <1>;
> +               };
> +
> +               lpasscore: clock-controller@3900000 {
> +                       compatible = "qcom,sc7280-lpasscorecc";
> +                       reg = <0  0x03900000 0 0x50000>;

Nitpick: Why the extra space here? ^ Applies to all three above.

> +                       clocks =  <&rpmhcc RPMH_CXO_CLK>;
> +                       clock-names = "bi_tcxo";
> +                       power-domains = <&lpass_hm LPASS_CORE_CC_LPASS_CORE_HM_GDSC>;
> +                       #clock-cells = <1>;
> +                       #power-domain-cells = <1>;
