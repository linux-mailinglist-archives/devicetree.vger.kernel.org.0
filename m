Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5B851B82B
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 08:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238093AbiEEGrV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 02:47:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233940AbiEEGrU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 02:47:20 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41B9347077
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 23:43:42 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id l18so6850065ejc.7
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 23:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=bH7rFSF+We/2mnXLcn53luQ4Akdv5qu3lfE6jp8gE/8=;
        b=Yr0jLubCHtfulcNbMkxwleGAke80IGOnltMwks+/qCHreCBW3l2u+tOTPDOuwzpN5I
         a6tMOtmunqHoa8rfpF6JsZT2Mb0MmbDJMnEHW+qxrv1YQXvG5Pg/KZA25eP+UoneNfyf
         54ZoejeyMUIHVQOn6jQX73YfA6XKLKNJVhcbIxZZLJZBqvq9DxWHGkKtufaGVbtJy+G6
         rVMa/hSCvLrWID7H2bir82xcR/O50i5p8TevJbaOD6AJ8dqmkZwRE0Jk9nxDtDtrFXU9
         l1AK3hS4Sv2hUVA38xkCtkm2BpIfuhR+Xa0ZNx/EHnH9/xaYgmBIAcbpjQaOZV9frEfl
         3ywQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=bH7rFSF+We/2mnXLcn53luQ4Akdv5qu3lfE6jp8gE/8=;
        b=APgBtRLylQXLvmOBRM5bvVfaF2i/rB0TL/vcQ60JlA/Ag8smCLBBPwixxDMg61CGj+
         rUQY9XKNYdFFpObOqVfydihEuuwBXdgKVehfY6xX69Uc2tK8lERHZeqvKOfJcgjPJl0A
         wWfkEZecXsCwajikab/T6dpNNdHvjkp/YgGcQVW9rfzva3Kn1xwiMUDp1kDjBbmUmJ9W
         yK3g+EsO6aas+ED4auJF95f2yTMffkHa+ANAaIs0Un7T+W7C2dGj8GEmW4cN86LucbTW
         pTzDbptwAAW4fcXpFCvB6SsaV08D27i0mYBwXO6ID0afHl6u+oq6QLfZ4WyJCSm8KdqP
         izjA==
X-Gm-Message-State: AOAM532YBtxyVN+4TASzZn/T/cMqy2JEpfRItPzI+ZxAtPeZRSs4S20i
        Uof2GiUkcWVlhZ5caHEr6fbl3A==
X-Google-Smtp-Source: ABdhPJx9wbj78bnEEIbM4N0MBhUmg5+Ga8HJBRLXBipQiB60SNjcWVo4ls5sJpU44Vk54EnNTYEwEg==
X-Received: by 2002:a17:907:72ca:b0:6f3:f6e5:9085 with SMTP id du10-20020a17090772ca00b006f3f6e59085mr24034258ejc.628.1651733020859;
        Wed, 04 May 2022 23:43:40 -0700 (PDT)
Received: from [192.168.0.215] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a12-20020a50f0cc000000b00425d6c76494sm402560edm.1.2022.05.04.23.43.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 23:43:40 -0700 (PDT)
Message-ID: <b638e25a-8547-1f4b-8a21-65d0ae771a6c@linaro.org>
Date:   Thu, 5 May 2022 08:43:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/4] clk: qcom: Add missing SYSTEM_MM_NOC_BFDCD_CLK_SRC
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20220504163835.40130-1-bryan.odonoghue@linaro.org>
 <20220504163835.40130-2-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220504163835.40130-2-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 18:38, Bryan O'Donoghue wrote:
> When adding in the indexes for this clock-controller we missed
> SYSTEM_MM_NOC_BFDCD_CLK_SRC.
> 
> Add it in now.
> 
> Fixes: 4c71d6abc4fc ("clk: qcom: Add DT bindings for MSM8939 GCC")
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
