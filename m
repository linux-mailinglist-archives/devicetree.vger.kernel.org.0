Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 070416FC397
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 12:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235173AbjEIKLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 06:11:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235112AbjEIKLC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 06:11:02 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2CAC100C9
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 03:10:49 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-b9a6eec8611so29639541276.0
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 03:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683627049; x=1686219049;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GmF5E4GwcpLNkAgFsD7lRny9B93aWleCGkhGsdB1ego=;
        b=yg5TJ6sB8ZbVrIIpZQw1kHwwdFrnazcBTppzqdhqfJ7F2Oz0aXRfzg2X9bl+tNV+gg
         xSU0UUUIdbmvDYp8Un944/jabV4hkov7zKEcI2AmRkfcUjfx/fdQsUa3E57D9TqHyhcJ
         dWUqBsQ6FkfFyM1CHqhfWvRl3s3d0pAT6Ihvj8OmkVBp5m5/H9DXAKCGtu01CWvBye9g
         /2r3+/dtqJKs1FOxC9CPlZmxu3CjRWdhsF6ON5+Zzf3s2c6Z+jpNWuDQb62NU7fEi8nN
         Pa1ZdlWeYE11/Oym6MXW78a0ztgIJOa0lMfQoGTbLkre04Va1B7RtrYZm02oeP7zs+d6
         XH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683627049; x=1686219049;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GmF5E4GwcpLNkAgFsD7lRny9B93aWleCGkhGsdB1ego=;
        b=SvztoRsXFcHR6BbXp2ZGSMnY4FR6j3VjoBLQk0uVdSfbECHzyQuv4f+gOLskH31c3l
         7zx1PcTpmBp8czTBNuqXAcz/m4brK8wxHuwieJ238oFzArljuwp+oEcHdnNFXvouRucr
         eR5Pyre4b9U7wJEfV5N6nKjb4bcHHDzLGhhGytS5Zg04957Hygk0Sjwp7fgHAMHaOZMp
         kqzB4MJajjkvREgbuCqXIs6+SWO/6oj9LhSsUbEE6ZUia8IYhla8vgNfN+sPGlwZYsCC
         oIosz1YVmP4cN1FORqTviIwN76GZCcOSweFEf5kSmbTiOzrPMkX4KXspGa+rlz4dxHar
         uJ0A==
X-Gm-Message-State: AC+VfDy2YLk5hevKi+UpBXwr7g5IH9WMQC7qwaY1wDydQ4p94VBezVOf
        ECRqWLMKX7bQwF0v4XmkoPTIrIzJ5aP1VciznKLnng==
X-Google-Smtp-Source: ACHHUZ4e8hYq/oZyt0twtsz8waBTWW5anwKtRtrOOkfZgkVQ16iIHKeOMHTrrO8K3irIVzouT3FtQ9ngGu89UoRjhZ8=
X-Received: by 2002:a81:4949:0:b0:55d:811f:6003 with SMTP id
 w70-20020a814949000000b0055d811f6003mr13268809ywa.14.1683627048063; Tue, 09
 May 2023 03:10:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230509030136.1524860-1-quic_bjorande@quicinc.com>
In-Reply-To: <20230509030136.1524860-1-quic_bjorande@quicinc.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 9 May 2023 12:10:07 +0200
Message-ID: <CAPDyKFpRg-qLfLcqq73+CeaA4VVfZEgq2z7iCa6Vj0k+ZwgV+A@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: sdhci-msm: Document SC8280XP SDHCI
To:     Bjorn Andersson <quic_bjorande@quicinc.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 9 May 2023 at 05:01, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> Add compatible for the SDHCI block found in SC8280XP.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> index 4f2d9e8127dd..9a87c03937c7 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> @@ -41,6 +41,7 @@ properties:
>                - qcom,qcs404-sdhci
>                - qcom,sc7180-sdhci
>                - qcom,sc7280-sdhci
> +              - qcom,sc8280xp-sdhci
>                - qcom,sdm630-sdhci
>                - qcom,sdm670-sdhci
>                - qcom,sdm845-sdhci
> --
> 2.25.1
>
