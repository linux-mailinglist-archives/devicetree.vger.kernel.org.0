Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A31C3368B9D
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 05:32:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235302AbhDWDdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 23:33:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231552AbhDWDdU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 23:33:20 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37615C06174A
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 20:32:45 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d124so33143498pfa.13
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 20:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
        h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding;
        bh=BzcRr/BEJlxG1MpN8LmOK5QXIGm507wREeeatIRcmts=;
        b=HjgJfX4AGivc/yz15utqAttjyCo8TXvjXlokGilyhSygKgtXnyvysUjh3O/opPQ41b
         8W+q43D466oP0P8GXVp1bM+zsLGZ/tvn9XRfNNAqG5a2r/FlkrZiJETcM2cX3vMrBes5
         spbmOgoPfZfHUNibT56s2tZvv04L9WgFW2tlZb7mGjDgE4syYduOsvMkEFwK95GBCplG
         5mspC06tvcUxxCiYidGMHgFr8Cbxl3NJGc4pXK+8IBEXq0cNwMTRsDZ4LjEY0JW0V1nA
         EjvwnB3gl3Wxcw8RF0rE3GmJffXKBvFP27b4aAYKrGUNm+5+wE4I4phyZq1rZuH+AxIc
         JDVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
         :mime-version:content-transfer-encoding;
        bh=BzcRr/BEJlxG1MpN8LmOK5QXIGm507wREeeatIRcmts=;
        b=Rn7sAyNZ5bGxbifNP0SNl+WutZLOMip1FF+vwEnlyxzmX9jFscaLvyZEYpjTu5YWyS
         7RrxXJBphqijiP6gSBG7ENUpJsRuZur0iBFd5QtssuEAqVbfANY+WsA3rACPonqHlFJz
         G73JBjtJ1L1019SeqVSBi6XdCHNA/gjuBeNcgdFG8mCHeXY/+dzD5MQ8LMucp12Dys2O
         EIQFxJklau0/UDm61UUg9Z94DTKau+dEuaA0FWTR6/LYFsutnGB2QD6klyZuhp9kk1B9
         evVBE7ZitRxeOkZi7Fq+NI6FnkXX4syloJrrmV7eBBqX1iwCLS4pEpGfFWwrYnJumbjK
         TdWQ==
X-Gm-Message-State: AOAM530tvVbX4vRT0k9gaWb5LtcsT94euVni7kUHgoZfOuZTWhgR+eI1
        hMtJzseNAOTlNnE4nJiXG+390g==
X-Google-Smtp-Source: ABdhPJy6qJxJ8lRees7PAkjHN4lM1cwhzbiZJmx3wp7by094PXqPDiT6QTymt1lj7cT+q0VRg0zOkA==
X-Received: by 2002:a05:6a00:23c2:b029:24c:4748:4a80 with SMTP id g2-20020a056a0023c2b029024c47484a80mr1857979pfc.13.1619148764766;
        Thu, 22 Apr 2021 20:32:44 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id e1sm3493455pgl.25.2021.04.22.20.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 20:32:44 -0700 (PDT)
Date:   Thu, 22 Apr 2021 20:32:44 -0700 (PDT)
X-Google-Original-Date: Thu, 22 Apr 2021 20:32:42 PDT (-0700)
Subject:     Re: [RFC] dt-bindings: riscv: enum for riscv,isa
In-Reply-To: <5385012d-9f09-d7d9-7b6a-cef7de2d4056@gmx.de>
CC:     robh+dt@kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
        aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     xypron.glpk@gmx.de
Message-ID: <mhng-cec1febb-7da2-4d6e-9c38-3b1580b75e19@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Apr 2021 12:05:34 PDT (-0700), xypron.glpk@gmx.de wrote:
> In Documentation/devicetree/bindings/riscv/cpus.yaml I find for riscv,isa:
>
>      enum:
>        - rv64imac
>        - rv64imafdc
>
> This implies that 'rv64imafc' or 'rv64imafdqc' would be illegal values
> while these combinations of extensions would be compliant with "The
> RISC-V Instruction Set Manual".
>
> To me it does not make much sense to try to enumerate all permissible
> permutations of RISC-V extensions.
>
> Shouldn't this enum be removed and replaced by examples?

I'm generally OK with that, but I'm not sure how to do it: won't we fail 
the scheme checks if we don't have something defined for "riscv,isa"?
