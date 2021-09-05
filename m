Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69CEB4011B1
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:12:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236145AbhIEVNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhIEVNd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:13:33 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACB5EC061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:12:29 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id x11so9413934ejv.0
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MeJrW2ove4xwzf44ZZfvWThRrC3CCVsbkTOTrmePVCI=;
        b=i1rjsQqPm4iTJrtWHKsm4RMPn3G7lgKMBmu0N9Lm5445ct/RZMy51AHe0aYpNhubzS
         s0NqNU/QMDU4Z8tyCWCqkFxpqrnPmdsd5tEcAeqGWW1qtJ4RiXfdhs7HiQwTxDTjnqMv
         SWQVJfqcz+FS/vxQ0WmSPuOnVgEYicN2h1+PDHvvVTjh4VFSInZwrfg1KsaizGVt0ikF
         SazCoJ51o0gsd0NKS1PDFiPwx981uroARVmSBF6QynlT8doN+Ki+11uNVymyseX4kLCr
         Ua4M8L0xem2uxIUcVLO3LSvc30jssehTwI4CAgbtCAGUYY/bsiCaFhXeTnP5ZNKiYgnW
         36pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MeJrW2ove4xwzf44ZZfvWThRrC3CCVsbkTOTrmePVCI=;
        b=PMAa8FAJi4Ubnwtm35MOt6In/6lkv+kcl/bn7gcazsNxOPH8X8xbwy800U08p5Q9li
         BpxKGrxcnT26/EOF2K8fjly9vJp9DL+cWBfIxul7hGmM6QPRM+03unp6yqjuRajP2jqx
         1wIsO+ADRZNwN0x8awI8Ml3Rhj+mgrqoqTfhd+SCRQ82EHUD0JaE3DpJY5VpeaEP0voD
         0vh6EzKi9H2rCSn7eFxka2+CTWYDyQ3VB+WbTqwX1ioCboKVpEF+2ZMnCBx9HrMtGVWC
         EnELrVbc7wO40tsrtmn+1FHkqB9G4nw6vvcL0iAyZOIBVroj7AFfsbEg/yNpyxCgjK66
         FG6A==
X-Gm-Message-State: AOAM530fysCOkZ4HLd8w5VsG1ABHml4S6tCjfPu0Z/mDkf2GkUIoLp9u
        1nfPMJqPeEAmWKW3gcmn68U74FjkAD0cdA==
X-Google-Smtp-Source: ABdhPJxvCLmtv1JQJSpFNFmZRstxdLmyFtfl+g7ZEg9hLs0mtlQUSgQn19G5Si/rdKiq8FJlMrWWCQ==
X-Received: by 2002:a17:906:2acc:: with SMTP id m12mr10392506eje.231.1630876348363;
        Sun, 05 Sep 2021 14:12:28 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id s21sm2774547ejq.61.2021.09.05.14.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:12:28 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 46/52] ARM: dts: cubieboard4: Remove the dumb-vga-dac compatible
Date:   Sun, 05 Sep 2021 23:12:27 +0200
Message-ID: <2130170.LrcM1eeYEP@kista>
In-Reply-To: <20210901091852.479202-47-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-47-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:46 CEST je Maxime Ripard napisal(a):
> The dumb-vga-dac and adi,adv7123 compatibles are not supposed to be used
> together according to the binding.
> 
> Since the corpro gm7123 is a drop-in replacement for the adv7123, let's
> remove dumb-vga-dac from our compatible list.
> 
> Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


