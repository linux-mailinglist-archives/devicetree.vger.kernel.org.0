Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2308A5BF8F5
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 10:21:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230158AbiIUIV2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 04:21:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230453AbiIUIVM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 04:21:12 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE8684BA6E
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:21:09 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id c7so6000987ljm.12
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 01:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=SzoiSlAyDx5JNebfDgNLpdb1eUWE6tHpfglBQcMahaA=;
        b=w8T3E/AWdtTdLvnZxZX+KQ61W2m83HCBk3jZEu3Zhld4rnIeUzSCW/C7i+dLMmosTZ
         K+QjV6CL6eSlFpSC6gpHIyi6IPGizFCSZhN0sP6me5tcL2pVLcZUH3USrMuCETvUB8me
         HpY8NZps8htHK2Rkbk8lbg/8C4vwqD2R0PsogVDLmyY9clwIWxOd09zHKQlqXpbxDgw0
         1Cq76Q6wTgmqnl2AQafZjPVcFcpbJqQXUDBcEMAoNbObGQXRq0U2WtM/FJ9qf0+BDWOv
         4FgjvLlHmX51vzxjdtYLS16on523cIstOjiSFsM/VMytRiSMGP7ej74nSaBniafRXKpz
         ll2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=SzoiSlAyDx5JNebfDgNLpdb1eUWE6tHpfglBQcMahaA=;
        b=5G21I7xbMF4Tp64XJclYnZp6/iG327m3pGE7FgUzbMm1qpQ5snawNMhC+8BNggkS/Q
         RUXVVri4hCp7rZnWxI3VjZzzK0vtVT2I5f/a5EUTdAmJqok04YZcV608/Vm0UTUR29nN
         MfSnrrFAqWT0HKcB+kxExZ07i5ZGO0sWXs07m1ioVTCAt7ROaTJtnBEBowCliWLE/ATd
         t4vyU8uc7BpZTCrzcMtJCJ1tFaz40RA//tJF5l6nfOzabxlhkTrlsb59OzIBRmaLia2x
         IojBHYe3N7BXhM8sOEHFFuYoMy8O0zkfrjbQeDbHXUaYwQ/6VChxDD3AISQ+BdU89e6/
         AlFg==
X-Gm-Message-State: ACrzQf0qNC4mMyF08KzqJwUiUtHOlk7sxP30t8z3GROC8uT1v3IDgRtP
        geQSBKmUC8355Bt+0knzDd9snw==
X-Google-Smtp-Source: AMsMyM4EjeSBzHUdUIOevx5WJgVp1lOG9DBQhmoNoXYe5eHeCSn+WhohMdZ5nUwC0vd0pPc5slFnAA==
X-Received: by 2002:a2e:bcc3:0:b0:26c:4c59:75ed with SMTP id z3-20020a2ebcc3000000b0026c4c5975edmr5067157ljp.505.1663748467777;
        Wed, 21 Sep 2022 01:21:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b16-20020a2eb910000000b0026c1b85d8b3sm340327ljb.34.2022.09.21.01.21.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 01:21:07 -0700 (PDT)
Message-ID: <220cf42c-ac27-5f86-1f55-19059ca6f9eb@linaro.org>
Date:   Wed, 21 Sep 2022 10:21:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: add rpmh-stats node
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220921080050.21383-1-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220921080050.21383-1-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 10:00, Johan Hovold wrote:
> Add a node describing the RPMh shared memory that can be used to
> retrieve statistics for the SoC low-power modes.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
