Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FC2838B645
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 20:45:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235549AbhETSrT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 14:47:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232681AbhETSrT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 14:47:19 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9CC7C061760
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 11:45:56 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id cu11-20020a17090afa8bb029015d5d5d2175so5934207pjb.3
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 11:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=B8NhV9TYDNzi5FLeRluA2RkXRIg7+rEklr1JwR0dCMA=;
        b=IBWYpWHsfygCw4TXFMPsxNvaOkLzxl6vBKWGdt0KtAhH043wcCJUmNUfuLzxj/Mbyt
         0snifTAz8521nwEfHrE130+ZPG9oQa3DZp5wlnJCsoZI3mnXoQWEw4/1nqeSi6Wqfqtf
         cY5FqbGFULaMY5eGIhKIpGXoOiBfb4qca3Zx/ohH5PhhEDEsescOSp51p6qdYhcNEIIG
         seNNJrN7h3cVdm1nf1e0iLhLhqERJy0Eg8Zm3VMgfzmUYzkol2sJDUrETMhhyaq2+NXb
         K2+e4yjENoaKPzeeuYibrJKEWyQe4n7MclgDRfAo+7ZbDX2AW/18GaiEG6002UbjE4fv
         1hqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B8NhV9TYDNzi5FLeRluA2RkXRIg7+rEklr1JwR0dCMA=;
        b=R1Mg7V6Itdj26WrN+O0onjdvx83kZ8Oeh0vxFnKnecSM04zX4FP8Bx5bWSqDfLFQP3
         Q3Lt/nLbj6kSwBtYlvmDN5Nm5YHjixvBu7dxIkI+bQKUMmxTGFWvpZGd3PUbJr2pUswF
         agWXypNMod7vSqjyhFuqmm57dHCRuIivpeuP+csBgN/w9T4U21swZlnz9dFxTuHR23Hf
         uRxSbKU3amMOSo+dMYDIpsKxyE33kGbsSfQ6tmR0oht6keDaInoPq36WORZAdMAc+pRY
         SuJKGEE2ssHDtcj3lEbZYj8tDgMm7dVthL6yHLtY2i3pQTpIWqH/UtuGHb0N6fZaej+p
         HwsA==
X-Gm-Message-State: AOAM531+bLjQoW6swblk3dDACiUjKcTz7gppWd+RJW+GfxFrByqTzOZC
        0UeCE23/V52H4SxqPYmgrLc=
X-Google-Smtp-Source: ABdhPJz80aH7mPZ6Y2DGvkl/Ctpe8kKgKRKdBvNztoR6fgZUg39/9FRR2FiUF2BpFHKDIh94r8sKlw==
X-Received: by 2002:a17:902:c94e:b029:f5:e0e4:1382 with SMTP id i14-20020a170902c94eb02900f5e0e41382mr5272373pla.13.1621536356178;
        Thu, 20 May 2021 11:45:56 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id x13sm2549024pjl.22.2021.05.20.11.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 11:45:55 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Zhen Lei <thunder.leizhen@huawei.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Andreas =?iso-8859-1?q?F=E4rber?= <afaerber@suse.de>,
        Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-realtek-soc <linux-realtek-soc@lists.infradead.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/4] arm64: dts: broadcom: normalize the node name of the UART devices
Date:   Thu, 20 May 2021 11:45:47 -0700
Message-Id: <20210520184547.2137680-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210519141914.8044-3-thunder.leizhen@huawei.com>
References: <20210519141914.8044-1-thunder.leizhen@huawei.com> <20210519141914.8044-3-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 22:19:12 +0800, Zhen Lei <thunder.leizhen@huawei.com> wrote:
> Change the node name of the UART devices to match
> "^serial(@[0-9a-f,]+)*$".
> 
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
