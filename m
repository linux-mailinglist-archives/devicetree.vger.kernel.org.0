Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 012816B97FD
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 15:30:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230480AbjCNOaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 10:30:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231855AbjCNOaF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 10:30:05 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4698CABB30
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:29:42 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id y4so33388919edo.2
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678804181;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ElHjwIeT7npoxRMCw2nu+jmWqBva4+bKaapSz/mECSU=;
        b=TwVSJKTA35/n7SvFYUMIlB1ti+ObmERDISpugC0l5FukjPltxsLMTim+fYoqzITV48
         Trw+IaBTNH1Tc9uawQC+HZo+5oPJTqFty35G1Umuv/dmjPrqA7Eqneu1dZxeABPqSIRD
         0f2MjRjrXYt7GZEGmmhaPIVxnGU/zIf6NCHbYcuZXxOkybmaJvexGSBxykK//oLP3mPE
         5NK/nUYaWU/eyPRFiOcLoaP2qNqxVsCFrGcsGYdmIXXdLU2b9X7Pw9KMtNQM3D8xMqkt
         mJvuya1ZYDXNI2zXQb+o408sxCZy1cUeWmQTOZO9EjYw5CFdtzAhPMdhEg8f4Sqa6N5w
         Hc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678804181;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ElHjwIeT7npoxRMCw2nu+jmWqBva4+bKaapSz/mECSU=;
        b=EmX7UjvevoYzthGJaNWyb927LaeqTX6VOQ/CMQR6BM6BoiXMMEnu5tzJA53IeN18LE
         XCr3XZwyR+FL1PdkSvRdOMtWiGx/q6Yn8wMVGj32Qj72Y4wWCsyHpNjMgU4mPH4X3SRt
         L4A1CdrxrgcKXlve16WOoaZVSRLezN8izgQsewnq1ZgPCwdReNJN7/DICvKHvifpLTlk
         2SCf2fFAU4hN5zlCdcLs1aC6jktrhhdqNRTKVtIFiS0BF9RCdk06HwQ0g+9bdV6pPjvV
         trI1O93jzh8EKsEsgeq2n6W0c/2vM8hxw61OXRP/T6EN2Iboa/SKkFjim+PRZ0cWSCtP
         DwtQ==
X-Gm-Message-State: AO0yUKUcD5QlH9lE5j58M9OHLDn0TH2SAkR8fZUyTujPLHFS2sFrQI2E
        lqkCsUbb7F7tMFFePlMOslJT0w==
X-Google-Smtp-Source: AK7set8BTJKzs7H5rL6iH9MVtKlcHgRUHKBlpQX+UW1cWD83NcyG/8r94I7ANT1OFh2CKPgR9hQNTQ==
X-Received: by 2002:a05:6402:202e:b0:4fd:c862:b3b7 with SMTP id ay14-20020a056402202e00b004fdc862b3b7mr2490284edb.20.1678804181215;
        Tue, 14 Mar 2023 07:29:41 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:59be:4b3f:994b:e78c? ([2a02:810d:15c0:828:59be:4b3f:994b:e78c])
        by smtp.gmail.com with ESMTPSA id s23-20020a50ab17000000b004f1e91c9f87sm1147798edc.3.2023.03.14.07.29.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 07:29:40 -0700 (PDT)
Message-ID: <9756a5ae-a5f9-c2e0-1bb4-cdcc4373b891@linaro.org>
Date:   Tue, 14 Mar 2023 15:29:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCHv2 1/3] dt-bindings: PCI: dwc: Add rk3588 compatible
Content-Language: en-US
To:     Lucas Tanure <lucas.tanure@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof Wilczynski <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>
Cc:     Qu Wenruo <wqu@suse.com>,
        Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, kernel@collabora.com
References: <20230314135555.44162-1-lucas.tanure@collabora.com>
 <20230314135555.44162-2-lucas.tanure@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314135555.44162-2-lucas.tanure@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 14:55, Lucas Tanure wrote:
> PCIe for RK3588 is the same as RK3568.
> 
> Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

