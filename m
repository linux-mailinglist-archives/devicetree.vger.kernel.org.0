Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 112D453FFD8
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 15:18:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244555AbiFGNSs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 09:18:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232262AbiFGNSr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 09:18:47 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 051E369290
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 06:18:45 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id s12so27939174ejx.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 06:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=cc:subject:from:to:mime-version:content-transfer-encoding:date
         :message-id:references:in-reply-to;
        bh=xQ/38FMDTLXlcNU1vfrf+06M1Gbcy9oJbFk2y6vkO2w=;
        b=oHVLGgKjmFMRMizTWmpZDLzkW76syBiOmiYDceeIW+ewSxfl64CjZKYzxmVFRGMpTG
         LU0BRmI9u2/28Lm0vt5W5IjCHcVZ4Z5Dec6IwLNQn/yl3CL7iqmUdOoAwJqpRNb5/sv5
         eIsgDDe6s9HKYbysqzFAhfZX/nXhqmpFw7RLOKKuiSXxo1ke3Mj21BdmuSc2klLcL5Za
         WcpPogll14XXtfMDfJMPsnUnOUv4dgw4QJUyZh6N5EzxJBdXX22J1a+1EVZosCacRCpH
         kBiL6+pzjpOnKRkfl7RNP7bw7kSlVzi7ds8+B7I1KThDpMy+czgIGLsZt02Ee3VflEBz
         D8lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:cc:subject:from:to:mime-version
         :content-transfer-encoding:date:message-id:references:in-reply-to;
        bh=xQ/38FMDTLXlcNU1vfrf+06M1Gbcy9oJbFk2y6vkO2w=;
        b=trnnmSeyNsRRmrIGTTRKxmjvar4wDqDZ1QG8f1MHOLOTUi68my1CYeNaBad7wsm4cN
         j5KZV1+iogBvEh5C7cCkH7lhlOUFG+H7fFxcDMv0NL7w769UkuzYDtSgvp6YCHUl0eJc
         8KgbeWUZQGslQFDOk9cPV1OiripNFu2lKpuJ8NPaWQCWkvKqq3VxJsGnrUclGd1EAltM
         NA2fLKt7zMxSuvj0+HdaOiHOfdz2puMPDxb95GYE1yoGSzDlPvqxwN/FAyasebtWKF5D
         kP/pP5aAxT7RaAC3hrwGb7k8aTYGH9pRJlJmdU4Y9+4pP1uA5rHodtgbcZrkC8Jt+J3e
         YZ/A==
X-Gm-Message-State: AOAM533pq4ZDEVb9gRDeuzCmFX+Zvxs47az0zSKUQTcQOqfaY+De3I+G
        6C2y1ZUAEhx/nt0qF91tFyPOXg==
X-Google-Smtp-Source: ABdhPJzl8lTpta7T4QnmJUQpMYORX+lUVc3wUnHas6OVjJwcyHdfSOUBlntzuSdVEyfl0tXG5VwNiw==
X-Received: by 2002:a17:907:1ca8:b0:70c:68ce:dade with SMTP id nb40-20020a1709071ca800b0070c68cedademr23803960ejc.723.1654607923570;
        Tue, 07 Jun 2022 06:18:43 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z14-20020a170906074e00b006fecf62536asm5311035ejb.188.2022.06.07.06.18.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 06:18:43 -0700 (PDT)
Content-Type: text/plain; charset=UTF-8
Cc:     "Lee Jones" <lee.jones@linaro.org>,
        "Liam Girdwood" <lgirdwood@gmail.com>,
        "Mark Brown" <broonie@kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <swboyd@chromium.org>, <quic_collinsd@quicinc.com>,
        <quic_subbaram@quicinc.com>, <quic_jprakash@quicinc.com>
Subject: Re: [PATCH V14 8/9] arm64: dts: qcom: pm8008: Add base dts file
From:   "Luca Weiss" <luca.weiss@fairphone.com>
To:     "Satya Priya" <quic_c_skakit@quicinc.com>,
        "Bjorn Andersson" <bjorn.andersson@linaro.org>,
        "Rob Herring" <robh+dt@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Date:   Tue, 07 Jun 2022 15:16:31 +0200
Message-Id: <CKJXIE08RHD0.31NM2AKTA8B9V@otso>
X-Mailer: aerc 0.9.0
References: <1654602615-28849-1-git-send-email-quic_c_skakit@quicinc.com>
 <1654602615-28849-9-git-send-email-quic_c_skakit@quicinc.com>
In-Reply-To: <1654602615-28849-9-git-send-email-quic_c_skakit@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Satya,

On Tue Jun 7, 2022 at 1:50 PM CEST, Satya Priya wrote:
> Add base DTS file for pm8008.
>
> Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
> Changes in V14:
>  - None.
>
> Changes in V13:
>  - None.
>
> Changes in V12:
>  - None.
>
> Changes in V11:
>  - Remove intermediate regulators node and add the ldos under
>    pm8008@8 node.
>  - change the address cells as 2 for pm8008 parent mfd node.
>  - add compatible to register the ldos.
>  - add reg with i2c client offset and address.
>
>  arc
>  arch/arm64/boot/dts/qcom/pm8008.dtsi | 54 ++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/pm8008.dtsi
>
> diff --git a/arch/arm64/boot/dts/qcom/pm8008.dtsi b/arch/arm64/boot/dts/q=
com/pm8008.dtsi
> new file mode 100644
> index 0000000..6f37e4d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/pm8008.dtsi
> @@ -0,0 +1,54 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Copyright (c) 2022 Qualcomm Innovation Center, Inc. All rights reserv=
ed.

I noticed this file was licensed as BSD-3-Clause in V13 and
this change was not mentioned in the "Changes" part.
Any specific reason? Especially newer dts files should be BSD-licensed,
and having this GPL dtsi included in otherwise BSD dts files is not
good.

Regards
Luca
