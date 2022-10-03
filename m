Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 102325F3088
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 14:54:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbiJCMyr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 08:54:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbiJCMyq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 08:54:46 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FE9065E9
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 05:54:45 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id s17so1349870ljs.12
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 05:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=dxMU/eC1Lunxv3B7tomlrKj0mLpSAA7arNhWezvMtIc=;
        b=c9TPQpMBMU83n4lS/rAV8nx+CRt4XVimRM53dxNf7lt1PpFgscIs5VmEX2oNq2WnWv
         +/TDO38pY+DZTEpzIMPGq43JfXAUYLhR+E5t+zf7g9Bhe/AsVAsjSr2KshwdKPBO+JCm
         TKDGFI/s1wMSHwi208oka+JRvDVkB76cvja4uIkOaBmfi8VdaMp5LYg96SMg9XXlds6B
         qYh3zNRN8WtQYnTMgt4jeMsD0wRv9RMRSEbZZfh6XN790CBVbvxk6PM8RyIs+NL+ocOZ
         LV6o+yf2KnQLqBn+4QyYn1Acomymdl1X5KV+FIht207qHMfclNrr6CToajahMNzW7Cc9
         EXUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=dxMU/eC1Lunxv3B7tomlrKj0mLpSAA7arNhWezvMtIc=;
        b=Uxw29NTuR26KyhK/rk97vt86GJLUivmWxn6bEkXl1sbEp1SmsnITjiqvXnTURujiHw
         eEyZH3Ey9IYnZolfCXjII+wFrDRmHWAHv3iabB3WmSc6VK/SovRFUlb57HKNS2Hq8VMX
         qTCknUDUiXU4c0UkSwkYKrZdPI238tNq3ZgKddwtDTSl66pyjXp+UBf36Db0Vg+qTa1M
         DnhefQRXNbZkJvLDAA9nudknW8/ip0EEFud6V8r9u9boAxOGVK0Cd0z0WBK4SWPXL4q6
         2cVyGImBIlYy7S7J960VoNCrerD1UcWf81cTFS64BD3QLt/Ec8xgpKTekPnBjl9ZbgUY
         Z4uQ==
X-Gm-Message-State: ACrzQf2VDazH6WHu81PUQBak9Ybba0RWB9Hs0CVgjnzisescEfHma68x
        NV97/sJ/MRz2LQT3qUIVT8nCpA==
X-Google-Smtp-Source: AMsMyM6dwThfWQ2TjRoaPWNTQltLmPcWfLroagS3x8RfaX/fegHJZvehMnu3gTGvpTvFaRNxdFzg6g==
X-Received: by 2002:a2e:b60d:0:b0:26d:d564:2fdb with SMTP id r13-20020a2eb60d000000b0026dd5642fdbmr1836781ljn.212.1664801683670;
        Mon, 03 Oct 2022 05:54:43 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id k21-20020a05651210d500b00497a41b3a42sm1454937lfg.88.2022.10.03.05.54.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 05:54:43 -0700 (PDT)
Message-ID: <965176be-4248-01f2-d2fe-2f9f97ef168a@linaro.org>
Date:   Mon, 3 Oct 2022 14:54:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Polyhex Technology
 Co.
Content-Language: en-US
To:     Daniel Scally <dan.scally@ideasonboard.com>,
        Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        laurent.pinchart@ideasonboard.com, kieran.bingham@ideasonboard.com,
        debix-tech@polyhex.net
References: <20221003083705.22495-1-dan.scally@ideasonboard.com>
 <20221003083705.22495-2-dan.scally@ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221003083705.22495-2-dan.scally@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 10:37, Daniel Scally wrote:
> Add an entry for Polyhex Technology Co. to vendor-prefixes.yaml
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

