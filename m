Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF8214C44A9
	for <lists+devicetree@lfdr.de>; Fri, 25 Feb 2022 13:35:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233790AbiBYMfy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Feb 2022 07:35:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240664AbiBYMfw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Feb 2022 07:35:52 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6D601F6853
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 04:35:18 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A3C823F1A1
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 12:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645792511;
        bh=kj5U5fkBa015WRsJi4/ZTy6gKQaYWdbrzOgN/5tyN+w=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=DW7t3VhWg5/ugGdWk5K7k3PYP+NDICuEISlkmMLV5nnSMVAGGaqk93IUV3V/q2GIx
         UMGNrketEux8GJQGmiWQSMuobRLn7p4k6MsNiVSp03zwoF6chQZ0/RXtH1p74/xecA
         24pciDaaO7aEChiOu4GSVGxYl5jGwSzDK5t8TqOvDgUlVs8Zpz6ghZ6VZy/mSRKY6I
         IYSS3Knc2Z0XWPXiveZVOj1XqUlfaiP3qiXCOm5/yYajRbYOIr0G//VJDGzAllvdHQ
         WuMjPjLJ8vI8ENg+r0qbMCet9JCmSr8ldD7tyiZlh9teF76hP1qVA7cnpcuwD9l0ZW
         lDYp8xUnH1BFQ==
Received: by mail-ed1-f72.google.com with SMTP id r11-20020a508d8b000000b00410a4fa4768so2243154edh.9
        for <devicetree@vger.kernel.org>; Fri, 25 Feb 2022 04:35:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=kj5U5fkBa015WRsJi4/ZTy6gKQaYWdbrzOgN/5tyN+w=;
        b=SHAn5QFEuEg/g2nG0ZrbO65Jhcjxf/K0vxUq8+aJjrnDq3HQKV++MZcZbD3xZvxxh3
         345v6gL4sbCH107xEC6J3vj+j1xHVSkdpFCwF+atXnvDPNkc/1+CQF/YXkXGNBpzqDQT
         ZZZR19JRjy+ZiqM3BQ67uemU/KBQZMDuBhh4UUKfdQ8YhMPjWakXxJi6WWXJPQhwn4vQ
         eceKHX6Pw7RHYBjnuYqyizJHLS2GFX8TQgPajUfXEQ0kMCjYI6skMhMHouSnBZDWCX9M
         g6+ad8glyvw6Tkdv8cOhOuWiOH0u7GqSZVJN+kwLdjzN0cgLiPeuaDP/P9JcpHbfOqks
         CQBw==
X-Gm-Message-State: AOAM533+8qFXgP9ikqSxDSSm57htLNNJNjFHKFlheBTu76oHSu9uNFua
        GFaBE0HepAHZZcQXnj566dKzDsR8pthUCpRVKexVd7ngnxKIMvoEmO0PFpUqAfnG+QinOBdRWrc
        fuJVJ5VBtJrPYB2uBrNrR1bjBgDw070IaFxzLB+0=
X-Received: by 2002:a50:aa8c:0:b0:410:801c:4e2f with SMTP id q12-20020a50aa8c000000b00410801c4e2fmr6808269edc.179.1645792510954;
        Fri, 25 Feb 2022 04:35:10 -0800 (PST)
X-Google-Smtp-Source: ABdhPJweKXuvfitHJhFWzhqh8DOejFV1J82DLN1fCGJARGMBKSJTL2Hqf4fPS4QpPMtvIeZZX69hRA==
X-Received: by 2002:a50:aa8c:0:b0:410:801c:4e2f with SMTP id q12-20020a50aa8c000000b00410801c4e2fmr6808257edc.179.1645792510798;
        Fri, 25 Feb 2022 04:35:10 -0800 (PST)
Received: from [192.168.0.130] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id s2-20020a056402014200b0041285556b7csm1306820edu.72.2022.02.25.04.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Feb 2022 04:35:09 -0800 (PST)
Message-ID: <d108cf41-35cf-4351-3327-1fed3009da1c@canonical.com>
Date:   Fri, 25 Feb 2022 13:35:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/3] dt-bindings: memory: lpddr2: Adjust revision ID
 property to match lpddr3
Content-Language: en-US
To:     Julius Werner <jwerner@chromium.org>
Cc:     Dmitry Osipenko <digetx@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220224003421.3440124-1-jwerner@chromium.org>
 <20220224003421.3440124-2-jwerner@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220224003421.3440124-2-jwerner@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/02/2022 01:34, Julius Werner wrote:
> Commit 3539a2 (dt-bindings: memory: lpddr2: Add revision-id properties)

Please run checkpatch on your commits.

Fixed this time.


Best regards,
Krzysztof
