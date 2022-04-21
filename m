Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 188775099D9
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 09:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1385896AbiDUHmO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 03:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386032AbiDUHlm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 03:41:42 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 665DD1BEAC
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 00:38:32 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id ks6so8276113ejb.1
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 00:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+JREelw6laYvmBddqI3EC14b1vQSIevLCDNJfmzFR2g=;
        b=WDBW92vG0q4gsIhJeK1naDiFI4MbinA4vSOTB7TPvvbig288kf3Cu23BuaAGhT2gQE
         yoMVoFBH+t7BkGd3eiBC1sbcYROV1DjbPgpG2jCMCfvUhN6AfJlTP5Wedu5RfwMgoINq
         PpJ5iECwAN0DVjlD0jep13MWadZKuy5go9Aky6/VYdkDl3vGfNMML084FJP/X1F/rYUE
         sfAEzYxqr+rI7eqafyMgHQkqAtYNJrh6HzkXAVQ2EI3MtxRUQChYMLuj3KqNqq0DGGf7
         CovTosZ11cMllpGetNvTUF72tbFwCyZf3PATPU9G+fv07HnL73xDNFgpx81TqdbB6lM4
         wNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+JREelw6laYvmBddqI3EC14b1vQSIevLCDNJfmzFR2g=;
        b=14JKC/LKbDNUvroJV3HZiwOocjgmhOvjg+b3xLFBiu+0SLMHV9yqJwu/z0yAec6dw4
         qNW+0DJS8rW7DDHMnZlRkz6eHeQS3hC3GzExThEnwtTa4NoUqeyD9DUZtvTcEforMCZh
         Ic5GT7VwZY5bq0PjN9sb2bP4/a87MHNwxhfDSpTrX5r/OVbHRBbfZTiVDF9bOvdYvnbw
         10sXpfiIq6Vx9zcfzEUlzFJBh8kDEYuupeoS54r2oYNABg/JJ0iVnYrs1Nurqkugjpwv
         5GYzUt5j4/R9tbm+iiVsCrX4VN0ORG2yWDlggU2wDKKqfhH2vTleBVC2FI9DH54X/UaP
         NAJA==
X-Gm-Message-State: AOAM532L11obD4MnZdNIhc96QbeduFWwKEnRmt+E2L7Izi5Id2zddCdY
        UNBs+k9bHk57m9ri1BO2D3C4fQ==
X-Google-Smtp-Source: ABdhPJwEX9Azhs73zsMaeaPiRIxEJNmtzI+MiCPqqVr+i68qFBVnLhjq+9N3+ut1oLawkJuUCRzkDQ==
X-Received: by 2002:a17:906:4789:b0:6e8:7ab7:e843 with SMTP id cw9-20020a170906478900b006e87ab7e843mr21389705ejc.374.1650526710879;
        Thu, 21 Apr 2022 00:38:30 -0700 (PDT)
Received: from [192.168.0.226] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v20-20020a056402349400b00425a5ea1bb7sm276423edc.57.2022.04.21.00.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 00:38:30 -0700 (PDT)
Message-ID: <0dc122bc-c2de-8d3b-8d94-55586df35fc1@linaro.org>
Date:   Thu, 21 Apr 2022 09:38:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3] arm64: dts: qcom: db845c: Add support for MCP2517FD
Content-Language: en-US
To:     Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <mani@kernel.org>
References: <20220421073438.1824061-1-vkoul@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220421073438.1824061-1-vkoul@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2022 09:34, Vinod Koul wrote:
> Add support for onboard MCP2517FD SPI CAN transceiver attached to
> SPI0 of RB3.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
> Change in v3:
>  - change underscore(_) to dash (-) in can-clock node name
>  - remove superfluous status = okay in can node

FWIW:
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
