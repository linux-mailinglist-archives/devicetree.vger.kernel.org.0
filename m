Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AE8E7160CC
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 14:58:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232066AbjE3M6f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 08:58:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232442AbjE3M6a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 08:58:30 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD4F126
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:57:51 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-96f9cfa7eddso786298466b.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685451468; x=1688043468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y8nrvZCnLeNA9XqFVfQliG+UkeK7H3UuAJ/vrhzt5N8=;
        b=tOpBR2qHhz8Y5+8fGdIJtDXKTjoub3qdMnSVZt2FlFEFqMzdw3FLNNLEyU6Y+aAS+6
         OmP1ldAmCV1TAaS9kBNfhIpf9HQ0U8TNMKH224Uvnl9qIp9n1ovIIH4gAtjaoGllpVTQ
         NNEtg57i05eYsAAHFyXsqlOn4Svajc5hOJFexlN8DfXKOiv9osAuo1K4PuumIM3MLXVs
         T/M2gYN+Cq/qelGP+82YMQVcCPrEXnZxYHJElcA9KfwxfMjqPTdiyrML4Jq/ytCBRcUP
         VAWggMynia9vDGG2SU9GvsJcxsVjadHciSLeeJLyhD1cQ0JKQmX6whGOf6znelmXeXC9
         5uYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685451468; x=1688043468;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8nrvZCnLeNA9XqFVfQliG+UkeK7H3UuAJ/vrhzt5N8=;
        b=RNLFcVzxZh2LgEc3rSgCdflz540PZav95nEEJJzt1Hq3L7sJC9MIp4ZCTr8tJHM9f3
         DqjYXvKNydz1K86QIgqsTZNKB+RoM3pMx+UUGZY6VoSe/MJIZQQNALsPt9ZqkgTwhh7b
         c6ZtwuleGsxYwqP0mMw5eVGk0CFXf7TYUXK0f6F7oodNm6i7oDb2ru8hNqUwEWHV+RJf
         dfH59D/MTNfERnTJhdpmWX3wCN4042sZY6UtPdYfdfNL6irlW0LlZ8Y9a5LEECThdoTT
         AesB36uJoAzurR6um5bfuHk6V02ATZvF1TBE5yx593ACz7GU8JQnci9S+i0iVH5LbGXK
         iD7A==
X-Gm-Message-State: AC+VfDxi8MR6OaqFKn9qBa7Xzs2M8hVm7zgOrAIHBcGr9TjVLxSkrsP/
        K84SwINMteknVVzj2/0QLx2c7w==
X-Google-Smtp-Source: ACHHUZ5j75si6JaQVxIJyh5Z6yqFoPGjctiJLF48SPBx/H0MmZO8dD3x07xHbqxD5hv4du4ojdh+MA==
X-Received: by 2002:a17:907:d16:b0:960:ddba:e5c3 with SMTP id gn22-20020a1709070d1600b00960ddbae5c3mr2428277ejc.32.1685451467865;
        Tue, 30 May 2023 05:57:47 -0700 (PDT)
Received: from krzk-bin ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id m13-20020a170906160d00b0095342bfb701sm7488806ejd.16.2023.05.30.05.57.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 05:57:47 -0700 (PDT)
Date:   Tue, 30 May 2023 14:57:44 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rudraksha Gupta <guptarud@gmail.com>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, soc@kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, Olof Johansson <olof@lixom.net>,
        Bjorn Andersson <andersson@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Message-ID: <20230530125744.n2pxo6jhsgeq3xgn@krzk-bin>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-2-guptarud@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230528001010.47868-2-guptarud@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 27 May 2023 20:10:06 -0400, Rudraksha Gupta wrote:
> Add a compatible for Samsung Galaxy Express SGH-I437.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1786779


/: qcom,board-id: False schema does not allow [[8, 0]]
	arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dtb

/: qcom,msm-id: False schema does not allow [[194, 65536]]
	arch/arm/boot/dts/qcom-msm8974pro-oneplus-bacon.dtb
