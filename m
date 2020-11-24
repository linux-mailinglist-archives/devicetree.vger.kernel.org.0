Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 789D42C3425
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 23:42:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728515AbgKXWlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 17:41:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725930AbgKXWlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 17:41:04 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E68ABC0613D6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 14:41:03 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id k5so64463plt.6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 14:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=85m+xlF34D0GkdPKmGNk4yXMldzFLIno5OYKwkI8Q6k=;
        b=X11p+0asARUISWYaMSiY9oVcjcmDWW4CVT0MhcKvlcYXUtA7E052J85gW+I86JUKrr
         /LZjFu12um0hnEikSHI9trfWSL45LV78hzmy7BkKju+6PcbQJVQxCVDlZUxWNPUAWC8U
         r1aQgOzXzjuKfx/4CGqeddaT3cIOWZ4EIMVIxNdUTkVvq+WLJND5RDrCFgRQColFtn4B
         QBF4xRYWngYrl66iH8+HXDCTlTA3EWsoJkGkOWDcpB0FEQ1cK3wYDaJBAuiPMkvNC00o
         Xn9T4MaIpOcCHrCwbBC4zRTrvtSbj3zayiyCujjiqmqL43pT3UhsqQkVniOp+diHu5tl
         7KAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=85m+xlF34D0GkdPKmGNk4yXMldzFLIno5OYKwkI8Q6k=;
        b=BEon9jQXWH5YvM+1fGsBJf1mVHEiLyQp4Kd+Z1V18MMBVSGLqNWR/2XbWsrCLSY9Op
         SDkJm6xBjKNyKrSa8aDjFJWq3RIiK8X6898b9mt26iRyUCEz6qsLK0Z/rzpj1CvMHocJ
         HMeVTfkeqHx1xJJkFKskf54RYYcZxgQMokNWS3/Nx2G6WuqiGwnhlJyVhU261adykeeN
         l42f9RSYeCin6YMKfs5XeNUPrmNU922MgQ901mE8845RFmaxo2J/9F05BUyP9bo9Z1yL
         IJn+jHQM8wh/Wkat4ROnhkkPg3AApVdb3asPygop3Dgxyql/90w4kDmijYC2UeHxt+Um
         XArg==
X-Gm-Message-State: AOAM532t7U12AUYGYIi2B4FeEDfueZ9Kqdprcb/gSbml3yXs3oLYmiXp
        29J/2Gp6wbjwplYAI8sZhVg=
X-Google-Smtp-Source: ABdhPJyJ45HTOYj7qiG63zzrnlaCqtdwyu5GdUiaOeNuU0YcOdmfLsokq8iALHs0CQ5iuukt/cevJQ==
X-Received: by 2002:a17:902:ed0d:b029:d9:d737:6169 with SMTP id b13-20020a170902ed0db02900d9d7376169mr536048pld.45.1606257663491;
        Tue, 24 Nov 2020 14:41:03 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id o133sm72349pfg.97.2020.11.24.14.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 14:41:02 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V4 1/3] arm64: add config for Broadcom BCM4908 SoCs
Date:   Tue, 24 Nov 2020 14:41:01 -0800
Message-Id: <20201124224101.2256209-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112150832.26474-1-zajec5@gmail.com>
References: <20201112150832.26474-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 12 Nov 2020 16:08:30 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Add ARCH_BCM4908 config that can be used for compiling DTS files.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to soc-arm64/next, thanks!
--
Florian
