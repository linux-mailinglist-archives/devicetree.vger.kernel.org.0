Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB8334011B9
	for <lists+devicetree@lfdr.de>; Sun,  5 Sep 2021 23:13:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238057AbhIEVOc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Sep 2021 17:14:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231335AbhIEVOb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Sep 2021 17:14:31 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FCCDC061575
        for <devicetree@vger.kernel.org>; Sun,  5 Sep 2021 14:13:28 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id n27so9332050eja.5
        for <devicetree@vger.kernel.org>; Sun, 05 Sep 2021 14:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/VZShzw2VZV12+A5vS2T5bcQvsDGqO4/YaD88CK2OKM=;
        b=p35JOSLFMBjJeYYC2RWjLbffhgacwmpIhN/iiyRxWkiTmg9oFmTokf5Ca3xxztfZ5N
         Wx8M3YG5aY20tPuonVLQcBtByJ5Mrr4vjoid4keWwgEtrMU1DCIURfrcOUmi/0245Hu6
         EuCiLEOzKS6iT62pXpFRHO+cPsX7ynqhGd78mVuIzub9gz/qM6tQIH8QzuSzzdbuzH5z
         CmYGKoIxigIJpz6UYx9kbxFCJkpH9eqcaOfwaH12hB4/Et0Zqao41MocMLLPFswwdQC6
         FrXy0FJ9BjDMhfyMY2ruKwiXKsV7jlCJlg+WZGmkLyzibj1zgTetJ0J77J+oSPf6raDf
         lTVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/VZShzw2VZV12+A5vS2T5bcQvsDGqO4/YaD88CK2OKM=;
        b=uHOl4/QazQdgP63ZpW/7kM1pH+tWqx+nX802kexC3QmCHIZ9DR+YdC7XrsMqI5PCCR
         CfG2aN3shdmeq5R84sTZDx/9zBAz++CcEdgevTcXtyzjn9kp1AwBt9BV+HpnUCn3P7TR
         OdXJ92lMMUG8cCRD9oMDybpoLnyoxua+q1zha6v1J8coNABzvqr1nFTocuc/nwUZWso8
         7TfLDgx58quzqgezQf0zEyeAZl2z0/7ATnIr0L6jBQ0PT+4ndi+3Bta8j0Pih8DWSmMc
         GAaV049zhHekt/T2zPbJFEcwXbJmiD8rUnviVxx5qsJvMNEj5pUuy8z1pTlDlRWYiRi9
         VHKA==
X-Gm-Message-State: AOAM532Ssazsf9pQf1u8qPT5WqcRxrlNCs8dH/ROUu99+brhOLU3obmO
        hRNmqlAOihc0U5o8UCR8VCtsk3vcymEk4A==
X-Google-Smtp-Source: ABdhPJywfBTxDikjvV2XDcuufJa/KkVLFjwAATeLu4WN+KfCH6OMIV+DgUGhzRhP2jzeWOEaUCO6nA==
X-Received: by 2002:a17:906:b1d5:: with SMTP id bv21mr10427155ejb.346.1630876406902;
        Sun, 05 Sep 2021 14:13:26 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-29-253.static.triera.net. [86.58.29.253])
        by smtp.gmail.com with ESMTPSA id ck4sm3363677edb.67.2021.09.05.14.13.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 14:13:26 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH v2 48/52] arm64: dts: allwinner: h6: Fix de3 parent clocks ordering
Date:   Sun, 05 Sep 2021 23:13:25 +0200
Message-ID: <2044793.L55KqCCc06@kista>
In-Reply-To: <20210901091852.479202-49-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech> <20210901091852.479202-49-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne sreda, 01. september 2021 ob 11:18:48 CEST je Maxime Ripard napisal(a):
> While it doesn't really matter from a functional point of view in this
> driver's case, it's usually a good practice to list the clocks in a
> driver in the same driver across all its users.
> 
> The H6 is using the inverse order than all the other users, so let's
> make it consistent.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej


