Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1834331A09
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 23:12:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbhCHWLw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 17:11:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230342AbhCHWLw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 17:11:52 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A91C06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 14:11:52 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id e2so288403pld.9
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 14:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BAX4zCaVZg5VPuJaJzFZsRga30HgIML6QG8A4i0ajSY=;
        b=N+W9EtOnsj41KRtrLIzBWL03PQgFuDSd/h85jNkg23N4O2it/AERICWfYb14Hetiwq
         0a8jCUguCRm8TlTevKN1kB8JEE8TvvbebZcslsBOW7ogaX7JAORE7w1iWZSJ05oNhqSW
         be3+vOnFCFzYwrPsg4FWi7e2C4846LkFO4mTG/PawN5JN6wtzAMDRErRGtcIsDT4l2oG
         7G3Z+0Q1ZEWdJXruwXMANjIdxWJtqOpXvE5R0mta9cRST/sMB0aYp0JKpmRcosCYIzQR
         4iTXJ4AYsrjS/yUs2PsZt7irieAI0ARUMnJ7KoBsYV8BKyaSKOX4EGk38vGjWaVw8LV4
         2+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BAX4zCaVZg5VPuJaJzFZsRga30HgIML6QG8A4i0ajSY=;
        b=sdaDWHI8HsmvfA6w/xxp7mBLZS0MvoGoPixzCZIPHzN2rLJQIK61ohH5abKMh7ZP4A
         xrZVdUX/nUd85BYiLpVNnX5dNSHdx9NoHlBSRjH2CiVeLd6WICSULPC3ovGIzPTZJ/RO
         jzdD3xgq0i732PjfysCHRo2Ou+QFORs7QCPxwdOGeDJr0DkI2MQxHdE8ti1bhbThCB2Z
         2qOY7VKKAeYGY2eQozDJSdd0ribQ6wLTkyX59OFPfToZ9GnsFG4tespJVCpeMhCDfP80
         gpLf0N5hFB9/nPD2Bvu8Jx2No/5ZwN1kYsKh0hLdvKzqhcJ58zNoo/bLyx2MXyWgGaiX
         07Pg==
X-Gm-Message-State: AOAM531ORtsG0jfIl3PhtloxzJUHeb/0KtZCfCWAKQ1Pp2n1HcPyAvsz
        jLshOpJPeI+huvqf7ivodfY=
X-Google-Smtp-Source: ABdhPJxwYtHpZg/z0/mse//KSV03XXmHLXa/NmU45JG7dSyiA2h9LhR3qhyRQLoFGxb5dkHZUhNO8w==
X-Received: by 2002:a17:90a:8913:: with SMTP id u19mr1075952pjn.59.1615241511656;
        Mon, 08 Mar 2021 14:11:51 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 184sm10325924pgj.93.2021.03.08.14.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 14:11:51 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2 2/5] arm64: dts: broadcom: bcm4908: describe Ethernet controller
Date:   Mon,  8 Mar 2021 14:11:49 -0800
Message-Id: <20210308221150.394456-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210219055030.3997-2-zajec5@gmail.com>
References: <20210219055030.3997-1-zajec5@gmail.com> <20210219055030.3997-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Feb 2021 06:50:27 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 SoCs have an integrated Ethernet controller.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian
