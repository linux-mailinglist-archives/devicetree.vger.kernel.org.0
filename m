Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C0E2680CD8
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 13:05:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235401AbjA3MFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 07:05:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236588AbjA3ME5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 07:04:57 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C6A235276
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:04:33 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id t18so10852145wro.1
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 04:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oAiFVbIhL8pBpzXj74ThQPQ3uZWC/mGuF3NSlIBvnlc=;
        b=h/AWH6uICOrL3YXbnDeUDxX7BGfTyv9M2TjUZ2KopvdqMLKpSbM2AR1DEyTUoR7gX/
         LCmfKMQq902Byo67s8SbF54HfmBdXqvOavNgYdSMVM0QKVgQ02OrGSDbc7Wy9v0LHNeP
         gbgIvTmOyKvcgyLFlQPdomsHC/vbzgxhMKsl0fPRFNJ5wplsxkavrcm0MoRDcyDigzmj
         DJC4El+dxYR6bRO05SezJOr2v53RAZ1Ur0XPNGBa7aphMP5DCIWLTmLfuFM8I3n7noAs
         65n2G+sr6sCQusEtHKCIDHaEDmvx18oCntir+P/ZpINxDRkIBTWhPlEx8dzM05CbfSpu
         HvpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oAiFVbIhL8pBpzXj74ThQPQ3uZWC/mGuF3NSlIBvnlc=;
        b=F9K9/i5em/WbFJ9hZG3cGuiMIYJNV0tuR8jDZEIhPhM0itzX68PZjvCNyAjVGGRixU
         GtmwTWK/uP+NFBPWcXvPoVUN2s5wKKNjXAov8xdttCX5HcpeoCfDZuHZ1PyLIMT0avTQ
         3HFwpjfrrUkarDn4MvDtR7fOGSDIyfs0KD1x9jXZ8hHDFmuYhjLeonPhjxolpOwJ8zot
         dGOVLQUmTFShzsfwxmTItLfKwJ5v/AOcLJDKt1o3cWl3JZc/drgRsTxK1JlQz5JzFWQa
         M+7xY+6PugTOQsf9A6o6EFX+hSKuE8WkG39auSUEGzEh7yYa3Sww0daq3ncrd1ycmVeW
         APQg==
X-Gm-Message-State: AO0yUKW5yFIloucpiZR58+Cv9T6YYxJm8gUBBbBlIhcXfjI9r/nfrXMT
        x7bYNJaoeT+nWUs9mkObFu8PkA==
X-Google-Smtp-Source: AK7set+HjgFg9eVMoCGF9nRtNIbwCr+z58262n9G4v5RdsFaXE6jeiu/4i9y1ZVHnuh2i6pbgt5Nug==
X-Received: by 2002:a5d:59a4:0:b0:2bf:ef3b:d072 with SMTP id p4-20020a5d59a4000000b002bfef3bd072mr2968016wrr.0.1675080271619;
        Mon, 30 Jan 2023 04:04:31 -0800 (PST)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id h12-20020a056000000c00b002bdd96d88b4sm11869268wrx.75.2023.01.30.04.04.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jan 2023 04:04:31 -0800 (PST)
Message-ID: <ca32d9a1-8a1e-c65a-7e52-c065b31c0e4c@baylibre.com>
Date:   Mon, 30 Jan 2023 13:04:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/3] dt-bindings: iommu: memory: Use unmanaged iommu
 domain for the APU
Content-Language: en-US
To:     Alexandre Bailon <abailon@baylibre.com>, yong.wu@mediatek.com,
        joro@8bytes.org, will@kernel.org
Cc:     robin.murphy@arm.com, matthias.bgg@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230130102722.133271-1-abailon@baylibre.com>
 <20230130102722.133271-4-abailon@baylibre.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230130102722.133271-4-abailon@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/01/2023 11:27, Alexandre Bailon wrote:
> This updates the iommu id to use unmanaged iommu domain for the APU.
> This is required by remoteproc to use the iommu.
> 
> Signed-off-by: Alexandre Bailon <abailon@baylibre.com>

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

