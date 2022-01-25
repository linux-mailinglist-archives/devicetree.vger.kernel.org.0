Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D23FD49B9D7
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 18:14:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242822AbiAYRNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 12:13:44 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51138
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1354836AbiAYRLp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 12:11:45 -0500
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 269603F1E8
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 17:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643130701;
        bh=w7pNveLS0GBUcaM6xZHDvqGiuHIf5TR0krpcnow2fyo=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=hqugDulmFV/YpJbTPBNKQtXXj3OCUXpThQUF+/NUp8Gt2EwQZKBnhvcs41NYBKFZO
         piUu24l5/PCp0fpK6R4goyAOzWrvTrx8qWjTEx55rlvucfs6N7EcMGGnshggQTnCkl
         BoUYo3Yiq9dN0t3KS5j9LpViBIm0s79S4XXZDS8kP4oODqBcQhLTbjKKxKR5unjUrA
         oBq2JLNmGk93VohCJwDT6tC9aIdnBS80XQYxFeGUWFG4tdpqrUwWML8+ZynBI4Ndrt
         Vvcd0KlIhZKGUE4aemziVwUSPkVI8ksN1Vq8f1kwmc07U2pQJmcdi7qkR9Zr9j/MgG
         E5YS8DFfdfeWw==
Received: by mail-wr1-f70.google.com with SMTP id q14-20020adfaa4e000000b001dd761d46c7so403740wrd.4
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 09:11:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w7pNveLS0GBUcaM6xZHDvqGiuHIf5TR0krpcnow2fyo=;
        b=H7XTzJFORyAviz1gnOC6Y23tG4Bf3IDBPPE3EpMRbxZNRvdry1yh0u58B4lZxCDU/M
         piU0KH9xbhSySJ00RUYcG76OsAJ3CPQTfmi/s/8Zt5+reSHVh5w4qDA9QGAncvxxeMyk
         cKfaqehJUD8tg4OxZgqV8Nr6mgh5VOFDq7l89kBvWPMfrLIdoYHiZyB7jQmGnl0RoNtN
         iGOURMyBYXhXM7NaWiiB0wy+kbLr4SNPGLB7lyLd5v9BPHOiUHDGCT8bCnSIMVekRHcu
         seZKrlLeROCy8qJofd5GocPwiyLRVmxFVKvUAzIvw0vUDxh2L3m8uTIiSN6Pkzy5VS1S
         CnkQ==
X-Gm-Message-State: AOAM532h+vnkB7ohSqsZd3T/lWxEeM9u7x61SnSA48LVdvv/imJ3T9V5
        3F9Qw2d7bFzITs8lEXQDBAT9yHvAgN5bMK7Ms6q9dW8U/W1M2alFJc+scd8QUScb/R4xFB6q4LM
        reM8l+qXWXIkVY0qcqDxnYPiketszdDhENDEMZRw=
X-Received: by 2002:a05:600c:4282:: with SMTP id v2mr3842239wmc.78.1643130700817;
        Tue, 25 Jan 2022 09:11:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy0UJNIa6CQvbeScVNkgkIbqxoZi3ySJ1nOLLm6MxdhJFLNeQKvajyCF1/0whS+dTxXoqrw0Q==
X-Received: by 2002:a05:600c:4282:: with SMTP id v2mr3842215wmc.78.1643130700627;
        Tue, 25 Jan 2022 09:11:40 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h127sm4477087wmh.2.2022.01.25.09.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 09:11:40 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        soc@kernel.org, catalin.marinas@arm.com, linux-clk@vger.kernel.org,
        arnd@arndb.de, robh+dt@kernel.org, linux-fsd@tesla.com,
        olof@lixom.net, pankaj.dubey@samsung.com,
        devicetree@vger.kernel.org, linus.walleij@linaro.org,
        sboyd@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org
Subject: Re: (subset) [PATCH v5 11/16] dt-bindings: pinctrl: samsung: Add compatible for Tesla FSD SoC
Date:   Tue, 25 Jan 2022 18:11:03 +0100
Message-Id: <164313066043.81586.10760195237607935843.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220124141644.71052-12-alim.akhtar@samsung.com>
References: <20220124141644.71052-1-alim.akhtar@samsung.com> <CGME20220124142941epcas5p4bbba53cfc2fc9862da9fd85d44de6e79@epcas5p4.samsung.com> <20220124141644.71052-12-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Jan 2022 19:46:39 +0530, Alim Akhtar wrote:
> Add compatible for Tesla Full Self-Driving SoC. The
> pinctrl hardware IP is similar to what found on most of the
> Exynos series of SoC, so this new compatible is added in
> Samsung pinctrl binding.
> 
> 

Applied, thanks!

[11/16] dt-bindings: pinctrl: samsung: Add compatible for Tesla FSD SoC
        commit: 98ed04b33f43a80c0d9e218023abce3b47ca3539

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
