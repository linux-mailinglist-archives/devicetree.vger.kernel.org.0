Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 689C95EDB68
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 13:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233877AbiI1LLL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 07:11:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234045AbiI1LKr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 07:10:47 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A79FEEE83
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 04:08:38 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id b24so13914725ljk.6
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 04:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+MpXdgmd03FpfPiEJ78AVjPG7/4iReI8LCJuQhcGYnc=;
        b=KaURYxQgeVX6x9bXLmAwLoKVR7n1Tm73G1iDVEzE+e9TL9hbBYMREQOuSYUGLDScHm
         wvDZCYRtSWdiConWB/pWreRzfolzb9OUDnWD674FthkpuFPJd+Sm30CfmEca1bAjW8Nz
         T/utpFIsOBK2QAmHjndykILsdcJFngft1TxEKx3Z6mASpAnyq6PvJqXjIGOU7t6Yxu0+
         3/TuDo7gRo9Tk6LeVs3yRLcZ4DzGSQ4AwVzNxdPIna0/W9HpUHl/Qsm6PLzKeWe9c3Bz
         NrjRFlTF2WwWEffKe4EnBg83TWsnSBPDfez3pnMO2JeyXfCC8dvTE87WbdxK61lvIrNV
         d0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+MpXdgmd03FpfPiEJ78AVjPG7/4iReI8LCJuQhcGYnc=;
        b=Bvcm5qzBogCwzVltsS+4RqmaxO5/qLt/MkwdC/mdbamddxky3dtgl9RzbPu2GoZyAl
         w5k4G98BEpfkOcX/T5Gu06A3hifolBhPm59bdNQaUICa5iU7RswzTlztjmpS4ArmSUFE
         CcpnrrfHCwQoONYRgAUMmAYXdQUGC84rHL13LWJq5tPDnp7FdmAdy9Ax1D5Stj0WH+I5
         Hwi2o6Z9HDFu29RoInQfRpT7NGLD2Yfm9BaY4ijCAAX1Y3fs+atJGyGsBS07KRb4rlEp
         /sZ4VYyRYyDlCBhx39Att9D7/7vWxnw7RG5W6nk3SIxCC1LYuiUfoMNeUXbMm/3U1nYu
         I7oA==
X-Gm-Message-State: ACrzQf1kX5qCyL70WzAFVGSsleABYvBn7Lnz3YcpJjwTs/aDhc6+XZbQ
        PQ9eaT+NCiUJu3wMq3Rom/GSC7L6hefj1Q==
X-Google-Smtp-Source: AMsMyM6L0FJ5JfDO7imU4JFVr+12MUaTXvPwy2lIihfb3Gw51Fi2moYv00tyKySVO3SIwSYX0+AbHQ==
X-Received: by 2002:a2e:a30f:0:b0:26d:9162:9451 with SMTP id l15-20020a2ea30f000000b0026d91629451mr6751650lje.164.1664363316952;
        Wed, 28 Sep 2022 04:08:36 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o18-20020a056512053200b004946748ad4dsm443742lfc.159.2022.09.28.04.08.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 04:08:36 -0700 (PDT)
Message-ID: <8baa7c07-f3e9-5a86-f525-42412ab6c8af@linaro.org>
Date:   Wed, 28 Sep 2022 13:08:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] dt-bindings: qcom: Document bindings for new
 msm8916-samsung-j5 devices
Content-Language: en-US
To:     "Lin, Meng-Bo" <linmengbo0689@protonmail.com>,
        devicetree@vger.kernel.org
References: <20220928110049.96047-1-linmengbo0689@protonmail.com>
 <20220928110502.96262-1-linmengbo0689@protonmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220928110502.96262-1-linmengbo0689@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/09/2022 13:06, Lin, Meng-Bo wrote:
> Document the new samsung,j3/j5/j5x device tree bindings used in their
> device trees.
> 
> Signed-off-by: Lin, Meng-Bo <linmengbo0689@protonmail.com>

None of your patches were cc-ed to proper list and maintainers.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Best regards,
Krzysztof

