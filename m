Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 609E450B83F
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 15:20:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1447995AbiDVNXJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 09:23:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1447904AbiDVNWg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 09:22:36 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACC4658390
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 06:19:42 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id p18so5237653edr.7
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 06:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=c3TGvFLocCbTP8mYoGBFXEHaj/S5vPP9Sy4GCgbSxyk=;
        b=W7oUlPVEc9ewUZReoPY+V6JvX/xyJKO/FGiU3Q93ZRkdJjGax9Y7cpLSeRZtPv9Txe
         pYtGF4OKyJ4qQx0jge8knbKYkrguChO+Xt3ThM4OnSjdPTZHOrhqqnnLV/eUfbgxiRQK
         Its/nPRYUNv4mEr1DafR/CbCTZrTvXAM3MoSLHNcuoQP4ac9EgAdeSUnSWiXWGX81Oov
         7r3jANuaCnj0M9iHhPMruKhKAlkGE3WiYLvSh0osiwBXnlRkICG+ayYgtt0eyoAShCvZ
         7GB9G70GlutWkONrgT9NGX+BQiIvUq64z4H26tzJvlbRaU0jGRoEhBfLAcnThlzsvEGB
         uCXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c3TGvFLocCbTP8mYoGBFXEHaj/S5vPP9Sy4GCgbSxyk=;
        b=bkKNcRIO1fvi7GunTrDofSaUWGucw1AGNhxtBvMPSGLxel5P95qcxJjO9REosFas1J
         BX0RwbVP7cSoc9gLKnrrN6c6D14q8WL6tn8YU0MjGaRZNLmfZq1Y77/AMkrjo4gSxYet
         sqiT6CB8/ziJcqutkrFLo338HldSm+SffqTYnhWU60xgENWymCXHrCI3P/jCp+aX65cZ
         CGOKpu6HZonFmJbkHje9Q/wJdcYiOu9L6S0fjVUZAsEucUdBBtKsdxNu4uco2FIYNNdM
         gNtn0aKyd8gvR1SSr08Is7FjYRfiVMIW22UikOrS06RI8ieDq64jMINu9ND8aWTL7tQ/
         QQew==
X-Gm-Message-State: AOAM532NCO8wf/B7lUhjzcWDgLlyoIhWyBm08yPh+yKEYJhTlBilAYvU
        51H1QqfRU0A9/rlpCnkwzucLfQ==
X-Google-Smtp-Source: ABdhPJwp960tnHTvUocKrH2blVQKCAnzbBw1ej33zJ7Kzg4j3mrsm3dcwTS6Da3bnMzwzg9x5fclMg==
X-Received: by 2002:a05:6402:1d51:b0:41f:cf6c:35a5 with SMTP id dz17-20020a0564021d5100b0041fcf6c35a5mr4851088edb.25.1650633581311;
        Fri, 22 Apr 2022 06:19:41 -0700 (PDT)
Received: from [192.168.0.232] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b8-20020a056402084800b004207931a9cbsm963105edz.36.2022.04.22.06.19.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Apr 2022 06:19:40 -0700 (PDT)
Message-ID: <80aff4b0-1649-26e8-78e5-6d438a987178@linaro.org>
Date:   Fri, 22 Apr 2022 15:19:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 0/6] dt-bindings: YAMLify pci/qcom,pcie schema
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220422114841.1854138-1-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422114841.1854138-1-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2022 13:48, Dmitry Baryshkov wrote:
> Convert pci/qcom,pcie schema to YAML description. The first patch
> introduces several warnings which are fixed by the other patches in the
> series.
> 
> Note regarding the snps,dw-pcie compatibility. The Qualcomm PCIe
> controller uses Synopsys PCIe IP core. However it is not just fused to
> the address space. Accessing PCIe registers requires several clocks and
> regulators to be powered up. Thus it can be assumed that the qcom,pcie
> bindings are not fully compatible with the snps,dw-pcie schema.

You can still reference snps schema, if there are no real
imcompatibilities. Few other bindings do like this.

One thing is not being actually compatible with snps but second is being
not compatible with the schema itself, so not being able to re-use
common parts. I think only the first part is true in this case.

Best regards,
Krzysztof
