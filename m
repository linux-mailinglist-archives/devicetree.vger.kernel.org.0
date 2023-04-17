Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C67C6E4C09
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 16:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230109AbjDQOzg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 10:55:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbjDQOza (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 10:55:30 -0400
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CC1DB745
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:55:15 -0700 (PDT)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-54fe82d8bf5so106536927b3.3
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 07:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681743315; x=1684335315;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tQHJ4q3CdmAKlAlClHQ4EAPzOxZr151/BPputI4xT6o=;
        b=U3qVHE/9hnPcjaycLBiiZS7lx1jl07foVfwFfIjdxI7c1drlSx4zvJHPWnZDs4obLl
         ExHFRQjEa+teZG7x1ZiwhMw9B2ex1ef/Zj7fM3rB/IqvG1gq/VApC/csR0naGXUk+mpD
         tX0kPWjRRZ/WWodYD4mPLM5ZoOuvuTGBTUO+X5B2ODvUYEbWic7+zX7C/0ZQj3Y9L4SR
         Gyc/CUBr1zgCznWM81aBgFkldNBtHfcDn2BxqxBeEjguy5wJ2EM5zncTYQp8Q/xacP/H
         yc7d1jUTmxQzGjWPeSvuWYhXoMsWgKVsa0Sqb6mXE79jyDVmUIayzuCMCEj9U3mj4EIJ
         yY2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681743315; x=1684335315;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tQHJ4q3CdmAKlAlClHQ4EAPzOxZr151/BPputI4xT6o=;
        b=lrEmi0/I1eDsEPivJlWpqqWnd7tlZXhz0cF9sNzG68He5xWR7YRwyVxU3YBgy6N4rl
         THNBirbi5k7DeskmQLoOjtI0u5d1Le9p7sG2graFXlko4HZ2hfZvNPbRtAyTS6gQFUzY
         zm7r+OR+apiYD29FWmhtCxTML82Q9H2X4tQpyNz+Uc1Ir0ItwFq62iZW8lfxxiLVo5bs
         2wORbu7t07tjBULRA+Id9MzFj/mhX38e45eedqTTHyv9AdnLLrWhErrAQWm12h2EZN2V
         j0hj5dETDxBI8ZkULVhupJoFpSDT8D1yF8SRvLvxkqgmyao7TqB0twMzXBvtW8APRCUm
         LuWQ==
X-Gm-Message-State: AAQBX9dZbq6cuGC2qxeilhcXWMDsC8+qfO1iyt3Uf81kH0IhVkMdrPYk
        N6K82krznQ5nDVyYN30lprkGP15HwVQcTZbTrclm2g==
X-Google-Smtp-Source: AKy350aMpQBedsbEVhsZzWk+zqIzObSk80KvK1Jwyz9aUfhHiBvphF8ZVmhjn1eJPXi8h5bpF1rVNodI9soVoRMjRLc=
X-Received: by 2002:a81:af0c:0:b0:54c:2889:7105 with SMTP id
 n12-20020a81af0c000000b0054c28897105mr9727485ywh.0.1681743315611; Mon, 17 Apr
 2023 07:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <1681468167-11689-1-git-send-email-quic_srichara@quicinc.com> <1681468167-11689-8-git-send-email-quic_srichara@quicinc.com>
In-Reply-To: <1681468167-11689-8-git-send-email-quic_srichara@quicinc.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 17 Apr 2023 16:54:39 +0200
Message-ID: <CAPDyKFr=EFT-QroB=FixcTVA4b3ghiAah8uadmJ07bui7myhUw@mail.gmail.com>
Subject: Re: [PATCH V3 7/9] dt-bindings: mmc: sdhci-msm: Document the IPQ5018 compatible
To:     Sricharan Ramabadhran <quic_srichara@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        linus.walleij@linaro.org, catalin.marinas@arm.com, will@kernel.org,
        p.zabel@pengutronix.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
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

On Fri, 14 Apr 2023 at 12:35, Sricharan Ramabadhran
<quic_srichara@quicinc.com> wrote:
>
> Document the compatible for SDHCI on IPQ5018.
>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 7d4c5ca..4f2d9e8 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -34,6 +34,7 @@ properties:
>            - const: qcom,sdhci-msm-v4 # for sdcc versions less than 5.0
>        - items:
>            - enum:
> +              - qcom,ipq5018-sdhci
>                - qcom,ipq5332-sdhci
>                - qcom,ipq9574-sdhci
>                - qcom,qcm2290-sdhci
> --
> 2.7.4
>
