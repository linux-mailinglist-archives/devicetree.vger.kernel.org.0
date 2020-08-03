Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16DB123AC24
	for <lists+devicetree@lfdr.de>; Mon,  3 Aug 2020 20:09:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727880AbgHCSJg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Aug 2020 14:09:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbgHCSJf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Aug 2020 14:09:35 -0400
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com [IPv6:2607:f8b0:4864:20::943])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C4BFC06174A
        for <devicetree@vger.kernel.org>; Mon,  3 Aug 2020 11:09:35 -0700 (PDT)
Received: by mail-ua1-x943.google.com with SMTP id d20so1658084ual.13
        for <devicetree@vger.kernel.org>; Mon, 03 Aug 2020 11:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jVtWQUGpmw8jhNyuuKCyNkZI5368yArYPxJOwi5ESm4=;
        b=coDDm+vPAuh6Fuh2z/owncaMvXWcMJtlRYB7hg03SaGSChcDWim/iI7wQu6Gtru4LI
         LNNy/0P59m7hXu3w8xvG2OpKtNRj3lQLUBTX0H4+160GNmcD4+O94D6G26WpSJdbxPGx
         S9b8lEbGDCKUi6B37X/bH0jLuj/oO8PhAeAds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jVtWQUGpmw8jhNyuuKCyNkZI5368yArYPxJOwi5ESm4=;
        b=WWc8XrC8c1tC1FEoXt2TLfjs4dsLhjW0LT/+wwhcZmeBCNof3qO2Xl0WCnIVg4KiRS
         K5/L8wCY3XhZlZEV5kH3IKXX8cXqTbsssRO/cfBhElcMy1ANUQzQenE3qDYuC/ZXPK8R
         gjYW8MKz/2W6F3JDCMhIojPfMb030J8q0mOI4sJQdyioFp89R8TdImoZqHix0xQWO+Dk
         Sqlh6q0Wt6SWM4UJxe9zSKgLDvv9dyWQwQ2ctZGhrn1Td8qjaoBvkWAtMFB9myOGloxi
         H9vq2usRxBngbNQpKQnUWQ1EhcqnyjyrceAQDjVTUArc/nei0KlfVQW3VRSCA33z/EgZ
         vzow==
X-Gm-Message-State: AOAM530t87NPrYhekr2/pyZgBmaqzFRG29FsEi+++bfFMUFrbWYJkOU1
        YQunf+IT6xk3zOoSLqryASZA1+hfoDo=
X-Google-Smtp-Source: ABdhPJxK5hTYLpjuSkngwNPdHbhI64z8hJ2R6TuBUki2RHEL2f9+tBPOnwOSNtKnej+03/z8Scj8SQ==
X-Received: by 2002:ab0:b09:: with SMTP id b9mr11078323uak.33.1596478174402;
        Mon, 03 Aug 2020 11:09:34 -0700 (PDT)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id j20sm2187476uan.13.2020.08.03.11.09.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 11:09:31 -0700 (PDT)
Received: by mail-ua1-f44.google.com with SMTP id z26so5932611uaa.4
        for <devicetree@vger.kernel.org>; Mon, 03 Aug 2020 11:09:30 -0700 (PDT)
X-Received: by 2002:ab0:44e5:: with SMTP id n92mr12122918uan.121.1596478170242;
 Mon, 03 Aug 2020 11:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <1596305615-5894-1-git-send-email-tdas@codeaurora.org> <1596305615-5894-2-git-send-email-tdas@codeaurora.org>
In-Reply-To: <1596305615-5894-2-git-send-email-tdas@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 3 Aug 2020 11:09:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vm4bF07OFQv85kmOyzK9=TcC0gJuuxcJwUxGNed06QTw@mail.gmail.com>
Message-ID: <CAD=FV=Vm4bF07OFQv85kmOyzK9=TcC0gJuuxcJwUxGNed06QTw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7180: Add LPASS clock controller nodes
To:     Taniya Das <tdas@codeaurora.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        David Brown <david.brown@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Aug 1, 2020 at 11:14 AM Taniya Das <tdas@codeaurora.org> wrote:
>
> Update the clock controller nodes for Low power audio subsystem
> functionality.
>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index d46b383..7cf8bfe 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/clock/qcom,dispcc-sc7180.h>
>  #include <dt-bindings/clock/qcom,gcc-sc7180.h>
>  #include <dt-bindings/clock/qcom,gpucc-sc7180.h>
> +#include <dt-bindings/clock/qcom,lpasscorecc-sc7180.h>
>  #include <dt-bindings/clock/qcom,rpmh.h>
>  #include <dt-bindings/clock/qcom,videocc-sc7180.h>
>  #include <dt-bindings/interconnect/qcom,osm-l3.h>
> @@ -3312,6 +3313,30 @@
>                         qcom,msa-fixed-perm;
>                         status = "disabled";
>                 };
> +
> +               lpasscc: clock-controller@62d00000 {
> +                       compatible = "qcom,sc7180-lpasscorecc";
> +                       reg = <0 0x62d00000 0 0x50000>,
> +                           <0 0x62780000 0 0x30000>;
> +                       reg-names = "lpass_core_cc", "lpass_audio_cc";
> +                       clocks = <&gcc GCC_LPASS_CFG_NOC_SWAY_CLK>,
> +                                <&rpmhcc RPMH_CXO_CLK>;
> +                       clock-names = "iface", "bi_tcxo";
> +                       power-domains = <&lpass_hm LPASS_CORE_HM_GDSCR>;
> +                       #clock-cells = <1>;
> +                       #power-domain-cells = <1>;
> +               };
> +
> +               lpass_hm: clock-controller@63000000 {
> +                       compatible = "qcom,sc7180-lpasshm";
> +                       reg = <0 0x63000000 0 0x28>;
> +                       clocks = <&gcc GCC_LPASS_CFG_NOC_SWAY_CLK>,
> +                                <&rpmhcc RPMH_CXO_CLK>;
> +                       clock-names = "iface", "bi_tcxo";
> +                       #clock-cells = <1>;
> +                       #power-domain-cells = <1>;
> +               };
> +
>         };

You end up adding a blank line at the end that Bjron can probably fix
when applying, but other than that this looks good to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
