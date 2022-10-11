Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BD905FB253
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 14:21:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbiJKMVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 08:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229698AbiJKMVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 08:21:39 -0400
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E712D2BE1D
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 05:21:37 -0700 (PDT)
Received: by mail-qv1-xf30.google.com with SMTP id de14so8805896qvb.5
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 05:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HhB7soEBt+h/cvLlalh1ClLhp94ev9gYJbbHem2SukQ=;
        b=C2CwpJA/eEe26hk/8diOHyBrEVBVKrsDfhsyJK3rS/ez2HMAp3eAvLFExUprwAXan9
         dzcEL61NHddvGvhPHdKEOz3Z9QZD+HjFL9Wu2hpls8DQWCeW94EvvTkAu0xbe3NCY1+T
         kHyqzsES+3bZGk9163FITn5RctJ9jNmXTrAAmlycv8ckLFwd5/OVmOqZacFiRxWVFIL8
         PYi6KcS6s4fdrHNR1YPpa/vdmxVqUeIbw1mr/OfZRkkZEpQQo7752oFQMBTAuUB/diKX
         IF8ixxfofW2/9PGL38RFXy3gsJqpry+5TOOFGVwHbyBjWccp37Btz2oAwXMVCYsh5J+U
         fprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HhB7soEBt+h/cvLlalh1ClLhp94ev9gYJbbHem2SukQ=;
        b=0QOBD2ze7RD5jTunesjLhtEDZaRrVfbvGZUEg7rmJQ2O4kPuyHDl3DuOMyTmq9ILVt
         dZZmgLE0e/0/jEMUmEu2Gm8aUqKvV/YkZfhQbnIZ8flkwS/LOeh1tqkCOqLcSQwrsEYr
         7B+oyhHWusdChXQGO4Udukl3HOelInMOxT3APESPyiFbb0Q/nGB/kqzJpeUsbdUA33bF
         oRGwdfLpYNZjF4EaxuPSpM9kYdgxkb1UtiwfeQFizO+wfq3ymCLKOnHPViX+8JcPGdk1
         CB7yYmKZ9SXj1dEP4P7SVBufvtzeioN+BN77LRQ4G1L3HW1TAfoFZM4M+2Ce1VbspodL
         wo4w==
X-Gm-Message-State: ACrzQf33RH+SKMymWnHLifH6FpPtVtvAXlmEQpEhhWOjQtu1yGg3sH/S
        5OJai2Ycs3FY7jpAPijuA97xrxE29f5hmg==
X-Google-Smtp-Source: AMsMyM409EGLX5zmw7JLTYTgRETqlbbuY5HfbQ/NOTncWVwATOPyEzJBY4SEGpl9Kf+tjK44H0r81w==
X-Received: by 2002:a05:6214:c22:b0:4b1:9949:b4ab with SMTP id a2-20020a0562140c2200b004b19949b4abmr18458183qvd.83.1665490897040;
        Tue, 11 Oct 2022 05:21:37 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id j19-20020a05620a289300b006bb87c4833asm13315797qkp.109.2022.10.11.05.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 05:21:36 -0700 (PDT)
Message-ID: <9d0ecaa0-5a36-b906-75f3-b71939655198@linaro.org>
Date:   Tue, 11 Oct 2022 08:21:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 1/7] dt-bindings: arm: mediatek: mmsys: Add support for
 MT8195 VPPSYS
Content-Language: en-US
To:     Moudy Ho <moudy.ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20221011070356.682-1-moudy.ho@mediatek.com>
 <20221011070356.682-2-moudy.ho@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221011070356.682-2-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2022 03:03, Moudy Ho wrote:
> For MT8195, VPPSYS0 and VPPSYS1 are 2 display pipes with
> hardware differences in power domains, clocks and subsystem counts,
> which should be determined by compatible names.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

