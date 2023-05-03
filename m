Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C9A96F4FF9
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 08:12:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229567AbjECGMU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 02:12:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229534AbjECGMT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 02:12:19 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D8171FE3
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 23:12:18 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50be17a1eceso1258546a12.2
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 23:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683094337; x=1685686337;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mgYCgNS0MQTBVFvuRN+B4YWv6Xql+dVFmfm2BcHVLME=;
        b=WoJnzQXZlpBLu62zpB5udi4YjTXhEpM7+vKIIA08G0xOd1TbLEnW5cTdsDj8ZxJWX9
         a+CA4Z/S/3CfyfPVJ/XfuuSq5d6SXFYNB0CXLnlxv5nk2LKEPObXkLjLqv0u522+VEvE
         Xx4h3DEDS9dBXFQvDDpPVPbIYVXlucpI5XfZSTOO/S+wwCkTeZ5iM5UIY3bF55te9RLs
         ZuWfheLiaKrWO26qbGUr/QsWmaVXcvOhzaENU9aMVatYNGv3LBmgaBu3neLs9/pKLt1X
         UPPrcLCD79/Z9Ou6RNASjngZN++LxGF1rSVuOGOg/qXtd86JjEmAjQRqAsF6mbILkiF+
         ADHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683094337; x=1685686337;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mgYCgNS0MQTBVFvuRN+B4YWv6Xql+dVFmfm2BcHVLME=;
        b=E0ZpgcX3HMCfVEu/H6rhlMGzZwvMQMEHlOv0beVJe5nkK08LppSyPyoTtijAuLp++g
         t4cDo8m0NulgKaBDreRNjR6tX85iRKugoyCRquKPaxvAyCmuTmuh8ZGpIavpdb6nEh/K
         E/QuQKZPHgef6EBWJeO+mmu5QW8hhDjKbas+1ZWlxbqNgQ/SyNJfOLEmorISaIyOAAGD
         AqdKXK7RzgacOX39O76Gu9fqKjtiSHpVfs8mcTxpwgXKHlOjGwuDQdoJsI/UWCRDup+n
         93rJfMkWrIKiwpOCDLCy2t9MfjpiWVIkdEhkWLiCzxtv3kN8d7qchM8ndWNST4j0TZ09
         JZMQ==
X-Gm-Message-State: AC+VfDxcnWV67/zS8tObww5B9Y20jazoGQEioMY6OHOZyV7TvCLuL42N
        nrFOZC3rn84ZOn6d6n/GDvFC/g==
X-Google-Smtp-Source: ACHHUZ7v4/iP8CNJrGq8xzN6FhOMhNcteagGyrZyzuU7xkujmV1Jy93L7XlxV5hg7kBti1YRZ07usg==
X-Received: by 2002:a50:ee8c:0:b0:4fb:953d:c3d0 with SMTP id f12-20020a50ee8c000000b004fb953dc3d0mr9847667edr.20.1683094336843;
        Tue, 02 May 2023 23:12:16 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id r16-20020aa7da10000000b0050bc911eabfsm337186eds.19.2023.05.02.23.12.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 23:12:16 -0700 (PDT)
Message-ID: <c0a392a2-c63f-b51e-fe84-cb7061cc9b65@linaro.org>
Date:   Wed, 3 May 2023 08:11:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v3 0/2] arm: dts: sunxi: Add ICnova A20 ADB4006 board
 support
To:     Ludwig Kormann <ludwig.kormann@in-circuit.de>, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andre.przywara@arm.com
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20230420102409.1394618-1-ludwig.kormann@in-circuit.de>
 <10a2e893-18b6-d9c2-1db7-3d500cc0891c@in-circuit.de>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <10a2e893-18b6-d9c2-1db7-3d500cc0891c@in-circuit.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2023 10:06, Ludwig Kormann wrote:
> Hello,
> 
> thanks for the reviews so far!
> 
> Is there anything I can do / need to do for my patch series for it to 
> get merged before -rc1?

It's merge window now, so no, it cannot get merged before rc1.

Best regards,
Krzysztof

