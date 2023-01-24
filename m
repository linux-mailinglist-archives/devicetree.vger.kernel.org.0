Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C626B67972A
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 13:03:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbjAXMDF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 07:03:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjAXMDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 07:03:03 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49DBA18B17
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 04:03:02 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id k16so11257379wms.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 04:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ISTCJcjbLGCkxi1WzMVFDYPcStcahi6jM3lIYNX8/yA=;
        b=B0k1sMQcXln6PcErJ+2ndH8jtVY5tRps6KchPF7SGjzSvxQlHycQhoYkWsG0Fppi54
         68rGelGR/kkwvpFnK5TeDeOfyaCmehp3h7U9VPmOMXl/SWKtt2SwMK7xAiARW5JbQbQo
         X6JnGDOR5kEuFJKxLL0iA0+ybInyNNh/ymMFAy4aoNp4+JsoNDQVTMpx5oDXIYYw4ERM
         /Uv4is4fUdVQDkIk8dHuNzE1E5Rp0Y+z3tdSzmFRpG6hJPs0C9pCdLjiwHECGpWjmjOv
         /DlTfJ6KahRHg+hWO3jxrIHBYBsFKfBppB5S+DTjwnzU14+zO228vAqlWd66IeQTIIGQ
         6ESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISTCJcjbLGCkxi1WzMVFDYPcStcahi6jM3lIYNX8/yA=;
        b=FLZSlHYsVzue+TDuoXSpqKURboU/P9c2r7lBfwzeh8GryLGrZhsIBRAFdtJw7EYV+p
         1kVL/FjVJ984UVh0SUcu9f7c4k47GZkrzGF2stpfG/FsR8LokYGfHFSi1NsOtDrvkjK5
         tGaa0q0ynondskclXPwwAf6bBTN61KePAsmaOvrzJpBxtsjW9YffsE+DcyLjYKob+dSH
         5BO3GgY1rK2miADQNWhmxQVHKsoVql3XRH682vCf7FKkICssvrnBqiuq/jrxd84AH0au
         f0EjEvfa28Ad6TOXAAiuG9wxKvmwLyoT06pKaSmr/xgaRkdorhNr4KvjkrKuiQgLbM3p
         euHg==
X-Gm-Message-State: AFqh2ko/X83VHKbj0uSlh7nkqBHReNoMIxdC60DzCzxXo9B38izQcQ40
        v2FNtz0n7qB4i0Sq7RiH4Yt71A==
X-Google-Smtp-Source: AMrXdXsI90Fm0RpPJXDRWI68hcd9HwX8m+wKszpWhj5+htx3G1Fpiy/xW0/1s7wOAv4T6BkAQISXVQ==
X-Received: by 2002:a05:600c:2108:b0:3cf:98e5:f72 with SMTP id u8-20020a05600c210800b003cf98e50f72mr35556429wml.3.1674561780785;
        Tue, 24 Jan 2023 04:03:00 -0800 (PST)
Received: from [192.168.1.146] (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id j8-20020a05600c190800b003d9aa76dc6asm17995939wmq.0.2023.01.24.04.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jan 2023 04:03:00 -0800 (PST)
Message-ID: <e5bffb1d-f9d6-0799-bb7b-03dc8dfa0355@linaro.org>
Date:   Tue, 24 Jan 2023 12:02:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [RFT PATCH v3 4/6] arm64: dts: qcom: sdm845: move codec to
 separate file
Content-Language: en-GB, en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230123084300.22353-1-krzysztof.kozlowski@linaro.org>
 <20230123084300.22353-4-krzysztof.kozlowski@linaro.org>
From:   Caleb Connolly <caleb.connolly@linaro.org>
Organization: Linaro
In-Reply-To: <20230123084300.22353-4-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1/23/23 08:42, Krzysztof Kozlowski wrote:
> Re-organize SDM845 audio codec into separate, audio DTSI which
> should be included and customized by the SDM845 boards wanting audio.
> The codec node is anyway not a property of the SoC, but the boards.
> 
> On all others boards not using audio, keep the Slimbus node disabled as
> it is empty.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>

I'll give this a spin later and resend OnePlus 6 support.

> 
> ---
> 
> Changes since v2:
> 1. Drop sound node in DTSI - affects devices.
> 2. Drop "audio" from DTSI file name.
> 
> Changes since v1:
> 1. Move also sound node.
> 2. Rewrite commit msg.
> 
> RFC - please kindly test the boards.

--
Kind Regards,
Caleb (they/them)
