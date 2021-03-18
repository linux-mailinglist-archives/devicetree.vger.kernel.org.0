Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A69D733FDE0
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 04:44:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbhCRDnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Mar 2021 23:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbhCRDnz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Mar 2021 23:43:55 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3DF8C06174A
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 20:43:54 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id l3so2546058pfc.7
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 20:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nLUsqQJtYmhO3BF331egEK90+WgfLQ0W0MXdR4lkC14=;
        b=O3bvmOWWqF6ElQ9WEjZhPlx5ussGcRnzlBOd1qlWb8DqMAnNn6FKAv4W+2sNPiNze3
         zqZ08zxhVC2jy/pBkLco0vh1Ox83GUq7Ct7CfGKTUffCtwQLJEnUsXoRpYy2E0+GsSj1
         n8UuP2VMh+LlN9UB9BDaJVIxOaYHNQY6xtjynB7zBdcR3mS1tt7D9IdVD+Eb3T1UkAHp
         FHmUgCvQKbUWI89Nnkm2QGOBj5gQ4/fQaLby5pHsxaQ71bT/uAyvR9sZq+0v7uLLNDpa
         JHkK/4cars2GUpwlOCGvaVtceISQhY6a4ufngo8ws4HE9o5EoRBbbQkb/lmO5kevqexu
         F5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nLUsqQJtYmhO3BF331egEK90+WgfLQ0W0MXdR4lkC14=;
        b=HWDlRVOK3BpNEIJN/RjvQqaEIVb4LOPW6uHz5ulL8jmlrIRYOytnzGLurYSq+m/Qx3
         bc6ei2KYVBbHAvdnHfT9NfDOIHzPxMd211swGrEBxmoBMhlxs37NiW+vXiBhDoxox8nT
         Y9qfQObD3486t7ki7DUFFLNnWNJxVg5Cgs7edRWv9c5h+CgHjaNWPSh9GhTB7is5ToOf
         oWbJ5UDXbGhWmxtV9tELx3TyoxK3REWlf1sGJzLyN+ae48AGZlvCjSuxcw0/hJ45GrGz
         KuimWl6/WXCtdeiZ8WUdS4PmdugKO78lKWPCEHwRntOGGjuMDsFDN5z/xzrntcoB59hp
         XCdg==
X-Gm-Message-State: AOAM532WoZ+PBoYu6G+HCkBJRTimzED+ArrlziGi3kzU6eAWMZ2g/fIq
        a7iZj/DpQSBn7FDYcpkCInI=
X-Google-Smtp-Source: ABdhPJxjTFAMulRMTAvcw6cUEAg1ki+uv/YUbHYASahmz/bssk4DjdTQdvwGYS30J4gG20Ov/K0SdQ==
X-Received: by 2002:a62:68c1:0:b029:1ee:5dfa:860b with SMTP id d184-20020a6268c10000b02901ee5dfa860bmr1994740pfc.35.1616039034276;
        Wed, 17 Mar 2021 20:43:54 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id k127sm533002pfd.63.2021.03.17.20.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Mar 2021 20:43:53 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: add Ethernet TX irq
Date:   Wed, 17 Mar 2021 20:43:52 -0700
Message-Id: <20210318034352.4023467-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210317081631.22580-1-zajec5@gmail.com>
References: <20210317081631.22580-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 17 Mar 2021 09:16:31 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This hardware supports two interrupts, one per DMA channel (RX and TX).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
