Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89925595533
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 10:27:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbiHPI1j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 04:27:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbiHPI0m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 04:26:42 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A390413E57C
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 22:56:28 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id y23so9608378ljh.12
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 22:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=0Bg+AjnOeSk3JQb3MX/4tCJlZtwYQwPKK9q2oPV33zo=;
        b=Q3RIP0RfETujKrbJhrT8wAQ/yNlnLQVhvUKD4fMblXBDVgCavKG2ji9N8irBd1qHMF
         DjLALEJNiK8tmB+Ao5OTRHDqmdde8Wcno1x/rQPE18qN+0ZofcW2Ks/fBDJhkB3jRuwx
         OH8nDWqgL05E4czFF+DL15l9/i9nLWT/4Ec491SLG8AcF/L1HVH4STUSse+DjIk6SUzu
         x+xVYHSL9NHajCOALxiO3+wnWEkSjHELE0YiIh1OYK6dnqQIKD+aytF9P6B/fqbmUvuD
         CfuFnwXOQ3QQdwlcTthPtuk4FTbGTIu20M6hF7CWRR0x4KPbrz5xY123OS/scMc9/Pjq
         h7fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=0Bg+AjnOeSk3JQb3MX/4tCJlZtwYQwPKK9q2oPV33zo=;
        b=CAGAQUcpot1c1OFhYiv7SB5qyBLAr91Aeq2WFX1KaR1QeMAMt+4cTHJgL/cnhDPK7k
         XcwRTMZShMoJV8m8dDlfHd6dsRK3MwR3tdPVMw8J+i/qMr2LhKoBjazKZGDFAuxD83RB
         w5Vj9fIyJ5mehAVjtspXAiGWDKdHq6E0vlBd4j9b2J12rRcDOCw8xucVXx/j3wIahF3t
         XIFjtaBOHOdakBDIhQQ44G4Zc2uR/PP9qkPuxSuwaDGfeoJswYtBiDUgE6q8bXhSK8RY
         HzyZpYn3msCe9anljtXPfwy2s/jMjwZYSjOulRtnJ5qLxmD4bXJxtSzsihguw6fuN0fX
         wZiw==
X-Gm-Message-State: ACgBeo1O598787/IIKB81bMTPFK6/Q0J7cmicaahwnprmm2d6Nc+JYc3
        JB4u/qAsT6kA8BbdTytk0U4iYA==
X-Google-Smtp-Source: AA6agR5QxXg97wfhnh+pvbOB4Dz7wvf/Y42/euRA/QmCsJxxlDefGofI6YZzsUx7VCrC2Ogv/4uX1g==
X-Received: by 2002:a2e:1f12:0:b0:261:962d:26a1 with SMTP id f18-20020a2e1f12000000b00261962d26a1mr412124ljf.521.1660629387044;
        Mon, 15 Aug 2022 22:56:27 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id h25-20020ac24d39000000b0048b2be5320csm1278028lfk.118.2022.08.15.22.56.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 22:56:26 -0700 (PDT)
Message-ID: <df7d18a8-b148-7e85-078c-992c2a26e3d2@linaro.org>
Date:   Tue, 16 Aug 2022 08:56:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/1] ARM: dts: imx6: delete interrupts property if
 interrupts-extended is set
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220720064158.1413330-1-alexander.stein@ew.tq-group.com>
 <1979391.tdWV9SEqCh@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1979391.tdWV9SEqCh@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2022 14:31, Alexander Stein wrote:
> Hello Rob & Krzysztof,
> 
> ping.

As well here - nothing to do for us, why pinging?

Best regards,
Krzysztof
