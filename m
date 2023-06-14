Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E198A72F640
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 09:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235199AbjFNH0u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 03:26:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243481AbjFNHYY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 03:24:24 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 423462126
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:23:58 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-97668583210so58376266b.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 00:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686727437; x=1689319437;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X48c7AoEOD3TxiGjzZ730W7QuuocGN40Ji4sYGrasgI=;
        b=AtHampU+XnfOFRa3UiWqVTavPvWwSBDwj08vushK74etxW/+TzPgltr6/zw/btuhFE
         HzLAnfpiZuJqMPGBNjXFL1l+linJmw/NYyucs8WLnrQr2cYmFkO1+3WzazC+i7blSpBk
         jkYn3pmPeNGEhPaOntF/JU2Fe75Jw6cI1XmkL1gvZ6LZKhjlFRP7d2oQXwKyuPFVaiWD
         uGdfIbDACla6yu6/RIttUUMDBNBLoF9L7naUE6zMDq1imfFT1kwowe7iCF5X+YV5neGV
         MY0dSU0/H/nJLVNelsqd6dhVZKpxTbbmZZoevFNWK0EQbl4Loe+N8K5jUi975+y3mfLl
         tIdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686727437; x=1689319437;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X48c7AoEOD3TxiGjzZ730W7QuuocGN40Ji4sYGrasgI=;
        b=Z8vMfsIlN/YrbhPMuXEwRPzBx1DxUGkR83Gc0QOaBI2s+AoAVH/CKDqL40YPWz1DkF
         XsiMpezKCrGN99ksvihbVal6MxNFFoLjD0ULm5E/LmpN+1uY3VwgINJpUymHK4rFRJE2
         /A+YP9+ATpgk9lr1m806Y1edB6k9fSugkmOWuvYgOIB9UZO7aPRkWwoA5pRBAz3BkCt8
         ZCnmmP6j1DMlTrR5hr9KsHCTz1GD/Cs7iNzO7GE4ptch79f75dGzmPQ4V9Enuubz3BWC
         dQiKi/JTXKaRKNARF3qThPqom9RmW7adV2W2ikPpcjqectyvacL5fq/Xs//TkR5Ii/aj
         fJzg==
X-Gm-Message-State: AC+VfDxqi6IpO3KI2FkFU3x9D1kL5gFdiEtU9YEiod1RDLihbIPZZVG4
        ExLbRViHEYZA6MossTr5U3j3WA==
X-Google-Smtp-Source: ACHHUZ7HprcUbY4Np2NnM2SRFCO1cDvQEs1A8ynQEvGZx3Dh5Jm8HUXXavnivFzBkFvto59qd1FDyw==
X-Received: by 2002:a17:907:2da4:b0:981:a949:2807 with SMTP id gt36-20020a1709072da400b00981a9492807mr9406993ejc.1.1686727436730;
        Wed, 14 Jun 2023 00:23:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ce14-20020a170906b24e00b00977cc3d37a2sm7598052ejb.133.2023.06.14.00.23.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 00:23:56 -0700 (PDT)
Message-ID: <30d50e3d-b501-273a-66b8-6d38d63842b4@linaro.org>
Date:   Wed, 14 Jun 2023 09:23:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 19/26] dt-bindings: net: snps,dwmac: add compatible for
 sa8775p ethqos
Content-Language: en-US
To:     Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-20-brgl@bgdev.pl>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612092355.87937-20-brgl@bgdev.pl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/06/2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the compatible string for the MAC controller on sa8775p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

