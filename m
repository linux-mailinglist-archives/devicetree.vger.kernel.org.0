Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2900857488A
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:22:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237511AbiGNJW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:22:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238038AbiGNJWD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:22:03 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD04C1D307
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:18:44 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id o12so1453845ljc.3
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LkQDka+7xKVd9l5ecpBsG6iJaAg1D41qV0vmGVmqEew=;
        b=v5QwifoM/ZvLuBEgTdCQOfCZIyen+RgJhsF6EV5X65WmcD26A3EOmTZOjpqNqVHbkS
         mqvfGcpYtWykwOtkSNyXK8quyEkbV2OjFTZOVDBehqrnB3vX+PBYyDfyuTu0EcBJDp8U
         jg6LN1e5sqTebvJCPvGCp8m+ccEPEMuAw3UnRmZmun61hrdZvcfdMkdxQrcVE1GzqJpV
         qe3ae2yLrDmBkL4TO+iocqe6UYZlvMf9n11U6ewEV8t9+6/H/8vaouWXcgCA65yFfMMV
         QcBQcSEQlCKM5UBUiiavbRfXETLO/CE4uPFXNZX+6r1Uq+djr47daETzUoy5sFPjDrUw
         RAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LkQDka+7xKVd9l5ecpBsG6iJaAg1D41qV0vmGVmqEew=;
        b=DFx/VyD2Yy5N7V5vdYAtZHZl8C8TKdJVhUv3kF+8fQa9Jhgjfi02ZSIvuOVyEJNutb
         aFg6WfcR71528DYC8yQEtUgqx/Gu49XtdlW7UMuNRz5apLRzK+TQtu+mpmC9TFzVBXOE
         mZbma07JNzl0QMy/vJhFhIuFMeQD+HcKsCJTYP0INVj9Xdc01ffnKQFd/pBWNSz5xiLO
         vGBEvc3hkeZpcvqCNg22BthgjVg1SmGK4k/VIwql3gzsNfxnWtMPD2UbyemMEiFHw28b
         qeO3XVa+T55VdrycMSRPBB3cHr4Mrs3sfCb2WgsRGDLezxY0dw3562PBGS7D7R9CAFTx
         OE9Q==
X-Gm-Message-State: AJIora9DtI21OFmeM27hVkmh2ROLvUEJC26/f8OpqggqyyMXERj62wXT
        u2A/9RpNtloVWlnZHCHo4u+OCQ==
X-Google-Smtp-Source: AGRyM1snG6Q2bBq7P+9Uq1W6p4VAnBAjqQoJ0rx5GwP6PFiI9RjxLBnzJN7tk6F0ueYTGmmcQUOcvQ==
X-Received: by 2002:a2e:bd0e:0:b0:25a:88b3:9af6 with SMTP id n14-20020a2ebd0e000000b0025a88b39af6mr4089474ljq.363.1657790322792;
        Thu, 14 Jul 2022 02:18:42 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id z6-20020a195046000000b0047f59336d6asm254738lfj.179.2022.07.14.02.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:18:42 -0700 (PDT)
Message-ID: <0705fdd2-c7e6-c810-5154-d3c7a6fc62bd@linaro.org>
Date:   Thu, 14 Jul 2022 11:18:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 14/30] dt-bindings: phy: qcom,qmp-pcie: deprecate PIPE
 clock name
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-15-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-15-johan+linaro@kernel.org>
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Deprecate the PHY node 'clock-names' property which specified that the
> PIPE clock name should have a bogus "lane" suffix.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
