Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A11E64011A3
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:02:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230109AbhIEVDu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:03:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbhIEVDu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:03:50 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2A74C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:02:46 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id mf2so9265926ejb.9
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=c8GpYYIQrJjDeAm7dvmKC6cNlgOzNjUE0YCxgBn1xEM=;
        b=DrmbNMUYvv8pq4tVljeUs11zbNktOTSh7bg+pWi0UrmxTisqG+4ZvXr+8fd5stmICs
         jZvhGne/nQUSHEeLxRAsqbT2a7T4bqTAls5pS61fY1I4mXK2sLXvQBUibCNkzhzjZucf
         qqS99Fa9/Bxlhhl1GzDH6l1c+Olnuml59zVgsatP9YUaU2sEXGPjxaTzDn6QD+dqBUeu
         mjCfXrWtIk4qmMR2t9jrpVOUohi5qTwEll3i80WhhtgGjJR+s4IZ/MQVxFTWrJ28UsIQ
         CPR61gqA8PHfdtHmkga/WqVokztU2p6p8BCaAgDDdp7WS0Hr3kmbGfPerduTb83FcVwF
         5jTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=c8GpYYIQrJjDeAm7dvmKC6cNlgOzNjUE0YCxgBn1xEM=;
        b=rPwf/pkhXoa4q7pW2fmdVq06Nv20sZ5mza2wLuOAKN1G5ncNn+NqQV+Wnq6H7VJuiz
         GrQQmst878695v+0Q4t2j7MLnCHDnZXiQzzd3c3uADXGICkgZFvY1oKtAjYOBObKT8+n
         ZJzdwczNEYi0Ow2kTITnTobc8h+X0nvTpjZdW+8XS4NferQXsKyXaHR6KngoJcsmmXbw
         3C0soiobPQoTROUOn9SxY3rYnxvE8UEJbVtNs7rej8m0g5vZ2FaitlpJQjdceS7jpCz3
         A1feGNEUxoP7grLTxFX0QelwQibs1bjueHpY1A/wQEqOFYdrNTH38WBc9LHxQpo5GXfo
         ZcVQ==
X-Gm-Message-State: AOAM531KImCKjCiIVjyFadJVfV1fIyF8Pl+N4E+IsUQNcEzpoz8Ujv1U
        4ENNB/e3HfTTe4ZSUz0agyJ/eiKePoEiAA==
X-Google-Smtp-Source: ABdhPJwWpoaRHeuPjiLuij1JS1FP+koZ2AP4nhpLPX9H/5yFyytl3LhxIF3BVyj/CWc3v1mf5GtgKQ==
X-Received: by 2002:a17:906:b84a:: with SMTP id ga10mr10267169ejb.143.1630875765506;
        Sun, 05 Sep 2021 14:02:45 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id mf2sm2788826ejb.76.2021.09.05.14.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:02:45 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 39/52] ARM: dts: sunxi: Rename power-supply names
Date:   Sun, 05 Sep 2021 23:02:44 +0200
Message-ID: <3269377.QTWDqilR05@kista>
In-Reply-To: <20210901091852.479202-40-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-40-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:39 CEST je Maxime Ripard napisal(a):
> The name of our PMIC power supply names conflict with the generic
> regulator supply check that matches anything called *-supply, including
> the nodes, and then makes sure it's a phandle.
> 
> A node is obviously not a phandle, so let's change our power supplies
> names to avoid any conflict.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


