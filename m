Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4841C2C3429
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 23:42:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390008AbgKXWlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 17:41:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725930AbgKXWlj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 17:41:39 -0500
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F72AC0613D6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 14:41:38 -0800 (PST)
Received: by mail-pg1-x544.google.com with SMTP id m9so533308pgb.4
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 14:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=00f/ar/7a+K6UwpGwfIhtMq3xOrQGNrfRJRpnjklAC0=;
        b=jjkwUkZ4bfGz9lpPjcCSQmCA/8zf5IDyugYsB7NgdV/oNCrIBG+qKdc6lpO7zohLEG
         oulNmgl8di/MGb2abwtpCZuL47c6UQK0pUNV9660W3odp0v3oWUtMkIjgYVZ/pWHA+Io
         gsUGA0/HWT6msGZml/TklyC+4kFu6D9PxuG859LfE4kLlZqsZJfkPbPTZm7UATS8DyZU
         2AdAPvtiFaqKiYPTHzkenXlhYPjFykOM9spVNdi+QOILdGfvC72TWJyoxY3brUUJ7zrY
         XagjWarNHiOGryzLewYowN1Bq3XQSJfbXGRPDhbIimIsyXHTe6XOKd9FW2H293Cz/mhl
         Yc5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=00f/ar/7a+K6UwpGwfIhtMq3xOrQGNrfRJRpnjklAC0=;
        b=VeREuaDS3cD+astBdUzlKwDLGfaId4ZrD0GYEus+rQAiU8fnd70iMB8lXYPbuFD2Wr
         vhCUfr4DfRlvYY1pSQLRcLAgLU47F8scX5WIeUGBAKIBqtA0tpIpasWmvS9LBWyeWWKX
         LW7YUK5m197BjmHKBuB3MuNzS5BN6zK88ogjhEG6SaOEe8MUNDgk7x70nwoC91CdBwM7
         8Z8QT1rTPvAYMTm6B3vecT+4ML3P0iCQzTgTiy3fG5nvxpMGtjz3lrQbTxuBg1eiZ2ae
         m5tZQkkBAaTd5kKQpTgLnDqGZABzbIg+wu1rw4X76NhiF8hYmvSdDixsGErn58qVCmFL
         YfuQ==
X-Gm-Message-State: AOAM531VY26zhD3BERNGZWXju80MPWHB3AAf9o2V64GvgfPUNBaTT05W
        A5ouIwDVZAofUX1vYlTyZKw=
X-Google-Smtp-Source: ABdhPJyq9hToZG1uLR/KuKUdtrfax1oDnujSdw0eV6BNzfxjXCazaB312sE/OrM1Mjvza1KFA/42cg==
X-Received: by 2002:a17:90a:19d5:: with SMTP id 21mr451496pjj.187.1606257697609;
        Tue, 24 Nov 2020 14:41:37 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 145sm201530pgh.66.2020.11.24.14.41.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 14:41:36 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V4 3/3] arm64: dts: broadcom: add BCM4908 and Asus GT-AC5300 early DTS files
Date:   Tue, 24 Nov 2020 14:41:35 -0800
Message-Id: <20201124224135.2256474-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112150832.26474-3-zajec5@gmail.com>
References: <20201112150832.26474-1-zajec5@gmail.com> <20201112150832.26474-3-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 12 Nov 2020 16:08:32 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> They don't descibe hardware fully yet but it's enough to boot a system.
> 
> Some missing blocks:
> 1. PMC (Power Management Controller?)
> 2. Ethernet
> 3. Crypto
> 4. Thermal
> 
> Asus DTS is missing defining full NAND partitions layout and buttons.
> 
> Further changes will fill those gaps as soon as required bindings will
> be found / tested / added.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
