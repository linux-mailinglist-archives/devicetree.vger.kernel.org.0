Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B335583E31
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 14:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237008AbiG1MAq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 08:00:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237062AbiG1MAp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 08:00:45 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 903DB25C7F
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:00:44 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id u17so1715344lji.5
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 05:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=C/eKsc2uKJWdGdBPl+AbBqhtWo8lXeOLPWLk2KCcm1s=;
        b=nKujWu5wmdQkM5cn/pFm6/mFjkqKtmL5qBXs81oT2GuPmaqbHrBRI7ZEO0M/Hmo+tR
         mpoPpSJzQ7L2XxpzsaXdcDecYGINCjG3Pmy3NSLXBHMOlBFHJu6wtty5eVmieRZwh4x1
         y6Byb+QckvrtnLdH1YCQBBEaNR5hy6pFbDwil/uzVkteZ/VSjMUNgc0oRnxgj7/Cnlae
         cddpApIV/fGSzVb+JuHFMYQGG+LbeEEnoFNtHJTCfhJnmhbb5Ugv2ZJlhWyUNioYEJTo
         xqTDudeK+1uqeoAW4uVpilYkEH2TWhxZKr6gD0iG5+WW8mbGfIGqLJDEPhRpPM5kBaqh
         CTfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=C/eKsc2uKJWdGdBPl+AbBqhtWo8lXeOLPWLk2KCcm1s=;
        b=cnUd3Pd1jQAfQDJUsTbx6h24xluK9GLR9hbLUUXdjyJNJofcer3W9fFdR1T1EEchen
         PeNT2r9y1kYOx5UuBTh04AjH3vq4QUs8tR9gCwUhFpC9ppNK8IgrSbzjqws/Je+7H6Ro
         wijfpRfs5eos0pa7G12eLxh/DPAvjQm56E0apY456mnwvV+C68AJ//IFnFL22dCIH4T4
         Uf3BK+E3pSYPtXgOq8umQ8MVQV4SKY4xmSIgn5a1W8pB8va4BcLloKN9lq8Kfe2+hlfI
         Rnd8HuuSfHEc2bA7iTMJbRs6sxVUZ55sMPLO5C0N9CWHCll1dpuymAeCnQWZX0HR1/jK
         xCCw==
X-Gm-Message-State: AJIora/e+elNrhQvCfqELVZRTQ6iGxVb5xDXNEYOBTdOoweUR4LVi1fo
        WyOJ+CrvEYVneq97VHCcFjRVLA==
X-Google-Smtp-Source: AGRyM1uOky7iW93JbEjxtl3fFNWBwgD0p9PteIplGukiC60P+gU7cqklc02N0r7zrgQOigBXsrxzfA==
X-Received: by 2002:a05:651c:150b:b0:25d:ead1:dfa1 with SMTP id e11-20020a05651c150b00b0025dead1dfa1mr8794465ljf.172.1659009642849;
        Thu, 28 Jul 2022 05:00:42 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id p6-20020ac24ec6000000b0048a9b0fe780sm163033lfr.286.2022.07.28.05.00.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 05:00:42 -0700 (PDT)
Message-ID: <3e00dd43-3c0b-207e-ba41-d46b0759006e@linaro.org>
Date:   Thu, 28 Jul 2022 14:00:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: spmi: add compatible for mt8188
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sen Chu <sen.chu@mediatek.com>, Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Hui Liu <hui.liu@mediatek.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220726103729.24525-1-sen.chu@mediatek.com>
 <a7230c4d-94dc-c0fb-e39b-50de971da511@linaro.org>
In-Reply-To: <a7230c4d-94dc-c0fb-e39b-50de971da511@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2022 12:26, Krzysztof Kozlowski wrote:
> On 26/07/2022 12:37, Sen Chu wrote:
>> Add dt-binding documentation of spmi for Mediatek MT8188 SoC platform.
>>
>> Signed-off-by: Sen Chu <sen.chu@mediatek.com>
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 

Un-ack.


Best regards,
Krzysztof
