Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB1874C49A0
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 16:53:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242386AbiBYPxT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 10:53:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242383AbiBYPxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 10:53:18 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB77818FAC9
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 07:52:46 -0800 (PST)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E98743F33A
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 15:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645804363;
        bh=QHFF1WfMTvTAtjpAnWWRlegRHHUzrTEtJpZxW8bOnTU=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=rVpi/NVVz/q+pNYeINqTc8bIH6tHcUn0MfOhWL8MSoW1/lL7FYcvUazzy4OpILlGF
         rWCShDhjRXrdZ8Y3YNSJM0hYLPE+alnqFF766/UkMlCQHa+GKVQaRlezQwxxd4Q1/o
         pUqYWrCtRW/o6YuWnbQiBm39zgUa1GGv1fAJ1vt2f8b/nn+PkQ/bfMMmlwy1fDs/0D
         DFHIhP8BqTTZ5nRiidljKEfx42eFM/H+cY0o/8VfCOetktTZF9r5l1razlblYqD/2y
         NNtHRcgiVF90+XfiF7++i1UrR2svQPVSHg61ZM+75WOcaS7pgTUCbmt6xzvYoDhISJ
         cIQtaxTfDo28w==
Received: by mail-wm1-f69.google.com with SMTP id h206-20020a1c21d7000000b003552c13626cso1737250wmh.3
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 07:52:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QHFF1WfMTvTAtjpAnWWRlegRHHUzrTEtJpZxW8bOnTU=;
        b=Cn4Eh71qSgPIBljZ60wJrkbJeCy/WpNiZBDdw1bmIScxVTLRrL5OG9xqwKOUImEJhj
         47YfBqZIUwf16El6ubNbfVnOUwW/68pcmRtAKWr3gwOf+gAXXZ2sPX/9Wgti6Mb2/cCD
         AEa1d3IpAjOdWf2fLK0JBoZC6g61BbWk20d8xgQx/Q8JUzEDLzp5EDyQV5V740iMFlBB
         9V+kaGTAxdWYHukUaWNr5T9rkUPsfl62FM0I81XPsgI9DLB51s74+C5v7VfbFAwtj1Ff
         D3cZt3FU3tTOiZFxWTjwTCdH9hiUvO8ndg+IvSmMe1uqIYE89VRkG8CMgIL7jXfiDBbw
         1SAw==
X-Gm-Message-State: AOAM530FiF41hIy177dhyRRRC9ODP7txZNcNJ5JP6EDVfmWZ+lZdf1mj
        jEdN6K43fknGiFsuMhbJoMoNGQpSbNo2Qyi0N37v5mUY5j7o5eAmUXF5k7E8enj76JD/DidziUF
        ZMc71n818JP2OiIa0OUIxfZKsqSBsAUnsC+ZWN58=
X-Received: by 2002:a05:6000:257:b0:1ee:b98c:243c with SMTP id m23-20020a056000025700b001eeb98c243cmr5267568wrz.51.1645804363709;
        Fri, 25 Feb 2022 07:52:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwZClTgVXWBy9RraiO8dWUTT6Evv084LD3/xmJExyAJgJi+5QIL+SZtvfW/xkcPwvhNWEwrtA==
X-Received: by 2002:a05:6000:257:b0:1ee:b98c:243c with SMTP id m23-20020a056000025700b001eeb98c243cmr5267548wrz.51.1645804363529;
        Fri, 25 Feb 2022 07:52:43 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id g5-20020a5d5545000000b001ed9d3f521csm2567002wrw.113.2022.02.25.07.52.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 07:52:43 -0800 (PST)
Message-ID: <6561cfc7-b602-20e3-8679-0ebb99a52f16@canonical.com>
Date:   Fri, 25 Feb 2022 16:52:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,qmp: add sc8180x and
 sc8280xp ufs compatibles
Content-Language: en-US
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/02/2022 04:51, Bjorn Andersson wrote:
> Add compatible for the UFS PHY found in the Qualcomm SC8280XP platform
> and document the required clocks for this and the SC8180X UFS PHY.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v1:
> - Fixed indentation
> 
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
