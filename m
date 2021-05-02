Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85F48370DB9
	for <lists+devicetree@lfdr.de>; Sun,  2 May 2021 17:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232376AbhEBPwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 May 2021 11:52:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEBPwl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 May 2021 11:52:41 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A213C06138C
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 08:51:48 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id md17so1679696pjb.0
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 08:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FeXgFlwCvvJ3oFjfC0oGPE3rWXElamt86e0d5FfBuEY=;
        b=uPFJ1iKtaRcNIVGET114uIMFTVugxV8MoF3jjvK3iL7//PxgZ4nAzpXaVfdhDTmJf1
         SYGYpdhkXYEW7Cn8Zu43g0xaJlAb/XrNGALzfrWcMj2ttBfYjR1dPBegQ9Xz550JWaJG
         v5rnel2Pq18S63bgYXDCHh7UmtOhEOI86N8wOKPHqrCk6ug+WMH5qnBCcnlWCFfhoe3g
         tHfnxVHNuvemokcjQpzibN3i6H9vdlsQs9LHID5BK873wRurz1DB2xQWhnH20LkQv3lg
         Mc47zoUdsbWfCpKX09lrvWHdiEWqYY4g/6ESZe2s/LsiooT3R9nCPM7lVKSQIRitxkrF
         Hd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FeXgFlwCvvJ3oFjfC0oGPE3rWXElamt86e0d5FfBuEY=;
        b=QaXR9587lnF32kAbvCcMdHbs7C3P9sIrc1thWxTXUu5AwaaV7NmoTC4f5ZbLSYZ/Jz
         xpnOWymuzTSMD3oy4pYP1QK6YB+b7thF1qDP9q6IMKKxfRZJ6l+RsG5hdyexkpFj6y9X
         3PK6UHtjCHq3Isd0/YVFw63bj4LW/cqV53ilRI9d0FMeWLhwfmo1szaiNtdHRUo+0buA
         gVVUJTE/OO2b771oRVo6FdN/fiMswdSACooa8VUnUXvEk1FdY8SeddN6iwgObJDjfk3+
         hf6SfVYsd8vmvTWxT7CGplX98etDQ/clb7NgfJnlPObIkko9hYtkoo7GIm2be/lsxrN1
         fu8A==
X-Gm-Message-State: AOAM533fYJNGzhUJFCcyoNdY+0HF9CLS9b+pFNmcMQ7QybMBOGDB9jLA
        /FcEiiODLSyJ4HGLv52Qqjc=
X-Google-Smtp-Source: ABdhPJyMHD3gxG/aKYDRAh3ua0osGyZDG6XhZ7QMI5ecUZqthTgsbKDKjnl+mNclBW8aCN3emXw1qQ==
X-Received: by 2002:a17:90a:1a47:: with SMTP id 7mr25458074pjl.84.1619970707800;
        Sun, 02 May 2021 08:51:47 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id f1sm15573575pjt.50.2021.05.02.08.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 08:51:46 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH stblinux 4/6] ARM: NSP: dts: fix NAND nodes names
Date:   Sun,  2 May 2021 08:51:45 -0700
Message-Id: <20210502155145.945501-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210416133753.32756-4-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com> <20210416133753.32756-4-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Apr 2021 15:37:51 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This matches nand-controller.yaml requirements.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
