Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA7253FD6C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 13:23:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242791AbiFGLXp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 07:23:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242775AbiFGLXn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 07:23:43 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA8A98767
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 04:23:42 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id y19so34527789ejq.6
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 04:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0bdzMNhV+eEkaALdIGf5lJGoFxZEf1N7uScazlN3ABI=;
        b=AQj3G2h/moiSY90+Zprxhki7NKUcfZ1jVdtK2htMWc0U8/rII/5R9GJjcrR72PktfO
         9jrq77utdRXjm5SzKL/KKU7spjaJDcX0kyTgg6E1zrAEqbvONK1PcpW5njWT0DxGArui
         natuICTBSPCEHXt3GEXrzkEymw9VNlesh8sAkC9JWIulSeRn4GwEb4E4nGHCc+JrZAjr
         ppTjacxZZMuAfiAyKTl4NTLIRnuiYtq2GnHMpyiHrZZF0x5Ah46IyMoBkYYcj2u37he9
         TFWZCU3DCn/phiPXxHfHxWx3FS4B9HPjXgLTpIFHg1DuxwJXz74NEhIS8OOvt7TR3cdL
         7fqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0bdzMNhV+eEkaALdIGf5lJGoFxZEf1N7uScazlN3ABI=;
        b=b91ipl9DDVnebbXp/lXuuYX9jikroX9a0cyM7JcRIh6Ebw6O9VqX2yHmtvrMmr7uFw
         XN6QE0ijDJETZJLoHsqdm3OncoYmWrlMHelC1gP69hQiRTx98LXBm0R7YCKscNjXoPtc
         l6E+fjUzNmDBQ4ljLBVSoTbykAtnpt/RjaTv9SuPgWBPb5AY6EVOrX04zSvPL1iTMqkJ
         DroirTEam6S4AAPAPryU0k5+9/lKSp3A7Sef4ABfAWxAQx2Dpo8RogTn/wVTDYNGTyf4
         H11JbONBCeWTyyxddpexwWh7zccYs/sChvn6CbSPBA0AvL+my+Nu0oAQeixju+AVhx+J
         LHRg==
X-Gm-Message-State: AOAM530tnQJTZxVbnLHYUxPhAa1dA2OtBqAxTk8f8tFk93/pUOb7DE/2
        RB45NhqTTtqhNp4NSWbAIOyFyg==
X-Google-Smtp-Source: ABdhPJyNkoR93R7Td3RPfDitzwFDD3/QZ+0tDUF3Fae0/IAJyHXMcRvv/v3MvfX+oytsSYwgkF8F1Q==
X-Received: by 2002:a17:906:99ca:b0:711:bdca:b85a with SMTP id s10-20020a17090699ca00b00711bdcab85amr12530244ejn.224.1654601020710;
        Tue, 07 Jun 2022 04:23:40 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v2-20020a170906b00200b006ff05d4726esm7512210ejy.50.2022.06.07.04.23.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 04:23:40 -0700 (PDT)
Message-ID: <d5310b6a-ffe9-a72d-f324-2c00db036ae0@linaro.org>
Date:   Tue, 7 Jun 2022 13:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 3/5] phy: samsung: ufs: constify samsung_ufs_phy_cfg
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
References: <20220607072907.127000-1-chanho61.park@samsung.com>
 <CGME20220607072938epcas2p4aa59fc2826fe0563bc1f8f68301e2bb4@epcas2p4.samsung.com>
 <20220607072907.127000-4-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220607072907.127000-4-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2022 09:29, Chanho Park wrote:
> Put const qualifier of samsung_ufs_phy_cfg pointer because they will
> not be changed from drvdata.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
