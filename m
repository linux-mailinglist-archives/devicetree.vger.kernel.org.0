Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FD4664F66A
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 01:42:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229526AbiLQAmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 19:42:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbiLQAmU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 19:42:20 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E3DA1F63C
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 16:42:18 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id i15so5880159edf.2
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 16:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rammhold-de.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:references:in-reply-to:subject:mime-version:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=1QFKv2TWTiAAUJtUNn93KfAKVJcdR7iRnXXIRoZLyMw=;
        b=OTXV3ptGWNYqx2UGC2rImTpDTUqU+wDZrKWBdy/UNAoeJvPRPrVSz1tG1jGOl8Ce3e
         s6M+0zp3iE/xPvJ46gLuHDMM+X+dYn3oSIIkuoF8AqAxuwdnMf3jhdxb358LL+YJDcfS
         dZ7iY559N/VzN10NYUT2zpg7KukATI1WYLCO3n8YoWy1L2Vv1QLCrv12PzmH3hpdw7+S
         rHWJyzzNPFxdyh5dz4Jy/tuCgfdBOqEUZVKTu3jNQXrzZT20P3EidtaaPA+3wqG2iGvD
         h5s1tkyGIxQOWmtZwzxznuihpx9A3d7YWy8DoYbCcGpmaMmXppEFilwGAndn5ZPfW9CD
         gezQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:references:in-reply-to:subject:mime-version:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1QFKv2TWTiAAUJtUNn93KfAKVJcdR7iRnXXIRoZLyMw=;
        b=50a4MXr4foc9+k90F0PGQqC2E5a+vpi5/7Da67benD4lYg1LBeaw78E5VoV4gIwIIM
         FsvX6o/096oDKShTpreSs6kU8nuohItzoP+mn/nzmgsOdg4HXh8u1g9DO1ta0EMjhwlE
         yliap2bCVVkBF3L17wxiepdNx6Sj3GYbeQ5G8WnW1e+sEcTx0Oyz7FaaW3k0iSxgv5AC
         TWDgMLY8/544YybTqxVatN4Io83ScpR7jx5vObV2oWJjPsTj+qKqafStb1L10epGw2nq
         LdaVNUJbv6ERZvqY4Dc9eokU86fuU8ZS+ljFMWTHmkL0UqDDneXgcyl38tNp4YwUBvlu
         aDcw==
X-Gm-Message-State: AFqh2kqwDJ+I9tgxBEQlmUK33u3xnz5JXgH+rvawfINbHZkcKoGOtj7a
        PfeIFl+pUlvLV0+l76vOwlpmlA==
X-Google-Smtp-Source: AMrXdXuEXjxQv82egRwfXB6YAxYwW32Z33izAMO7cRGkThTOjWfh0A7Qji8VV9ypvbxJ6Vi/3fflkA==
X-Received: by 2002:a50:ed81:0:b0:477:ff25:867a with SMTP id h1-20020a50ed81000000b00477ff25867amr97915edr.12.1671237736873;
        Fri, 16 Dec 2022 16:42:16 -0800 (PST)
Received: from localhost ([2a00:e67:3f2:a:8c01:9c4e:459b:314f])
        by smtp.gmail.com with ESMTPSA id j9-20020a1709066dc900b007ad84cf1346sm1379556ejt.110.2022.12.16.16.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 16:42:15 -0800 (PST)
From:   Andreas Rammhold <andreas@rammhold.de>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
        linux-mips@vger.kernel.org, Frank Rowand <frank.rowand@sony.com>,
        linux-kernel@vger.kernel.org, John Crispin <john@phrozen.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Frank Rowand <frowand.list@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [PATCH v4] of/fdt: Rework early_init_dt_scan_memory() to call
 directly
In-Reply-To: <20211215150102.1303588-1-robh@kernel.org>
References: <20211215150102.1303588-1-robh@kernel.org>
Date:   Sat, 17 Dec 2022 01:42:14 +0100
Message-ID: <87bko2x3mh.fsf@rammhold.de>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi,

I've just debugged an issue that I traced down to this commit.

My mt7621 based board relies on the soc_info.mem_detect function for
memblock init which is never being called again with this patch being
applied.

The code in the original patch as well was on 6.0 doesn't allow any of
the other (fallback?) memory initialization code to run as
early_init_dt_scan_memory() always returns 0.

Was this an oversight in the implementation or are some follow-up
patches missing? Perhaps the code just has to return a different
value when it has found some blocks of memory that should be used?


Andi
