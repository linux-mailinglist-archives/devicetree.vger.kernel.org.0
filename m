Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FA7F552C67
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 09:54:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346477AbiFUHyN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 03:54:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347566AbiFUHyN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 03:54:13 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6560A240B4
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 00:54:11 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id v1so25636955ejg.13
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 00:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TGYC+CLd/1M+90gJK8/fomR0IeIc2wCPl2XftG7b1eQ=;
        b=GOJ/6dBufOQs/zj+50TNdmUKIpAC87FLuWO1xJhB6j1TTpS+L2sNXMXSSAxNGtGuUm
         meb69bguCusL1BrbM1+PrgqZf79Ag/Y+EpWCNsurXDkqtg0LKUF3J2ScC3Z6ZRBICknb
         Mj1RMLBfpDF3ycYFTlvBu1c+1KvGjKajpjjTkbroNgktweP0B86GRdCdfzx9LVGYgbWM
         KJy2Hdvxd6Hd7gNuTqZX2YcgFYZcoiiRH1LnnBFX6QjFZkbRgVAgF6UB+sHRGrFloDNl
         1A7aMEbgVFzXlaGs0FZRyec0JR7LgnfrkdJLI3Orh1LrXg5DlRF7uMDn7+2qRJS1/TtG
         3D5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TGYC+CLd/1M+90gJK8/fomR0IeIc2wCPl2XftG7b1eQ=;
        b=bTVKSSHWLYqCLKHRFmHHOCXx48JNFXXDQc/f3LCRy51yezVl1AnbMAXJ1C3LVF7Snz
         qK04jGdaiCs9ex+2eIeNwpCoIRvKq41PSCBJaB/wGHY3s4I36lZfnEk+nVrM1rYa3+aA
         OIpJTJW9FCXNkdL51CsJJpAUAT7zdfq83Mgs7tLHtvy8cM+mTbLIgpndZUJ3g6Qo3ihA
         TN6HJtbITk686z8/QisAMpCM78eNVct3q5/es7e9Z4CMdM/pS3zSR0ls154T3qpcuMev
         NFOSj2GBGJyy30GcrmHQuhOmAEpVWB6lBT7Rqgl9zsa6Th++ISuqJuEAqHd8cilMen7+
         Hwvw==
X-Gm-Message-State: AJIora+jkFGSC7akZSQQxzzN182+CY7o+CbwmHqm/v1REzrgRdeAxNBM
        B7lLXXy7qmxHEP7nitIC/yTnXA==
X-Google-Smtp-Source: AGRyM1uqA1FeXdA7Ei4IAR94TJhY69e1fk/nKllBETSu+3zHFfG1fV4TXg6TMSv3VrOLqbYXeneMZg==
X-Received: by 2002:a17:907:2da6:b0:711:d86d:ccab with SMTP id gt38-20020a1709072da600b00711d86dccabmr24360889ejc.356.1655798050004;
        Tue, 21 Jun 2022 00:54:10 -0700 (PDT)
Received: from [192.168.0.216] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l2-20020a056402124200b004357738e04esm6105915edw.21.2022.06.21.00.54.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 00:54:09 -0700 (PDT)
Message-ID: <626cd8f2-8f54-2877-5b73-c0239a243d99@linaro.org>
Date:   Tue, 21 Jun 2022 09:54:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: Add Freescale i.MX8qm Mixel LVDS
 PHY binding
Content-Language: en-US
To:     Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com
References: <20220620123854.1138028-1-victor.liu@nxp.com>
 <20220620123854.1138028-3-victor.liu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620123854.1138028-3-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2022 14:38, Liu Ying wrote:
> Add bindings for Mixel LVDS PHY found on Freescale i.MX8qm SoC.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
