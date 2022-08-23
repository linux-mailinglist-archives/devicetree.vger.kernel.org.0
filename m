Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26E6E59D5C0
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 11:10:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346166AbiHWIip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 04:38:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344243AbiHWIhO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 04:37:14 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A466A7820C
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 01:17:57 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id bq23so9602982lfb.7
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 01:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=9OqpWtEeuh8ypX1cXc7uAcrCW4m6r/tanmkI11A3Ifk=;
        b=eTFAgLCB/8cpoPAhYcbVqIDJ2pl/IkkvWPYmcey5kKfMuCCk0rGizy9SyweRQyHtHl
         WI5+Zy6cGOh/076pcrjt4lRApsuZLiwfqc8b0BBKrHceyBIeTQtrd5DooiBwhCozMI1z
         +K58OvvT8GV8rPsenMeI2YUun/SFPmcjq31yfu6XKtvJ3U99AXwDZg2uoTyInitkHNLT
         9ZksMgIJGPUHGoJ6vYxJk8KK4+nmKbPiOp34Y52JdEeN/18JcIS9CvFWXiEXCPo86W9/
         sqkYy610lz1XikvfXKtzIpU1RfwKLioMZ0hyKegAHDfT3X2aIxP+gQiXMuiOfvF2+wWo
         pzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=9OqpWtEeuh8ypX1cXc7uAcrCW4m6r/tanmkI11A3Ifk=;
        b=Ywf4BQzJh11v/VOIzhMfId/LITTdo7z3sEd7UFN2uMtXFrFQj9nCfrSutmk7+r66Gg
         P8vEnU3HnlnPcooUGTXRS+23cetUKkk+31c3axtrhKoRXfzRAv1+dy3eJvddOXXT4SQN
         9+ry1nPCLgiTmVH2Kv7lmzPUsXuHJKzcfrrabSIAi2lSzW0N+cmcwbrTP9oQfuNdHole
         p02n5qjEScIqZ2Q81LiKXMBjqGatg8EvlTDDv0hqtPXG4xJGvcoAuYCRpZIaHsWBL7SX
         FMprfc/8MAGK+24sZYTHZrUDlxpANu+cFvs45smHYDMCEVkDC+Xi7Q480gF82GiX3s0D
         U2Hg==
X-Gm-Message-State: ACgBeo2P7+RzjEWG6AzMvaifwlPsW4Irqmrga7IZ/+gDmyPLh02i4ZGv
        6Im6L5Pc7mLaun8xeupqvpqsGQ==
X-Google-Smtp-Source: AA6agR53e29e30P7d7REqgiaaLN5FMBaCGv2iuqS7/6pzPEEi/wAmrdSXEzVfrevBl6W4oRZ5Y2p5g==
X-Received: by 2002:a05:6512:3b8e:b0:492:f799:76b9 with SMTP id g14-20020a0565123b8e00b00492f79976b9mr544446lfv.207.1661242645734;
        Tue, 23 Aug 2022 01:17:25 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id s8-20020a19ad48000000b0048ae316caf0sm2379428lfd.18.2022.08.23.01.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 01:17:24 -0700 (PDT)
Message-ID: <a5a15749-1047-74ea-831e-54d27a6d6cdf@linaro.org>
Date:   Tue, 23 Aug 2022 11:17:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 16/20] dt-bindings: memory: snps: Detach Zynq DDRC
 controller support
Content-Language: en-US
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Rob Herring <robh@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Borislav Petkov <bp@alien8.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Manish Narani <manish.narani@xilinx.com>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Michail Ivanov <Michail.Ivanov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Punnaiah Choudary Kalluri 
        <punnaiah.choudary.kalluri@xilinx.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        James Morse <james.morse@arm.com>,
        Robert Richter <rric@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-edac@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220822190730.27277-1-Sergey.Semin@baikalelectronics.ru>
 <20220822190730.27277-17-Sergey.Semin@baikalelectronics.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220822190730.27277-17-Sergey.Semin@baikalelectronics.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2022 22:07, Serge Semin wrote:
> The Zynq A05 DDRC controller has nothing in common with DW uMCTL2 DDRC:
> the CSRs layout is absolutely different and it doesn't has IRQ unlike DW
> uMCTL2 DDR controller of all versions (v1.x, v2.x and v3.x). Thus there is
> no any reason to have these controllers described by the same bindings.
> Thus let's split them up.
> 
> While at it rename the original Synopsys uMCTL2 DT-schema file to a more
> descriptive - snps,dw-umctl2-ddrc.yaml and add a more detailed title and
> description of the device bindings.

Filename should be based on compatible, so if renaming then
snps,ddrc-3.80a.yaml or snps,ddrc.yaml... which leads to original
filename anyway. Therefore nack for rename.

BTW, if you perform renames, generate patches with proper -M/-C/-B
arguments so this is detected.


> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> --->  .../snps,dw-umctl2-ddrc.yaml                  | 51 +++++++++++++

This is a mess. I did not get any cover letters, any other patches any
description of relation between this and your other one.

It seems you make independent and conflicting changes to the same file,
so this has to be properly organized.

Send entire patchset with cover letter with description of all
dependencies to all maintainers.

This is unreviewable now, so a no.

Best regards,
Krzysztof
