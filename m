Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 014764011AB
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:06:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231935AbhIEVHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:07:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231895AbhIEVHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:07:04 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18715C061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:06:01 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id r7so6604182edd.6
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qTMCp2F91nV0DwgsWdu72jBDHLumsaaeSNNQGe4OJz0=;
        b=VjqnOw3QbaDTJb+Ae0QcsfnH6pMSzd3nEYDPu65NQMgQ8xnVE/g9xNGaFc2FtIROmd
         GVZMT3YDzvyOJkYYtz2m57DwBG9G43+tPt/f0/7LOUDK/mdp80O696+EFCsBSPme2hJA
         iVqs8+TGR+BSpBZpLOyC0pbZrOHmRr5uCc4J80Do1whdnAcSiz3IUHjNdM07oDHyr6Iw
         TAdcv/HXS/zHwcJ2rFfDG9whpG7tjacZzUSa0HXTbrL9OqkSeIQchdE4nboZYtFSC+OF
         tXiPfF+e9uWktP0qMnV7Rn5/rbZuH8v3idqEg8jQhqCwzQPEF2Gb/3nKqIh/sxEMGCIk
         rohw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qTMCp2F91nV0DwgsWdu72jBDHLumsaaeSNNQGe4OJz0=;
        b=V8/W3zWH6ZvC4W8U3atYtCd40lU9yKE1l0hmIXl65/D5z74D3wecZJ9cZBov/Ap6KU
         X0fV+JO6UpqNkhWO3erWcWyTAEsSCjjeypD4aFo3Olg91XxpSNBGVTCkJGS4Y2gK0RDW
         bEPSY39ZnJIifzX0X++anEvzZw2aqnXC8vsa86DQ0cr2OHgPxcZuQ4EUhhnfDuSLAHrz
         Kjtowx7arL0HZZSUIj1hShLjlao/D4iWtaGjHxwjQLbbSNuilHgVu3XbVJzXyWQJTKbY
         IBbhGe2otYwe9WZi+hFAqltyyuPxZTChg7ANFhFMP8P3dfQP6SZqzai8USkodXy8T6jG
         6WCg==
X-Gm-Message-State: AOAM531X9mXDMD9SdapK+qug8SdlFOO+dKHigfWsqJWnPCvvqoJAGPf0
        MbOpEbyro1vE6fV5GR3kZq/jQWYvSnrXhQ==
X-Google-Smtp-Source: ABdhPJwCy1NYkDQhOUuN9PETfMw/KEgxDp97bUheKjApxs1xYzfKyvNyvx+vGjVrZ5ZzToMm3sH98w==
X-Received: by 2002:a05:6402:27cd:: with SMTP id c13mr10125009ede.266.1630875959705;
        Sun, 05 Sep 2021 14:05:59 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id s26sm3381015edt.41.2021.09.05.14.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:05:59 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 42/52] ARM: dts: sunxi: Fix OPPs node name
Date:   Sun, 05 Sep 2021 23:05:58 +0200
Message-ID: <1958923.BEphW5xq3y@kista>
In-Reply-To: <20210901091852.479202-43-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-43-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:42 CEST je Maxime Ripard napisal(a):
> The operating-points-v2 nodes are named inconsistently, but mostly
> either opp_table0 or gpu-opp-table.  However, the underscore is an
> invalid character for a node name and the thermal zone binding
> explicitly requires that zones are called opp-table-*. Let's fix it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


