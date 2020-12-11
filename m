Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC9E2D6DC9
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 02:57:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391432AbgLKB4N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 20:56:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391235AbgLKB4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 20:56:05 -0500
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2732BC0613D3
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 17:55:25 -0800 (PST)
Received: by mail-pl1-x641.google.com with SMTP id x12so3333743plr.10
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 17:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=luVzHjwrVb0RaJq5Uh65n6skCC7p9OMiArCM0mPgdkM=;
        b=ML9QG1vU7L4oiXWmFVohfhtCuoxC2/7X83dJ2wknZhwXoPeS69iqmDBv4wozPFOYMo
         nGwN/y15nRURe06hz/ZLfFDkJh4bxeD/HrGH1c6KRKpqxHznfGK6Mkggeyaeq7C9VQQ3
         bGPvK1OF6YPetx5e9v9siqga7GSR67M2sjK+KxpyMYFEeQc2qUa8rlrspWHPbmGdDXFs
         FAvTncsTkiaBjn004Ge/ubpI1mb8yJ6F8Utl0XKoxrSsMwPwoPSMWkBgZrr7neRYyC/k
         yewFTxXdU5qGGO4JiI+9N/QruUluX4rjeXcUHnmpEL1r9+OLjMevMihPfkHmotZiBFus
         jW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=luVzHjwrVb0RaJq5Uh65n6skCC7p9OMiArCM0mPgdkM=;
        b=ToRONaekx5qDAgriNg7J+t0ufo8iMnzos5GduJuEfm2tbrpqBctkSziWnJrzk8drSG
         9WS06nVm/M+w6cQqqSMx3hxGrpwL2yTf3o6uibUhsBitIr9uC22YDCrIw4qR+nGawIaL
         YPY8uihjVEQk8ZtNKy/+WDRI3f6WeZn4C29j2ueWaqXSSqjtkuh2/Fb+K7Ma5g/Xlt0G
         48eBIFaUTdB03iM6kfVDfm63HrEninAwgSRTU3lp6tYM8hrXcGNQnPE3ihR8gbL6fkuI
         n/fmrMUqb/Rfn5TveO8/xkVJZaGMpDGWUdsVqGGmVfZR6Hp1dE6sEUCSTKJRBlNBlgt5
         6meg==
X-Gm-Message-State: AOAM5330+lDzANWXuuw/i8pu86VHvAyQlaVKvJL3tYVLcsN1IeL0uCil
        v61bLPaXYJsWvzr/0jqz6DLvxA==
X-Google-Smtp-Source: ABdhPJwXnEk0V0IcjX6ye8t6BccBKFZFi9BAljK+NJr03V/zUFLWswriUIqU3kqvyjsSKs3s/YWSPw==
X-Received: by 2002:a17:902:9307:b029:d9:d097:fd6c with SMTP id bc7-20020a1709029307b02900d9d097fd6cmr8843219plb.10.1607651724635;
        Thu, 10 Dec 2020 17:55:24 -0800 (PST)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id a26sm7630727pgd.64.2020.12.10.17.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 17:55:23 -0800 (PST)
Date:   Thu, 10 Dec 2020 17:55:23 -0800 (PST)
X-Google-Original-Date: Thu, 10 Dec 2020 17:55:22 PST (-0800)
Subject:     Re: [PATCH v3 1/2] dt-bindings: riscv: Update l2 cache DT documentation to add support for SiFive FU740
In-Reply-To: <1607596083-81480-2-git-send-email-yash.shah@sifive.com>
CC:     linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, bp@suse.de, anup@brainfault.org,
        Jonathan.Cameron@huawei.com, wsa@kernel.org, sam@ravnborg.org,
        aou@eecs.berkeley.edu, Paul Walmsley <paul.walmsley@sifive.com>,
        robh+dt@kernel.org, sagar.kadam@sifive.com,
        sachin.ghadi@sifive.com, yash.shah@sifive.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     yash.shah@sifive.com
Message-ID: <mhng-c5b27f57-f267-485d-a497-631b31a88c6f@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 10 Dec 2020 02:28:02 PST (-0800), yash.shah@sifive.com wrote:
> The L2 cache controller in SiFive FU740 has 4 ECC interrupt sources as
> compared to 3 in FU540. Update the DT documentation accordingly with
> "compatible" and "interrupt" property changes.

This generally looks good to me, but I'd prefer to get an ack from the DT folks
as I do frequently miss stuff in the bindings.

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

>
> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> ---
>  .../devicetree/bindings/riscv/sifive-l2-cache.yaml | 34 +++++++++++++++++++---
>  1 file changed, 30 insertions(+), 4 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> index efc0198..6a576dc 100644
> --- a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> +++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> @@ -27,6 +27,7 @@ select:
>        items:
>          - enum:
>              - sifive,fu540-c000-ccache
> +            - sifive,fu740-c000-ccache
>
>    required:
>      - compatible
> @@ -34,7 +35,9 @@ select:
>  properties:
>    compatible:
>      items:
> -      - const: sifive,fu540-c000-ccache
> +      - enum:
> +          - sifive,fu540-c000-ccache
> +          - sifive,fu740-c000-ccache
>        - const: cache
>
>    cache-block-size:
> @@ -52,10 +55,13 @@ properties:
>    cache-unified: true
>
>    interrupts:
> -    description: |
> -      Must contain entries for DirError, DataError and DataFail signals.
>      minItems: 3
> -    maxItems: 3
> +    maxItems: 4
> +    items:
> +      - description: DirError interrupt
> +      - description: DataError interrupt
> +      - description: DataFail interrupt
> +      - description: DirFail interrupt
>
>    reg:
>      maxItems: 1
> @@ -67,6 +73,26 @@ properties:
>        The reference to the reserved-memory for the L2 Loosely Integrated Memory region.
>        The reserved memory node should be defined as per the bindings in reserved-memory.txt.
>
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: sifive,fu540-c000-ccache
> +
> +then:
> +  properties:
> +    interrupts:
> +      description: |
> +        Must contain entries for DirError, DataError and DataFail signals.
> +      maxItems: 3
> +
> +else:
> +  properties:
> +    interrupts:
> +      description: |
> +        Must contain entries for DirError, DataError, DataFail, DirFail signals.
> +      minItems: 4
> +
>  additionalProperties: false
>
>  required:
