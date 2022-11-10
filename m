Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 396D4623E50
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 10:11:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbiKJJLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 04:11:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229698AbiKJJLi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 04:11:38 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A94C4D2FD
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 01:11:37 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id j16so1944792lfe.12
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 01:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h0Hykf1T4f6AN5KoxePR9vqybMCExpC9crWGaco6noQ=;
        b=HXXC4AYlPPZUQKtEQv8GoYEiF1wFNiA3OTKnyAaFNICIMLKkShlPmscJoNuU7Df8V6
         nVCO+hX3duXdyyPL52z696olXVe3TkGI9X88TOooduodE2zA9KzhNRb1DlIPPGRArNP3
         JRibWtOyr/pIVFown9D5nkIN/STVVPDwspq/DZ1r/rBRYhRg6+e0bPQDr3l/ROktEjYN
         RuLktKvjp1jPioeOQbBu1M7vMAoO67PWl6aN+0vuJX8AJRVbwjby7T+Amv1HP5bgRx8k
         MRRnFq8CaXP35PIvVWTmocKR+z8i/fn7wIWjJ+j7USzD3gETF4h2we27giGHFqTT4UTK
         xhlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h0Hykf1T4f6AN5KoxePR9vqybMCExpC9crWGaco6noQ=;
        b=lWXbYdOIyFccmood+MBq/b8jtylrN1l0wkgTclmhqN43YBNMuqRBZKeXVGLL7XNe+5
         aGwN4lBCF0pgnpBW/MbGpxM6XKEf/QuzrxaN7SG46sQi986U4UU9uWpM+2clR7TxNHSp
         JS4CrgMymtEV0QI1jI1HHCwWv/vHgrsbbE/xFnCSrWRKNCyVGIgSr2+zUHSVgO1Ei5wq
         avi8U8LYkKeAd/BplrHl48icZhcbGFXQSA9a+9sIXP6z0vvdgNlCFos64hXIDyrowlS+
         Eepn4UEGOTij7HA4EoYXaGyKfiis+nb8zsj/0ya1Ow0qHmuadj8gmqvMNETZpwjLinzv
         nwaw==
X-Gm-Message-State: ACrzQf20GsdXjXFD6qxLvePSp4iUDxtJNMRLw07lkEx6TFLikVtECR2y
        ukeoejUlLh5LutIufFo7xL4ksg==
X-Google-Smtp-Source: AMsMyM51sJv7BcVn2O/cUNX/jTwP6b1EhKcjCMSgSheAmRMfTAE5rhu3T+GDyPCXICkI/2fO2kuH+Q==
X-Received: by 2002:a05:6512:3ca6:b0:497:a17d:d848 with SMTP id h38-20020a0565123ca600b00497a17dd848mr1245312lfv.381.1668071496062;
        Thu, 10 Nov 2022 01:11:36 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id f30-20020a05651c02de00b00278a21bb7b9sm2257659ljo.100.2022.11.10.01.11.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 01:11:35 -0800 (PST)
Message-ID: <c166b32e-3f57-9ac6-2b08-b529491f1b02@linaro.org>
Date:   Thu, 10 Nov 2022 10:11:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/2] dt-bindings: edac: Add bindings for Xilinx Versal
 EDAC for DDRMC
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        linux-edac@vger.kernel.org
Cc:     git@amd.com, devicetree@vger.kernel.org, michal.simek@xilinx.com,
        rric@kernel.org, james.morse@arm.com, tony.luck@intel.com,
        mchehab@kernel.org, bp@alien8.de, robh+dt@kernel.org
References: <20221107062413.9642-1-shubhrajyoti.datta@amd.com>
 <20221107062413.9642-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221107062413.9642-2-shubhrajyoti.datta@amd.com>
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

On 07/11/2022 07:24, Shubhrajyoti Datta wrote:
> Add device tree bindings for Xilinx Versal EDAC for DDR
> controller.
> 
> Co-developed-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 

Applied with fixes in subject - please use prefixes matching the
subsystem (memory-controllers) and do not put twice "bindings" (one is
enough).

Best regards,
Krzysztof

