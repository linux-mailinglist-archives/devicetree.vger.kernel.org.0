Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68A51413C41
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 23:19:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbhIUVVN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 17:21:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbhIUVVN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 17:21:13 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5209C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 14:19:44 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id g13-20020a17090a3c8d00b00196286963b9so2945439pjc.3
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 14:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JosYfYc7Dzk2PkdGyWfTxwpaSQ3RPQRMmz5jvtOy2v8=;
        b=fSZ4QwRTnCJEUbWr1o8EW28KLwI9K1gvjoXNg7VFro6UomwYjmncfIo5fYGCOt7WEn
         ACRtTN/pCNhpvN3pYri0XIPr3bAlHxmvX6BwFIgfPB9olcIBRS0+rX/cjsLLUoM69u7D
         t3a0JxPrCMpfdrJsFy6g6nh4nftCescBeRW2SNTNt2XLZJzzWBGSAwrc4QNo0hLcgZTd
         Kr9L8H/znZ7T7ZjZw7tiFprtG4lJtKc+dzqRMLicY6pgG/uWby+uZ3YfujQp41uNEfhl
         hs7/+xknD/fa+Ed/TnfirLaaOItjnYwzShdx4Q83ETDlAYY+stT9xQexgs919AzL3hOr
         8atA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JosYfYc7Dzk2PkdGyWfTxwpaSQ3RPQRMmz5jvtOy2v8=;
        b=cxuE9hlds1P9JTJMoTE1e5PYhTwAPu2LWeH2H8lYUxUIrLGt5DtpGoXQUboDbdGia4
         7lOyxIQKREF7VLQL4WcXTnhkHAeDA/RSperRCPtMJ4yTyODTy5O2aTpMccHQflb0Qh9F
         CdouQ6yXxcWuY1W8VK81GN0RssjRzBD6ay29vtLNrB82C77B4JhF1obbO0j6mkAML5uW
         /qtMV4EL3FPYAtwQ0LlHQcG+bEtjRnabWCV5fYrzDqYXY3llnVCezHHrR3sZsYzC6C8A
         T6V2Rk2z0oIRX17VoP/9R8pDL3KWvAIRPOTH9ec9McRRasbCHWD3/A8CuyAYvj/aFPeY
         AC/A==
X-Gm-Message-State: AOAM532BFELLPbmYNP2XqDybj3k2cKI+/IANcGg+/CDyLpqphXiGkAfm
        7d5OQyOz+mE/iR2PqiPwsEcABKYdEHg=
X-Google-Smtp-Source: ABdhPJxDN8DEhRjZLjS3Y3+3tIFpNpkhhW2pvHU4vb4ON7qCey2NWB61kBhYfKiL+spYdA3la24DCw==
X-Received: by 2002:a17:903:234a:b0:13c:9439:5cf1 with SMTP id c10-20020a170903234a00b0013c94395cf1mr29086287plh.2.1632259184113;
        Tue, 21 Sep 2021 14:19:44 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id e7sm80344pfv.158.2021.09.21.14.19.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 14:19:43 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/2] ARM: dts: BCM53573: Describe on-SoC BCM53125 rev 4 switch
Date:   Tue, 21 Sep 2021 14:19:42 -0700
Message-Id: <20210921211942.3315211-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210920141024.1409-1-zajec5@gmail.com>
References: <20210920141024.1409-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Sep 2021 16:10:23 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM53573 family SoC have Ethernet switch connected to the first Ethernet
> controller (accessible over MDIO).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
