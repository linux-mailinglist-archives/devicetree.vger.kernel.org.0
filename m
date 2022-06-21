Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A49F5531E8
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 14:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349930AbiFUMWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 08:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350008AbiFUMWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 08:22:39 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E65823148
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:22:38 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id cw10so3366359ejb.3
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 05:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=PTPXtHxYqLGYZmdj0tHzFMVrdsxMJpp8auFdi6gANok=;
        b=KrVOQQCs3Bi9zq5d+bBrsPBDSaXCFEIPJPMunB9Rr4vwMqCFLDddvbAQSC5vyGOnFw
         vLEUXioNrKmDQTtlZiy4oFgk6M0J1FSGQhkPSY9ODSLxerk5mD0lH9felwF1LyJOdenA
         InbWHrITWSRhrWo99YH8OU8W8OaFT9czihqg2R4GEj+B3Xy0PoMw0d+xYgN2Fkr/CvTc
         fd4EDfpfeIuzo140Oh6eIOneg3EZFYRcoatyhOudmGS2AtYBGt9I0Y8Oxpd8qzhhWvMB
         SnWAfzpVUwBd49W3bU+ldWeQitL5r+0uczO8IUZPOI87zzf/r0QDNwA81DjQlXUxoPpi
         i4TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PTPXtHxYqLGYZmdj0tHzFMVrdsxMJpp8auFdi6gANok=;
        b=AW1CQd3FfB8OJ4fxKvHjaa9PPYjcFo0odSi/UnLOOoDpGq7D/P73tMeIdoc+ipVVso
         YNJZQIEAmJS3Ec34zPyehdWTm2OUgC7s4tCCxuwm9PoblhAUPUVc3IAmUO1BUgL+QBGq
         82UAGBuT6nchLNRmkR5h+J6ToFmCjmuqLZLxHiuas6AkaR87O53tAhFSrpgr/P9UYRYL
         pDWkBc5pvDdaiyteLByEjN3W+plNO1iIeuG/NY3kV/M2wn1DJay4/3Az16S54nUfAmWT
         B/S0kqNfvH3jShzY7V8b2DGpgwFzmJ8zYEM4eds5MJ7LI2SBlHv7SDCa6pdDTNG7vsfb
         Xnvg==
X-Gm-Message-State: AJIora/ebMo5DFSTtzaeHgLkJxbocm19jB42bHUBelwS3IO+REL6VwaV
        SwKzMtP4PnSZTTR/Ouwx2hYJiQ==
X-Google-Smtp-Source: AGRyM1sXT5CYOKsEAdFreJiILB92jOp8xv/+ppd8XlVIQS3GkHCZ1B4lfdob7R4bMzcm2ShZ0t4SMA==
X-Received: by 2002:a17:907:16a4:b0:711:c9a7:dc75 with SMTP id hc36-20020a17090716a400b00711c9a7dc75mr24577617ejc.542.1655814156854;
        Tue, 21 Jun 2022 05:22:36 -0700 (PDT)
Received: from [192.168.0.220] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 18-20020a170906219200b006f3ef214dc3sm7565294eju.41.2022.06.21.05.22.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 05:22:36 -0700 (PDT)
Message-ID: <6207a625-d6d8-71c6-c4bb-f7078da2781f@linaro.org>
Date:   Tue, 21 Jun 2022 14:22:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] arm64: dts: ipq8074: fix NAND node name
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220621120642.518575-1-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220621120642.518575-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/06/2022 14:06, Robert Marko wrote:
> Per schema it should be nand-controller@79b0000 instead of nand@79b0000.
> Fix it to match nand-controller.yaml requirements.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
