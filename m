Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0588A6EA496
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:22:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230103AbjDUHWY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:22:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbjDUHWX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:22:23 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84397132
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:22:22 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-506c04dd879so2178159a12.3
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682061741; x=1684653741;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eOhi8HfXhG6nrONx0n37reZUUHb906oWET36sxtB2q0=;
        b=hYjJttCWpE1eKKtYJz39bJzIZmPnc29Szim5rA9wNGMM36+2zdYYVkSddXUHeQJEW6
         NIxxzP/9jTAnY2bkZSMX0OKnSqvleuDiQHv+BOEIjwiNe9Za7HhoZC79R1jIuwv9piiu
         3eky9+aXbMaTjnBW+L2L3OYQSBjh8lCeTiURJ2iHHoZwCRboaXhENFntvXzPMh9s4jcX
         6qarnNF6Y4g98bx/SQ1zJCDrgIpIoqv/8fU2v9ziCNlIHG0jusdOMaePsBWf0srK6hCj
         lYkDueULAPoQBrxwf3nDWhgMJD20M1UFGvgwklPsHnpqNa/l6zvUVj75398THKCpSMno
         yI9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682061741; x=1684653741;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eOhi8HfXhG6nrONx0n37reZUUHb906oWET36sxtB2q0=;
        b=K/Rq4n2l8zhbN10H7abru0GPyxy1CokR2CXpmu0995TlkwePYikxL6dExHCicMRshU
         MD7Rg/wzV3AjrZVLI5eMSTud/UtsjdJTXVCuD0Og7LiOOCeORRfEpZ2hXY+iecTkhfav
         QMhCOwxpyfSRXEo0qirkmJtH1MxjunyfHNJQ6kIhSIQqD2PMk/j2entKVd8BU95H5gV+
         ME2M+ZSqGG6UJLCcc8GosyBCgj5XINGZCXqpOC1RO2UQ7nYLAM8IEs/o3JnVFeh+HMWt
         vug110Q4uZY93UPKb6eI2QPLhRCzg5A5eI+g+i7yxXhB/cETaVjLUJhnPven8P2zd2sW
         mwRg==
X-Gm-Message-State: AAQBX9c4p/ntyJ8YSh/F01BqAEXCZN+PTz6gdeFHWKbJm09XR4HHHfnp
        s48rEue+nC6cQfB0ZZ5ae5wqxA==
X-Google-Smtp-Source: AKy350Z09y1seEry/ehr6BbrL9Mclu/atTvpIxybSDKCEkYDGlznj8Y5qPILcVDPNcV5yhkIn3KBag==
X-Received: by 2002:a17:906:57d6:b0:94f:4bd4:36f with SMTP id u22-20020a17090657d600b0094f4bd4036fmr1443162ejr.64.1682061741036;
        Fri, 21 Apr 2023 00:22:21 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:668b:1e57:3caa:4d06? ([2a02:810d:15c0:828:668b:1e57:3caa:4d06])
        by smtp.gmail.com with ESMTPSA id bf18-20020a0564021a5200b00506b88e4f17sm1545869edb.68.2023.04.21.00.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 00:22:20 -0700 (PDT)
Message-ID: <fce46f1f-a544-7a84-ff5e-12c39ca253fc@linaro.org>
Date:   Fri, 21 Apr 2023 09:22:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V5 1/3] dt-bindings: sram: qcom,imem: Add Boot Stat region
 within IMEM
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1681799201.git.quic_schowdhu@quicinc.com>
 <bd3350e3b0b02669cffa4bdaf9a0a1d8ae9072d1.1681799201.git.quic_schowdhu@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <bd3350e3b0b02669cffa4bdaf9a0a1d8ae9072d1.1681799201.git.quic_schowdhu@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 08:46, Souradeep Chowdhury wrote:
> All Qualcomm bootloaders log useful timestamp information related
> to bootloader stats in the IMEM region. Add the child node within
> IMEM for the boot stat region containing register address and
> compatible string.
> 
> Signed-off-by: Souradeep Chowdhury <quic_schowdhu@quicinc.com>

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Best regards,
Krzysztof

