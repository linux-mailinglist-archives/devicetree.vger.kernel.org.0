Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6C9F6165C1
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 16:07:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbiKBPHP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 11:07:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbiKBPHP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 11:07:15 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10D546580
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 08:07:12 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id hh9so11453139qtb.13
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 08:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qZIsgf7BsJaq5RoMDf/lp0e15zwbBn0XVv9as1PqTsg=;
        b=rjdVptJBnSCNqi7twCMUfOwUHRnJmydxGq1yzlqDEh6d41uv13JImtbnEMSAUzEhk5
         L/tBVG8Bv/MUHb+AFA63U63djlUwQfT5ckffw9uEcLYjPxHLlD0wTEVgjs+Fo3EaH+8z
         LmnuPHh/g5mC5dbKzf51j/2eqp8uljquxM4dXSUNDqnV16bQFkjm3rATrpzgcefM+CRX
         /mpO1kTEaGjHfgQmaNPdx8PZO2s83Xw7ObBid0sOwq1Q4Isaw7sBmW4rRPClKLzRdU/i
         47SBDISBsH2nTq6G19zg7UmJgeEO/1UiJurIGMxVOltPHbmRf0KV0ezwLyEBXpZPU0Z+
         IUFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qZIsgf7BsJaq5RoMDf/lp0e15zwbBn0XVv9as1PqTsg=;
        b=uQISfeHokh4qJpu+2pA1Wmn+JfEyazUuBm8m4s4lVEXMPDaKoN4Sd+U3s9oikSy0r/
         znQoys7aw6N10bm9dteVbfMdr5Ij3OIY7RDJzQAjgkgbwCzzxsQm+BGTFI7F0e3bwSAo
         mFV498gCnXZmQvNHTp/wy7jbywNjxPE1O0oTiyvQnOfbgZAhY/g6caVDPqDIaL2YUIBj
         mdS/ysqkI1utV9cO3YnE6WxoOcb3sv0mJGnM3lTEeq2Tvn5IEbEaJ5Qp7KOLQqF8NCHv
         ZzZS2UCoJwzpTTcO8wYhoQh/PKFO7cQA/gVAbV6d0XqN5oGb7TEnc84zY3xsmll2MvZt
         LQRA==
X-Gm-Message-State: ACrzQf3Mw3nI7FZJeLyBiUl1DcKIVSNAs7fNE9pyigW6/FNjB2Qruxk9
        IUvpNNtslGWDVMfX0Ue0x05WSA==
X-Google-Smtp-Source: AMsMyM5IXtLvrV1FAVMA2JigTDsv4OBNoU5TEX1IHKOfdWBJC5QvnjQdE2mi2qz2FZkSMIExkPl3qQ==
X-Received: by 2002:ac8:604c:0:b0:3a5:26a5:6d93 with SMTP id k12-20020ac8604c000000b003a526a56d93mr13296302qtm.541.1667401631250;
        Wed, 02 Nov 2022 08:07:11 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id r16-20020ac87ef0000000b0039cc7ebf46bsm6624527qtc.93.2022.11.02.08.07.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 08:07:10 -0700 (PDT)
Message-ID: <f3279a33-40fd-16bf-dac2-27b7aef7f0d3@linaro.org>
Date:   Wed, 2 Nov 2022 11:07:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC AM64x
 based hardware
Content-Language: en-US
To:     Wadim Egorov <w.egorov@phytec.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20221102134923.3438022-1-w.egorov@phytec.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221102134923.3438022-1-w.egorov@phytec.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/11/2022 09:49, Wadim Egorov wrote:
> Add devicetree bindings for AM64x based phyCORE-AM64 SoM
> and phyBOARD-Electra RDK.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

