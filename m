Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97C28339FAA
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 18:56:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234104AbhCMR4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 12:56:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233951AbhCMR4D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 12:56:03 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EB66C061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:56:03 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id p21so17916876pgl.12
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 09:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Lmertt2+dHXf9GTyen3Okcf1/ulo7nry9oV/E7er5m8=;
        b=rf+4jsh7Iye1jdgKeNMdF0pWdjzoMa5dlXBlpdfkmU5+5x/lu0DcoeFiMCt5DU05cb
         ofitPNrFBU+KKi4U6ItNi7dezJcB/FYSUMMaVQfSD/0yuPZ1/6Ddgc2ls5aIL+7x/2NI
         p9r1ejXjqavWTaAfys8C1jDADCUXMf2YEaFr1nsK8mK77iGEPZapyOnUEUWMnl782d8v
         5Q9E6dMhnMH1sXRns8YjuEeeYWF2xq0TFOgy/Oa45mIvLKJefMSyEo7vpxTgLXGERR3+
         9lXszCJSMoNIdynawcA7oEolPTxTycUXhlzjWIq7i7yNcihG13zYestrHsR8lHnhWw+v
         oWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Lmertt2+dHXf9GTyen3Okcf1/ulo7nry9oV/E7er5m8=;
        b=H6Dk8AsNbQT1qz80SH76rFQMH+vKI+owZE/cpmb4g547qx5uS0KqZLncP/0Dv6geJh
         luEJ6/hcGc1+8Z2mHlR3svL0CQmo/tQ0VBDvvSXdC2egkMupPtv8kjthfTeqAfU9ZgJ8
         YKyysszMYibItmmQ/Ocv3cKol/03s6X6k1zZW/CAJ3wbOSg73jYVk2viKygj0KVoOEm4
         Ki8kfzVQjlQbe9KhOrS9Rhg06/y93GRur7t39x/kXT0vnxwCCSvnM8Zp+b/KtNpxr2ri
         2PGBpiKMTi3DXZBrZtgMrwWYdaYLSLQzaNAf8RDwn5wcrTjAtFCSLPzW7Xpu6leyFfsK
         wj6A==
X-Gm-Message-State: AOAM530e35kCoXchonMlLqVhOEC0WxmjaUDRbLr3XJfcWEcF8XwWyXX/
        czP2y4K3bhDwZLbdmB4m+8Q=
X-Google-Smtp-Source: ABdhPJx/6NHNZn4Tu/QT4tpGdn1FhpRyQH58wVb1FVJa6Fawi64nZwq9kUXjETb/KvgDTtYRjmEUSA==
X-Received: by 2002:a63:d17:: with SMTP id c23mr626335pgl.251.1615658162956;
        Sat, 13 Mar 2021 09:56:02 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id l19sm5913143pjt.16.2021.03.13.09.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 09:56:02 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: BCM5301X: Describe NVMEM NVRAM on Linksys & Luxul routers
Date:   Sat, 13 Mar 2021 09:56:01 -0800
Message-Id: <20210313175601.3844097-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310210446.24369-1-zajec5@gmail.com>
References: <20210310210446.24369-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Mar 2021 22:04:46 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Provide access to NVRAM which contains device environment variables.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian
