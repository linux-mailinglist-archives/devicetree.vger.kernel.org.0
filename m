Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B587B52DD0F
	for <lists+devicetree@lfdr.de>; Thu, 19 May 2022 20:49:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236252AbiESStb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 May 2022 14:49:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233634AbiESStb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 May 2022 14:49:31 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B444A2055
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 11:49:30 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id s14so5543469plk.8
        for <devicetree@vger.kernel.org>; Thu, 19 May 2022 11:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=01qmh032EmJ/n0ECrOiGeBteM36sTTPd0nlmkRs/6e8=;
        b=XbHmoB6Z85gi/6T5+gmzQO553YV3GfE10qSwob9ZxdGx48W15or+f9OvG+7s/jBCCR
         YTuLnidrrSiqN6/+6P7R+zCgLTtx3VLMToQV7ZvSlpmIBb1XdW6F5rsLiEiVoYT7Fjp9
         YqzYMny4ZA5GghebTDB9sLXLbXFFE/Gc1YULSPYLory7L97oJ5f1+cxPtOrl3MMWoEqq
         GbN1R0a1cOjMn11U147/AxtwiIc/2MJM2HJkGwpSZOljmRyFzDuugnBWRw0Av780zKLh
         4mSmnH094cxFZuh9QsiMYWnncBUhDB6RfamcZEBEYPB5nyQ/Ak616ylDL98QqDoqUdTv
         CkpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=01qmh032EmJ/n0ECrOiGeBteM36sTTPd0nlmkRs/6e8=;
        b=kHGeJM6C4ygENPVcZswKpG178VNYB6kNi93o8RchospSvwMkqaYLWzHP0vtglgCYUW
         wUVk/v82wN/GcTiDT4LnNPmg0LSjVFhqF+XOqCakscTPaB+Ipg9iK0TVrOruX9U83L1j
         L7XH8bD0Px8Q+tYAabLdOr498w9U45FzYSPEcszPQ1CyLzVpFY8ipihIvN2uN93UzjDJ
         i1Nj4EQZekJpBJsj2jXL928f0qmPzjCq+X3c2zLMXcgZdcexXqerC90iqZffpXKol/Bf
         8xQ++9LEptKm467tpYeisGrL7u4JqSOSxRrucZ/xYMlR0xmPXncKksYvUJxfADhkrLGx
         2Ntg==
X-Gm-Message-State: AOAM532LAOFXv11lrPvBF+FaduVroGlnR3rzpQRkUqkk9RbyJrnbWW8J
        ZUGWRNXhjw6z9aOWlMEYIRA0wURPOEJgtw==
X-Google-Smtp-Source: ABdhPJxchEn9n4UjBLGu26EPugm+yJbovxNp3OgA5DHh1wxw1Q8rIWTjtTppEehhJjnYsU3PcO65Pg==
X-Received: by 2002:a17:90b:4f8d:b0:1df:efcb:942b with SMTP id qe13-20020a17090b4f8d00b001dfefcb942bmr1221534pjb.129.1652986169348;
        Thu, 19 May 2022 11:49:29 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id f16-20020a17090a121000b001dc1950ead5sm136711pja.38.2022.05.19.11.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 May 2022 11:49:28 -0700 (PDT)
Date:   Thu, 19 May 2022 11:49:28 -0700 (PDT)
X-Google-Original-Date: Thu, 19 May 2022 11:46:23 PDT (-0700)
Subject:     Re: [RESEND PATCH] riscv: dts: sifive: fu540-c000: align dma node name with dtschema
In-Reply-To: <5ea0ddc9-c4b1-a2c6-059c-5e47ec076bca@linaro.org>
CC:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, krzysztof.kozlowski@canonical.com,
        Paul Walmsley <paul.walmsley@sifive.com>,
        krzysztof.kozlowski+dt@linaro.org, aou@eecs.berkeley.edu,
        robh+dt@kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     krzysztof.kozlowski@linaro.org
Message-ID: <mhng-090c7f80-bbc5-4e28-b89a-1a0384a305f9@palmer-mbp2014>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Apr 2022 00:56:39 PDT (-0700), krzysztof.kozlowski@linaro.org wrote:
> On 07/04/2022 21:38, Krzysztof Kozlowski wrote:
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>
>> Fixes dtbs_check warnings like:
>>
>>   dma@3000000: $nodename:0: 'dma@3000000' does not match '^dma-controller(@.*)?$'
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>
> Hi Palmer,
>
> I already resent this patch, pinged. Can you pick it up?

Sorry I missed this, it's on fixes.
