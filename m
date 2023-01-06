Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2EF66601C8
	for <lists+devicetree@lfdr.de>; Fri,  6 Jan 2023 15:08:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232226AbjAFOID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Jan 2023 09:08:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229968AbjAFOIC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Jan 2023 09:08:02 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D9DB6E0D6
        for <devicetree@vger.kernel.org>; Fri,  6 Jan 2023 06:08:01 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id o15so1114315wmr.4
        for <devicetree@vger.kernel.org>; Fri, 06 Jan 2023 06:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/B8JG1BigC8p4YFF5MJGebkSPugb2nMU0x88FUmUoe4=;
        b=DgsgPsIQjhh4mV8YXc/ADv8b1UTm/jZ1uPvXe+ZM1DyFVlCJ9enlBequydb9qgWuo/
         RX8CZF0uUxLj0t8mma2gpI6k8KiK3i0J7/k3l62bUauhMNZoYNHGgPze/o67AUr+cgs4
         /KnjUl27LZ929mqESKqLtYXqcGDITyYDVqqfIwFF8X4tFkNX4zJrA+3GBoE8947+XyeS
         bZb940nAGQPXaYQc4kaEsN4HMJXEjPjQU0ZNRKfiLQuELkwYkj7GXjwaSJXKMTZkOJpP
         j3BXPDUx49695KuArk9kqGNEFF0/okvp5xWmFjIIxYqyyiRCbG0kVZhw0gx9RBQnJvfQ
         RmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/B8JG1BigC8p4YFF5MJGebkSPugb2nMU0x88FUmUoe4=;
        b=iKpnJMQaD02LnNlVnqrUTx3tJdhiWU1TIlANd4EsQreNMQRMoNdE3O9C4Y/Bjf50zY
         DAU5pSs/fkmIilUHWKuXF1A62tqDqDpBg3Ga/QRzy+y/YfVGOGqqmGIdNoAzj94D7ENB
         fLABV61PcfRObdpt2vM1qqDymnVtZx+VwST9KV8mS5tesK0Y+VNnxOTgGIvS1Xi20RRH
         +fgJpJtoJ4N+0QP8TtFOklHHztFo2z559iYoFdqkbnDYSf6/i1crTrW923qyTf+nIeNy
         OlK8qP9ZHv4AuUAX4OV0FujSKFLS4nirXvjF1KrEzwuYrg0UzdefRxmUeZnc3G2b0jir
         mrUw==
X-Gm-Message-State: AFqh2koBsYNrcbpFqYf1pLFFT0eMoKIQ/tZFJqaydEqfsR20VMBx9UFw
        Z0uYFjCZfa6CRnuJeXNHOf97oA==
X-Google-Smtp-Source: AMrXdXvnK/BBUFBK5K+JKNO6+yp0kxHGWKWB1PQQpqva4ePUTCsOgDKPqAWRiWTDUxzHzZAiR1MWyw==
X-Received: by 2002:a05:600c:4d25:b0:3d2:27ba:dde0 with SMTP id u37-20020a05600c4d2500b003d227badde0mr40227048wmp.33.1673014079551;
        Fri, 06 Jan 2023 06:07:59 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o19-20020a05600c339300b003cff309807esm5766287wmp.23.2023.01.06.06.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jan 2023 06:07:58 -0800 (PST)
Message-ID: <422275a4-b082-2951-71f2-04f33e036438@linaro.org>
Date:   Fri, 6 Jan 2023 15:07:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] riscv: dts: fu740: fix size of pcie 32bit memory
To:     Ben Dooks <ben.dooks@codethink.co.uk>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     robh+dt@kernel.org, palmer@dabbelt.com,
        krzysztof.kozlowski+dt@linaro.org, zong.li@sifive.com,
        linux-kernel@lists.codethink.co.uk,
        sudip.mukherjee@codethink.co.uk,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Greentime Hu <greentime.hu@sifive.com>
References: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230106134456.265891-1-ben.dooks@codethink.co.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/01/2023 14:44, Ben Dooks wrote:
> The 32-bit memory resource is needed for non-prefetchable memory
> allocations on the PCIe bus, however with some cards (such as the
> SM768) the system fails to allocate memory from this.
> 
> Checking the allocation against the datasheet, it looks like there
> has been a mis-calcualation of the resource for the first memory
> region (0x0060090000..0x0070ffffff) which in the data-sheet for
> the fu740 (v1p2) is from 0x0060000000..0x007fffffff. Changing
> this to allocate from 0x0060090000..0x007fffffff fixes the probing
> issues.
> 
> Fixes: ae80d514808557018e44190 ("riscv: dts: Add PCIe support for the SiFive FU740-C000 SoC
> ")

Don't wrap lines.

> 

Drop empty line between tags.

> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Greentime Hu <greentime.hu@sifive.com>
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---

Best regards,
Krzysztof

