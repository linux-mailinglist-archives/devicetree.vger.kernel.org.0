Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7726C4B02B7
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 03:01:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233759AbiBJB55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 20:57:57 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:33588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233765AbiBJB4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 20:56:13 -0500
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51B6B2AAB1
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 17:41:26 -0800 (PST)
Received: by mail-oo1-xc34.google.com with SMTP id c7-20020a4ad207000000b002e7ab4185d2so4632777oos.6
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 17:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=7BvHswSXg9zN9k7P3bu3kJhfUU/WgKwQ6HEFpY+l4jA=;
        b=Ewraufgtj1xMfakazeSpwx5MnBYDQHaeFVN1wLgspkWrMugkjtb49bIjLe5uO4rZnG
         1/SsRTmx/SdfhAdZc4IcIwJP+dA8AJX591gYcpvbwF3giFkKi4T1Ft5Om1/eRIcZOEY/
         B0i/ShAZtw1hvFkJ6P6wjp4UGB/ApLobqDUNY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=7BvHswSXg9zN9k7P3bu3kJhfUU/WgKwQ6HEFpY+l4jA=;
        b=VyKIfYCi7r+Jz00bPR7/Shk2YMxg40p92j53lknqB5l/2IX+DbMfOU1XvY2RzuEXM4
         iSikGkgSbNI0ga/AGdp8pkxKsrNZjxepd59gbqFdUAf1bkXjwI1g28WMV46Gk7J3KjJ5
         A3+Nr3/g6vJD9XnJGxJVi7X0gDxbkSaDSZet9Ng9g6fugzKvULM46iBWfPM/Nczv8jvR
         8WAXW+8nrKNrfguPmL4uVbja2q1kTQidfcU8e1kBOLvigqdWDQn5S10W3ambal2SXrqp
         y0BxHte6YDUO7HdTYV33QwfmkrNKeM7JRrqZQpHkDXEhEbxBjRupMPMU6TQ0P+l6evlx
         ITzw==
X-Gm-Message-State: AOAM532GpU9njPlw1Csnsy61HJlEixcvw2MzfnkFwV2hhiuiINnk0Gy+
        NVjqM3WO4UiVwKxfQdVmsVka1X5h0GlDVK65ijazTA==
X-Google-Smtp-Source: ABdhPJz5nnuCshCtEM3gga4og7wjd6Bj6dW8FLpEygBvjacEExJ8np7WaRj3GTND+KVxtMxzzyhuWn0ScaNhy+C9qjM=
X-Received: by 2002:a05:6870:1209:: with SMTP id 9mr72218oan.8.1644457285749;
 Wed, 09 Feb 2022 17:41:25 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 9 Feb 2022 17:41:25 -0800
MIME-Version: 1.0
In-Reply-To: <1644331940-18986-6-git-send-email-quic_c_skakit@quicinc.com>
References: <1644331940-18986-1-git-send-email-quic_c_skakit@quicinc.com> <1644331940-18986-6-git-send-email-quic_c_skakit@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 9 Feb 2022 17:41:25 -0800
Message-ID: <CAE-0n52vX-50GEZ5X3PhnZaLyriALRtoqGiWSydi4WSAvGmf9A@mail.gmail.com>
Subject: Re: [PATCH V5 5/6] arm64: dts: qcom: pm8008: Add base dts file
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <quic_c_skakit@quicinc.com>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_collinsd@quicinc.com,
        quic_subbaram@quicinc.com, quic_jprakash@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2022-02-08 06:52:19)
> Add base DTS file for pm8008 with infra and regulator nodes.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> ---
> Changes in V4:
>  - This is newly added in V4, to add all the pm8008 common stuff.
>
> Changes in V5:
>  - Changed the mfd node names from pm8008_chip to pm8008_infra and
>    pm8008_ldo to pm8008_regulators as they re more appropriate.
>  - Changed the compatible for pm8008@9 mfd node to differentiate from
>    pm8008@8 node in driver.
>  - Removed compatible for regulators node.
>  - Removed reg property for LDOs and added in driver.
>
>  arch/arm64/boot/dts/qcom/pm8008.dtsi | 46 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8008.dtsi
>
> diff --git a/arch/arm64/boot/dts/qcom/pm8008.dtsi b/arch/arm64/boot/dts/qcom/pm8008.dtsi
> new file mode 100644
> index 0000000..8e04983
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pm8008.dtsi
> @@ -0,0 +1,46 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +// Copyright (c) 2021, The Linux Foundation. All rights reserved.
> +
> +pm8008_infra: pm8008@8 {
> +       compatible = "qcom,pm8008";
> +       reg = <0x8>;
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +};
> +
> +pm8008_regulators: pm8008@9 {
> +       compatible = "qcom,pm8008-regulators";
> +       reg = <0x9>;
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +
> +       regulators {

What is the point of the 'regulators' node? Why can't we just put LDO1
directly underneath the node that has the "qcom,pm8008-regulators"
compatible?

> +               pm8008_l1: LDO1 {
> +                       regulator-name = "pm8008_l1";
> +               };
> +
