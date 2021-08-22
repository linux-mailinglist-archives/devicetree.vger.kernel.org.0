Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A06B3F411B
	for <lists+devicetree@lfdr.de>; Sun, 22 Aug 2021 21:12:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231520AbhHVTNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 15:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232633AbhHVTNf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 15:13:35 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA55BC061764
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:12:52 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id e7so14555903pgk.2
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HfzgK9jjwOHveuijkluJSruCFSGw/Q5AabAcsMMgDqE=;
        b=CUH0BHNnz2iH37P5sOg0L2O9I9ck35xGdZTrOHAC7fZkxcnoZFoozY/H4MrLmOgkiz
         9Av1a+b5+i6TX4sI5Q62m5CqlG0H2FSd4e1FXes18AataSP17PRmI/Q+noXlxGOG8J2+
         hCNvyVD2RejkDhA3ABP5kMl0iLozx6ThYb2CjSl5KjrzqKCJZnUFW5alonwxy+t4fF1V
         3E42CmEkhGyao5LNQmXQ1RJZIB9KcnfpjCYrQ5z482KjTHEcMz8QpzFBktFYVhn/JDJi
         Is8MWG9GgWqBrpqDq4djsbdw7j61BAXQFvNPpUUmtDtrJhNq867z4uNxUnEoP/nLy0NM
         gabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HfzgK9jjwOHveuijkluJSruCFSGw/Q5AabAcsMMgDqE=;
        b=rBJvApj7cxiSLLhU9Soynnbdn9pRb11QTqijFFvRnMKFHGNVe+31tDurAeInn2cn+w
         3hMMK/FE1Xq0yNKI9xMeIRsbMCxf3aBrMYqslqZL4MgwnHlQLfA9D9xiX7MYNxdwCrK6
         DTWn/Dba+fLyKbunbOpzXr4pHNNHQvegexjpFBg9+kODN3v9Q4VEGelPE9cIgV25zGpk
         Z64NNBZk2aQe8Sj8c6Rem4nNxqIAjh3yinfFIKzmfurS4OHSObhGLdyXbf/Gz/R+BhVH
         Z81I++raZYuJfy7lvgu6v918AibAQG4PFvPXSh95jgdpCJM5ZrDjxUx2omiCuqXew8Og
         NZ4A==
X-Gm-Message-State: AOAM532ErXa2NZPYbHhk4F7GZ+nxSUh5DVOsu4PKIhXU+dYXsmzDRE49
        qV6qv6P7brC66aQkfXw+cao=
X-Google-Smtp-Source: ABdhPJxXJxcLnmIptYP8oJMb1RkfA0ojYtuBaMrsluXofY+ELMsLNyoxsGhxTpCGWHDWc1uVhaFxbw==
X-Received: by 2002:a65:690c:: with SMTP id s12mr28878837pgq.401.1629659572078;
        Sun, 22 Aug 2021 12:12:52 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a11sm15294880pgj.75.2021.08.22.12.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 12:12:51 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 1/3] ARM: dts: BCM5301X: Fix nodes names
Date:   Sun, 22 Aug 2021 12:12:44 -0700
Message-Id: <20210822191244.3714895-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819065702.15406-1-zajec5@gmail.com>
References: <20210819065702.15406-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 08:57:00 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes following errors for all BCM5301X dts files:
> chipcommonA@18000000: $nodename:0: 'chipcommonA@18000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> mpcore@19000000: $nodename:0: 'mpcore@19000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> mdio-bus-mux@18003000: $nodename:0: 'mdio-bus-mux@18003000' does not match '^mdio-mux[\\-@]?'
> dmu@1800c000: $nodename:0: 'dmu@1800c000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
