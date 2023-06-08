Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11F50727BD2
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 11:46:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231439AbjFHJqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 05:46:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236072AbjFHJqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 05:46:44 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D96AA2726
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 02:46:40 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-97454836448so63841966b.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 02:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686217599; x=1688809599;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NwfSUtJegYHwFh0wAFzwyY1ZdyGT7Mgb4oZNMttq6XE=;
        b=CDkhEftlaSLF6sdt8nNs7se4Qhcq/8O3MuP09B7vsVKxRA56s5qk9D+TBxSBsibyta
         ILLKhP8B68VLieek7PbP+ZOBVcDCPG1gM7bKz2uAVh9oSDCpHeJj3ax4XRdSlMO6mDRO
         PsblGCIp65wf6MOL985w6Z/KOnFXTTPb/QydQec4Zp356KPHvJM0TvvQsDXFsXB4r43U
         LZHq4+rl8/6ya+T6uTHNum1CxtPo5F4tY/EeHn2pgRbcxelnv3tTnbijXAjHkIBdbA8b
         KCWkcjrr018aICM55M+Nq40ina0F9+odCmDx1dV0ECVCFiCDHxHJgA1dMSTeJWOnVjmQ
         7NfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686217599; x=1688809599;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NwfSUtJegYHwFh0wAFzwyY1ZdyGT7Mgb4oZNMttq6XE=;
        b=UQSeiEJX0lo0qcibYqU87m2op9QeTcSoHRtTt0Xw6s3GTbdtLR6+SMygB1jZTcpUX+
         5C+y0cRPCMtP5CDNOSr7dYY1VsY1qgnkrYF15CAtxFOG2li1Nlo1vRRix/P86o3q22c2
         e/TYGpRzjEvCFWmoh54XANRooLBOw50kSAgE85L9TLQgE6qIPp8AF/VP2E9XizCAfMTt
         Ydksv4AUKIKK8Iog/3+z7R7/3YuiyBeQgsRuFG+r46xud0a1CwDqWp9vbbM31quZTVNG
         zPjS5BcKiw+x+5i/r6jGjWIlNtiogSC9hSOR1V8yQDRhUTmrsWcrSnu7hiooJmPpnbhM
         MFKA==
X-Gm-Message-State: AC+VfDz1FiEym1ZhybV+Rm3W3afpu/RCuwo/OL2llHcA138AjOqbX6Ru
        xPE3R5/vbVdgsnqrLenjlSacEg==
X-Google-Smtp-Source: ACHHUZ6zW9Jfzg9e3QUsXi49uAOKReuTXYpPcNMEk2ASw/T2zQjerzPEQW1Qxs/eV0hDTQYTXM17pA==
X-Received: by 2002:a17:907:3e28:b0:978:8e58:e19f with SMTP id hp40-20020a1709073e2800b009788e58e19fmr3216261ejc.16.1686217599358;
        Thu, 08 Jun 2023 02:46:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r23-20020a170906705700b00965e9a23f2bsm462807ejj.134.2023.06.08.02.46.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 02:46:38 -0700 (PDT)
Message-ID: <5242c754-0546-fbd9-141a-b4632c24ee50@linaro.org>
Date:   Thu, 8 Jun 2023 11:46:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3] dt-bindings: clock: versal: Add versal-net compatible
 string
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-clk@vger.kernel.org
Cc:     git@amd.com, devicetree@vger.kernel.org, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, michal.simek@amd.com, mturquette@baylibre.com
References: <20230608092526.6462-1-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608092526.6462-1-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2023 11:25, Shubhrajyoti Datta wrote:
> Add dt-binding documentation for Versal NET platforms.

What are versal net platforms? It's different SoC? You have entire
commit msg to explain it...

Best regards,
Krzysztof

