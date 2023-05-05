Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A1446F7FFE
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 11:30:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231737AbjEEJaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 05:30:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231519AbjEEJaH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 05:30:07 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 493B83C20
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 02:30:06 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-559eae63801so21581307b3.2
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 02:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683279005; x=1685871005;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zKLLprNwaaeZYAnNNb830KY0y4SK3/A2CshWnDDE80w=;
        b=IyeI2DkciUzyMxxJkZOgS4Wf48xUGAPNC5wvtQocGOSDSNVbotah9q12SzdcdTzC9V
         B4FURdd4Wz5zfZtAfHXXvHmbVGHNlUf4cuPoQTNG1ifz5zAZzz5JeXrm7227Ir6MR/Lt
         OFB//+zi1Qea68MpwIASOqpabWg8dBuZqtwUT+QdMQUq1pndBRZVuI60F8nDqIl+zutJ
         3aJLqWzeYW6045FPK0R4ItYPlTd6iUBzwrSq5nrYZvKP6tVVBhDCmWEc0MYs6L3sxIwJ
         yhTk5qFg0jHBqLToGH4P9nlWjqpqpkBiZoeOe9hnRkvCcTLS+c3Bx83fiO0Wlfjq4gAp
         gOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683279005; x=1685871005;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zKLLprNwaaeZYAnNNb830KY0y4SK3/A2CshWnDDE80w=;
        b=ff4ZpaBXlYhfpagtNkQkzsuSRhI5Qzb8mkF8Yno8KicErcHb+qMvtVfjtCSQF6sNWo
         hf4XLLTeSgcn8urlOdZRtLzz7LJHdH+UNZ15273yPlT00a3DQ3fAlq+YeYgHt9o9Fmly
         H4U6w+BVjlsVYIc3s/d8REWgj8FzDw+VORu2rtu+rGMkny70pyghRduO5SOYM3A90ZYn
         +VNdXqxceghPPW6+135/j4hMkaa6A3LoZtdRjDsTOpw4fDM1S4m8LwDZ6UoL7E85ipkf
         24oAvJbcy8eL+UPHHHnw/IcrqZf+mYZTIXMsZ6nRWBmagoU3Hi/HVQmDQ3d2NpZ83W3k
         E5fg==
X-Gm-Message-State: AC+VfDzkNpWKQbctl1L5govECG2gsxPEbNlIIEkAzpjBCj/xQGqapY3K
        hqeirbXJab25UcBRQP7ha452T6rEcuoFDsB3KbWhYrnhSxg2SxQP
X-Google-Smtp-Source: ACHHUZ57uxYbtQ4r7HHvF2CMapziRFJbg7koTCsVXaNSfDQ941AHyjqZmqhvyR2XIphz/G6gzsJpm/RJwQ9QpSVa1P4=
X-Received: by 2002:a81:4e8a:0:b0:55a:886c:bfc3 with SMTP id
 c132-20020a814e8a000000b0055a886cbfc3mr999607ywb.7.1683279005467; Fri, 05 May
 2023 02:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683183860.git.quic_varada@quicinc.com> <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
In-Reply-To: <8894bf2c44eaf4959c7a1966b66229e6cf5cda96.1683183860.git.quic_varada@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 5 May 2023 12:29:54 +0300
Message-ID: <CAA8EJppvj2nzqwdsC+Xct4cJg2-_yPpiGDELjHJG4HyAH3zGMA@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
To:     Varadarajan Narayanan <quic_varada@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
        mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Add LDO regulator node

As this LDO is provided by the PMIC, it would be nice to know why it
is modelled as an always-on regulator instead of the proper PMIC
regulator. Up to now we were doing this only for the outstanding power
rails like CX/MX or EBI.

>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v10:
>         - Add LDO regulator node
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> index bdc1434..1f5d14f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> @@ -60,6 +60,13 @@
>                         regulator-min-microvolt = <725000>;
>                         regulator-max-microvolt = <1075000>;
>                 };
> +
> +               mp5496_l2: l2 {
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <1800000>;
> +                       regulator-boot-on;
> +                       regulator-always-on;
> +               };
>         };
>  };
>
> --
> 2.7.4
>


-- 
With best wishes
Dmitry
