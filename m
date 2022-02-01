Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABB824A540D
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:29:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230395AbiBAA3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:29:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230387AbiBAA3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:29:50 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFABCC061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:29:50 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id q63so15531356pja.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=S9y0Oqmt4VA9P5wgbndREpu5YuNU80dQ6fcR0DxgcTQ=;
        b=oONEszuPHOsEoAaH4EmOk8HRXFBldQJZY0w3s+l8CHNmxfafo/ZAivBWtFHiRbC5sH
         RVhw2Jc7X3/IFfF3liafA9W9735tWMvMRuswiDJGflrwHe+XUXJZfhK4eXq0NnlyclmB
         AgUXxaeDwOPoSKCAdr+fpBcOcRqF28BEvWjwM1DrVXaR68HDBSyPvCZIryriuYODnBUg
         0u4re80g7z2qpZwu+P55luBYBqBWoQV7lpSbyZ3ETdkrA9q776TZRoKcso6Jg6C0uHDA
         0oJ6HKupQ5Xg6NlNQ+Trxj7hy/qwv3AXRIJriyIJQusb0unc1XCV43qe8OAYTaaQWloY
         taDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S9y0Oqmt4VA9P5wgbndREpu5YuNU80dQ6fcR0DxgcTQ=;
        b=bCYD7sod/EgYUicRAou6YxyMeeSI9TENSM/nBvn7UZLUKOe146QsDCc9uFEQ3iYQvK
         Ufu7vxgISz87qba1zJc7yGtVK4FOAZ/VB3k36R6EGfww1cYbDk8WE9B8gYBiarLihuCy
         jQPETngmU+EjuUpk8Bcic6xeAMK6p7K8VNCD7YEOAJvz/ZGaQRSE+w7z65L5TD1xkE+W
         OtNYHbInLm2DAXSj/kpzF2Iz2f2YTiQntEnWJE9XkUx/y7chIr5NJDA6yVqDR85eoJB5
         tSrLT+rhrRb11uYFnFzxv78idEQvqMM19nA6YAYzxmfMie390BnC1u8mGworwfzbHdkO
         norg==
X-Gm-Message-State: AOAM530fw6ZdnRIr9ggetqh5GDEyvoHcAnnCHqfAfZ/HsBg08d0C2BvW
        /XguZJtt0aCLAkPCUceA3XE=
X-Google-Smtp-Source: ABdhPJzcrijTXdkW8bEaGL00GIzJZSJvNcEoEqsDUqavwEFXik2eljtJmND6BQGmA8tWGaqOOYz5Yw==
X-Received: by 2002:a17:90b:350c:: with SMTP id ls12mr27125500pjb.182.1643675390190;
        Mon, 31 Jan 2022 16:29:50 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d4sm21184641pgw.30.2022.01.31.16.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 16:29:49 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: add pinctrl binding
Date:   Mon, 31 Jan 2022 16:29:47 -0800
Message-Id: <20220201002947.428224-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211230110535.27543-1-zajec5@gmail.com>
References: <20211230110535.27543-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Dec 2021 12:05:35 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Describe pinmux block with its maps.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
--
Florian
