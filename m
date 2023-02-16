Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96E8B698F4F
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 10:06:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbjBPJGp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 04:06:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjBPJGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 04:06:45 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8F9E3B3E1
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:06:38 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id jg8so3513645ejc.6
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lE6LSLIcAP5FrE/vC34wg8FJ0P/L+KW8doE4ZRZMJC4=;
        b=chVLOAn79Tc5gs5dRNDiYJ0sMb8By83LdDP9nzQdURTpDjjx/8ZQlo2M1xHLqkgmpZ
         WxKNVf5pjXJcgyMVyz/bLDty0ztmEAtewxR41C8USNNwKCVJn6faf3+IgssJA/To6OrR
         SLQxlNv1XoOJ71ygbdhSaaCdoqwSoVJt7bIObiX3t4kFC4AiOrFCetnde9FCPcwgTTF5
         ZVVUKeVVWzcdhGA30bMz2yiX7HSA9beIVQX54iQ9/LlfXu1/ZFhAGP97nkcfYxF4wzI7
         VL3Rnv2ReDy0KZ5sq2KqUWFI3KarM1TummLTswHkXQOnJEZMiLyQueGx1JPITP6WRKdp
         Uzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lE6LSLIcAP5FrE/vC34wg8FJ0P/L+KW8doE4ZRZMJC4=;
        b=zIrZ6u8kKYXETBfsFmPcOAIaSqIkqkAIGLbVXgkrPQQXjOPM4Y0J4sKSeJnVT+c1EY
         AYXqZA8Dk/43irBCRhYznN1ZJUTerdOGSg3sfoks6s6XdjaIz1L3D1Vomr/0xLJMfP3z
         nhi2i4FxmPoHo6GnZlEk9XSzBTQKvPUsup7IuLsEKIDSZxKvcL8nV6zRMzed+0QTEB6T
         IFdEV/iiCzEB3e8oUxKfl6LoXODElJ4/VFd1RGKOQIx3zYDufI+m7av1LuIsRUZz5DLW
         7UBq4MNFsqgBmIyggyDEd9rviAQJ4cTy4ThFmPFgnfrXV5+flgi6Vzi/Rn4kzsd3OSfo
         89MA==
X-Gm-Message-State: AO0yUKWc7AJpXTJo4f6Krqq7ZuwWXwrzShwqaOqTc/qxZN5NSHXss2Yf
        RcBQnbUILSwaPrxqzZN4A5/bSw==
X-Google-Smtp-Source: AK7set+GKXSjb8+Ezjvo+rbU9zHZSatKZxAD0G02lrCf1tnsC/Nw6qr41Jdv72PEqrmAZCdHDpXInw==
X-Received: by 2002:a17:906:1d07:b0:8b1:3a8d:6fc5 with SMTP id n7-20020a1709061d0700b008b13a8d6fc5mr5964407ejh.25.1676538397363;
        Thu, 16 Feb 2023 01:06:37 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h11-20020a50cdcb000000b004aaa4da918fsm520142edj.45.2023.02.16.01.06.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Feb 2023 01:06:36 -0800 (PST)
Message-ID: <5b2c2505-5bf3-1bb2-81cc-241ff831a382@linaro.org>
Date:   Thu, 16 Feb 2023 10:06:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH V6 1/3] dt-bindings: i2c: xiic: Add 'xlnx,axi-iic-2.1' to
 compatible
To:     Manikanta Guntupalli <manikanta.guntupalli@amd.com>,
        michal.simek@xilinx.com, michal.simek@amd.com,
        devicetree@vger.kernel.org, andrew@lunn.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     git@amd.com, srinivas.goud@amd.com, shubhrajyoti.datta@amd.com,
        manion05gk@gmail.com,
        Raviteja Narayanam <raviteja.narayanam@xilinx.com>
References: <1676467944-17426-1-git-send-email-manikanta.guntupalli@amd.com>
 <1676467944-17426-2-git-send-email-manikanta.guntupalli@amd.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1676467944-17426-2-git-send-email-manikanta.guntupalli@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/02/2023 14:32, Manikanta Guntupalli wrote:
> From: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
> 
> Add xilinx I2C new version 'xlnx,axi-iic-2.1' string to compatible.
> Add clock-frequency as optional property.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

