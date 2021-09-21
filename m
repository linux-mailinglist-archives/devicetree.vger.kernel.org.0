Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11F40413C42
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 23:19:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229817AbhIUVVZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 17:21:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbhIUVVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 17:21:22 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87CA3C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 14:19:53 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id k23so551992pji.0
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 14:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OLUKcuLiz86Xv2tfB8SspsztXR+2yE31Lxr1JNhpno8=;
        b=V8UzZt4/+dv7SgJhTL+1FQ6mPw4b3xNdKeyGR8P3oldef9jvZlk/+L0rh/v90Dh+8y
         LZiFJbe1nZp3aj4+zM48nEH9DF2u2h1JnxOMtZVVU0DqVaLikTu5nhIVFddAOlOtOBkO
         17T20cDdm7phVhI265f0WGvbzoQKxFT/jOYl7UftVA2pehe577GnsYLj3Z7+KBhuY7ke
         WBF3fX3vXdkfPFu9MwEY6LBJExIRQxXgqRzlKT1nt4hqe8UPPGreVVDxDy+ONMIjIzu4
         eU0rzgCKt36VrEPW0eRbqiuhhVjERBxDkbbjFvTd/kAF2rG9s8Z0OMDNb/gpwxjysk4P
         E9Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OLUKcuLiz86Xv2tfB8SspsztXR+2yE31Lxr1JNhpno8=;
        b=XPfCZQb8THQaUQnpG78brDayhkMDI1a1/J4swsZRYR9RiMjO17ZnZIVxXQYWKiMstF
         QxJJhvfGZi//7hlSXY/LeqGXmzQOfQvyl+KNxar9ehjye4YPv8DQeWP6xpcDko9erngA
         +KY01uHPQpflEy2iG3gQlIozY3thxz3NtTe3sL5i8XEY6BczUyQ4AvuePWfIljResNnu
         zxM1dLBtR08fvJf4x5cnGsyR9/rQ6bVj3KEqIJS4stkYuzZw7uXVk7JEZJOVYP5Y7acb
         9z87KL0OWwNLjWMoKw20H3bcYcl6jbyCZYhbK/b6DGAQC/06HOz90gLLZtbDtOry25kW
         TI5A==
X-Gm-Message-State: AOAM533M37B7mgoznNjYkzZzmSlGDQhYZqUdZKdh/qeL0mR7GK5XrhsF
        0cpz6K0NOqq8Cu6e6lRNon8=
X-Google-Smtp-Source: ABdhPJw/4JB8qfVoivYI/hys8UJNcDoSrAdlhTGLzne8wC3UAKUwcLLfpHbCx9toxz4PRhaVHvUdfg==
X-Received: by 2002:a17:902:a40c:b029:12c:17cf:ab6f with SMTP id p12-20020a170902a40cb029012c17cfab6fmr29632266plq.71.1632259193110;
        Tue, 21 Sep 2021 14:19:53 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id z25sm79221pfj.199.2021.09.21.14.19.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 14:19:52 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/2] ARM: dts: BCM53573: Add Tenda AC9 switch ports
Date:   Tue, 21 Sep 2021 14:19:51 -0700
Message-Id: <20210921211951.3315325-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210920141024.1409-2-zajec5@gmail.com>
References: <20210920141024.1409-1-zajec5@gmail.com> <20210920141024.1409-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Sep 2021 16:10:24 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This router has 1 WAN and 4 LAN ports.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
