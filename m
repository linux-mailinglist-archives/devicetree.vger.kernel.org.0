Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22F4E67C95C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 12:03:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236541AbjAZLDX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 06:03:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236665AbjAZLDV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 06:03:21 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E209166F4
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 03:03:19 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id r2so1363614wrv.7
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 03:03:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u7vCrE7q/VPLeTXLg6KW/8CfPxh94AhXp/Mdu/doGko=;
        b=Ocn7Y8wYq1w5CE2BQNmoD7/PgjoqMViaN5x/i/CG2nzNDplo2dw1NyjE6D8lOd20If
         XDGwpwhkiGSUsqs/HZWFJ5/TFs2RLZZT9TVl5taOHEoRGbFevexTH1RI3spP1/LIU9xK
         SNNjnEdyfGFKSylVbyWs3xZy+zZXoIPnOo/GO+WytDe45RUa2+L/+k3pzhqJquXo8/Ze
         iQP1Ci72opixlb/HHh8UKVuTvsAyPU6qHEGGQWmsSRW0K9jlMwQyVoESvuTgwT3Acww6
         NiSqVmKyy1d8zq2BnBXufJKDMvvXBtCVBYOm0E0dRT5z2RHucMuWl+7kpSbgTIIDNAx7
         +eQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u7vCrE7q/VPLeTXLg6KW/8CfPxh94AhXp/Mdu/doGko=;
        b=LunqbdwI8yGVmVNYXsjme8w/Q8U0xjSY+AxsJUso+86aQ+Y4kApWjPAO5ZKBa8yBdp
         URJrOaxlKB/aWkTCH25Eg1N9nKiFPFpvDOn39lq7LOHa03BTPWPR7w1n7SWstxC8xPRJ
         dIX1zvi/GqC//okc9sPBcwDHE8B71Qcrlw5M5cMhbdCoBYjq3fAPGZwkx+qWnkJFWnJx
         hG1ODXQSLLnmtlh0oTlw/+haaNCjwtXToByeHTqZCgMGo6kb4VDxVtIwfSBLQKOLlr2I
         Rp7BtzU2cRXDOeIXTk1EtVM7740Djd8uryDIKzbCkN+OhGBESNmRNYYQjBd6AmVceZAn
         u+Lg==
X-Gm-Message-State: AFqh2krrvScDhJDnSAFLUvovaYfAKZBg7jq0jIKmBZM4RegBOV2oUFgO
        br93t9MfUHWevtshzg+tBPWhSw==
X-Google-Smtp-Source: AMrXdXvqpDZOxx5pX8SxZSPMgEW0upg3chd+5e2q4Gd1AURW4q3uxbcLqtlr0+GZqZJ25qGwXEd4yw==
X-Received: by 2002:adf:edd1:0:b0:2bd:c6ce:7bfc with SMTP id v17-20020adfedd1000000b002bdc6ce7bfcmr32384945wro.42.1674730997639;
        Thu, 26 Jan 2023 03:03:17 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b14-20020adff90e000000b002be34f87a34sm1061340wrr.1.2023.01.26.03.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 03:03:17 -0800 (PST)
Message-ID: <184f6a3a-63a5-7247-535c-ac7a1654528e@linaro.org>
Date:   Thu, 26 Jan 2023 12:03:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v5 01/12] dt-bindings: phy: Add QMP PCIe PHY comptible for
 SM8550
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "vkoul@kernel.org" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-phy@lists.infradead.org
References: <20230124124714.3087948-1-abel.vesa@linaro.org>
 <20230124124714.3087948-2-abel.vesa@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230124124714.3087948-2-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/01/2023 13:47, Abel Vesa wrote:
> Document the QMP PCIe PHY compatible for SM8550.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> This patchset relies on the following patchset:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

