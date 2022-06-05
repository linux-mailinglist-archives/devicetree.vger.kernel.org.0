Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3B9B53DCD4
	for <lists+devicetree@lfdr.de>; Sun,  5 Jun 2022 18:08:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351198AbiFEQIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jun 2022 12:08:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351171AbiFEQIZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jun 2022 12:08:25 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AF9FA1A0
        for <devicetree@vger.kernel.org>; Sun,  5 Jun 2022 09:08:23 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id me5so24201021ejb.2
        for <devicetree@vger.kernel.org>; Sun, 05 Jun 2022 09:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=V3KulwXriouN7eiOyT0B/Q5x0zkY8WXHHcxmUV9w2Zo=;
        b=UlXeoLoPUmU0nPRjMSnknHIfP9yibqMNppALxbJ7X934DvZCM4ztooLXc3Py/cJwDe
         CReMe7p/hnSh2vbmgVnR+ylX3nwNh2GpZVBlXVCTPiqhKMFEzcSocwR7OaiseQ9DKFfB
         wDbQlcemkkLVg4Gvc/TLn37KYYdzLKZsVdrhOAIRSB3ekYlf0/nvXW4pRWdbLSqnpWkt
         xAcApZRMpmCxrbw5Qm5rWK24hTC8CRzjiRXVXQgcFbsluIAE47UyooL+2gsNa6KQIoxm
         N77asbG4o9m6N9WCA4FQxj+oBMuzniOskF7ZVI/He98Z6rA64O0alhDeXqJqF2lxEKMt
         LjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=V3KulwXriouN7eiOyT0B/Q5x0zkY8WXHHcxmUV9w2Zo=;
        b=XTJLyAK+5iMYFi35QpKMirvoIrVk6FPt0nrDtaI80uEUinctyTlMRpbxe3psnlDN/V
         R1vKd8z2/YNhDLCMU7bIJQYN0opJE/WMaJvXbWB1oC70GKAo4Ot2I4KZhTtC/jWK12BV
         4ApX31m2Lua26oiGiVbNukF0ZCC6kC7CnRUdmFt2b2RPFflRIHd0jrBgOFxnO3R9WGCu
         TDKu/3WTiFn5ZkTHUF3QG889caA85U62ZFDfdrr3v7NvXH1KWtL4zS9KzuS47lA3wi90
         GEdoeHwzxXIRwyGe3zasN9YfbYBSNvGJhsI1EQ88WhwrZR+rqgDIx/6M0M29X2w5/PFW
         ZDoA==
X-Gm-Message-State: AOAM531g+pltW5PWF8lRrq/19KRgtzHdrSUKyAZcz5SEF2gr/ua/7vlf
        A2twySi41prp1Kl5j/cCfVjYDdLdq7DnaA==
X-Google-Smtp-Source: ABdhPJyGaFicfO+SdTtgmzg7DPV7oVp+iUJDVqJZsfzrZ44MneA2ADvTEsKPzPGjU0XMC7eISXgIEA==
X-Received: by 2002:a17:907:a407:b0:704:34ac:835c with SMTP id sg7-20020a170907a40700b0070434ac835cmr17843528ejc.663.1654445301784;
        Sun, 05 Jun 2022 09:08:21 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id zo11-20020a170906ff4b00b00709343c0017sm4653430ejb.98.2022.06.05.09.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jun 2022 09:08:21 -0700 (PDT)
Message-ID: <5a23d393-1dd9-fe9f-c2d0-7f86e2d1a74a@linaro.org>
Date:   Sun, 5 Jun 2022 18:08:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon
 as phandle-array
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220603020410.2976-1-chanho61.park@samsung.com>
 <CGME20220603020426epcas2p43e4c27b5a371e2fcdfa462c564d9c5e3@epcas2p4.samsung.com>
 <20220603020410.2976-2-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603020410.2976-2-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/06/2022 04:04, Chanho Park wrote:
> To support secondary ufs phy devices, we need to get an offset value
> from pmu-syscon.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
