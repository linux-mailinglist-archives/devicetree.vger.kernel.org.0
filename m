Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B0A847A966
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 13:20:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230106AbhLTMUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 07:20:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229708AbhLTMUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 07:20:50 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E4FFC06173E
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 04:20:50 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id e5so19680031wrc.5
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 04:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=np0iAF7uBOz/zMFdzwzXbnF0JId1hkZMqK8uf9ALIPo=;
        b=e+Y7D7VhJuB8FzbA9mQu80q5RuTgA2F348mkBI/YBVNlafZxYknJYMsz1PnTO1BV8t
         lN+whUb3T6NkBqYVLEE421GPp/BhDleTxEPf07pNoHIM31eFUTGngHlQrygp+HHSGGHJ
         559oLKg61zK48HemuxlE8s1nsSOuBDegPTXJ0Ot7kdNYrnwwS1M68VGMaHYmf5Tnxcro
         QTmhLh9axQcuHWo4zITHNhJMeCaX3OkK3RQAgLqIUbdM+IjR8l7aLBUnQuixiJsbcCOM
         6dgiBzB0RE6+XnBewwNK8fNtz7ZWV2+XJMCwSfP7I1Ni+ItxdmVrVXtoN9xRB9XQ5dUg
         QEVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=np0iAF7uBOz/zMFdzwzXbnF0JId1hkZMqK8uf9ALIPo=;
        b=r4Bm4wy+AgGFgAB9q/bam7tvF0K/wTOWYWQ798de953kW8emSBZJBRc7uyHzcs6cCu
         i/OgAtocfWdbSc8KpUspdQnaXbfTo9/b4kKPOL+0hXQTki0iHYqFBGlIWB2QafpQHzsT
         Gg32nUBJMpTzuuZaJtIb6HuimYt7pLlEOpgEEgz9bwufN6ot7xLtA/X4/RyQXnOJ1U/j
         ORSUSsH/fYhfj/tIumubAfHIi1TFwCy3XFbXfHT25i+QtBxhDS6a3V5O4ZYK6RFg6vh2
         H/ZkfNEq2MkMxYdbyrgzZTJ5wRSsSMXQBC1ho6wnmmrIVfGfDTy+m4bj7CiXuqyGVlEi
         tOQQ==
X-Gm-Message-State: AOAM531KG6M9iyxvZyIGejOHEmrYDXcTTTWDYz8vr8PAZLXQOuzmMy9+
        CWn6mzgbTP/dlzEeJPv+1IulJw==
X-Google-Smtp-Source: ABdhPJzyF18YnzOr+hj7VOs/q8njpqgaCxU63zghUvfAjBhUjUCqQw3xNQhCk3qEv23tbtEXA3hf4Q==
X-Received: by 2002:adf:fe8e:: with SMTP id l14mr12508513wrr.177.1640002848679;
        Mon, 20 Dec 2021 04:20:48 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:ac6:da31:b84c:183? ([2a01:e34:ed2f:f020:ac6:da31:b84c:183])
        by smtp.googlemail.com with ESMTPSA id o4sm13712888wmc.43.2021.12.20.04.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:20:48 -0800 (PST)
Subject: Re: [PATCH v2 0/2] dt-bindings: timer: sifive,clint: Miscellaneous
 improvements
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup.patel@wdc.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <cover.1639662093.git.geert@linux-m68k.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <88170fb7-f348-1227-cf8c-863306986917@linaro.org>
Date:   Mon, 20 Dec 2021 13:20:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <cover.1639662093.git.geert@linux-m68k.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/12/2021 14:43, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series contains two improvements for the SiFive PLIC DT
> bindings.
> 
> Changes compared to v1[1]:
>   - Split in two patches,
>   - Improve patch description and document limit rationale.
> 
> Thanks!
> 
> [1] https://lore.kernel.org/r/20211125152317.162958-1-geert@linux-m68k.org
> 
> Geert Uytterhoeven (2):
>   dt-bindings: timer: sifive,clint: Fix number of interrupts
>   dt-bindings: timer: sifive,clint: Group interrupt tuples
> 
>  .../devicetree/bindings/timer/sifive,clint.yaml          | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Please resend the timer bindings changes, the GPU and NAND controller
series are confusing the b4 tools

Thanks

  -- Daniel


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
