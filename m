Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DD92409D82
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 21:57:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242203AbhIMT6a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 15:58:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238899AbhIMT63 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 15:58:29 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C8DC061760
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 12:57:13 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id q11-20020a9d4b0b000000b0051acbdb2869so15012059otf.2
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 12:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=oVrHBVnA82OtmOYjdYw081CjAbJqok+5sFDiTTmJyOY=;
        b=FKMBKQTeyyzPpKaEb0ZcqQGcGxi2u+oJ6BAbbSTLb/qmG6yYs7aD8TekL6WQQLnawc
         gVaE3anPh7aiJhwpP4AmOxXAdbB/YtbBELHX2VQZ7uyUKUlafQsivwu2uKS9ajmfmqof
         WuOlWoTKO6xgV1zumIHyL4ZAU1I5UwdVXEfIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=oVrHBVnA82OtmOYjdYw081CjAbJqok+5sFDiTTmJyOY=;
        b=W5bDd5xcCuFvYJyLSN9Svl+yY2BCMlkenbwetcbeF9wqgLGHCsAhuDpz/0YcBPOB4J
         JjzBg1gFGxtyGdP/6TVADHozu1wnVbbZxqQs1Gp34CQ/bKyjeP4LuokQPZnvcRrMZHyE
         RjufBEu3SEX0U/TRvQLQaaiaSo7ySrTn1BNo8gtTc/KsdE4/cqlq4f60Np9OO406OgdU
         3vmX4jED3zVzjggybPU6FmlBZBaiWVaqwSAx17XpccN7h5CFmLm6WSZnpt6/1YKDol7T
         88J5wlPf+ZymBPJSgkbW0BH/OBzJ+poLaBKYJsG0c7xSWOUDXyLyZtReJdQvZlmFo2Cn
         EPxw==
X-Gm-Message-State: AOAM530RtE2zKRt6Jv1hCXVre/EMZcfjYtNqyroDXzaoxWeGcH+3Slpq
        M/CBNOiAwhGkeZlIwGlNqW8LwCu74ghMCOONbZDdbQ==
X-Google-Smtp-Source: ABdhPJwQxAL+ThVF6V+sJim9YhLgx5h9y9zXk04Yj0aLrvGNLZyipOd51mVO66boDMbOaqY+usQDCemHnXuynotgc7Q=
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr11159215ots.77.1631563032742;
 Mon, 13 Sep 2021 12:57:12 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 13 Sep 2021 12:57:12 -0700
MIME-Version: 1.0
In-Reply-To: <1631530735-19811-1-git-send-email-rnayak@codeaurora.org>
References: <1631530735-19811-1-git-send-email-rnayak@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 13 Sep 2021 12:57:12 -0700
Message-ID: <CAE-0n51miUjP4dg4wQR_JBwNNvMNqAafv7jFvEKU+MrfQmhV5A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280-idp: Add vcc-supply for qfprom
To:     Rajendra Nayak <rnayak@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, rbokka@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-09-13 03:58:55)
> Add vcc-supply for the IDP boards that was missed when the
> qfprom device tree properties were added for the sc7280 SoC.
>
> Fixes: c1b2189a19cf ("arm64: dts: qcom: sc7280: Add qfprom node")
> Reported-by: satya priya <skakit@codeaurora.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 371a2a9..99f9ee5 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -207,6 +207,10 @@
>         };
>  };
>
> +&qfprom {

Maybe that node should also be marked status = "disabled" by default so
that it can only be marked OK if the board has setup the regulator
properly?

> +       vcc-supply = <&vreg_l1c_1p8>;
> +};
> +
>  &qupv3_id_0 {
>         status = "okay";
>  };
