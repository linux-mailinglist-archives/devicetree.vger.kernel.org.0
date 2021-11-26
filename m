Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE51445EAB4
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:49:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232253AbhKZJwI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:52:08 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33644
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352902AbhKZJuH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 04:50:07 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9EC6F3F1D6
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637920013;
        bh=plA1T3f0xHkhw6F/UJZCjgOSSB/Tylz+pxOoFT+NB1A=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=IZ1Y+ugyva+OJs5u936e9A0w7FeZTzAgTC3Q07umsF2Ls7KTIs9y0PHiNYk1NfjnA
         iIFa/oyejNYJzzku5wIg7PDs5zEC5wWKdTzASV+/FPz5F54CsTw+JPGsoLvL/PIwOG
         3mMHlhOmKJnAcJv2TEqzAyhJqQNqYps76AKi5ny5H2bzELIK4BzHDkaCXdqW6H5I7U
         LtLzOR68nRyFFvrhf16YzKAhvktIkpsENJW0Q330r/UfssoIWXEZkY8Sk8Msm5cxfl
         WtTmJebwJiezUL/vPTHLaKsefeXmk3aQkUfuc7zb9t6a5Py/N4OmAD0O1yg2hgga3S
         UAuDSNOYSZUvA==
Received: by mail-lf1-f71.google.com with SMTP id c15-20020a05651200cf00b0040524451deeso3937687lfp.20
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:46:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=plA1T3f0xHkhw6F/UJZCjgOSSB/Tylz+pxOoFT+NB1A=;
        b=SQtF2h4zvVaNHFgbjUV2Bu1Cqrm80VP5+ri6/sq24Hl2Nd3VJm9OWBSPrR7M/7nOv2
         zcl3WvQHd4Nsk+UPQF/65sglFPSjngHTgg7SjHK+cuhaTkZP4UNxcxvUCFHk3ZhSGPye
         nt2y/2byvHVqRMFqEy6mIFY5WLsja8ecmlPraSWNgnD4aOE4xDFYVk457NPm6R5O6hPR
         iHBuyAWCDNSEbbplyZACn3LcicT9ZJK2B3pB5lW8hvSNPypqeZCoJuM27dnLxP1Vzs8j
         yyc5o4vlikJksCD9giaAlxlKS+ynDwI5by4xE2Vqrz3KlAUEDGT2xzn6NnBC1oEyDX+a
         Azlw==
X-Gm-Message-State: AOAM531Tpuih/cniZo3vncwC6VzH9UNzKWZqk3aZ4eiNW2oafbAHNTN8
        TnOBSJIST1AkfAuA9bdTPg94LcT8b5ihEtAlBDyCeEef62YjwgBIuMh+lZ/ZSx/Ki4JdPOdIsmq
        nSXAlmQWc9libTM51A18DM+AQMnl3Ju/jklz5ozE=
X-Received: by 2002:a05:6512:118d:: with SMTP id g13mr29171413lfr.66.1637920013167;
        Fri, 26 Nov 2021 01:46:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxbeJMoWOxpyxld5Z90oscROEWxcofNpBSVu/AEgQCwOMsZppAAB4QQj7/jtOQ9sx6bOJK/uA==
X-Received: by 2002:a05:6512:118d:: with SMTP id g13mr29171394lfr.66.1637920013004;
        Fri, 26 Nov 2021 01:46:53 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d39sm464032lfv.78.2021.11.26.01.46.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Nov 2021 01:46:52 -0800 (PST)
Message-ID: <4838ed8a-5532-d5a0-1aa8-240f0c7c2c92@canonical.com>
Date:   Fri, 26 Nov 2021 10:46:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 7/9] riscv: dts: sifive: Group tuples in register
 properties
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Lewis Hanly <lewis.hanly@microchip.com>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20211125153131.163533-1-geert@linux-m68k.org>
 <20211125153131.163533-8-geert@linux-m68k.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211125153131.163533-8-geert@linux-m68k.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2021 16:31, Geert Uytterhoeven wrote:
> To improve human readability and enable automatic validation, the tuples
> in "reg" properties containing register blocks should be grouped using
> angle brackets.
> 
> Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
