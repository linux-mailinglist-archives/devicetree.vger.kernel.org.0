Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9A43414FFE
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 20:37:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237065AbhIVSjC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 14:39:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233210AbhIVSjB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 14:39:01 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 417CFC061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 11:37:31 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id y4so3492124pfe.5
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 11:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ISf3e2qYPLYW8JjJMdTWnyQoJgdMb0DoM5KiRNPt3g0=;
        b=LVeXUp/i9sFKPslqa3oFxRGAoZXRujwvKBxnOsefrScc4IcXG7pWZ5GbC3kctBZR7H
         JacMYyfPyAI0UZLT10T2zdLEldqHUSd2hHQ778mU3I3Kjxw+RCzAsYFspFGwpTV7L1GA
         otgHcPKkrn5Ax2/QZEU4zwBPLv6VDD7V2I2iTkpYuOUGQP2w8X4MbRGsq2WG3AZugePy
         t5FwuZmnLk7dRLDGhIoOwmWNk0mHCOkS2Mxlr863+NeTDrd8ufQP2sve+j8q42n9HRSa
         m5XelYtHN62QljPGbNIWOta2dHTLozXS3eFhYIkIfYfUqtb/wwNMch8aMmbsnCHaWPWa
         3HAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ISf3e2qYPLYW8JjJMdTWnyQoJgdMb0DoM5KiRNPt3g0=;
        b=LkXQS7AdF13lLHCP6QtUFVgWjDPP/9cfubLCAe92g89nlzFX6Avi/p1SkCjBEqKJCl
         hTsx+Vc61WeCSSlUrUkfefaGg+zIOgE+3ihWrcT+qbAZ4fWWX9+5ZnbA3b9ruoa9Oz4o
         6nLzlrl90hR3ryATCfPD8ztYZ3dmZl8h7/Iz0710r3pGpV6KEMexDFsUltt0giGtk8tA
         BFeO987zcjpwlEvQAIyxvxqqXuMxBq8yreEQoaK4iKu/wfNwBTipVlhiEDlwYJekXlPE
         ct4tlk2Se6hg8TIfqgTIyUm0cFZWRc2kIXVewDKzrO6gkuoUmWDSIDtOGssltFhbMxMG
         Ty0A==
X-Gm-Message-State: AOAM532H84/uuDZJJG98SbNRhX8jUKT0ilpzVKsUwObR2KazoUtBRQ5g
        /u0J2CppjiZWv9Cz/v2oEtU=
X-Google-Smtp-Source: ABdhPJz/Do4zlSrpJlbN1Qw7f3SkQvCNptrVecjqUxk3+fUG2LobBeTDIiC/gAz0P61t+ikjzMcZMQ==
X-Received: by 2002:a63:184a:: with SMTP id 10mr300638pgy.149.1632335850661;
        Wed, 22 Sep 2021 11:37:30 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id x19sm3102689pfn.105.2021.09.22.11.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 11:37:30 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Asus RT-AC88U
Date:   Wed, 22 Sep 2021 11:37:28 -0700
Message-Id: <20210922183728.211597-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210921121901.24578-1-arinc.unal@arinc9.com>
References: <20210921121901.24578-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 21 Sep 2021 20:19:01 +0800, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> Hardware Info
> -------------

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
