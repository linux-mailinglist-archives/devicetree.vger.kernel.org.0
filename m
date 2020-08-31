Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5073C257274
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 05:51:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726584AbgHaDv3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 23:51:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726573AbgHaDv2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 23:51:28 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 342CBC061573
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 20:51:26 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id b124so2128494pfg.13
        for <devicetree@vger.kernel.org>; Sun, 30 Aug 2020 20:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=HAhFdDv2blwJh6v5iPIFizBa4Arz5FNOw9PDVuoe9JA=;
        b=iCn3C2o0ifeo9xs6/7UZDB6culCB6Njawa/B88V/zNNNkqBZBSEMsBAhqduIAxrCRy
         PzfUT31skoYiZtXs0Cv20luzKMhvTONoLwOSBpg0xM3xIKwRG3A7a1FTJpvm5wUDiUWs
         NLBgUTuWYVo4i7hISnku9lD6GQaAoJfAHfHUZXiOAnFUYem09XnwsogKQzEuqSwQOg9M
         OZMsfrMWXzuiY+RkfC7N53Nx2gZjn0Ery2mMRTi/IvgDlDHiMHbFZ2XaDbJNOrHSI5Tl
         H0rU4Y6SQLuisc61uKSkKSeOAgqPggWASwdilrAOOnB6dG9lrM6ziq24aalsNFqBXUhS
         Sglw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HAhFdDv2blwJh6v5iPIFizBa4Arz5FNOw9PDVuoe9JA=;
        b=bSHWmJgYOw3jb9ranNuB6JBouzs+X1SM+KLz9XBls+qH8e7BuB4hXUCvP3McgeAmUR
         Md4pRwN8pN+qgHTNTEFJFAlqDUHsOLOCCd9iVQrsHFaORamoP9Qh7VBJWVLNqhjlVCuM
         jjr9W9JJLWuym8Z9OR0b7lTcvNeR/gYOSOQCoO6edqm5HDmRHHe+7Dzt32pTgAUV78VQ
         89gN6C3AKj5qbdHIkzvCnU4xo8sgnPgdMCS6oU/K8n1iih2HrFjslmxPVxrQsEN/2sln
         I6d/W1yWT2k4Ba9Vh+zFLr/cn8yjC0DKYbrqn2o8hPKzqUBlHCvdX6/6Cwr89L2sQ8p6
         ZVrQ==
X-Gm-Message-State: AOAM531RwZc5WFHbrFQa7wUi6zMcTLQOHfEKvEL3610iTZpv4c5eGa1n
        z/mz4cVMb2uVVO0whHUIBi4=
X-Google-Smtp-Source: ABdhPJwqSh667rGqzDHoGl0YwfHmYeSWgcB2uiCUMck4y+BTKiZ1vCob8oav9fGUFI+Lm1P+krM5GQ==
X-Received: by 2002:a63:2d83:: with SMTP id t125mr6735290pgt.441.1598845881768;
        Sun, 30 Aug 2020 20:51:21 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id ep4sm1639099pjb.39.2020.08.30.20.51.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Aug 2020 20:51:21 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Adrian Schmutzler <freifunk@adrianschmutzler.de>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: NSP: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 20:51:19 -0700
Message-Id: <20200831035119.1331770-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200830195441.798-1-freifunk@adrianschmutzler.de>
References: <20200830195441.798-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 Aug 2020 21:54:41 +0200, Adrian Schmutzler <freifunk@adrianschmutzler.de> wrote:
> While the DT parser recognizes "ok" as a valid value for the
> "status" property, it is actually mentioned nowhere. Use the
> proper value "okay" instead, as done in the majority of files
> already.
> 
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> ---

Applied to devicetree/next, thanks!
--
Florian
