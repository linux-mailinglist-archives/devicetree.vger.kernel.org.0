Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEB96422FC1
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 20:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235047AbhJESMq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Oct 2021 14:12:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235023AbhJESMp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Oct 2021 14:12:45 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53311C061762
        for <devicetree@vger.kernel.org>; Tue,  5 Oct 2021 11:10:50 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 97-20020a9d006a000000b00545420bff9eso26988927ota.8
        for <devicetree@vger.kernel.org>; Tue, 05 Oct 2021 11:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=PmGzQuIqk2k4kzsoKeBKvFVdnEBiz+RKXSuRjoeZURM=;
        b=B0mBiHAsN8I7BNS/mU4QppQq4xPSJV3whZyZvOYVXy07yim5yqBpDFH0m9G11EeiuC
         I+zhgIBakhE9uiJrK5pMepAaCUUaBvbcVLWKldqhoPO8hW4DjWfzHT8QQp7xjLnP4kBB
         +1evPf4JRJfCPzB4fh6k8lS3Js8Ys//I8stWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=PmGzQuIqk2k4kzsoKeBKvFVdnEBiz+RKXSuRjoeZURM=;
        b=KFO2AOgiwsxFMKvMv7k+bt3DS9pkVVod3RXsW5Ii/heACjif2sKLqG6uFCm8cxwG+a
         5betyDSQ0kYR3632KeMr/13OMQk7HHQFCEqOex2U+4rVLoRJOab0Atw0yMutD/R/Ast0
         dhmjinKfsQzXA0f7PgaIWx5TKbJRkO+EWiia13Z1etGLyrSjUIz4Uh0C9bqD62q3pLgv
         LZwZB4d2RxVDnMPV7CyyOHoqTWHmhqjUVzdYTYF3IGYtLtFxtUlzcN25PGFvVfutlqv2
         S/LEKspF5XBp+NSxg8q01T8bSXJ08htlUn/Blm5Mg6mAgzE0U2QOWQSdwvMTELT1D4gD
         PVUA==
X-Gm-Message-State: AOAM530ePyWdDyZ46L8GklNI31yNbxi0njOBoi3S2OOC8HYU73ebPTdR
        p2bngweCtL5QLvY9ycl5bi2nVOwONxV2j1IOx0DCVQ==
X-Google-Smtp-Source: ABdhPJwEEYUyuAtHy0el1QmjpZCJ0OjboZgnL5mSaQ5E0Rrbqy4svm1Ycwg7yYumXkdwlxQqYdw4gbsY9g/XLo/ffjw=
X-Received: by 2002:a9d:1f4:: with SMTP id e107mr15358336ote.77.1633457449530;
 Tue, 05 Oct 2021 11:10:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 5 Oct 2021 11:10:49 -0700
MIME-Version: 1.0
In-Reply-To: <1633060859-22969-3-git-send-email-skakit@codeaurora.org>
References: <1633060859-22969-1-git-send-email-skakit@codeaurora.org> <1633060859-22969-3-git-send-email-skakit@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 5 Oct 2021 11:10:49 -0700
Message-ID: <CAE-0n51pCkrdOSJFf3V4HGB5PcUcRa2y6zRQbQ30i-hQVhjC=Q@mail.gmail.com>
Subject: Re: [PATCH V2 2/4] dt-bindings: mfd: pm8008: Add pm8008 regulator node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Satya Priya <skakit@codeaurora.org>
Cc:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        collinsd@codeurora.org, subbaram@codeaurora.org,
        kgunda@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Satya Priya (2021-09-30 21:00:57)
> Add pm8008-regulator node and example.
>
> Signed-off-by: Satya Priya <skakit@codeaurora.org>
> ---
> Changes in V2:
>  - As per Rob's comments changed "pm8008[a-z]?-regulator" to
>    "^pm8008[a-z]?-regulators".
>
>  .../devicetree/bindings/mfd/qcom,pm8008.yaml       | 24 ++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> index ec3138c..0c9665e 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> +++ b/Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml
> @@ -45,6 +45,10 @@ properties:
>      const: 0
>
>  patternProperties:
> +  "^pm8008[a-z]?-regulators$":

Please just call it 'regulators'

> +    type: object
> +    $ref: "../regulator/qcom,pm8008-regulator.yaml#"
> +
>    "^gpio@[0-9a-f]+$":
>      type: object
>
> @@ -122,6 +126,26 @@ examples:
>            interrupt-controller;
>            #interrupt-cells = <2>;
>          };
> +
> +        pm8008-regulators {

Please just call it 'regulators'

> +          compatible = "qcom,pm8008-regulator";
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          vdd_l1_l2-supply = <&vreg_s8b_1p2>;
> +          vdd_l3_l4-supply = <&vreg_s1b_1p8>;
> +          vdd_l5-supply = <&vreg_bob>;
> +          vdd_l6-supply = <&vreg_bob>;
> +          vdd_l7-supply = <&vreg_bob>;
> +
> +          pm8008_l1: regulator@4000 {
> +            reg = <0x4000>;
> +            regulator-name = "pm8008_l1";
> +            regulator-min-microvolt = <950000>;
> +            regulator-max-microvolt = <1300000>;
> +            qcom,min-dropout-voltage = <96000>;
> +          };
> +        };
