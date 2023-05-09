Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E0A56FC1CE
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 10:37:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233852AbjEIIhy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 04:37:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229543AbjEIIhx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 04:37:53 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5403959C1
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 01:37:52 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f423ac6e2dso15586455e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 01:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683621471; x=1686213471;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oaH5bMyyF/pRBIEeFPGeW8T3yMB7Pu8EJCEKG63OvYQ=;
        b=OivsJeqlYDQKXvjGnGzWbFoyvy4TxHfVcnOhnrQ4+WfFGt0Rolo4waPg8tkZnR9B1L
         SHzR++dleWUsyYZi9aqrvdv89xfLYQOY1I+fS0NCwqJvnOM929eh1hrEwiAvSJJuzFYO
         Yo/GTqy7E3VMjEqrQQ0gGaSn2q+lZRtjS2D+yV1IUFbjjc22mJp5WclnIQrZB0+ltSU5
         SFXRqSYrC4KUSRYpeOSpmAVUhElcoLTDAZ/A9et9sFGCzUnpSesJV8qV5ADYoTbxVYZ4
         ZWaynBbhmu3AH5ClKb0QcSEobnSfZXesTBL/lyXqg+0dtuEV1RGy+CF/XBN+A5M9K8P2
         xpKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683621471; x=1686213471;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oaH5bMyyF/pRBIEeFPGeW8T3yMB7Pu8EJCEKG63OvYQ=;
        b=cGSH5HRGKOvsjOjPsovxvXs5j5GufuRLK/W563clRajdR6ThzSerZFopwZONWs1byG
         lSxRDTp/TIGG1igkNfyA9KMQtXs6F97bglRubs9Vo+qqXeysNoQZ6UuFzZyyrg8c6mU1
         AF6lrJi/PAr8UAJWPPUckY1KLP1Ib+d4YaisTYKMCTiiqn2jnA5Pk3H+YuBHgvpamp/K
         fN6iKXE34fTJJC1BYG9+GVgilUfTH3UpBPtsmnuCtk7EISLkdpInJkS8rtMMxXsi0TcO
         vJlPWtf+vamPhQPkUMU/wc0lqlR9NCB1DloE+pFkoUJjTUAZhoULeIRN0ffkXYxPsWTJ
         T3pg==
X-Gm-Message-State: AC+VfDwPAHvx5nNRho7pOgw7LnE0CWIS2bgohyHz2Y88iUYgqkEjVLqA
        gCbxw3fsIviOcXDo73SeRzdOQplY+39R5lqyiZ/kiQ==
X-Google-Smtp-Source: ACHHUZ6t1Dtc91VFmGEDmqG1U5Gv9JfMO9EgpE482ZrIfsgizHH8p9LdXOKrvqucABNkj0B5Ae0xikR2XNzeSiSGUFM=
X-Received: by 2002:a1c:f209:0:b0:3f1:92aa:4eb8 with SMTP id
 s9-20020a1cf209000000b003f192aa4eb8mr8835278wmc.16.1683621470712; Tue, 09 May
 2023 01:37:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230509030136.1524860-1-quic_bjorande@quicinc.com>
In-Reply-To: <20230509030136.1524860-1-quic_bjorande@quicinc.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 9 May 2023 14:07:39 +0530
Message-ID: <CAH=2NtzV8JYAGvHgpimjFuGvB2TTXMvhjoAvR5hJ7ma_ZG35CA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: sdhci-msm: Document SC8280XP SDHCI
To:     Bjorn Andersson <quic_bjorande@quicinc.com>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
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

On Tue, 9 May 2023 at 08:31, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> Add compatible for the SDHCI block found in SC8280XP.
>
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
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

Reviewed-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Thanks.
